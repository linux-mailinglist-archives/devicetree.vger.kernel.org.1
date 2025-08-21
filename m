Return-Path: <devicetree+bounces-207314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AA4B2F27E
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:41:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82C9E604FA9
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B7A2EAB82;
	Thu, 21 Aug 2025 08:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dvePidbH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5202EA726
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755765070; cv=none; b=Cd/37257vMuLxDl6M1z7galiNqAxm+X1Rpz0Sh9EwCHSrVeX12CsLymZzdTIkUvjSfJbslZY9zotw3HsO1rLyZNOeOYTB/d4iKEmCStgiSyxPLt5xeoTjLKN2SSenUE2Gd23wYDXzflnPwENrpoLKVAQlwpL3ndXxW3cuBih3eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755765070; c=relaxed/simple;
	bh=iqqc9H3kVGDEO4owcMh77Y6V/4jzKjChKYZ4/hBrnt4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VvVvTgt5A7yFO2ukEparmVJDx0gy3+x41/caqv4VjVQLkpqG9sd2wP+xZeMhoICbrdaytBk9HNz/EASjE9Z8RupwRZLECUf/QAdVG4TOCy/PzVXMstcdcJe6kIJcarU1NtzwejzW6yiqdz0kz98QXZc7tHhx7+Uu3CPx9/wfcXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dvePidbH; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-afcb7a01426so8301766b.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755765065; x=1756369865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hh/M2EwfSa9FwHQzHqRzfiw+17/lHcQFKbZckUyEnvs=;
        b=dvePidbHHlQjyzeFugj9OaFDHPKSaQKJeIifd5dxdo8acJdtHKRVGz6vhO/kWKCD08
         ieywzpXAKGVxglvZhs5ipSo9vPO2sAS7B0Ov74vCn5S14PU5VvgTkWiYR/wYpEHxNY9y
         Z6LnHtNjxbiSK3nk/45eJDFG04sv5WhahCsGJC9cEtVM3YvA5S+741MeL72j9YAEdjVD
         dyx42BCtW1LASmi3RFmAwXtJwmyDf58/6DjgISPF+eEyydHXb26yvunI6Xiv3DCMZe7H
         tBBHEeiHIbOB2NMAQyfw1t4mFeimgp89UkslTnAHdnnygH0Gm3Xn+OxIE7Sag/o9e9ko
         LfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755765065; x=1756369865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hh/M2EwfSa9FwHQzHqRzfiw+17/lHcQFKbZckUyEnvs=;
        b=QNAWkRuCLXLGs2KjppnKXAzA8R2baaOjXB/mmWY8buC1OD2QnI6PNtH3go7h2fDZjo
         QSJD/jlaDHVH2oSWvHc9LMcCAxhSFnpGyB0EHGONVJGwVrhelRL24YrxDKol3OMZ4ftF
         McBnGn32cQ8AfMvzAbBlAKbT8U1h5LiunGN3WDkF39L3ZJr2zPm9s+OhK5K0JQCsQsmK
         k/zlX/h45HNtsq6PlilhRHKAY5omN7qVH7Rs0rOAeTDqUb5kpb1V2+wELjm1lihotD2u
         ntv0S/lbTKYbOGp5vE5IBKL8Q2BoEbo9jVitm6u4nyDfKUj4d7zLfI2Lq87xTcXGTBqx
         FlRA==
X-Forwarded-Encrypted: i=1; AJvYcCURgfICSgMuA6IHPGldxVa5KXkwbOPO7kCRAsJ+j6YRoAgCsrVDj0J5i0ioWawW/jwEgF8OJOG1rWTE@vger.kernel.org
X-Gm-Message-State: AOJu0YwWT6mEcry9fzH6iImRe3yjbxi/WBK11fzY+Y9O1oKfKl7cfMxI
	Ivm78yAfjVMW/3nUWBzdwCOr0/C+RYeetABZX9fD2Qm0BimiCGDkJqGF58pV07gupqo5i+1Qbzq
	mG0F2
X-Gm-Gg: ASbGnctNXDt9HPc6nGKSgnkavimcuYLfNxvK0PBCOQxNuKr9M2n/NbG/BrTSWbdTHBe
	Ba8cBuPR6CKi1IfaNgVYMfJIUIQDG0Oi1OeVVigYML6Llr8VL3q1Bilfc79d7aGh2UsqNkEeG49
	rmJNxj6jl3dEVTS2WGrflLocedleI/JqJc1ORtm8bmGZzCikJba1D9Err6RriOXM5kj1l5wNa2h
	7WkLsA2bZxgJccdO258u7AQA0BP8CtyF8rbI3c8PNzp96BJU8Tdd5WBTrSAQFk4YgvfkPRK5J6t
	DQ2hDNTVXzWtYbCrWpnyyaTlSrE4aATcSVsz4CEmKySrQFUB5BR8AcbR3Hnf0aD/lNsf5fpY64e
	8ewjAG0Gh0+MPuJdvYwWQd8cQizVYEX6cXQ==
X-Google-Smtp-Source: AGHT+IFNk/pJFnDs4lRHPJnbj+R0+UoDvHoNWBUQnniqvKfqWInUDOjeDP+OKC+piYhF74oUFSgD6Q==
X-Received: by 2002:a17:907:972a:b0:ad8:8c0c:bb3d with SMTP id a640c23a62f3a-afe079e2116mr74283566b.3.1755765065406;
        Thu, 21 Aug 2025 01:31:05 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded2fc568sm346436166b.38.2025.08.21.01.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:31:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: Minor whitespace cleanup in example
Date: Thu, 21 Aug 2025 10:31:01 +0200
Message-ID: <20250821083100.46340-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1541; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=iqqc9H3kVGDEO4owcMh77Y6V/4jzKjChKYZ4/hBrnt4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoptlEzToO3Ku+DKnz2vaPiN1ssj2RVk8DjRQKc
 Qtcz+MExfyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbZRAAKCRDBN2bmhouD
 1/4tEACNYir9uMarV45GanTEgmnE4LFISWmgKJwbLjhiKVj51LWYivtWPj6mF04MOvmQ/0uO4oC
 eZoanmeV9/UPVaCWfsvGdXfIwkF8G3ezVQSCFHL8s/VzedE9HUpJUqTU50rc9jZtZKhZ4ACtsr9
 Ci2yCUbRSaoDyloZXA5YI0ImHjPi8QXHCa4TJQnoQPrIiTUw8QupgbCttoCDPzrcZWBpsjb7EIq
 aKun5PQRfFRYgBN1V6bl6v+1XG8GLHEfxnvFMEF9Hd5ve561qriEMBuzC3tYaSmfaAr0KTMgJOc
 YKJr6lmLHAPCZcbiIpVDFAx8/dtmHvuayFfFjuFmf321cHCUYfdAvLR66Fe8hfBpeI/xEOEBDCj
 7bB6b4sPJLZRCH9KSRHud0IaFOZGC6bukzBRVc95w0EqFIYgpcIDzA9mq/GIfUSnKSj4XWFqlBm
 DRmXsOAnThbF2L5ZDfaux9b2woTITUBSKUwcSCEYiQqNJlyBkja4nfOJ1rQfvIC8WqEu69gV8Ku
 +hCx1Dx6/lkn0FJwJs2hDLlRczw//7mZonnGXjdaEWslBwqK0bAGEspxUG9wwEDfMtYjJHRQzWy
 ovcuxx5q9cnEdPmVYf89/0u7owD8QmBimSmPtg+UCWVkkDMeYcatGhMRTur/sdy4OZU/I9uri1D Q1A603HnLHhssWQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/fsl,easrc.yaml    | 2 +-
 Documentation/devicetree/bindings/sound/fsl,imx-asrc.yaml | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,easrc.yaml b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
index 8f1108e7e14e..d5727f8bfb0b 100644
--- a/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
@@ -104,6 +104,6 @@ examples:
                     "ctx2_rx", "ctx2_tx",
                     "ctx3_rx", "ctx3_tx";
         firmware-name = "imx/easrc/easrc-imx8mn.bin";
-        fsl,asrc-rate  = <8000>;
+        fsl,asrc-rate = <8000>;
         fsl,asrc-format = <2>;
     };
diff --git a/Documentation/devicetree/bindings/sound/fsl,imx-asrc.yaml b/Documentation/devicetree/bindings/sound/fsl,imx-asrc.yaml
index 85799f83e65f..c9152bac7421 100644
--- a/Documentation/devicetree/bindings/sound/fsl,imx-asrc.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,imx-asrc.yaml
@@ -176,7 +176,7 @@ examples:
                <&sdma 20 23 1>, <&sdma 21 23 1>, <&sdma 22 23 1>;
         dma-names = "rxa", "rxb", "rxc",
                     "txa", "txb", "txc";
-        fsl,asrc-rate  = <48000>;
+        fsl,asrc-rate = <48000>;
         fsl,asrc-width = <16>;
 
         port {
-- 
2.48.1


