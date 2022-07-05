const handler = async (_) => {
  return {
    statusCode: 200,
    body: JSON.stringify({ message: `Hello on REPLACEME` }),
  }
}

module.exports = { handler }
