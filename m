Return-Path: <devicetree+bounces-118789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEE49BB8BC
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 16:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF1941C23E43
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A86B1B6D07;
	Mon,  4 Nov 2024 15:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KnXzrRwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C2C22339
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730733347; cv=none; b=kkO9u7Le/qNa6kqaBfA0GJ2KNsSytkgPVqMH2uaODCsoqTATf03/qg/+IwxtRP6/TfSoDlP8hdY7qUPwpF772ts8RvSoWffdOwdzFkNxr4s5u5MWVtienaNI5f/MCP0wmblE4tnx56x1EGry1ZsRWsD8r3zBg2t4VAuqYXXdf4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730733347; c=relaxed/simple;
	bh=yC5x0Kr3GQ+y52MwCBTCIIJOZYvx1zk4EFtR7xU0I1M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pQ1x9Qn9uscPhqihzv+OM5UhaNOG5CMuLnGb5LoVGlUwjS9OxKsczFPDe2k46zGG+403rz7UvYUwxD/A2qU5OQoOscSqFYFaZa6rooCNccpkNFww1/vc+eTCM55rq987+JdS0I7Sl+RQIOl8Zg6ri2sE5/SnCj0yZRODcvmP+8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=KnXzrRwP; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539f2b95775so4763943e87.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 07:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1730733343; x=1731338143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JCLk/wc3MKwAF912ySsq2eZpu6hxxtGQsnffSicJSqo=;
        b=KnXzrRwP0AsVCqQLjqUJb9BhDAmBFq3YHt1G7KeatiEfceBb5M/9+CzdmjkDPN7A1H
         Sik6Xmxp5xf8W3eSeVMlWUW0KXxC+fIDiviTfbGp5bvF2rYkh9KnKl93TSh6++lYOTkE
         CPGcJv3CHGaMNYvqFex6AveJiQP+bnOJDUF8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730733343; x=1731338143;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JCLk/wc3MKwAF912ySsq2eZpu6hxxtGQsnffSicJSqo=;
        b=GEJ3o10gUCXNSyYaadDlVXnttSAEB8O1MQTsL5LViWdFyaMaMBkm/F+zCap5fymJtM
         h9cE9gCkNzrxDtDO0kaD2YwQs1zWxjFal2IcGrduyTfwMkXWknG3prLszDJ3tIanffEl
         22QILF6v0SxaeBG60jml0UW5VVtA0Xusd51phhU592MKCypqu3UH94UqVElHW9RG4yQ/
         lD+VErkbRTyumo1PP9dufUKjyKh29TtQ6efwr4v+Wb1B2kMcr8oEdG+Tl2iZqGPo6b/3
         U0D28dLpKKQQRYFMcM3fT526jdM8jXR+Ef6teNZ4yR4IVHIwnLUy/0+whvHtjwQxQ0Kc
         pMaA==
X-Forwarded-Encrypted: i=1; AJvYcCX4tHLyOwpOnzfw0IsA5hydMYsBPy64M3pnQV7Qt2AyFEIozSewuhoww/b6+tqqnP/r/VUA+3Fja1gf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3tPTo6Pln6uRaamCX53wmyzwkx+i+G1CF8Me/fYdszravtSNA
	Ro1DQLcDCQHgzp63V100GlGIPNcHzgk6hD0iIhXeuDG+N0mxjO8foyKuKt3oE6o=
X-Google-Smtp-Source: AGHT+IHZ+MhzY+cG10/XeJWXQh7+JhLBbhGrXh2ptOIna5FlTvipU/iFvh7dLTIkTlqmlf8NGjimig==
X-Received: by 2002:a05:6512:1087:b0:539:936c:9845 with SMTP id 2adb3069b0e04-53d65e0b4afmr9070518e87.37.1730733343135;
        Mon, 04 Nov 2024 07:15:43 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.195])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564c4fafsm561885666b.47.2024.11.04.07.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 07:15:42 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: imx8mn-bsh-smm-s2/pro: add simple-framebuffer
Date: Mon,  4 Nov 2024 16:15:20 +0100
Message-ID: <20241104151539.1678388-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a simple-framebuffer node for U-Boot to further fill and activate.

Co-developed-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v2:
- Fix the warnings:
  (ranges_format): /chosen:ranges: empty "ranges" property but its #address-cells (1) differs from / (2)
  (ranges_format): /chosen:ranges: empty "ranges" property but its #size-cells (1) differs from / (2)
  by setting both #address-cells and #size-cells to 2.

 .../freescale/imx8mn-bsh-smm-s2-display.dtsi  | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
index 7675583a6b67..98dec3c42060 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
@@ -4,6 +4,34 @@
  */
 
 / {
+	chosen {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		framebuffer-panel0 {
+			compatible = "simple-framebuffer";
+			clocks = <&clk IMX8MN_CLK_DISP_PIXEL_ROOT>, /* lcdif */
+				 <&clk IMX8MN_CLK_DISP_APB_ROOT>,
+				 <&clk IMX8MN_CLK_DISP_AXI_ROOT>,
+				 <&clk IMX8MN_VIDEO_PLL1>,
+				 <&clk IMX8MN_CLK_DISP_AXI_ROOT>, /* pgc_dispmix */
+				 <&clk IMX8MN_CLK_DISP_APB_ROOT>,
+				 <&clk IMX8MN_CLK_DISP_AXI>,
+				 <&clk IMX8MN_CLK_DISP_APB>,
+				 <&clk IMX8MN_SYS_PLL2_1000M>,
+				 <&clk IMX8MN_SYS_PLL1_800M>,
+				 <&clk IMX8MN_CLK_DSI_CORE>, /* mipi_disi */
+				 <&clk IMX8MN_CLK_DSI_PHY_REF>;
+
+			power-domains = <&disp_blk_ctrl IMX8MN_DISPBLK_PD_LCDIF>,
+					<&disp_blk_ctrl IMX8MN_DISPBLK_PD_MIPI_DSI>;
+			dvdd-supply = <&reg_3v3_dvdd>;
+			avdd-supply = <&reg_v3v3_avdd>;
+			status = "disabled";
+		};
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm1 0 700000 0>;	/* 700000 ns = 1337Hz */
-- 
2.43.0


