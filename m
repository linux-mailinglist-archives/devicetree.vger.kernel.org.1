Return-Path: <devicetree+bounces-264032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNuCLxLziWnGEgAAu9opvQ
	(envelope-from <devicetree+bounces-264032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:45:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 661D9110E22
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93D8530A0C82
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BF937A4AE;
	Mon,  9 Feb 2026 14:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="OCRRBURn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay186-hz1.antispameurope.com (mx-relay186-hz1.antispameurope.com [94.100.133.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F846125B2
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647825; cv=pass; b=qTJVn9C1uDJP4IsJm0Pul3TqTuPeF3sDTibIYTgaqeNNW8NtxBbc4pmUkg8+nlBvhs6PY3Fb5p6/tMzGgkctlk5PXPAst0Zh1OXNOmAp7Uq9IZR6ATcgCFe+ae5g7wMhXpdKbIW1zbMYx6tJAsTu43RXoCW2WcAxwObnwAqQdSA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647825; c=relaxed/simple;
	bh=zSCFwLG7ul6NOSki73bwKNNrOcsAYXLywsqttLdzIyc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i+NhLn6CD6ZiRY3ay1td5YcDfpRlmzGrlDLxHntW/CZqZ7SxG49RqCfzNHdC/5Ku4LTPltjCSR0GGKy5MYZ6l/GvnABlmLIjSu/12DKf1lFJPhueinxBMJJiLooegk6OnUdvbjKhRV8B3wZC9sQoWCc4NjG4tbcK85/K1c09pNs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=OCRRBURn; arc=pass smtp.client-ip=94.100.133.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate186-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=bW8kBX1s+EXbf2lLP1wP7V5qCWYSVmt/hNU3H0N9lZA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770647773;
 b=NFuKmn5yF2oF9OOTUPQEKKTn9z0HgcyZi+oSoH340IjVQ8Opdt/tcOGQrGGoAiPrW566k2/0
 ibLpJZcVvDZqwKEqWgr6g6UbBn/vv5FwCztZxoNkpmZtXlSuNZ+UOSh8E+SoW+TSnNTT7VNONV3
 Qw+T3pfZ/HuR2mh1moaQYhXFD2jG2BzaWMaFvqrjyAT+mbdSfbFFqNeagcgX8ikb8FB/PNpCO6+
 JSt1E5URAsI+821aP61/Afj8z326BnEKQU1upZfFWM/BX3rMDp5axcSi9MDZSGmGarhfVOPMyEJ
 XuItAgEI8E0m6deezZr0GztBuBh7yjIdsP+FaVZ95dVIA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770647773;
 b=fiRrHQjSbUhnlQ4K1A4Tkufnp4J2CkpgHMH/lO7Ad76U4S9dar62l7ExWj9Oe8hr6I5BshXw
 D5FxapgNCKfGQaI/JbyMuoYqSpVDUE/m80ezaX5QpS74ZOqa7i2i12T/BBKsFNyLtTAb0Q4ogW7
 0KExqAVE/jWLbsFuopTnf8G3C0FbIGdZPEecK4SwTJcWwEVdn/NzN/rSEkzKjxUXcq/80mpkwZF
 TAAegP3v8OyuzcWeFkRXi+GFsj8UZxKdCLkNDaKmNR4aZbwQdDjlVhwCGEomz6BHmcymjjzhCXP
 I0GtD9v5GsXyxM45aPJ1QH5mUAUxqhmP8qSbKptiIVSXA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay186-hz1.antispameurope.com;
 Mon, 09 Feb 2026 15:36:13 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 18416220D21;
	Mon,  9 Feb 2026 15:36:05 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: tqma8mpql-mba8mpxl: Configure multiple queues on eqos
Date: Mon,  9 Feb 2026 15:35:52 +0100
Message-ID: <20260209143555.202042-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay186-hz1.antispameurope.com with 4f8nLY5s0Hz3xgwN
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:405bf8049cad9f07363be847723c878f
X-cloud-security:scantime:1.927
DKIM-Signature: a=rsa-sha256;
 bh=bW8kBX1s+EXbf2lLP1wP7V5qCWYSVmt/hNU3H0N9lZA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770647772; v=1;
 b=OCRRBURnvtoo5CujF2APoB2RXUHvG2SBQ6vh1SCxPJfHyTpRU4/wsKIaLDZo9ComOdJXmjYr
 dZ57/LMz6mVqEHIkr0jUVI9QYG7tMwwjlS8xDqt9pn99IGoAv1F5l6NknuMJfb/CVPLyC6Bf7l+
 izx6PXHaNkihobPCKU0MbR8sBjpk9wpUgBBebO6S3DK6tIQ+S1Uev7O3BlP3nYaO9Mz5SI8ee+a
 7lYcHDQSoFpSAkPiHXUuZwxQVYVZtoI2leWpVvo3S3PJZDp1vbwY93jo82zMzz0iUBiYKD2jcKy
 ud5yy1ReSE4SCIRwx/nzjRe/qDOHBw3b5cfEDeuO4sJKw==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264032-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.3:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 661D9110E22
X-Rspamd-Action: no action

The MBa8MPxL mainboard has an integrated PHY connected to the EQOS
ethernet controller which can support up to five queues. Configure
these queues in the same manor as done on the imx8mp-evk.
Setting DMA to threas mode is necessary to prevent FIFO overflows, see
commit 0bc3e333a0c82 ("arm64: dts: imx8mp-evk: configure multiple queues
on eqos")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Rebased to correct branch

 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index ad49bf85a04d3..890d1e525a489 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -336,6 +336,9 @@ &eqos {
 	pinctrl-0 = <&pinctrl_eqos>, <&pinctrl_eqos_phy>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy3>;
+	snps,force_thresh_dma_mode;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	snps,mtl-rx-config = <&mtl_rx_setup>;
 	status = "okay";
 
 	mdio {
@@ -359,6 +362,70 @@ ethphy3: ethernet-phy@3 {
 			interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		};
 	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <5>;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+		};
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <5>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+			snps,map-to-dma-channel = <0>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+			snps,map-to-dma-channel = <1>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+			snps,map-to-dma-channel = <2>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+			snps,map-to-dma-channel = <3>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+			snps,map-to-dma-channel = <4>;
+		};
+	};
 };
 
 &fec {
-- 
2.43.0


