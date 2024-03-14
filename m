Return-Path: <devicetree+bounces-50413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA8487B9B8
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 09:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A32682832F4
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 08:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 792AF6BB30;
	Thu, 14 Mar 2024 08:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="By/226kC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE075D497
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 08:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710406392; cv=none; b=gg/NZmHzOMqK94KJBtS6sJ8l1hMgD/mAEujR1vLMyUmtn6KZ4WBs8a5O4UMOvv3mKzwLirrxT8nYvnhMwlwjROBQ4eN0iieduNsJjKOplPWCknZQWIuOYwmN7OEeAnCcPX7XqVvTl41aq2gQZtzyYJiEAkMBqnyIz8XnqpqDBM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710406392; c=relaxed/simple;
	bh=JRbh0ekOAZoITs6bw+4Z2PKWQij1OKHQNZkoVnNXhvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=MfYldJgKHnjHi2D6Iqo+bgRgQ8PYZu/F+2N8iVCUY5rKeviYxPNoJE9+/HcAxmcQH1EsTUY1VsBg++bccxFILpVEhI+qHxWMdtIL/SFWgp7KwQWuGz+fTsTjbXOEZ8WOwsVWcTiDdf2dU7AhF6qVM9LclGbIpaOd6tMAYiGlzvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=By/226kC; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-413eede49dbso4143445e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 01:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710406389; x=1711011189; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UbDxneRzxmh6zafaW9TXqgUwW7Hf6w8+OIr/Rmft0o8=;
        b=By/226kCUcEjhGfFaLeDVzuo87OuoGSgpEdVtQZq0EApeYwXbATrwOUSlc3s7ePqrU
         3oUC363DsRRji1s7Our7OgxQHsFRIl845qTxVcJHkLyc81gJmxLeIKcG7Q0qiLEkLoGG
         lAAD/oFB/BkIcfS8dKidS4drVoRR5okno6Qs3/iBF2ebAxy8GRcroHK4ihx9GoC+E/h7
         KrzEV532nhI7opHaPb8I0rY/mDiqSvAUxGf4fg4AIxBKsy7RJeBxrwMYP1ksUqKN+/kQ
         5R3WiJZ121KuJHKodExU52BNl4LmEce4S1D0FG7lunS7DNn8yU678qHQ+UvRVSxhdQ9r
         HnEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710406389; x=1711011189;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UbDxneRzxmh6zafaW9TXqgUwW7Hf6w8+OIr/Rmft0o8=;
        b=H9tgWhbV+zyqyOmZAMtTZIghqZIE8eCePcMF2Zl9L7TmyO/dp8Lw1FGNnriMpPo1Dt
         3NMJZPPJjg8jrSpIKluSG8lCT+EoZyi7vFFqe3s5PqYKxhDT2czssuBIBKczd2VjRvoG
         dxwqUU1ik7wVC2HxbF6fTgM3jxh3g5W62ZYIiVqtgSAEbMt23L/P4hmZd+WQBuO9/Dhb
         MgV75fOOMtilFP8AkQnhSYWmQNg45WUCFvXQ+fEBKaCCMLmUggYFGUEhTtRM8eQWj+x+
         fq8WccNI4ZIVCdah/8hbQoHtYJC9oP8nIe7f3x6COY13EnvGFSNjEf8jDcia603z1rxd
         9u6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUHpYeGRlBcXHwFguY0ASZff4O51pkIBdtgNoi8kl5qrrVxZ/8gyiI/328OgF79XCsYE4yy2J8N1oSHRh9v/oxrrCBpwY5zspQsTg==
X-Gm-Message-State: AOJu0YyNOnLOUgbIKfkexS7I1cBCK3wgdi1hOkAJYUMu2StkFv5NCwGa
	QH7mjGPRgI499qjxTypTi76gNF8bnYHWi2bVJ+j7jDdyWZpKqsQpgHxzCdKJSbM=
X-Google-Smtp-Source: AGHT+IFRpexeDw19e7xHc9v1E4DV5w6+c9RQwY+Hev2+ZsJyImI39fcT/32EqxfKP6Mso5LyjBhRTA==
X-Received: by 2002:a05:600c:511d:b0:413:27ac:d2fa with SMTP id o29-20020a05600c511d00b0041327acd2famr775723wms.6.1710406388634;
        Thu, 14 Mar 2024 01:53:08 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c16-20020a05600c0a5000b00413f7c89c0esm239089wmq.24.2024.03.14.01.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 01:53:08 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 14 Mar 2024 09:53:06 +0100
Subject: [PATCH] arm64: dts: qcom: sm8650: fix usb interrupts properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-topic-sm8650-upstream-usb-dt-irq-fix-v1-1-ea8ab2051869@linaro.org>
X-B4-Tracking: v=1; b=H4sIAPG68mUC/x2Nuw6DMAwAfwV5rqUQHgJ+peqQEKf1AAQ7VJUQ/
 96I8W64O0FJmBSm6gShLytva4H6UcH8ceubkENhsMa2pqlbzFviGXUZ+s7gkTQLuQUP9Rgysuw
 Y+Yeh995GCk10I5RUEir63jxf1/UHgOjETXYAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krishna Kurapati <quic_kriskura@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2404;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=JRbh0ekOAZoITs6bw+4Z2PKWQij1OKHQNZkoVnNXhvo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl8rrz9KSsY3SwzrfHNznomVnGxXTudvzA0j9vmM0U
 eawhbiCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZfK68wAKCRB33NvayMhJ0RixD/
 9xz+bVW58nmfFwhQ8QFWl1/VMdntM/B/3YsrSWuRe1u2XNLVXIrgIkMuSPeja1NEbIFnF2nIYluBuW
 6IkPMmgeYusMuptUkp0agOOHL97/hMK8fTjcl3+dw5jPuUUNr33XHAT4cXeM1YuNyfq/STDBy4cpm2
 WTGw6/AB9TbI90Fv50hTiOeCLv4oV094z7OPUlAHmDAAKT+B1PpAOLGQYFW/vBNcFpxN8bBYahpIb9
 Rvp0gzh2ALztMGs3Ks3HyaYdKhRaosKkupFaC+ydDn62Elep3oGUIKYXiEMXUF6vc0ZkfiO5kzLujT
 92OLAezUcFKt70XqL7qSwlJCIgEQ7NUlv7iTt2WNNsUQ6IoO+IIttVjIpf4kiumW/9+33ExOs0eXsT
 0KMMapBvALHPNH4Z9+Xup9HfH8ayW/BC2v/kDhlMmi63Jdw6uhPPwp8uTD83zojAtDO2LXuObC75/k
 t4NQNqqt2VlX04omvCPvA4TDssPUno/HHyQNQdyVhVYDCnslhshumB13Y3d+ji9IBRAwAxnBgPA9fa
 FCjyVQqwfhLGqLHrorZBoDLpCeycCTsT6YLSNQak37CPXE5/Vf1WADEmFe4zu53FjWh/xQs71bAqvl
 CulT+f/Xk5DUmiGwnA7qrLch33qjWHMBekgPnqlgcjEcifN15yWppihQsWnA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Update the usb interrupts properties to fix the following
bindings check errors:
usb@a6f8800: interrupt-names:0: 'pwr_event' was expected
        from schema $id: http://devicetree.org/schemas/usb/qcom,dwc3.yaml#
usb@a6f8800: interrupt-names:1: 'hs_phy_irq' was expected
	from schema $id: http://devicetree.org/schemas/usb/qcom,dwc3.yaml#
usb@a6f8800: interrupt-names:2: 'dp_hs_phy_irq' was expected
        from schema $id: http://devicetree.org/schemas/usb/qcom,dwc3.yaml#
usb@a6f8800: interrupt-names:3: 'dm_hs_phy_irq' was expected
        from schema $id: http://devicetree.org/schemas/usb/qcom,dwc3.yaml#
usb@a6f8800: interrupt-names: ['hs_phy_irq', 'ss_phy_irq', 'dm_hs_phy_irq', 'dp_hs_phy_irq'] is too short
        from schema $id: http://devicetree.org/schemas/usb/qcom,dwc3.yaml#

Cc: Krishna Kurapati <quic_kriskura@quicinc.com>
Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ba72d8f38420..985ef46a04e1 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3584,14 +3584,16 @@ usb_1: usb@a6f8800 {
 			compatible = "qcom,sm8650-dwc3", "qcom,dwc3";
 			reg = <0 0x0a6f8800 0 0x400>;
 
-			interrupts-extended = <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
-					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_EDGE_RISING>,
 					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
-					      <&pdc 14 IRQ_TYPE_EDGE_RISING>;
-			interrupt-names = "hs_phy_irq",
-					  "ss_phy_irq",
+					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "hs_phy_irq",
+					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq",
-					  "dp_hs_phy_irq";
+					  "ss_phy_irq";
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,

---
base-commit: 9bb9b28d0568991b1d63e66fe75afa5f97ad1156
change-id: 20240314-topic-sm8650-upstream-usb-dt-irq-fix-d6bb2fed3fa9

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


