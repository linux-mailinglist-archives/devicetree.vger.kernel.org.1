Return-Path: <devicetree+bounces-114035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0709A9A27
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 08:43:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C76C286419
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 06:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC26146D53;
	Tue, 22 Oct 2024 06:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tCLG31Du"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D893145A19
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 06:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729579372; cv=none; b=YPd+q1NFzbZHO9ouiUT9rqG5yBkoM+geWJxh7gCMd+NPkJxJUezRl4cllUvUgG925QuaCD8oFNB1SQS4IrCScTjJ27jI37SMKXuVrzo0O2cckUjD3Y6Apl/nl/fzKNMR5xebpFcqOtHVveHfUpC2vIYzfkjUKsVkgPt7127w9tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729579372; c=relaxed/simple;
	bh=6PBa+Qvoo1U7dPLtQp2fv7kQwyV0nwSgzL0nLq/hfpM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gOGSYmErfKb8+43M2cgjoh2sU5uO2ey/KjW2oCr5MEQ3eOwZDb781NfmR3Pr84V2HqdGd3/rfJjJWgOIEljencU+Iz9P5GnYeGCxHbynkq1RiLT1hlWP/KoI3ew/TafdT1nCCEBwQ1paFsr7gFit/uMp10D1gemFzwdlajp0MhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tCLG31Du; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-37d4dbb4a89so527507f8f.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 23:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729579370; x=1730184170; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ztbetuKuCAG4xpiy9biwiMZIEYTR+UuLmyONPGKxx24=;
        b=tCLG31DurdwdE9+pN5nPpdAZxXPi3rA9XQY+WeDEvzlElQEB46ik35Gi5a29L0D/75
         qenv5Ev+vM17AavG2lG66WD3TTbOJOiI8bjlLvoGd4m22BoJ+Cimx3LCvUiHL9ACYz/4
         k/S8BlOgK4E3WbLvnAtA1eIUPcZkSkgfLj/ZhEBVUqcteVWSC2X/aN+2oMTOdAQgPwJX
         uWkxFSydunZUycPi3oAUJ0AH5EJSo9/WkeBJW1crO3Q2MT1O8WBW2Ucw7b0kPZOmO5og
         klSglJkQPQ/bQH1U114wT4u5IiiX2mMp5IfRyPSKvBldcnoNnp9caGM6k9gwvOOzpL4j
         pTDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729579370; x=1730184170;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ztbetuKuCAG4xpiy9biwiMZIEYTR+UuLmyONPGKxx24=;
        b=idOw5arEOOm7YXGlWam4XP9AxQDmySJOfl92O0FVtxkhvJ/WQu/dVO3odzlRG+1K5e
         yyuDDirxhCpNq4jNMJHaaMZ1aXGnpXzjki4aUoeSWB0G6ufr9dsvcZdJxZVrX74VlMis
         fhm3eE69OwMLHEf6+s2Uqu5oxUgwNvozrVHJVsQn7+MHdUoeNRYS/oXzf2RWXXEc/Rkk
         x2ifvSMvRM0XaPXw15ZGWORZ2T1Wqv1Axfij7YVXQdcf2HXd4FrA6OusGMsK13a+WdP8
         1QjfoSVhEXGtRYFujmH2szQYxtuVJu2WMPrUtDLvasFR+0kUxYatWE7/BMR7E4UNVaQv
         7Fvw==
X-Forwarded-Encrypted: i=1; AJvYcCUms7ePLo67vogZK0hbCdZNdlVGvIj2K9uCI6Rvk/JqZ0Pk6vW4cpUwlZfvBFLv//bDwUwbSttkbud4@vger.kernel.org
X-Gm-Message-State: AOJu0YyH+loae8M2ceEeJstWa92+OjrpsKDTXhKlT6Pd7aaVU1a6Txfq
	2UPZUR/emPoDwX+fGImyAv+A3ZtZFv+QRK3uxaLzhAZTbI67E/E1B5aL2GjWpK8=
X-Google-Smtp-Source: AGHT+IEHQ0Nm3uSdjaODv2aTXm+D9OjTtt75SBNZU7edu3Bqv7g5ZesIWn1TqWP3SdH5sWHuh6A8pg==
X-Received: by 2002:a5d:5889:0:b0:378:955f:d47d with SMTP id ffacd0b85a97d-37eb4860850mr5014701f8f.11.1729579369586;
        Mon, 21 Oct 2024 23:42:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5cc501sm78231705e9.43.2024.10.21.23.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 23:42:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Melody Olvera <quic_molvera@quicinc.com>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Subject: [PATCH] dt-bindings: pinctrl: qcom,sm8650-lpass-lpi-pinctrl: Add SM8750
Date: Tue, 22 Oct 2024 08:42:45 +0200
Message-ID: <20241022064245.22983-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document compatible for Qualcomm SM8750 SoC LPASS TLMM pin controller,
fully compatible with previous SM8650 generation (same amount of pins
and functions).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Melody Olvera <quic_molvera@quicinc.com>
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml     | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
index db7214362301..e90a5274647d 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
@@ -16,7 +16,11 @@ description:
 
 properties:
   compatible:
-    const: qcom,sm8650-lpass-lpi-pinctrl
+    oneOf:
+      - const: qcom,sm8650-lpass-lpi-pinctrl
+      - items:
+          - const: qcom,sm8750-lpass-lpi-pinctrl
+          - const: qcom,sm8650-lpass-lpi-pinctrl
 
   reg:
     items:
-- 
2.43.0


