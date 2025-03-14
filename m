Return-Path: <devicetree+bounces-157561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 93435A61240
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 14:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9C951B6273E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 13:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F861200B8B;
	Fri, 14 Mar 2025 13:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QJx5I3WI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F411FF7D8
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 13:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741958057; cv=none; b=Jgmra3E143FS8iR/PaKIEdYg5uhKP9RILzycPwqfj3gbK8poOY1D4/pYAjvzN2YRnjlmLMCc1XOTiOlu3I4zgHeB2rLxYiz4zbwehda0zu9II+ACoEmvmiLJ4fCWMueGlpDsm+w62ZKV3TkKHwEvvtj2Xjws5CHHMULIBxfEwuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741958057; c=relaxed/simple;
	bh=CU+/XDQ60jyq3i9MimUs3kFmTV8jnj/R31j8nRU/h1U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Djglv6dmOfy0mQIyfpm4vRq0rvJuqhoWdlXAzkcgRRCwTiZsVissmW0E+icZu8DUcPbWVLR9R2drNqVW8WNlNBLQ6W65jl1aVydozYYDQG4ubD89U4VlUv2JSktC9QCy6BV4aJbrdtr9iNN1SDOTuQ7cBpNXkGJEmsTFBD9GXaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QJx5I3WI; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-abf3d64849dso341810766b.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741958053; x=1742562853; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3DObyF/iUzXjPpPEbY0w+cm8oMYW2eB7he9g871AEyE=;
        b=QJx5I3WIhysKc3fOhiO4N3zGklUXZIQhtCcJ01JzrnbmWLF90R5nqej5m6mROdcDhk
         v0cVaPOSYoInDRQUbQZXhVzGMq0TRxnU2W0NzC+g8uVjWlBnpOolJdLV5HHvrFQP2aIC
         ctDQ5JrHT7hF0XsTXpIWpZdt7pjYeycAu6rfbnq0+mYY9H0ZE39hYgAOanYY+KSBcqHA
         eN44rckluc7bxrEv1/+CjxqLYOcI3WDq8cgrJkbDdw+mQBJZH0893WK003kEHizuwc0z
         /ItByWB45osw04dIe+EGwJpJQbXGUNOzsTKZMmgu17usaymfjTLm1GovFQSdyVrfkJIZ
         n5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741958053; x=1742562853;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3DObyF/iUzXjPpPEbY0w+cm8oMYW2eB7he9g871AEyE=;
        b=kyTeBFP9RbuFkEBCOqOmhSUOHSEpneMevU2x1FfknyJ2xWQwHMUSZNTOKxooxLor8N
         xmYZWx3DeTlrKuRjOyEB9ue4Vvj7R1KNgLNva6OIs1FJtuFIk217xBw6GCtRPg1QXrzc
         yxyJmWnSiF8iTxkustvvTahFSe13vK3YOsLrxwMBnpYdBoY9H+HfuHaGb+EjZkeJaiE9
         vg/KJuA32P7cT3ABbHONPySCQPwhCmpv1S2usu3dRKmJ47BdLurxk4ZH1tAlGTg+R1SF
         irPOBn+yILLTYU1YFAel8yg/MO3HqfvuqR2odtz3zz7v6nLDbltsF1XUvSt/++5BekN8
         Ankw==
X-Forwarded-Encrypted: i=1; AJvYcCWS+kWVGVJojK5tPbR7uX7roHc+CPQ8CKzFUCry2CrG+aQZvmD0YzYaO6V1jp0R5Vr/31cJUygIuN5R@vger.kernel.org
X-Gm-Message-State: AOJu0YwLsVG5RxxIR8g6ASchr4Bzgei/WI88zzSC/Xf6ox3UzknG4nh+
	OSoGnc/c4491PzEdJdI2tEoFvNxeyQGIM1vL+JX5j+ta41ySzeXTrne385mi9x0=
X-Gm-Gg: ASbGncvbw6VEY9L1UgX+SIuPoyNxQXRfUy5uvYcPxDl3UFt+w6H0Y0geWXIncxqYLvL
	CTXQH0M29tg8ak82jw4LKzdL2ppJc7bACkyct5EU5X73JvnfZ/SQTc2dJWqgB2UCkbeEelbbXE6
	Knuf7mckIMFMxenEOh9fwN9vwFlPQ6eSB6DeKL1s6rt5KeAp4BY/mJC3uCrAqwKby0Kg2qrSdSy
	T+rx3nM/5AjBWkxLXmkIHBNn3dIquTqxlhW+IsgrVgZ9fH4QHV0p4CoXFuq1+vbTfbC1QXURB9I
	WxrvVhLglbqeIKQk/fNuoAVW9IAvi1pox0UoImnMucwQH37stVsr6IXq8526gpFFOjO7RI/IoUO
	0HuHOqwLBTj6WGQLtwtBKvg7kCK8Y+WYnVffAnnv/lFcV+uzzs+34bEE8AshjFI2GVdZh4ov4iS
	VXBYM=
X-Google-Smtp-Source: AGHT+IE6XOuB72UEqsTJNdvpZRBJmMnctkvfNijsse/zxvJ7jAiEAX/EBW4sazJg5K0fUUXfv75Z2g==
X-Received: by 2002:a17:907:7e91:b0:ac2:811a:665a with SMTP id a640c23a62f3a-ac3304ef297mr260778866b.57.1741958052787;
        Fri, 14 Mar 2025 06:14:12 -0700 (PDT)
Received: from [192.168.178.107] (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a3fc0esm226008566b.137.2025.03.14.06.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 06:14:12 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 14 Mar 2025 13:14:01 +0000
Subject: [PATCH v6 3/5] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-3-edcb2cfc3122@linaro.org>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
In-Reply-To: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
of previous CAMCC blocks with the exception of having two required
power-domains not just one.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 46b79fce92c90d969e3de48bc88e27915d1592bb..065a219e69c632eca288c9ade001949e37b92173 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -5116,6 +5117,22 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,x1e80100-camcc";
+			reg = <0 0x0ade0000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,x1e80100-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.48.1


