# Customer Support AI Resolution Agent

This repository hosts the Langflow backend for the Customer Support AI Resolution Agent capstone project.

## Capabilities

- Policy-aware customer support
- Return and replacement eligibility checks
- Refund-status assistance
- Order and product lookup
- Retrieval-Augmented Generation (RAG)
- Structured customer responses
- Feedback-driven improvement
- Logging and native tracing readiness

## Technology Stack

- Langflow 1.12.4
- Python 3.11
- OpenAI-compatible model provider
- Vector-based policy and feedback retrieval
- Render Web Service

## Repository Files

```text
customer-support-langflow/
├── Dockerfile
├── requirements.txt
└── README.md
```

## Render Deployment

1. Create a GitHub repository.
2. Upload these three files to the repository root.
3. In Render, select **New > Web Service**.
4. Connect the GitHub repository.
5. Select **Docker** as the runtime.
6. Choose the required instance plan and deploy.

The Docker container reads the port assigned by Render through the `PORT` environment variable.

## Expected URLs

After deployment, replace `<render-service-name>` with the actual Render service name:

- Langflow UI: `https://<render-service-name>.onrender.com`
- API documentation: `https://<render-service-name>.onrender.com/docs`

## Suggested Render Environment Variables

Add these after the initial deployment succeeds:

```text
LANGFLOW_LOG_LEVEL=INFO
LANGFLOW_LOG_ENV=container_json
LANGFLOW_ENVIRONMENT=capstone-production
LANGFLOW_ENABLE_LOG_RETRIEVAL=True
LANGFLOW_NATIVE_TRACING=True
```

Add model-provider credentials and other sensitive values as Render secrets. Never commit API keys, passwords, access tokens, or `.env` files to GitHub.

## Next Steps

1. Confirm that the Langflow UI opens successfully.
2. Import the exported capstone flow JSON.
3. Configure model credentials.
4. Restore policy, product, order, and feedback data.
5. Enable logging, tracing, and runtime-failure handling.
6. Connect the Hugging Face Gradio Space to the public Render URL.
