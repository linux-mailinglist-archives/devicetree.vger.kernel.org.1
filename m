Return-Path: <devicetree+bounces-271643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qP7cEoCzqWkZCwEAu9opvQ
	(envelope-from <devicetree+bounces-271643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:46:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D9B2158DA
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BFEC30D0274
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 16:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C02773CE485;
	Thu,  5 Mar 2026 16:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="HoIPpdv0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB173BED58
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 16:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772729168; cv=pass; b=A3DgrrzDVIP5UiIvuCCajzNIXrlH3TPDXnNGMYBZ1oeXEXgtri00E8gD5GbUuL7NXN1lW6kRjgYFAAKbr71vQQeMq+Filp74yzSxU6Mm5GL+kpSjNfdKzNkUDH2XcG4tajfrFUuC8yQ4UZc5aUfWUscwks20xHzlkvnMDV089Sk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772729168; c=relaxed/simple;
	bh=HRkTxuwxJA0Vyf6FQfWmcnVzESo3nj9aAWXNjzeyn4M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qpWpaDqxDea7WXFxD6yN/fbhFSL8872F+GXZIbzieCVBzyRe5ZEyVvt3teJNIWvYjzMqIA26ZHBmEzKcaUM3Dk+dRy6lclmbAcyYsjOFBYGnut7yuko9yfoE0SJUWN4FJ9wWnmw/2odU6CRANnsiYBU45TKp3oMXXz22eQREZVo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=HoIPpdv0; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=8ngiLaVCA85hGhw8n+Td0yCrIRvJxsFDKHVUsZ1Svyg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772729145;
 b=cUh1Lu1TQsbc/r3LvX0odpxLSL98s3ThRu+odrkTB2MBV1NHUH+2V6K4EvoZkc8440vysF4G
 MXRxZLJYTZjD5tr/1NOLAwT6hdTbn5S12ep34svEdXWXZVIHNgYJISRsj3/jIxH+yU7DB/GkBqq
 m721Ae16f1Ak5rWqIS6t3j6FwWtb40FqG0Lkx//Qa0/P1jTmPrmim70teZVmdSk6eUJpuCcwTj0
 6UwfcPCIqw1BWyPbJfz51xwAbrAkx0Zk264xgLbeERJxPagnRG/34LsmTzLxYFhWhyIyb0byBYv
 WLC9PJ+C3OcxKeYCMfYjMM5wV7TJxLEgpKBTrE0+/02aQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772729145;
 b=OcXcZ0exS8rzHPhAjyBiKSiLtLxIo1juBsld9QHO+gqDQrXa1LuDkBAoggC42/tEZO63EpRP
 mzouAuzXAJWTylQNDWfZiL2aJsGYCJJzxfzsN0eOAN6zs3ENoojGjWSz5jwNsVkdcdOgA0Pa/Nd
 OqrWi6ee8GI0dHwGN15MfLZOuxP2dS+0wSLx9s/wO3KJ+1oj91jJNGJhc4n1L0s038UtIVDbNNQ
 RrsDMhnqpuJM5Eq2ODP+DOo3tl8WOX9CXZxYjUiwmSBT66Aba4HcwmWmDjfSky+lzAhCxTs1p9o
 lguLK2K4QX1r2G5Ez0ak2/dgXla/zBXY0O7HIOzu9aMHw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Thu, 05 Mar 2026 17:45:45 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id E957CA407E8;
	Thu,  5 Mar 2026 17:45:37 +0100 (CET)
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
Subject: [PATCH v2 2/2] arm64: dts: tqma9352-mba91xxca: Change Ethernet PHY IRQ to IRQ_TYPE_LEVEL_LOW
Date: Thu,  5 Mar 2026 17:45:34 +0100
Message-ID: <20260305164535.2653745-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305164535.2653745-1-alexander.stein@ew.tq-group.com>
References: <20260305164535.2653745-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4fRb4y4zlgz4MYsQ
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:2cfb841dcaefcfe296d25fd5cf87c6d3
X-cloud-security:scantime:2.057
DKIM-Signature: a=rsa-sha256;
 bh=8ngiLaVCA85hGhw8n+Td0yCrIRvJxsFDKHVUsZ1Svyg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772729145; v=1;
 b=HoIPpdv04oWuowAQNccUdkouD4J9rzJ3paatwcPFCarsnUpyo3K2xmFHbqMgD6VTqCZcWvKv
 952CicEm57Pep7Igph0CY2W9sZbR8qj+7xB2LEVkMw7vK2Oce8+6jx41IoJ0R4ncM5fURVMxf8K
 QBdTwak/dzn68GOHXiRflGjZIj2rtPRAHOw2+r48S84K1CO10cpy/zyEHwEgrGp4qpXaLSHPkTu
 dbBqFlEI0WevnbQhmuIGOVTgGYtcNVfWK9ivfyS//Zv46zio2yKj+YGBNTIkzK+/1XZEoE5OQAq
 kIQZ6RLNHCsaUILKJmd4/aqCG77YJjRw29Uub1cRrZLmQ==
X-Rspamd-Queue-Id: E7D9B2158DA
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
	TAGGED_FROM(0.00)[bounces-271643-lists,devicetree=lfdr.de];
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

 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba91xxca.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba91xxca.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba91xxca.dts
index 2673d9dccbf4b..737326ba1b2a7 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba91xxca.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba91xxca.dts
@@ -232,7 +232,7 @@ ethphy_eqos: ethernet-phy@0 {
 			reset-assert-us = <500000>;
 			reset-deassert-us = <50000>;
 			interrupt-parent = <&gpio3>;
-			interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
 			enet-phy-lane-no-swap;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
@@ -265,7 +265,7 @@ ethphy_fec: ethernet-phy@0 {
 			reset-assert-us = <500000>;
 			reset-deassert-us = <50000>;
 			interrupt-parent = <&gpio3>;
-			interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
 			enet-phy-lane-no-swap;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
-- 
2.43.0


