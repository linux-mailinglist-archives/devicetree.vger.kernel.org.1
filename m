Return-Path: <devicetree+bounces-195747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B4EB02F6C
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 10:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADE5D7B193A
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 08:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E1F1F582B;
	Sun, 13 Jul 2025 08:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="KAjsyGaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA211E8324
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 08:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752393987; cv=none; b=nRFMojznRtiqXExt/UlBpB4n8HcaN3aOAWAGI+e0aqaHzrDCvigBhRa7swf9BVhntbrvtFUytVQVHZ3hm59cU+HPGUC1x/k9VQ4Tk8DBpcp2MuZ4FF4xW4+Bukx7w0LOgHW7uJkdjfC77HB8Ig9EHk78iC+/dknTKBviCZnF4Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752393987; c=relaxed/simple;
	bh=lXJt/yDsoHDSuPe8QmNNkzF3KEBLxNVR5QCRJEM7U6s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kmIoZUsg3kBV4ft+nu2ChkaAReYR0661U4mIKeodNjf/iKWcREv7dkXkrYc6m5hH1W76FduP9bYmCPE6ZjjHCAWJNTjU9tUE7SLIRrMJnLxGWgx56985yJy42hFLlN7rE1IbPDoFq7cDmJzDtmgynzH4GlRR83KelQ1NrSuMfkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=KAjsyGaq; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4538bc52a8dso23335665e9.2
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 01:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752393983; x=1752998783; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q3MxjLEtpRVyTZFb++atMk5EZAHm1SNpE6rDNgKP3WM=;
        b=KAjsyGaqy53gMzniftyt3noWtbYuECU6ma8NVW+SKilgvESX+YXzSkuG+wogG3DutB
         LfXLV5bstJbPDK1gpiu/mlGvIkhWHcbOeGQoct6jnaDl34mE5OjwaBzXIWiB3ijFhLRG
         huAIRoVaxscaMc99OXH9ytq4Jm51Zab4rZm2OUkr/kfEIh6yico8aKiDDTPv4e5XafPf
         PY0M9Zg58mWPOsZeBCJUKfgqDx5u5n+LpunXEgKWDV48egVYIx+9gT85/k8NeT5k3Jao
         gSmEuhXSr65KhWo8cszu1diFaHZyRGfMCWGeUBVlo2SE+9kJl4y5Y7TQnO00YZrFYGzq
         srMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752393983; x=1752998783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3MxjLEtpRVyTZFb++atMk5EZAHm1SNpE6rDNgKP3WM=;
        b=KvUQ9UhHqZ1UyXaoXUGGubYs1LduUvdFPJWGsO8ZjIjxpgcoiera6re6i5adiZjR79
         +PPTmyCqHbyPyRWH73mbb36d4rl2k7TSrVV17gez9PlN+SBJccMjkeVymYmAvaGL93g7
         y33htLnJHksc32ial0pCAfcJBtPJ7GOEIDwEQJZUp4xcp8AyjWQ3R1bZjJHAm9/1X8vO
         IY0eE57zyxq9mab4bdMuBH05kK5iXHZUpczqkwqa42Dd2K1+cANehPIOstPoEpqGcBxZ
         qyxCngPzVflIXF0DdEARbb8Lm2Kr63QoQEX5lQZQZ2h8a+hDLFKWjFvaV2DTFpmoQ7UJ
         93Dg==
X-Forwarded-Encrypted: i=1; AJvYcCUqbLPQ/aB6IebdOvX7Y2+ASwGh4km+RtwV1HIxnw3fYhHWhkZEaKJEHZtlXYw21xKsMtAop5wMqhQ8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm3Kf+pHo/P9JiqJx8HZci2LEYimN41DIbz0RF41KPNivu9Xty
	VfGGoZlvQGbW/8VsULqsvFArDjYXYiI6UTTOhIGcJynTQTley4tSWhDBxla+BE3mxfs=
X-Gm-Gg: ASbGncsWS1E3BXxpkc8nK0D/FEEfgbewn3GW2UO/zRuUV3jFMkX8+lE5O5+vGbTGeJs
	PrOmtHeJK9VE9G39LnQzACHI7BskVOAqa4nIF07JT2/zTygLJOHyT1XaRe5Wsxn8hDQu8AlG2Xj
	FTZxliH6++qtkC+tBiCjY/+S8aozjb3fdTdDfRdv3k9lZpK8I/rbdDX7OmmKNeM5DT4SiR+HKWT
	Q/dwNwlxDHoDACBaURtMtfY5SoyDK4fs2UWOB7zg7/k2fZtjGQgbE0Ua0zJLcOBu6penm9cNpXs
	FJq4YRTOzZ2EWEZwqHaFtescTfyZNO+HC4wcUUKdxIiIH86ehpe+S6e3n/k3xNbdMtEusLrkWPC
	qIUzuBjZKv1Y2vYaG/JYVnkVZ/ylh7+H21d36BkpRfr4TxG8=
X-Google-Smtp-Source: AGHT+IF2dijl2kk5jegjtYU+p2rAjAUxOPkElW1UrGDWDO80C/PI+gSKcgMJoxorFBd7cfrm8u/VBQ==
X-Received: by 2002:a5d:6a49:0:b0:3a5:2848:2e78 with SMTP id ffacd0b85a97d-3b5f18ceba8mr7079826f8f.28.1752393983475;
        Sun, 13 Jul 2025 01:06:23 -0700 (PDT)
Received: from [192.168.224.50] ([213.208.155.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc22a8sm9386608f8f.34.2025.07.13.01.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 01:06:23 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Sun, 13 Jul 2025 10:05:25 +0200
Subject: [PATCH v2 03/15] dt-bindings: crypto: qcom,prng: document Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250713-sm7635-fp6-initial-v2-3-e8f9a789505b@fairphone.com>
References: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
In-Reply-To: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Das Srinagesh <quic_gurus@quicinc.com>, 
 Thomas Gleixner <tglx@linutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>, 
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org, 
 linux-mmc@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752393945; l=875;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=lXJt/yDsoHDSuPe8QmNNkzF3KEBLxNVR5QCRJEM7U6s=;
 b=YWlNKu1yk/YAFD8w90VWlOFTNCiHXfhuYzMgW1x9mK56voio6ksNRmFDk/XDI+kjQDc4mizBK
 mmfj6LeJyvMD7UovUB4bVNyGfJtrvgMzTuaEsoMvHBWmXosueoYs69L
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document Milos SoC compatible for the True Random Number Generator.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index ed7e16bd11d33c16d0adf02c38419dbaee87ac48..0fdef054a1a30c363e0d99518351fb18124904f0 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -20,6 +20,7 @@ properties:
               - qcom,ipq5332-trng
               - qcom,ipq5424-trng
               - qcom,ipq9574-trng
+              - qcom,milos-trng
               - qcom,qcs615-trng
               - qcom,qcs8300-trng
               - qcom,sa8255p-trng

-- 
2.50.1


