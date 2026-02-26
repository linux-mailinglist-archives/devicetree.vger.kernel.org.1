Return-Path: <devicetree+bounces-268810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIsLJ8FFoGmrhAQAu9opvQ
	(envelope-from <devicetree+bounces-268810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:08:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 004A91A619C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A731D307E5A9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DEEA3033E3;
	Thu, 26 Feb 2026 13:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="kO2WLvwc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C96C3019C3
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772110974; cv=pass; b=lliuR/uimqu30eVn9ST5qU8xrHPf47LcOdkPRWFUQpTplN+gpeoMEEZCSaBeC38vmXhJoi5FJY+jjVn2LbdFhqzLHMJPtgJSfW4XsQoJg2O8Ac5FmZJG45vk6FR7hhQachmMoutmMseis9KSdxTSy6r+leXTnZUECAt1+LTPbuw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772110974; c=relaxed/simple;
	bh=neGoqTdsxF3OhXcAManDw77ql/4CB9cgSHMgCNf8xyY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WgH+k0HyNGTUz9eWxQycZ9v4HKTyxZPjYrxrxIMK0hZbeusXCVeuJn+woJSN41BgTd+tEB9bUMo1VmZ16lG8F3DUtn9bOKnwtQGVv5SDzbUUgv1xMZbBnijub+F8F53pHnjd2UlPKvMBdMBQhwcXjPV7t2X3GozwDEOwRc8wdtY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=kO2WLvwc; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=LUO1CiLCZdzw6+XANnBhTKj15uDGYHmVnxysnV9OeO4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772110952;
 b=X9Y4+W4T0WC0BnQWvtaMXFG1aq9oL3ifMuwuM9AEMmGvMKyGB1jlvv08Uli+NAi4o15ZUKqd
 Hd2hYhFE3UQ+lV1xvG/6n3HJy9VSH3i6uF0YUuCi/0fRxpKS3zKVzTLoLxXiU5bZigRT4ccGO0I
 gMNwDv1Z26paEZF3byX7E9z7sLjvgcC4OcT+zoA0eCWyGCpHQc+LqSMTq4o9VFptTVcSDe8F4tV
 7NFAW+PbuqczJaubJFszT5o5Tmwk3ISFmBYKCffvImUMYAX1AJCTUE8SHnjgcBbvnhiPzOKyaV9
 BkubEvFNoj1qUvs/ayJw6+CAR/fkoHbcCd6pTIIesOqtA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772110952;
 b=aqoB7XAK2dvlK6uQ7Uz2yu8V8x47e82sMaYOW41J2a4qaOGIjGcM56iRV3UHBubePBLGfEB0
 ZaDEY6SsR1XHLq45Mul6HIKfF3RBwCVXr6VEVWoutQym4rWmpheU9zj5WDR8IJyKwZ7VwwMJ+6C
 64Vy+MNPf3KpEoZxenxUwV/gD7M5a3SywWBBPhEYAC1kPyXGyek0s2NT6DwUWF7xvHeKsATvV3v
 XCn0Y8AB/6p/69Hc/UP62CCmjMZlVodeORBPHPK4UL4QovNE+F84khZhmkBHowO7SKukBxic+IJ
 xaFMgNJBxjHw9lbqf+eAUJfrQ6EwCcNp1/Lk1htuANrfg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Thu, 26 Feb 2026 14:02:31 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id EAAA1A41357;
	Thu, 26 Feb 2026 14:02:25 +0100 (CET)
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
Subject: [PATCH v3 2/2] arm64: dts: tqma8mpql-mba8mp-ras314: Configure multiple queues on eqos
Date: Thu, 26 Feb 2026 14:02:21 +0100
Message-ID: <20260226130223.613325-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226130223.613325-1-alexander.stein@ew.tq-group.com>
References: <20260226130223.613325-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4fMBSf4s71z2nHTC
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ac72cfc2a7cd79e53cd99911ee7956b3
X-cloud-security:scantime:1.506
DKIM-Signature: a=rsa-sha256;
 bh=LUO1CiLCZdzw6+XANnBhTKj15uDGYHmVnxysnV9OeO4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772110951; v=1;
 b=kO2WLvwcoFomR1WKaLVONssmmK8snWu+MlvuDmBBdVZjo/ihdUtX9/oZ1ENStK2Q7bNFVRUG
 LTChcuUnGpwn7A7xqjAXaDDqBPX7xCiQTjGsXSVy5v0Lhlpc8frsrfJ8RF2zlykTqquio61ypQz
 06yf6V2NZMvRoLe/jAAUNZSszXo58tt3u9Pu6jJNH9hM8HOX2adsTDaORqGsOH2gOk9dF0lyxjc
 eDUnkxB7UIKt3SGAa89dUJZEPJkspKvU65C8KL0CU431XDuEmuEtWRkEkiq6eO5UtwGv2ZezynO
 M/XqXt4dpQKPDk0TCGOrg5JhwoQwd3cAj+sFixve2uwjA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268810-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.3:email]
X-Rspamd-Queue-Id: 004A91A619C
X-Rspamd-Action: no action

The MBa8MP-RAS314 mainboard has an integrated PHY connected to the EQOS
ethernet controller which can support up to five queues. Configure
these queues in the same manor as done on the imx8mp-evk.

Setting DMA to threas mode is necessary to prevent FIFO overflows, see
commit 0bc3e333a0c82 ("arm64: dts: imx8mp-evk: configure multiple queues
on eqos")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
Changes in v3:
* Add empty line between paraphs
* Collect Frank's R-b

 .../imx8mp-tqma8mpql-mba8mp-ras314.dts        | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index b7f69c92b7748..04f4c2fdf2992 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -184,6 +184,9 @@ &eqos {
 	pinctrl-0 = <&pinctrl_eqos>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy3>;
+	snps,force_thresh_dma_mode;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	snps,mtl-rx-config = <&mtl_rx_setup>;
 	status = "okay";
 
 	mdio {
@@ -209,6 +212,70 @@ ethphy3: ethernet-phy@3 {
 			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
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


