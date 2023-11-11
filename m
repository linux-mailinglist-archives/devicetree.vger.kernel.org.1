Return-Path: <devicetree+bounces-15165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AB87E8BB2
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 17:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CF3E280ED6
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 16:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 638E814A84;
	Sat, 11 Nov 2023 16:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wTlH0Zxy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B882E1B283
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 16:42:42 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05A8A3C15
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:41 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507ad511315so4369991e87.0
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699720959; x=1700325759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rDBwdEU+qwBWbhBWrVEXRUbPBd2Xn2/yAt3QN4v7vT0=;
        b=wTlH0ZxyJm/xJmO1686STVL5irlWb0n3jgPfuIQdMfm2jySIVz+Nyahu47rmAig/x8
         Ovbtf/BlxEkb5f4IuOfUJkre5ZRR3iO832CGrvN7NDRhlsPKlFekI1Rt72L3CTJkFb3L
         MWuXeq3ps9vjoTn60NVRs0CxUSeQgrRFjp8Lyx8ivEv4ghebIWsMs8BvnSnhtggbL5Hd
         MiA4LAecDeA7zaDGheAt+J2jupR0RncbNYcfRdZmNDBcAcbJm9Ro66Q5fTLyP7XVlM9j
         BAMDH5nz0BH0D9OgMfDTH2MQx/JWhsXbdJz6j1p1GVLLK7C9DmHZIuAY5kpLk8jSKvy4
         x0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699720959; x=1700325759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rDBwdEU+qwBWbhBWrVEXRUbPBd2Xn2/yAt3QN4v7vT0=;
        b=Im0eaGjmo5y9X28O9deDjG+0aVY7+7QdKSHXC5Qz9YMQgIIf56zoUncS1FQY++X6fS
         RxW72zytCifttzYfjYCNrChCdCm8JABb1xIi/49LYRVP9xSAG0H5g2kyHVGe+uRrLBhU
         E923DoPXFqNtl/nCpIILR6aVuJItQioqCz6n2CErMDtqfgH068aD+iOC3tGYSJ3KDzPE
         NNVnQ+UZ+hinq4/f8gBNm15+viIawtA1oUI/DwmWW5eaSE/Zpu0q+TEuqxZ6vEqYJs9r
         PGnmqRqR586FqphEfpoYCw987wF29ZdZ+ZqeNAbVtS2FK7+QpLlDTN6JDXMvjYe23WqT
         /Vnw==
X-Gm-Message-State: AOJu0YxCWX40wNFXtbB7rRAxERQ93wHt/RY8s2JxjQ68x4WYGk5QRn+6
	XGsJMPfnamiZ9ZfBZZJkxDz9uw==
X-Google-Smtp-Source: AGHT+IGA5Um6eZ8w+XIjkvSbSY+xRa5jdvMH29dPL9q86wtvX01UoF6SWPfBnwSHz9f44JNmgVAqHw==
X-Received: by 2002:a05:6512:2214:b0:507:a12c:558c with SMTP id h20-20020a056512221400b00507a12c558cmr1632967lfu.46.1699720959161;
        Sat, 11 Nov 2023 08:42:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id k25-20020aa7c059000000b0053dd8898f75sm1161917edo.81.2023.11.11.08.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 08:42:38 -0800 (PST)
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
Subject: [RFT PATCH 5/6] arm64: dts: qcom: sm6125: add interrupts to DWC3 USB controller
Date: Sat, 11 Nov 2023 17:42:28 +0100
Message-Id: <20231111164229.63803-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
References: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add interrupts to SM6125 DWC3 USB controller, based on downstream/vendor
code of Trinket DTSI from Xiaomi Laurel device, to fix dtbs_check
warnings:

  sm6125-xiaomi-laurel-sprout.dtb: usb@4ef8800: 'interrupt-names' is a required property
  sm6125-xiaomi-laurel-sprout.dtb: usb@4ef8800: 'oneOf' conditional failed, one must be fixed:
    'interrupts' is a required property
    'interrupts-extended' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW.
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index eb07eca3a48d..1dd3a4056e26 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -1185,6 +1185,10 @@ usb3: usb@4ef8800 {
 					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <66666667>;
 
+			interrupts = <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hs_phy_irq", "ss_phy_irq";
+
 			power-domains = <&gcc USB30_PRIM_GDSC>;
 			qcom,select-utmi-as-pipe-clk;
 			status = "disabled";
-- 
2.34.1


