Return-Path: <devicetree+bounces-271642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEZ5HF+zqWkZCwEAu9opvQ
	(envelope-from <devicetree+bounces-271642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:46:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDA32158C2
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 603E9302DB6C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 16:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03003A0B13;
	Thu,  5 Mar 2026 16:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="iYV+phOP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBAE267386
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 16:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772729162; cv=pass; b=Uzpg5UxAx2Tvf79BDNd+Bsn78/DRKaYwG+7HJHqDQU0Z7H3z4ZbuCFE2M6J5HzvLUPFcGuaVpfUAFoYCjLWQZ3zFIdxleybQezgxjeAqCSXgpIhEoOb9GnYch4JsEDAKzfczCDEP/V4hXl6sL3VuOXhBoCXYeUqbKu6WVftgyKc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772729162; c=relaxed/simple;
	bh=E/ka3vjU+IKesjtIRgb0bA13iKRANnz0jbGWGiHx3FU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MKlU2CyGe/LPePyQ5ZVm7w+O5Kk5nmybPb1bAfQ00I2LYh5NjWINMgobL1nxqr7JcLkYHu+MJhnBSQN0VC4FVcbgH/GlcQPu9NV1pjIUVRy90aHiRgL+8kQzXs7lYBbDZxsYTAkzrf+W375QBtiebLcQRpan2lSxQeGF090W15w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=iYV+phOP; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=qunvVZbr1OHnsRzMMjCCaBPW/FI5Phh9yb4tEKcRPz0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772729143;
 b=Je4128LR6WAJSYw6hCFVgzSWYKtiwXK6oPsjkhyS714o8wYcbM+FswRNJar7mfNRf2nCiz+5
 HlzDaJIsciapeDa6TdVf4yDOTFDJMEkWMWXjyzbas/2hkojifJgpBTDQKQhlxby9XbF66k7GYjp
 lrYjadKiVJ/88LTOLV694gB2WtLVs6XXOWTs4u/VDQFq8EvTQDjzgPHtDIbyjG/8OGRYhNNAifS
 8CrHKm5RxtzWR9U57aHdFmFrA6LDsxZlqV1I52gZguxah3MvGK1hHHwKOMpa9+2RQTC4NK95ROl
 U3UOUBP2OAsnk6HElYTxrJhj/dF49y5GsUH2T1mmqOxlg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772729143;
 b=M0jCXKclEpFIAExvxIg8vVqOS1cD+jliipMtDaqHbxruk7gGtShQWangNNHy/1PT8R6Yi/4v
 V1k/zETaUv/zJzr9Uq1S3nPjh0qSUM6pa5c0thmuQETP6FgXc0bw7DEvVe7KW1xGIoK4QWQyjH1
 9Iv7JJPM0C3UqsRlh45Ze2C0lZJxQw1+9J8HWNPLxx6/287aHBeMNcUo4INvjd26VvKvg2lV0N8
 Y9LtIpDG7rnRqedY9ZueOtzmL5rdC90G9r/uNt9nqaqWj5yGSZ1NHQvx6ZwB1RCrz+1E6HrrgMR
 X9QmffFs13l2On/xyptNPL0lkvCZOpzfOlfE1cZF1uE9A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Thu, 05 Mar 2026 17:45:43 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C2B32A4079E;
	Thu,  5 Mar 2026 17:45:36 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: tqma9352-mba93xx*: Change Ethernet PHY IRQ to IRQ_TYPE_LEVEL_LOW
Date: Thu,  5 Mar 2026 17:45:33 +0100
Message-ID: <20260305164535.2653745-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4fRb4x3bcbz2nG15
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:3cacf677540cba967126d9265231a74c
X-cloud-security:scantime:1.596
DKIM-Signature: a=rsa-sha256;
 bh=qunvVZbr1OHnsRzMMjCCaBPW/FI5Phh9yb4tEKcRPz0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772729142; v=1;
 b=iYV+phOPJvZiZeBv75/dyydobqEzbMmfnFRB+lb0M8OSE9YGAOHRiXtbPB/sDtkJv+yypBPp
 0Rr+knvvEVWu4OFcJAcuD30xIzDHvGFM5l4MXv5nfTvu4L0HuqYASuKEONC8h+Y1Rmefs3f7KvA
 6atRQSeLZS7MqZ3ezARJV+qLPTMkQnNMx+zfVMNeZMfZ3CLmnXOaWpoUZ9iFiVFwh79AEP2xkZM
 27BrAxyiaI4J2gBToVaa1LiXrezNFx3njOEkS/Ht630OGix+p34ny7WMG+Hlc9wMGX/q+V1xIMk
 6X9ZmUyc2fR3sC2vRiJkEopVvM0tIcL4NQlaJS3LtuIxQ==
X-Rspamd-Queue-Id: BBDA32158C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271642-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,tq-group.com:email,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Action: no action

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Adjusted the subject

 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts | 4 ++--
 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
index 4760d07ea24b5..9108181e6592b 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
@@ -242,7 +242,7 @@ ethphy_eqos: ethernet-phy@0 {
 			reset-assert-us = <500000>;
 			reset-deassert-us = <50000>;
 			interrupt-parent = <&gpio3>;
-			interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
 			enet-phy-lane-no-swap;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
@@ -275,7 +275,7 @@ ethphy_fec: ethernet-phy@0 {
 			reset-assert-us = <500000>;
 			reset-deassert-us = <50000>;
 			interrupt-parent = <&gpio3>;
-			interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
 			enet-phy-lane-no-swap;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
index 8a88c98ac05a7..a78bbc46c59b2 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
@@ -172,7 +172,7 @@ ethphy_eqos: ethernet-phy@0 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_eqos_phy>;
 			interrupt-parent = <&gpio3>;
-			interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
 			reset-gpios = <&expander1 0 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <500000>;
 			reset-deassert-us = <50000>;
@@ -205,7 +205,7 @@ ethphy_fec: ethernet-phy@0 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_fec_phy>;
 			interrupt-parent = <&gpio3>;
-			interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
 			reset-gpios = <&expander1 1 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <500000>;
 			reset-deassert-us = <50000>;
-- 
2.43.0


