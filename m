Return-Path: <devicetree+bounces-127547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2F69E5B5D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 270E2286089
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A71222590;
	Thu,  5 Dec 2024 16:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="pZGZznLb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADC621D588
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733415979; cv=none; b=e6yrhZDA3ruBHFLwPbFNcJjGK4qHE23Dp4Rto+4RlF0LJGHuPWD1UtdlRqj2vnMpq3B7cYznXIf7P3uQoMr6QXSSOKKlrkObaStoMTfAJFeCdUXZXtzJ1GtWoXuLeIO1rBCXyu38lrjTsKSkEYVUPwxeHyiQLgVyoHH5crtfKHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733415979; c=relaxed/simple;
	bh=yC5x0Kr3GQ+y52MwCBTCIIJOZYvx1zk4EFtR7xU0I1M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZEvRfCOC72ivlQ9nXvWPszpOJUkbSMgzUYqyoj1tOdlLmv13fuQAt7sFcd0klMtfoUrzNQt4mbMWhJY2rDhoBGr9lCraZdbVEuv0DkNgRLPtE7OFmTJy7yWSkqc1nFkklqjjVmBjoKIHB31LUQB9lAreTQAMElT+Q53LT5QDFgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=pZGZznLb; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d34030ebb2so697747a12.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733415976; x=1734020776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JCLk/wc3MKwAF912ySsq2eZpu6hxxtGQsnffSicJSqo=;
        b=pZGZznLbKIi52VA0bfdAU7IBbIVPEU39yNcQpBYTwJ4oAEhWmKCVaqxRp2d5WxbKX5
         3BZTHH9mXFPxPoZsSHzsTUc5vz0OCdii5y7nyve3sdQeb5lXpwMw8SHra8MjEDujhjKk
         eiFG390EiZtakgc3ddoLSmsulfJ3zTqlABhy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733415976; x=1734020776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JCLk/wc3MKwAF912ySsq2eZpu6hxxtGQsnffSicJSqo=;
        b=SVGXMON3riP5SXD8+OoKXmxoMeToh3++UG9yIa82Uwi3Y92jO1qnHSdr+SBrbTRt8N
         +97wdeteVkTNLmwTt/0uPsXO8PNJd7u3wF2Hl3uyeqz7aVZMh3y/lKxe3vC4I/pCgd6+
         xmIILfeiwlXiAl9GIgbR917Q70TN3XAOzA4DLctdlBVwXnxuQEvmMAzgZxSTlKBqb/BB
         +9rZL7cNasC8Oj7hkANdAiXx3BnRqhOfU9ouivJ5zPb6UXuLjKanmRMomLF6MabRXPfb
         pnKh2iAsbvpqt7dMeQQiL12Dp3b2y0PZXjjD/xixcbYgvAGLbBQq3IPfNJsoUFLDbTPa
         c2uQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTxD7lwFramVi0VWjDfwqnGlyAyxfjLpkGg0vLLFYR0oVY7krSFqGHklFUauwekJxy2yVNILMLtrHL@vger.kernel.org
X-Gm-Message-State: AOJu0YzP5cKRmkIDDHbmV1LItJCTMkkVk0sPfYOK7H8KETFW5f137l9M
	e19BqID+b82qWfBrBhTp+bkEBzav2aE1h6hP45ycp4OCpm2TNzc2qhWPLx1dmiE=
X-Gm-Gg: ASbGnct4H7qRVxhn/B2c5SzIqnl7wRbXsabRwaThK8Gp26N/fWq/Ug+ELbVQSsfnqrz
	UQvyqsu/bbyE6tsyJRiam98lvfpkzij9KFcZUA7Qv6iE/qSvJmcp611uqerLifrZGQhQ1rcsrlE
	Jh3eSjtLba5CdFgCCg7TmQAEgr+PJS9PVXU96C6F9wIN6F2sHw2NNMVvh24dRxB69QU9MO4xVww
	VQ9WMm/L9lW8wWGp2Lu4MyVvPADQi96pwsK/MOPakzUmYN1DYF7gMMbKCOeOLaHE1i9gzNjOdZz
	cF0S4DWZyVvdO59bObm5GNYUcHRxWPRDxIVAOyBL/kEtjA==
X-Google-Smtp-Source: AGHT+IFXrt5EyVJNmwjOInbQwIR0hRyAYkVbpEnHiym56laCVf9oh8OvxH+kl7ISbHpLv75ASv1ecQ==
X-Received: by 2002:a05:6402:5107:b0:5d0:eb2d:db97 with SMTP id 4fb4d7f45d1cf-5d10cb80219mr11709960a12.25.1733415975690;
        Thu, 05 Dec 2024 08:26:15 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c798f98sm965026a12.57.2024.12.05.08.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 08:26:15 -0800 (PST)
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
Subject: [RESEND PATCH v2] arm64: dts: imx8mn-bsh-smm-s2/pro: add simple-framebuffer
Date: Thu,  5 Dec 2024 17:26:04 +0100
Message-ID: <20241205162612.1804274-1-dario.binacchi@amarulasolutions.com>
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


