Return-Path: <devicetree+bounces-253943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7F5D12F5A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F6233079C80
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4BD35C1BA;
	Mon, 12 Jan 2026 13:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Ci5jx4i4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DF335B150
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768226002; cv=none; b=aQ8cFci+1OQ4t4W2AszhbDdIeImdLHfDWG1XmWsoNSHvktZpTTdHGjYzgq+enAZFzoRKWRJn5HGT6/0tkRjnQp8FcSYYspkJMHDM040pHptMa4i5KNXI8iKidr1DdvVrj613tTsBS8SY2pDkapCD7IVmIKUFj+MRHxpHqDrolrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768226002; c=relaxed/simple;
	bh=qxN/7SFXQgGYehqBL9aUXI1J2mEyleNlSfDJOc+cUfo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QsuWqzKzrEGHp1x4CR8BNUHIRqI+jM7DXf0ZK0/ylxKzdrwWDFQzLSNny9U2L0PwgMdMDNY8yjG5MfVuaqj+4F25VC6Q7tdr/HIVIkW0D4rKAXggCfzhI+SXHkTlQZGf7hke/K1DdSlqOXIt2fzuFhszMgDefGHOQVd5n2TFvik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Ci5jx4i4; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-64b921d9e67so10998231a12.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768225997; x=1768830797; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p6GBn7KiZoLHRbB+eXZ1LBCN30jAII3dIqXdIjZE+DM=;
        b=Ci5jx4i4kBvNw4Um7TQF5M4EvSRjawQQMfERBEl/Hozpiw2R51VjDR68WDTw6MKTYh
         wf35WKtTih69BRNEOJXrGdpO8NLdOgsWQSeW0hDs2GENoeJnhjRVczN+fGyJ9XiejK0x
         XrWMaWQV/wuNX1lKPgT2fBGbZJSqAF+e4YTdGpCOTdp/gzoqTkQYhbwTOtHTK45t7GCM
         PMEpzwWZ4i/7xo+AlxNd6BzV9HoEJAJjP2eubryW9H8H7sRVfVNl6DIG+UVjY1/+c1OJ
         okZfo5ftkT5sPmH7r3knud0XWnYp9qkCEkg8rrW2iGRTWij/EC59VVn9BNaUgjKY9cy6
         sEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225997; x=1768830797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p6GBn7KiZoLHRbB+eXZ1LBCN30jAII3dIqXdIjZE+DM=;
        b=Re+Xs9WTxeJES7sFkA7XJmsZOwmxTfnA8e0oh5dUBNnIvV7YKW28XuefucXyBcvo4l
         WIExVc4nggF6CWPOzHwYQSFt0e8ohp8WgbjeAb3gEVx7GxuUrR1HUjllqiSBAv7kIJJC
         8z5XSxzxhTO16f+dSvtUW7f2A8/YNdGg1pXS3bkRch+NHTCRxd9TanBJDUIPVtQpxVrk
         K8jdyXB6YowA5wJwAuG962/UzPZd996VH7qbBR4dyDtaqfZNCfoitFiHBzlJGMqU4fW9
         F99CtKE2EOh/Uu5LxyCBYGCvTwaFiVtCPnzaf+kFqN5dv6xzVmbZ49CriDSy0uRqSEUl
         PoMA==
X-Forwarded-Encrypted: i=1; AJvYcCXInjHOR1++8VScaalsm+Dh0GuIqaHsEAjtrqGeRNLjwkS4zgh6r8lHSdRMB79y5uoeDHtP5mYufqsP@vger.kernel.org
X-Gm-Message-State: AOJu0YzsptgEpvgeIlFj/1thAWFJEggwpXr6DSu483h2CkGxBzcFVYrL
	mSq6oFRDBw0vo6hHmRF2Iwp1PSa6/JmGH2XVKxg4sJvjKElHHsREpvUGnmMAYJS4mO4=
X-Gm-Gg: AY/fxX5PXPt6oXfERol3HBOWgvhH3KWXOEvMPDYqzq89u02/6BdE4GnMM5oRKVlg7VB
	ONvHuIlb9Lp/TomaUzzYdGmK10/fLIyzda4ec/4WP7pXCR8x2F1RS2HnY1IhWp5+YwxHcChcL1F
	wcAz7KfE47M27F6LAibEiLrZg8faUP/X/COZDa9AzhX2aRrORHoP12lzazmljkX8rT3ZqR1+47v
	+qoBXnMJW5P0q7LDW7jcQg/AovchSlAcNor29v/Hb7ViheY7g7FTCQPy5Kxr1IbzJR3YWdtx+iv
	VaDI5EF0N8A0G70Bc6pI7G2X0cEJHmCZ2Tbhn3UD5awI29mpBWojj5bRmfTi1BCh+SZMOGSErbE
	wxONqIWSuU9iTUDqpsFeUm179JrCtrDsWphA+nXnnyMZZAXfcJ5/5p/OPmmqwLq7fdLrI2dCHv0
	W37nTqA9ZZa9Gjgn3a/K3AMB3UF4dWOXGPAOH6djNL4iWUYlbuSYp+FZ7rXhz0bxu1
X-Google-Smtp-Source: AGHT+IEd+nXuoyJH7y+5irMovJmQYLD5UodxDOlxMBwAbUiTSj+cIGE3y+/oEJNpNUV3FWxwU1bJFA==
X-Received: by 2002:a17:907:3e83:b0:b7a:32:3d60 with SMTP id a640c23a62f3a-b844518a88dmr1900919266b.11.1768225997580;
        Mon, 12 Jan 2026 05:53:17 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:17 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:14 +0100
Subject: [PATCH v2 1/6] dt-bindings: crypto: qcom,inline-crypto-engine:
 document the Milos ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-milos-ufs-v2-1-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=978;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=qxN/7SFXQgGYehqBL9aUXI1J2mEyleNlSfDJOc+cUfo=;
 b=+6y4wusQhtRueAHKb3ZVs4ptUD/5lU0HvbI8iylXgKJDlb89tUPOMEzoqIO5WEYaPfvbSmSYp
 Pq9sp8tM9qrDpSD5sTGW1dElYTST04D3dJj3ez+bzIGdUXXzHTuaQbM
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Inline Crypto Engine (ICE) on the Milos SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index c3408dcf5d20..061ff718b23d 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,kaanapali-inline-crypto-engine
+          - qcom,milos-inline-crypto-engine
           - qcom,qcs8300-inline-crypto-engine
           - qcom,sa8775p-inline-crypto-engine
           - qcom,sc7180-inline-crypto-engine

-- 
2.52.0


