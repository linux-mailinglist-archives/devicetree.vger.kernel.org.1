Return-Path: <devicetree+bounces-272344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJ4ULcc5q2nZbAEAu9opvQ
	(envelope-from <devicetree+bounces-272344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:32:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5CA22785E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75BB03069020
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 20:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F1336EAA3;
	Fri,  6 Mar 2026 20:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UU6csl4r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D12F31A549;
	Fri,  6 Mar 2026 20:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772829071; cv=none; b=bpUR6Mi8PGDrVCGo/4kHWSTz/RN1aOIG9hIEqS0F5gnUCqV9B6fPaL2u4UB1HXhTcFKMjAjXNcM5NxnujEhrBk7pninWfkltfSn7QVALWXPtSxuaklQ+acfcgvn4OyE9Bs8qmMJ5s55uloSQ/eKHfHqnd2rsoielE5kQxyB7C2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772829071; c=relaxed/simple;
	bh=y2TR/OG2MXL4lsCroTuzZzLl5gqQRV2w9LTb8iHNGjs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E58euj6gEoTRfmgZX3hyDvAry4SE/XXVkOOmQimipqttyUKY6X03g8Y8OBetT9VEU4ydlFbMdN0l2KzMNvw3BBMKPE6cVXPMTVv2RUI1eKwGRTj7GlFuE2yqIM4QOTqzh0Ecb6SiTjNvyEpYnJacLeOxUXUOdZuMDR4ieEaX1Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UU6csl4r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E90BC4CEF7;
	Fri,  6 Mar 2026 20:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772829071;
	bh=y2TR/OG2MXL4lsCroTuzZzLl5gqQRV2w9LTb8iHNGjs=;
	h=From:To:Cc:Subject:Date:From;
	b=UU6csl4rGDcFlBKVQx/fd5t1jVHLKN6o9q+otWVe8SR878m5xNK/aRgmNUga25+vl
	 Zd3S+91AzqzQeAQyoJKWN8PMMxUUUr7Et2K7AUYLUjdGhvi/SuqKTA9xzPncWfvvJU
	 +hX5dE920ltyIf9Z314krYaWVrdFXAKKeEVUTCNmKnLsQM4KREhmyjjZNwwZZ+P5Up
	 /slCRAMl85nkspIs0+2PX7so+4KaFGS0rP83LZ/XoH8+JprjIhSNKGkS5ackrx56lr
	 1Xc1n70Ul8QCFl3sYl1BPqDnjqPg+oTPprSTQAqHv7UnMyS3xlD0bhQ+Xec0vw1kZg
	 nhXlmC8GSitwg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Forrest Shi <xuelin.shi@nxp.com>,
	Peng Fan <peng.fan@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: freescale: imx93: Add Ethos-U65 NPU and SRAM nodes
Date: Fri,  6 Mar 2026 14:31:02 -0600
Message-ID: <20260306203103.3119790-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: CD5CA22785E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272344-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,oss.nxp.com,kernel.org,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,4a900000:email,1.56.128.0:email]
X-Rspamd-Action: no action

i.MX93 contains an Arm Ethos-U65 NPU. The NPU uses the internal SRAM for
temporary buffers. The SRAM is larger than 96KB, but that is all that is
available to non-secure world.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
v2:
 - Increase the APB freq to 133MHz
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 7b27012dfcb5..95cc60158349 100644
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
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>, <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>;
+			assigned-clock-rates = <800000000>, <133000000>;
+		};
+	};
 };
 
 &aips1 {
-- 
2.51.0


