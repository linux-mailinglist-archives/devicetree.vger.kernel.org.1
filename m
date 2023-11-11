Return-Path: <devicetree+bounces-15182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 160287E8CA0
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 21:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80D861F20F75
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 20:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4269EDF45;
	Sat, 11 Nov 2023 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q1zBnuKZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E667B1B274
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 20:47:31 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F0752D73
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 12:47:30 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9d216597f64so506961666b.3
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 12:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699735649; x=1700340449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Peg1pxCwGlnhNKPOTBWdvFK6RQItCTgLiK4ys22+0zI=;
        b=q1zBnuKZgE8y/IgPhTpQCy1JhBOB4879vLQuhvTmXNGAOT70oRsrnWRRGMi+K/RpkN
         pasJP1BhPp3rX9kXmXOQCaGTDBDWBV0vNF3o5Z3avjHm2jk6etL0Rw8ljatHsvGNOTeC
         YM1eQjy4eku2213kDgS+yYpdAQv9lYfUAatfKcE8N6ajJG5TnSjNG0rz/qinNLexK2oj
         iqOBfYznH9pIPFdJPPDx4MnkakKLo1IuDaYjqxztISHt/wJwhrvIE8HBYuUU5JxD+Tzz
         CilP9Gb0oEAMG7cLW57MBOQcyhm3x1E94+wLbpyeX9voe7FzynlrcmgTZ58lEs2ckjew
         tMqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699735649; x=1700340449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Peg1pxCwGlnhNKPOTBWdvFK6RQItCTgLiK4ys22+0zI=;
        b=C/Y9A8XwqiLzApDlwRgaxHstYScwGeuie5hqvmHD7HMEoCLzM5o4PLLHsmvmrNDMbn
         iiV1eb6wvP9/P3ubyzNEwIK1yg6p+kpMJZEPh9dNZE1RUzGFVUXyyUuNW9bPJGDPQczu
         VB6zIpfRqEMPZVT+QoifGSj8b+NlKzeuwySpDDAhLOG79MnpVs9jRRRYg4JEYUFmG15H
         ArdoE1wRSfoEdiVBWWYksQWKK1L7VjEwNVD0VqBWMjd8oYo+EPQmYMMJOMLVoq78Xi2r
         CxijD1/tK68Bvl43eK7FADgi/Ub5fpJ4AFXD2S1oKuY5r+5b5sSX6Xl5U1HW/obBNafr
         Da+Q==
X-Gm-Message-State: AOJu0YygzyC0goWEEaCjE4lSwdETzu3QjqB94Ek3ZuPJHHTdQhBZn7OZ
	O7U7xuiUlDxlcp/Smat+gd3i0A==
X-Google-Smtp-Source: AGHT+IE/AWG1HaOZp60zhem7NngI/0APEHckp98uQ4HTdPA7+GViVgAA3x2I697DRgKOwHFqYwMXbw==
X-Received: by 2002:a17:906:234d:b0:9d3:f436:6809 with SMTP id m13-20020a170906234d00b009d3f4366809mr1743119eja.39.1699735649053;
        Sat, 11 Nov 2023 12:47:29 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id dc3-20020a170906c7c300b009b947f81c4asm1547346ejb.155.2023.11.11.12.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 12:47:28 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sc8180x: align APSS with bindings
Date: Sat, 11 Nov 2023 21:47:25 +0100
Message-Id: <20231111204725.35707-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SC8180x APSS Devicetree bindings expect qcom,sc8180x-apss-shared to use
qcom,sdm845-apss-shared fallback:

  sc8180x-lenovo-flex-5g.dtb: mailbox@17c00000: compatible: 'oneOf' conditional failed, one must be fixed:
    ['qcom,sc8180x-apss-shared'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index a34f438ef2d9..6f5c07fa6c2e 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3421,7 +3421,7 @@ intc: interrupt-controller@17a00000 {
 		};
 
 		apss_shared: mailbox@17c00000 {
-			compatible = "qcom,sc8180x-apss-shared";
+			compatible = "qcom,sc8180x-apss-shared", "qcom,sdm845-apss-shared";
 			reg = <0x0 0x17c00000 0x0 0x1000>;
 			#mbox-cells = <1>;
 		};
-- 
2.34.1


