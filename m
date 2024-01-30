Return-Path: <devicetree+bounces-36826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2B1842CD9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BBB25B23CBA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 19:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273F169E12;
	Tue, 30 Jan 2024 19:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ytMRtxsj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52E37B3E7
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 19:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706643193; cv=none; b=MJ7URVzxhqqmM90lDNeyE7HsneoPxy55f0xZP+tlx7dpiqrDMfjQfn6iMgGpPCWVkq4rHEBpBqKYLAGT0lvnCwHg6SXiewfPWtaqCtaM0nJgi9N8Cme85hg9ZGDCMTuRFhMLkQk7OpYwDr+O5+7dTgTF4NPiVmmWzFXPtMwW4JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706643193; c=relaxed/simple;
	bh=DVqQeFLYtl1hG2YkmWKyMebUWaBZkS2pVpkwUrkvmd4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s/1SZWkxoHTbrym2dktW81ET1JrZXTp6Lw5RWtBFmgbk6V7sHwiOiT/OZQZPJXlu9lktD9Yi6Trm1o0miR+PmppaO5LJ0lCoF4Zc2NZFYCLS232w/tKtv+/6xGgEVNhrYAEJ1RZ4vKARN/9t0/Y/+mqewIJiLk7a2+5AyKvXGaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ytMRtxsj; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5110c166d70so4599441e87.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 11:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706643189; x=1707247989; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fsOsDffGjbMKXxKiUASCyihFfDCCxIQKMu+16D1U1Y8=;
        b=ytMRtxsjplYFuYbl7bmQZdJN8y086a6PUN9b3BpybBDRd75Ip4mS9oRpKJNhhArm3B
         RrdYuY7HZRqzqZS0qWyRT1u+7NiDsmlymLoXkZNC/y5ZDTRuKgPK2IiSiM4h1buyb4GM
         EBp+ta2CpKwzhHfhtdx0w+0qXIHKINDR1nT+9x6mw086YhnbLA2t125oRCudtrf3O743
         NwRn16rYizZwUKlC3FIg48NFEBYhE0uTyhURkzy1dvHUygZwHAPZFSJxp1yw0ZLUTpvv
         5Yu3QlKdA5spSRCvS/aFLoaM+q8aBJjsObrYxJfliWJfxKaPqR+nJKpN7A1t7c13inCP
         tWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706643189; x=1707247989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fsOsDffGjbMKXxKiUASCyihFfDCCxIQKMu+16D1U1Y8=;
        b=N6XzQiXdHm7ZSuVhFPJyV+1AwzyhENfVMMg6EptnSHh1VzZgq/4gkEzY1lf30D6NQ6
         WbrPs2ZhE38OfJfUMumJE0d1hfkjnhGUWyvwbRF+gnwrTOcv2aYHSPxqMG2k0fmNNANH
         vlH1XHdAteArwD7g5j5ro97SsIf5CbffdWXpqyRzT3+xofecK1IoOncdny0IDYmAHtBg
         GqqNwLlLVd2bCTPQjYGl6dZPjTYSlKoWfDGWrqTZNyixVozqW0dowAWkyxyADETR9lyj
         tWcEbbIkffr6Bbk/fqIb62I6/xF8/Qm7bSvgburML6iLeDqa4aH+kAQwdmakj1F0OAYc
         cA+Q==
X-Gm-Message-State: AOJu0YyQFKBNyMC5jbJ19jrlzyXlkcNNh1RTlUUfKdnrrZaMWOg80yxR
	cKmOgNTMYBLDufe5QaNRKpog74+K33SMbuvd8BD1drHHW5seYuxCzueTpGhz1Uc=
X-Google-Smtp-Source: AGHT+IGTFahHKgV3CqvuLZ0AtvpOJq6UKQRF/ePrBcVGEvuBqmaCEuZwp9/FnSntMj3eytho//xePA==
X-Received: by 2002:a19:2d1c:0:b0:510:28a9:9b31 with SMTP id k28-20020a192d1c000000b0051028a99b31mr5754153lfj.59.1706643188335;
        Tue, 30 Jan 2024 11:33:08 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUrmWgAjcw7TTn584Ui6g1RC/OTJ9I92AoVo20F/XUDXwA5X7dgs2CyLBjFTMEercmwf3NTacJf1H4OfwI3LgphpHsqiK12lw6TAV1bMnVsBh21OJyT3oEjTTx10g413tru4C+NXGsEXar0FYC8+vzvv6A+h4XcVwOgKAd25z1Ux26HTt2PMUgV5G2JD3bMtRf1YyxVVPF+dwjFNheyyW6j4ftrgAW3XS8abBuN1Rvg8EGJkvGpO8WGpa/lH9OMXiRpRZjHZfHu3dscqXSLnBA2rtra3xHtt2hTyINJNlna79/Tm557jezdm4B0phuZ5q9T5P9D4pvyUZlGfwvJRhQAx0ahIOCv4OZLQtyBxX78kTAM9bx/rJuGTL+R2wpOEYH1hAddQyrTwA9KcUOn6coI6gzpsLxqrCS8nfJ7duiA/0789gGKk9+OLEAlHmQ7hL/eiJWJQiiHArWbvlr/s++gdPMd2GZVZmri0Lbh1Sv11WUmIVojBPIbHHXwIwOJKcIp1MfhVL1p4x0gbfdloYdxk1mVXayK78uWzj2KppQ7iVHdGJwuGDT8I4Fn4/NDjeB6l9sdAyUJK7zy6mElSRTtf51ckjB689BXhGWFCYYeszbO+TsU6CNqQ83J8QGV2QSmSB6TlB19pdUO8Aw7dJo=
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u25-20020a05651220d900b0051119371e7csm366525lfr.120.2024.01.30.11.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 11:33:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 30 Jan 2024 21:32:54 +0200
Subject: [PATCH v3 1/6] dt-bindings: regulator: qcom,usb-vbus-regulator:
 add support for PMI632
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240130-pmi632-typec-v3-1-b05fe44f0a51@linaro.org>
References: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org>
In-Reply-To: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1213;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=DVqQeFLYtl1hG2YkmWKyMebUWaBZkS2pVpkwUrkvmd4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBluU7x0hYlv2kPqEe/tZhfg+70aNvKVPcQd3YJn
 g7ahlXuyqSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZblO8QAKCRCLPIo+Aiko
 1UVUB/9xR2CC1Zusg622yHz/LP7zcch3wz2Cyxk7W1ElejoXblvCmYeLsygVGfl2v0IyBM31fKK
 Cuo8iAKw3PmB1e+7K8LIV08G5YW+lMswTifEoRZkxNLebI6HnQsFe5BGaksxqfWZnp2f4Pg+Na+
 Mg+lAaYpCtf5MnhiC6sX2RmCMJJN7ODKrZAH04KGd8jpok8J6i7cXk53zsc/zHQDNHTIG49pAJO
 rhgLeQj2nGBDnRdse2jDdCubDklPc55ZcoRVC6AF3J5PwNF0pu6qbI6R7+w77syA4ZaerI+VJz3
 r54vsHYOlvoTHYTU3iXaBCv306uK6FwTb+lQsY/6exg0CH7o
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The VBUS register block on the PMI632 PMIC shares the design with the
PM8150B one. Define corresponding compatible string, having the
qcom,pm8150b-vbus-reg as a fallback.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Luca Weiss <luca.weiss@fairphone.com> # sdm632-fairphone-fp3
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml   | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
index 534f87e98716..66dcd5ce03e6 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
@@ -19,8 +19,13 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - qcom,pm8150b-vbus-reg
+    oneOf:
+      - enum:
+          - qcom,pm8150b-vbus-reg
+      - items:
+          - enum:
+              - qcom,pmi632-vbus-reg
+          - const: qcom,pm8150b-vbus-reg
 
   reg:
     maxItems: 1

-- 
2.39.2


