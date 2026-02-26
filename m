Return-Path: <devicetree+bounces-268811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJA1KNhFoGmrhAQAu9opvQ
	(envelope-from <devicetree+bounces-268811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:08:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFCC1A61BC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6677A30DDE32
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22513033E3;
	Thu, 26 Feb 2026 13:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="F5ZPCt2S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CF02BE03C
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772110984; cv=pass; b=OwDTDuPho5ZYv5bWb8qk/AvMM+T8zK/fRK1WhW8l097dKP6JahqBMsIKkFHiYE3hkazKaFknB9Pa4sWU5c6rt9w0ZxlNlK95C/yicuYhVLKDNodVRwkVPoMca7YW0jANM/KqLwB21/a/M2EqmRoyo6y5vMV+xuHhaMqMcgAd1bs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772110984; c=relaxed/simple;
	bh=SljvMyVpWZagSTeRRnT8VtO028A6jXhZWcyKuHNmTRw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=W+9F8JT8967yMhX/3L6KLvP+NeTIDIxCEvjUFu7cRscAdJcFiWUesRVrbMXl/YuqUwF4XgSsc2Bsah0j2Vesq1oJKjNv1QCXpiN7uCcRrcCMf7mqSAlYQUEhReiqliKX032bOzuzXXTSi5KtAJqWuM1aB+2EQyG3QScjx4iEzw8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=F5ZPCt2S; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=3+0rShqS9k9rFyhHYa5/c8HF+LK7zM3g98pXYzCnqk8=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772110950;
 b=g2651jT/CKtT9pJfwqyLQ4IdFQDbREXthMsibWSs0jfit0ZVXAOqSMTmjXB6o0xbOqbJGuHT
 5/kOR+Go96q2hS3JRqvXuGDwQln50cophK4G0ucZRGMV1rtHFh3v30z7FretTp0Elme3CMHNy6d
 Pk6d2l/XnNX9JqxIhOdXYpInzGhvV1+Em6QuJOTuCXuIGXZfNKjdJZPU+lOPzJcxXyU0AbqdNHM
 8QiM8nWLX9sKTtgPXCSGChu33dZlntFCa2oviNvJe/mbDFjgygB4iV5exbnJdFVH34wxH4d701K
 peyBHNXNPUn3/wLoEmBQ8xr10seVO9TL0vU43IYEXf2/w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772110950;
 b=jb/NrpJSumFGLXgupqiIHZacemR9gnFLVyP/7Y17JHTToFXdd2bacMrQb9ruwSIUI0bY2i1t
 Tj6bS1h0tWqBSFf1g5EzjnWoEI+uwbmhviPVCBPs2VNgUU7mjlqsA3xjMIDrIpO9EDt4erpnP0W
 518aUPRkYvYKAbrBcbnScBiNrqmaJ7N1VvkUFxCHKERK5aZFIi/hp58pTpPrlwabvWLRuzTi1a/
 mEU/0Mn2K5htZejiIceveMbSso32EUTvBvn8ufKL8xObpnTdW+e/YKsy/auGO6NlE7KylBWZ2mY
 4nfuOgN/EkTda6xBLinOTdQ6z1iHCXpLMXia6MriSvmNA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Thu, 26 Feb 2026 14:02:30 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id A4A97A4079E;
	Thu, 26 Feb 2026 14:02:24 +0100 (CET)
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
Subject: [PATCH v3 1/2] arm64: dts: tqma8mpql-mba8mpxl: Configure multiple queues on eqos
Date: Thu, 26 Feb 2026 14:02:20 +0100
Message-ID: <20260226130223.613325-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fMBSd33hjz3yb2J
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fbd8ca17c9567a87f8e16a470c36f457
X-cloud-security:scantime:1.606
DKIM-Signature: a=rsa-sha256;
 bh=3+0rShqS9k9rFyhHYa5/c8HF+LK7zM3g98pXYzCnqk8=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772110950; v=1;
 b=F5ZPCt2SuJOMJQ6OxKGd/uX4V5l2YJKnhhekZjasygd1MUxyrCGslz6IGgg5samX7lBN3h0N
 u4rtqr7CKasLqJ1pQVTTpoK+xZ7FTnoi9JChI96kUeBRGRrS/vSNiLydK8O5uKzQeFe8Lce7iy9
 J/yB7/vW9RJF13+oj9juaD8YsLSD3T7CkY4NpaCR8PzWNxke8kkVp14rLhGLqVIOJiXgmb/wdbu
 KVFakkBhS6vJWQiNjUzuKM3LFG83iEwjQ7z+2oyZs4aoKJHhlXbebqamJT/9v4/f57lxSrHyM5o
 iPPas1YjldjZchWUhismjgGGKCrFLBvVr3TNHabdcb2rQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268811-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.3:email,tq-group.com:email]
X-Rspamd-Queue-Id: EFFCC1A61BC
X-Rspamd-Action: no action

The MBa8MPxL mainboard has an integrated PHY connected to the EQOS
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


