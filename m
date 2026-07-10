Return-Path: <devicetree+bounces-324325-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j+LeGxPBUGpP4gIAu9opvQ
	(envelope-from <devicetree+bounces-324325-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:53:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A03C673947F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:53:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=oPpHa34e;
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324325-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-324325-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E31DB30A2900
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487683F58F7;
	Fri, 10 Jul 2026 09:34:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106113.protonmail.ch (mail-106113.protonmail.ch [79.135.106.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6E33F6613;
	Fri, 10 Jul 2026 09:34:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783676071; cv=none; b=Nn2HA1nE4iJEoRvrWp8N1/VbYET78yUc3vLKCgLPpzWx1lg1YyFBQbS/fWSwJjVaKv51XGhcBxMYhSF/PWRbRaxDJNdjKgCbuIfqRSiPlSk9YZyQVuzHipHnM3/f7q266uUh66tXWrFx9dmaMWown+EW0A4V6d/EEV6osry0Ob4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783676071; c=relaxed/simple;
	bh=+SSbmdxaiq0J0wa30iE1zuvjGBNzgjfpAoxryIKdcl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=WFwOWF7pIi1n3vvbehvyc50GxEVW/NoTMnhXB/ZbEaShstiZiWQVQdo4qcxKTKzTfqqULH6L4Au88n+m5bbiL3Z6g+e4Bn9yXJ9ld7D9seGpd3jSIH+PNc1fNyFxTHXSCawll+ZkWGayF3ZYx24dRr6fC7/LnjVZyxCpxRF+g9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=oPpHa34e; arc=none smtp.client-ip=79.135.106.113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1783676056; x=1783935256;
	bh=qTqD8XHnXnpCzH66fJSE8CBGzOPJsWGe02GIOrSsx/M=;
	h=From:Date:Subject:Message-Id:To:Cc:From:To:Cc:Date:Subject:
	 Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=oPpHa34elIXrWQ2qBDuDchAmHHoC1fHSmb+YsLWiTSpntZaJmK8rMpO2Gxm/DkqaH
	 13Pv03dCDl50Li3QBPZRBiifPuS61U/wPKrN0O8aROtls5LcBk29+Kfiu4yzbU8yn7
	 YHsy44XQwBWmNfaIX/P+N+ZtzrTp7RXMqoW7T1euCoXZn2nFzxpuTLDEWO95TST+bA
	 pHTit8ZtmC87FdVFvVd2hyuxRTzaEOrsjQx9qCb4kSzEnwALyyXAtRRkyUqqGKBm/g
	 GRGj/KuDzsCNSxOKlOYfFdUzlIivmozJpDxXqcX4Ym97TEFOoLQ/g+4IuZuUyHEtn1
	 if/dBUj7ZamjA==
X-Pm-Submission-Id: 4gxRVb0VhTz2ScPc
From: Esben Haabendal <esben@geanix.com>
Date: Fri, 10 Jul 2026 11:34:00 +0200
Subject: [PATCH] arm64: dts: imx8mq: Add dcss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-imx8mq-dcss-device-tree-node-v1-1-fc724dfd574e@geanix.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ6CMBBG4auQWTtJIUGqVzEusPMDQ0LRDhgSw
 t2tuvwW7+1kSAqja7FTwltN55hRngoKQxt7sEo2Va46u6Z0rNPmpxdLMGPJQQAvCeA4C/giXe0
 FztdoKS+eCZ1uv/3t/retjxFh+T7pOD7KPpaCgAAAAA==
X-Change-ID: 20260710-imx8mq-dcss-device-tree-node-9df58de085ea
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Esben Haabendal <esben@geanix.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783676054; l=1806;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=+SSbmdxaiq0J0wa30iE1zuvjGBNzgjfpAoxryIKdcl4=;
 b=sc+S0NvCxqN9/XLrbs6f0pnZylchIoPD8w2pilECc4TqUMxOnhXBshV4gDioLcjbdkM1qzzXj
 +rIxB3EqvPFAF8bFBRR0O7WMBjzIAswH0IkrMQS5UpuG/5AugIdslMX
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:esben@geanix.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-324325-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[geanix.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[geanix.com:from_mime,geanix.com:email,geanix.com:mid,geanix.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A03C673947F

Add DCSS node for i.MX8MQ based on the example in the bindings
documentation.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index e60872aeeb49..fb99bd3ad7c9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1611,6 +1611,27 @@ irqsteer: interrupt-controller@32e2d000 {
 			};
 		};
 
+		dcss: display-controller@32e00000 {
+			compatible = "nxp,imx8mq-dcss";
+			reg = <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
+			interrupts = <6>, <8>, <9>;
+			interrupt-names = "ctxld", "ctxld_kick", "vblank";
+			interrupt-parent = <&irqsteer>;
+			clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>, <&clk IMX8MQ_CLK_DISP_AXI_ROOT>,
+			         <&clk IMX8MQ_CLK_DISP_RTRM_ROOT>, <&clk IMX8MQ_VIDEO2_PLL_OUT>,
+			         <&clk IMX8MQ_CLK_DISP_DTRC>;
+			clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
+			assigned-clocks = <&clk IMX8MQ_CLK_DISP_AXI>,
+			                  <&clk IMX8MQ_CLK_DISP_RTRM>,
+			                  <&clk IMX8MQ_VIDEO2_PLL1_REF_SEL>;
+			assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_800M>,
+			                         <&clk IMX8MQ_SYS1_PLL_800M>,
+			                         <&clk IMX8MQ_CLK_27M>;
+			assigned-clock-rates = <800000000>,
+			                       <400000000>;
+			status = "disabled";
+		};
+
 		gpu: gpu@38000000 {
 			compatible = "vivante,gc";
 			reg = <0x38000000 0x40000>;

---
base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
change-id: 20260710-imx8mq-dcss-device-tree-node-9df58de085ea

Best regards,
--  
Esben Haabendal <esben@geanix.com>


