Return-Path: <devicetree+bounces-266674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ELDGp0hl2lAvAIAu9opvQ
	(envelope-from <devicetree+bounces-266674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:43:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA7215FB38
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 717493003739
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13FC133E34D;
	Thu, 19 Feb 2026 14:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxDSXsVM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5568215F7D;
	Thu, 19 Feb 2026 14:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771512136; cv=none; b=gDFUHVEXHD+E/ppRxti+nXd23yNhKhFzcEBUZCIQszbcyh1T9FA1sBhvychv7XMBQr8KS0SOKXmdPZJRl97fpOOUjKMNbJoTwpDWxMdVyc9rkg9KJUY1XzALO9APMKqwPSPRIH14dBGUJsMEUDM3D5LewljqPBL2QkiLymgsN1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771512136; c=relaxed/simple;
	bh=STRB27EWeB6oVhlikxDHPndmSosAoqfOYJy01qlfm2U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Xp3v7LuCQeHXlcj2WK62qYKvXg6w5SLJyaNvK7J5qp2cyyEUeb6wD2DhFMGFNl+WSK0yqxaLLG/iXEAMICF+GsN5LG+PIwg+qOLlrNZoBUTalGVfaZh3qxsQk7KPlOxcvxmuILl1VX+56ivnRyMUFBvMy4qlae0T9FKkvJ2HEhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxDSXsVM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57E74C4CEF7;
	Thu, 19 Feb 2026 14:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771512135;
	bh=STRB27EWeB6oVhlikxDHPndmSosAoqfOYJy01qlfm2U=;
	h=From:To:Cc:Subject:Date:From;
	b=DxDSXsVMd+s2WLtv8IYneiiF2BtKRFWB2oDz+DuL8oEF8N1r1bTA/aAbEA2DDir2x
	 jTLd453//zArrhL4VhZ2lQxS5erOa59crkaQjvS+1+IdMFMUDG698YPxdI9OPqk4gs
	 3eagilyHMYOmp4o9cwDkxkEL1qfxCz7Bx6dmUlNqHzf7C12KH1XejRsVtmGsDbOoo/
	 EZ9q7wxDiGji/Sz5jeDErve7JxhqBKOzEc4KLfREkvT2JFoiSG7SJF4OY3qCYHsieE
	 ubYnJGqZe7IrOQr5usDA5TMLyfBx71NXFkz7kUWfYQ1CHj1GL1qnntoyklhM/5ArvV
	 jEysEgu0lEAdA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Peng Fan <peng.fan@nxp.com>,
	Forrest Shi <xuelin.shi@nxp.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: freescale: imx93: Add Ethos-U65 NPU and SRAM nodes
Date: Thu, 19 Feb 2026 08:41:59 -0600
Message-ID: <20260219144200.2633404-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-266674-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email,1.56.128.0:email,4a900000:email]
X-Rspamd-Queue-Id: 5FA7215FB38
X-Rspamd-Action: no action

i.MX93 contains an Arm Ethos-U65 NPU. The NPU uses the internal SRAM for
temporary buffers. The SRAM is larger than 96KB, but that is all that is
available to non-secure world.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
NXP folks, any comments on NPU freq? IIRC, the clock controller supports
setting the freq to 1GHz. Is that supported?
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 7b27012dfcb5..d826d4b5a06b 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -43,6 +43,29 @@ map0 {
 			};
 		};
 	};
+
+	sram: sram@20480000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x20480000 0x0 0x18000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x20480000 0x18000>;
+	};
+
+	soc@0 {
+		npu@4a900000 {
+			compatible = "fsl,imx93-npu", "arm,ethos-u65";
+			reg = <0x4a900000 0x1000>;
+			interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&mlmix>;
+			clocks = <&clk IMX93_CLK_ML>, <&clk IMX93_CLK_ML_APB>;
+			clock-names = "core", "apb";
+			sram = <&sram>;
+			assigned-clocks = <&clk IMX93_CLK_ML>, <&clk IMX93_CLK_ML_APB>;
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>, <&clk IMX93_CLK_24M>;
+			assigned-clock-rates = <800000000>, <24000000>;
+		};
+	};
 };
 
 &aips1 {
-- 
2.51.0


