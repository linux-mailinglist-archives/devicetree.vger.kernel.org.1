Return-Path: <devicetree+bounces-63557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A69DA8B556D
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:36:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C86031C21E65
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 10:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448E83AC10;
	Mon, 29 Apr 2024 10:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="osimp+Wi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7F33987C
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714386955; cv=none; b=CIrjIeLTqpxyGMZNkK89juRUnTJRLEScWiVomuCTRsNhGwab2LatAXYCwYUcZax3Rar7goCO9OJcRyVwA2t9oGy0HZqNlTgkr0ey6NOpt/73UlKq/loueC3+aLNV7MKPTRe72n8da6Dd8jidsJHugjclwwW1Nmo0Ibsqt+LM62g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714386955; c=relaxed/simple;
	bh=D4hROTlU0kdQTa7T42f1g071O1XrjI4wtd36yDhM8oc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E13Bq1R1HqG+OUCTfokbnAbB0Imavy8Omw9Z3CXYk7DQp5ghLiVRV1qQ4BlCrE+WDIRp4yx06uR05jKf8c1b4+GF6DV0nw/lqS4zwXlWC89h9oEqEiKnZpGbaz0GPKAyXETKrZNr+3/dmh7GJ7tsEy2hnb8JMoiYOK9JULTKQfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=osimp+Wi; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a556d22fa93so466621466b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 03:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714386951; x=1714991751; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1P++aQSPc6pWnY3non1DpBZNviMvxG8QQjODyNDwQzI=;
        b=osimp+WiytLxDG8KJBdBU4qUKR0yFjLp58CqKkInZ1buLLuJWQgY0k8JHLCnx+1ko0
         qM8YpGjINTPHivPOYGB5dEzTxgRmGFpIDTCvo8mFfjqQTuaQmBW9an3CWRhtBBxSWa0o
         8kJszKALlUxg7PPdm2EpddNFndP6tDLx/aeNyCCJEKIunzOGbxXRccxnyNpnwgZwVZeW
         ck/yDREus4+8srQ/CRAjVwHnAv5aoiPyc87yGz7yFv53maGkQFebOTKnuK2xPb2ksRcH
         RHImQckeOZPJQgXI0oHcTTOVkWmYHYg364lMOG5KiJGcrQKIHTVUVItZjhCWfY/potfw
         H1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714386952; x=1714991752;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1P++aQSPc6pWnY3non1DpBZNviMvxG8QQjODyNDwQzI=;
        b=UCWyJHr59ekaZJhuy6rFe1/CEc27bEuUEPeO8F3UBgUi+JMWOSl5IGKFVcZfyz9Nwt
         KqY9K53s4SVu+6xklYlOiQPNyehRxipQPd0d8dJrLW78ROA27qYrFkx1ipsVs+Unlos8
         fgF7zA+l52AxHE9qObmBIVy+uC6vXC34I/OQac7W9bzccG67beravpNM2Jiyrp08IAC6
         khUmaeox2tssVaKuiIPdGkI1BiScORthI4Q6MhRUW+1G14zhrP/Yg2QC05bII/Olkzf5
         kBmAO/PIAC2Vp0l0iitqB2P7u7ux6CHBl+Y48NgvQ3+WAIfvYLGDt78Y3gYVMGNCd+/0
         mV/w==
X-Forwarded-Encrypted: i=1; AJvYcCVLJpp/AtVxOdXJVnbzhmUCnPGjigSjQ+oTUHIDN98USeDTvNk9M9Xfwm2OQUFjYIQfNbzvewd3BiQb0cIFcfKfNdjsaw7Oz2gSdA==
X-Gm-Message-State: AOJu0YxfEtEzMKDRfm6DF4IcVR17nPPTlYrfpPnci+cz+1kjvRiRFTqK
	9c/5AyjyEiXWTchMZgaLa2SCP3izhpATypp6VLhTHQlSsM8spiHNDT9eh0eP3Uc=
X-Google-Smtp-Source: AGHT+IG2LaIhBRpKrhiNyxNfVcTeKVZT84nL2xVtGWqcgk4hja1Hk5xHRR/xQujTgEuZrNki/5RqzQ==
X-Received: by 2002:a17:906:5fd3:b0:a58:e8c7:c0b8 with SMTP id k19-20020a1709065fd300b00a58e8c7c0b8mr4308756ejv.7.1714386951704;
        Mon, 29 Apr 2024 03:35:51 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a7-20020a170906670700b00a522bef9f06sm13717707ejp.181.2024.04.29.03.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 03:35:51 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 29 Apr 2024 11:35:49 +0100
Subject: [PATCH v2 1/2] arm64: dts: exynos: gs101: add USB & USB-phy nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240429-usb-dts-gs101-v2-1-7c1797c9db80@linaro.org>
References: <20240429-usb-dts-gs101-v2-0-7c1797c9db80@linaro.org>
In-Reply-To: <20240429-usb-dts-gs101-v2-0-7c1797c9db80@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

Add the USB 3.1 Dual Role Device (DRD) controller and USB-PHY nodes for
Google Tensor GS101.

The USB 3.1 DRD controller has the following features:
* compliant with both USB device 3.1 and USB device 2.0 standards
* compliant with USB host 3.1 and USB host 2.0 standards
* supports USB device 3.1 and USB device 2.0 interfaces
* supports USB host 3.1 and USB host 2.0 interfaces
* full-speed (12 Mbps) and high-speed (480 Mbps) modes with USB device
  2.0 interface
* super-speed (5 Gbps) mode with USB device 3.1 Gen1 interface
* super-speed plus (10 Gbps) mode with USB device 3.1 Gen2 interface
* single USB port which can be used for USB 3.1 or USB 2.0
* on-chip USB PHY transceiver
* DWC3 compatible
* supports up to 16 bi-directional endpoints
* compliant with xHCI 1.1 specification

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2: fix commit message
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 41 ++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 9755a0bb70a1..217699477b32 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1261,6 +1261,47 @@ cmu_hsi0: clock-controller@11000000 {
 				      "usbdpdbg";
 		};
 
+		usbdrd31_phy: phy@11100000 {
+			compatible = "google,gs101-usb31drd-phy";
+			reg = <0x11100000 0x0100>,
+			      <0x110f0000 0x0800>,
+			      <0x110e0000 0x2800>;
+			reg-names = "phy", "pcs", "pma";
+			clocks = <&cmu_hsi0 CLK_GOUT_HSI0_USB31DRD_ACLK_PHYCTRL>,
+				 <&cmu_hsi0 CLK_GOUT_HSI0_USB31DRD_I_USB20_PHY_REFCLK_26>,
+				 <&cmu_hsi0 CLK_GOUT_HSI0_UASC_HSI0_CTRL_ACLK>,
+				 <&cmu_hsi0 CLK_GOUT_HSI0_UASC_HSI0_CTRL_PCLK>,
+				 <&cmu_hsi0 CLK_GOUT_HSI0_USB31DRD_I_USBDPPHY_SCL_APB_PCLK>;
+			clock-names = "phy", "ref", "ctrl_aclk", "ctrl_pclk", "scl_pclk";
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			#phy-cells = <1>;
+			status = "disabled";
+		};
+
+		usbdrd31: usb@11110000 {
+			compatible = "google,gs101-dwusb3";
+			clocks = <&cmu_hsi0 CLK_GOUT_HSI0_USB31DRD_BUS_CLK_EARLY>,
+				<&cmu_hsi0 CLK_GOUT_HSI0_USB31DRD_I_USB31DRD_SUSPEND_CLK_26>,
+				<&cmu_hsi0 CLK_GOUT_HSI0_UASC_HSI0_LINK_ACLK>,
+				<&cmu_hsi0 CLK_GOUT_HSI0_UASC_HSI0_LINK_PCLK>;
+			clock-names = "bus_early", "susp_clk", "link_aclk", "link_pclk";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x11110000 0x10000>;
+			status = "disabled";
+
+			usbdrd31_dwc3: usb@0 {
+				compatible = "snps,dwc3";
+				clocks = <&cmu_hsi0 CLK_GOUT_HSI0_USB31DRD_I_USB31DRD_REF_CLK_40>;
+				clock-names = "ref";
+				reg = <0x0 0x10000>;
+				interrupts = <GIC_SPI 463 IRQ_TYPE_LEVEL_HIGH 0>;
+				phys = <&usbdrd31_phy 0>, <&usbdrd31_phy 1>;
+				phy-names = "usb2-phy", "usb3-phy";
+				status = "disabled";
+			};
+		};
+
 		pinctrl_hsi1: pinctrl@11840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x11840000 0x00001000>;

-- 
2.44.0.769.g3c40516874-goog


