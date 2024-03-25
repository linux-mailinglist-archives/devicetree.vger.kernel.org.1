Return-Path: <devicetree+bounces-52890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E2888A50E
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D9D71F3C417
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98DFF152172;
	Mon, 25 Mar 2024 11:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jAvr4uNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8129C152187
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 11:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711365003; cv=none; b=ptOy/cZTE84nw3axYoD8z4eSyrVyp4bdLYO4vc7Www7aAVCkr0x+d1cT11vqI3FT0Mk9/zZvEdzNtIcjql076vpbOjd25bxDS45WJdDaCgnfwU8xlnmzZKpzWNl41rtDtl7aX+PSuSufdA2JtAvPvHs22qq/xJ2IT+W/EFeToSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711365003; c=relaxed/simple;
	bh=hinQajAEakYqxJaAvUFt65KdqGEthzlwyiYxmTWLSwo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qs9mEz3snDJAears3APcUBNJvkBlUH0uYoCmAu6oozVUUHwT6EGCoLt+KyQiI9wz5ChaJ9Bh809+BEBhH5y/gHC/VA+ogubiRUhJ3bjRAnaxHfpeCot9TVp0n8jo5BzAYs0c6AW4tjd6nUughX5F7EUImwPRaq/5kfs+o6bYMek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jAvr4uNN; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56b0af675deso5149749a12.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 04:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711365000; x=1711969800; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c50DZO+Qx5CrKtjcEqrQpx6F5muY2d18uAtSUCAhezE=;
        b=jAvr4uNNbAP3ACcYea1Pfoo0OVoccnRznpIRAAF+n8HAbs8TKmjhua9wlrgYxYq9zI
         o4uxYVR2zSztUWx4fwWio/8WIdS+67qtFjXaVq0P+THFPa0CYYW/4Ax3NqwBcJYXfgjX
         xKtXDg+d0A/ipA8uUMSFybvmWhIfXMoMyYbXWs6P3w0FWiT3nTcBPd4nnk09ACKcL2Jy
         rfJWpJdJeCJ22h9Mw8TYUXvVwaaJQltqCougVMO47vzJ2L5a+ZAJzGwIun6MQe5vpFmG
         CcY+xQg1TT9Ut3aY1g64fyhQuCvx6tDj7wwzP9fwqZ4RKQz0rSCOSfUNVz70OqkoHHCu
         pb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711365000; x=1711969800;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c50DZO+Qx5CrKtjcEqrQpx6F5muY2d18uAtSUCAhezE=;
        b=EcUO05np+FT/kxomRPpQlFDUK10pSOlMY9EsjD1OnEPrI4gLj7Nse2cjuZ5exXCiwg
         A3r42DaubQi1L0aXmbFVugLmF6RFY2Od00UGuPAoJJqGTzuSyajY8rQLj+ikyUbj0qxb
         N4ER6f73kKh/tsbfB7kTKlXc0cZySEgqUf2Q4gs/aTCxmqttNfjGHxX/1Y5cqQIEvg5Q
         GYwWfHW/uFfeTL2QuLa42KfW3mz1zwVInj+FJfyHiZCrH5qCyKAZTHkZISnQDUupIlkO
         Ht4Wd3gls1SZJhFvGhB3kx2ohw1RHIhb0NX5O2IuK5/gFeTPTQ3X256BTnlahap5HaWO
         04CQ==
X-Gm-Message-State: AOJu0YxKqFnHo9OIpfwn9HkKiMExaTiURNam7Ms+jMg/MwBvZrLdVXxh
	Ud0inI/HRRSl2/3e3j2e7MmoBmdZMt9gpp9WyHQd2CxYD25TlPYxZxlpm7tvSow=
X-Google-Smtp-Source: AGHT+IGJCn/q3TzZQ/sfcU2QtBH0NrHSyetkQMtYJg1jSoVYaJ2sk3brXJ7gWcgR4ptjTbLqURKNtA==
X-Received: by 2002:a17:906:f90e:b0:a46:ed93:b37d with SMTP id lc14-20020a170906f90e00b00a46ed93b37dmr5205109ejb.9.1711364999833;
        Mon, 25 Mar 2024 04:09:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id bw26-20020a170906c1da00b00a4650ec48d0sm2972367ejb.140.2024.03.25.04.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 04:09:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 25 Mar 2024 12:09:51 +0100
Subject: [PATCH v11 5/7] arm64: meson: g12-common: add the MIPI DSI nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240325-amlogic-v6-4-upstream-dsi-ccf-vim3-v11-5-04f55de44604@linaro.org>
References: <20240325-amlogic-v6-4-upstream-dsi-ccf-vim3-v11-0-04f55de44604@linaro.org>
In-Reply-To: <20240325-amlogic-v6-4-upstream-dsi-ccf-vim3-v11-0-04f55de44604@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Nicolas Belin <nbelin@baylibre.com>, 
 Jagan Teki <jagan@amarulasolutions.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3028;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=hinQajAEakYqxJaAvUFt65KdqGEthzlwyiYxmTWLSwo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmAVt+AlXm33R5US/QFy5tRjSgAFV3tRQPAr8s2ioG
 3r1mCYKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZgFbfgAKCRB33NvayMhJ0fqVEA
 DH4KjqxSXHBDe7fYDf4/7JFLNdGDuPCsrGV30L6WP29u1xPXx8RA16knTkwN4NjPDRJ7/hg9qx3gHj
 rAHFrPJZuJcJZP6ZFbQAVCyzxNDYxuoe9+2mp2kngm0mDdnzQiXGP2ND86E/EZoF48VaCTt1/GwENF
 V2/7WLfRENSQ5o+Fp/q6089QO2AqoS7OGeU8SqcrobaXx9f7uu+VbnI/nIS6NyRm6pCrVxSNUaDPTY
 DJXZyAnlpu3Kb44ko4Fd4ZxsGbBB5T1TlyzPU4hFTQwa9NDLOdHd0aHb278cZwd0m5myV123oslk9C
 0J2psO2GAxjDPRskOMVwc3mipCd6ccF4yPcavOOcnvaaxMl+K6gBEq5eGxhsC0CZYlefg36wCdgV04
 GYwMz94q7tZd+RPZsCQK7fYf301VwJwD5lR9bADXDDPARtsMfpH/BLbzw6Ti0sacRM0wxDCKKD5Yyc
 oAEXYjwKXFngzmbzRuMa5fILyfs8WfInzlIc5M1JqTP0kw+9bswadgDwAhho1aKfiqiyD4i3NoZCe4
 571PHO31eYCO3vnMj0j91ulFccBgMnF7KpoqgWcWv2eXuI/A7k5S8fw8KlLEjdsvRQxmQfEDKRMTc9
 00zlIr0LGVr+p7/lMJdNonubsZKEl3aTO3xCSlN/9AVGB+T4YJfXrWsy04Pg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the MIPI DSI Analog & Digital PHY nodes and the DSI control
nodes with proper port endpoint to the VPU.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 70 +++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 9d5eab6595d0..b058ed78faf0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1663,9 +1663,28 @@ pwrc: power-controller {
 								       <250000000>,
 								       <0>; /* Do Nothing */
 					};
+
+					mipi_analog_dphy: phy {
+						compatible = "amlogic,g12a-mipi-dphy-analog";
+						#phy-cells = <0>;
+						status = "disabled";
+					};
 				};
 			};
 
+			mipi_dphy: phy@44000 {
+				compatible = "amlogic,axg-mipi-dphy";
+				reg = <0x0 0x44000 0x0 0x2000>;
+				clocks = <&clkc CLKID_MIPI_DSI_PHY>;
+				clock-names = "pclk";
+				resets = <&reset RESET_MIPI_DSI_PHY>;
+				reset-names = "phy";
+				phys = <&mipi_analog_dphy>;
+				phy-names = "analog";
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
 			usb3_pcie_phy: phy@46000 {
 				compatible = "amlogic,g12a-usb3-pcie-phy";
 				reg = <0x0 0x46000 0x0 0x2000>;
@@ -2152,6 +2171,15 @@ hdmi_tx_out: endpoint {
 					remote-endpoint = <&hdmi_tx_in>;
 				};
 			};
+
+			/* DPI output port */
+			dpi_port: port@2 {
+				reg = <2>;
+
+				dpi_out: endpoint {
+					remote-endpoint = <&mipi_dsi_in>;
+				};
+			};
 		};
 
 		gic: interrupt-controller@ffc01000 {
@@ -2189,6 +2217,48 @@ gpio_intc: interrupt-controller@f080 {
 				amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
 			};
 
+			mipi_dsi: dsi@7000 {
+				compatible = "amlogic,meson-g12a-dw-mipi-dsi";
+				reg = <0x0 0x7000 0x0 0x1000>;
+				resets = <&reset RESET_MIPI_DSI_HOST>;
+				reset-names = "top";
+				clocks = <&clkc CLKID_MIPI_DSI_HOST>,
+					 <&clkc CLKID_MIPI_DSI_PXCLK>,
+					 <&clkc CLKID_CTS_ENCL>;
+				clock-names = "pclk", "bit", "px";
+				phys = <&mipi_dphy>;
+				phy-names = "dphy";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+
+				assigned-clocks = <&clkc CLKID_MIPI_DSI_PXCLK_SEL>,
+					 <&clkc CLKID_CTS_ENCL_SEL>,
+					 <&clkc CLKID_VCLK2_SEL>;
+				assigned-clock-parents = <&clkc CLKID_GP0_PLL>,
+					 <&clkc CLKID_VCLK2_DIV1>,
+					 <&clkc CLKID_GP0_PLL>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					/* VPU VENC Input */
+					mipi_dsi_venc_port: port@0 {
+						reg = <0>;
+
+						mipi_dsi_in: endpoint {
+							remote-endpoint = <&dpi_out>;
+						};
+					};
+
+					/* DSI Output */
+					mipi_dsi_panel_port: port@1 {
+						reg = <1>;
+					};
+				};
+			};
+
 			watchdog: watchdog@f0d0 {
 				compatible = "amlogic,meson-gxbb-wdt";
 				reg = <0x0 0xf0d0 0x0 0x10>;

-- 
2.34.1


