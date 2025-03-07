Return-Path: <devicetree+bounces-155340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04954A5640E
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 10:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F344188BE5C
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774E820DD4D;
	Fri,  7 Mar 2025 09:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tuoEXp4M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8996F20D4E7
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 09:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741339999; cv=none; b=eS9vN7hu0xRzZw/4mXwq8cuG58D7dAJ7BinR/2bb0mtUWlwShIofH1VZKUJrWcT873uUJZXbXRg+XkvXGLDd6J6d/KH/cK4rj+p70aXXdZLjxYwFRA9iLJPmADxlxLtYtr58aDYbAp1/koAIAZnR3GbTIWHcy0RAuV1g7pgmP1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741339999; c=relaxed/simple;
	bh=f6+JfLU/1QFiRs0zJLu13R4ni0sWGfII1CyAkkteBPM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Kt0J22bJB892pkqNM3dY8IHro/msKxvq9pKgRGZb37OexrEqnw5HMHuvKP6KcuvuB5jEDIgwXJQHrBDFrYQoT2gsbOybQC8INYPLJ6XPM+/Q8KD5uzmOMJX6fw/+HZK4YlUjXjFLMl7dDgRPcJW0tzgKPNkYGx5WJwRVA9qTrj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tuoEXp4M; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e5ea062471so54343a12.2
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 01:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741339994; x=1741944794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fU0HHdQ1hyz6Oi/pxgyRXXgGFlp0DgTNlBw/r19mLUE=;
        b=tuoEXp4MCXqWFa33f111JLpTrEcuR0hQ3u7Hli6VAsKF9HK22gpN1o5QTYlGbVK1xt
         CTEH7U7AWV3sRBBhx7/0S3BUjV0JLdYBjGlaJ/6m/wk0PmaA132L/rceatLF+aGxBBvD
         2Wfc4exbDizDs8aCSOftuvqaWJlXbP8WUpg3ZzokiTyJ1gmKqtN8jcs5vbgBSzwkXQhr
         8lQ2CC3PT02tJfzgLQsC8l7y+SDW+PGYeebXE35nOQQ4N3emfxtR/XqhWPTRYKgaYNqN
         vDGhhuXiZkNoyrO2iNJ274EohjgJ6zNSVYuTSf8+bXlq4RgyosAO0RJKjXjXQEYw8qlb
         CrcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741339994; x=1741944794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fU0HHdQ1hyz6Oi/pxgyRXXgGFlp0DgTNlBw/r19mLUE=;
        b=XIFRLmDUX8K5osDxxmrjHAWd7EwSiMbVUDaEq8RC/LIWyFqADAdUrRu1/rBr+2FCZ4
         1tpExHE1ppVyEtTYwUBWn7lxQuRIizEt61ta3++b2o+9BVkRoA57IaKl+pmyeMC3zFII
         tva4rhqAyb0snLe49jBZVcLr5eyjQdP5MxiIkDXxiSzkDG0Gk7xiiC5Z7tl5S21ab/+k
         FJ1fdTVs+9YGa1rRWxv74NNxn0lBj4N/KxQQuOMI2mY0WrSVPAeuWdKKKcsVKepbBOc0
         4ehwaw+9VUpZyRBJxB1F/EydR4DRFEjupLMy6b2kNzvk0gDaLXzA9eaDuCho44DLlo9f
         qKPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpNercskVkDt+3bDNIAvczvuhJVSUTaTBssZhkzsehhihFvBKi3xsJ01hM12Mp6DlaRP4Hg9dzoaBw@vger.kernel.org
X-Gm-Message-State: AOJu0YzTSu0g0cgEO/jNQYSWESqdnzig3Oigt+MEWxfrDgyyFC0KECzh
	WFN0UWQHuXrSgTqKePBm+hYFBcgryzOt+N9P5UdsJZFaTUNl0sawaUXmYNEEeUQ=
X-Gm-Gg: ASbGncvbSok5GTlxh+8JAbESgY4y24MUN0AcvI3xnG7+A6VBnyHHUsU45I/XfWTE2QT
	AHIqT2H55SUVDUrWknKtSxLk7o5LzxHt8n4qLSABad7JZDf8P5aoEMIl62XJt1dfjgf4cs0lmCS
	KKK7jbowyTpfNHALbc789ZPUoTq9IBWRwopK6YpuBfTbE/0WPNrWJOmQglDS+4KLmr9tagzdeHE
	39kuywh8Xo25FEjlJCguH4QaWYsA8ujEUQ6BaqV6026q0aK1Icl2/FrX6ksH9yyvCqba3rUS8jG
	G163vxLV4JOC+7xN8Vca/NpAGaBPihCZioYu1DXlXyxuwmWCdSAS+FYRm2s=
X-Google-Smtp-Source: AGHT+IEAJGcNFFbHug7ITx5iMdjawlkckyUu9cdR2GxHKINK8WVBM4YprSaxysEv0Z5OJYbITLcdkQ==
X-Received: by 2002:a05:6402:51c9:b0:5e5:e17f:22fc with SMTP id 4fb4d7f45d1cf-5e5e22ae3c4mr1030915a12.2.1741339993683;
        Fri, 07 Mar 2025 01:33:13 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c74a82ecsm2275091a12.37.2025.03.07.01.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 01:33:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: rng: rockchip,rk3588-rng: Drop unnecessary status from example
Date: Fri,  7 Mar 2025 10:33:09 +0100
Message-ID: <20250307093309.44950-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Device nodes are enabled by default, so no need for 'status = "okay"' in
the DTS example.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Drop unnecessary full stop in subject prefix after ':'.
2. Add Rb tag.
---
 Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
index 757967212f55..ca71b400bcae 100644
--- a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
@@ -53,7 +53,6 @@ examples:
         interrupts = <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH 0>;
         clocks = <&scmi_clk SCMI_HCLK_SECURE_NS>;
         resets = <&scmi_reset SCMI_SRST_H_TRNG_NS>;
-        status = "okay";
       };
     };
 
-- 
2.43.0


