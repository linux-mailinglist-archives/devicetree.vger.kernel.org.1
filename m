Return-Path: <devicetree+bounces-271514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCuGM3xmqWmc6wAAu9opvQ
	(envelope-from <devicetree+bounces-271514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:18:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DAD21079C
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4933A3178A6C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273F4248F66;
	Thu,  5 Mar 2026 11:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="TBjYwLjs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz1.antispameurope.com (mx-relay49-hz1.antispameurope.com [94.100.132.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF253806B0
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.225
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772709127; cv=pass; b=QaRtRA5/WrMsUmlTxEmcVeZRFG2Y4kXfmoXVjNP76VpULwnUsk9eqMU3q2zeO0EOnaIzyp+IuvViYOUXtcwQThm0Cs4/33ql9UHrJATcsbJRy6rdu8Vl0ERY0MCvxyMFzrz9g6Wg5Pbo8CRjIZ63xSeUEdq2vGVKRKr9VxExzLk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772709127; c=relaxed/simple;
	bh=6fQku8EnYd0/h07xspz1Uq+De0vi8mFMzmdp11LwP1M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DZ/kd/T3rWTeOdLiJpJ19/yWuGqg2a9DTE6chnlmkL6U+Z5XWoSRlDqIGTJ8lld9DjehX0Ja+i9mlQYjHaqEZF8Uaek/Uy732L3552aQeka+xh8Jd60/BJTlKTBAOelBREo5I1GtCksrzCuoq8GKJja4ZuFlFWE1uFBQNNDNjQk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=TBjYwLjs; arc=pass smtp.client-ip=94.100.132.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=N9XnppO8FMkdczsYyKMwQiqpcLf9DtxGsFU5Qaw3s9w=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772709049;
 b=Vv9oSNzVsNFAT9yBvBxK7onk2LL6Q72WtmF2u2ygl2/gCMxK488wuHEGLeawZDL9JWEZGBoD
 RgZy0v/Z2N0VV8KXVx3avJnjvqUPFChbopLvBYBAU/HdD0aU7X85Pe/U8ACNtHLBqNAJuI+yi4K
 IIWTVJxaGl/kzhqcnAPaCorQZiNmMO1qFE9c2IVsO5wwXxdJzs+GRJ+7+riYIGqzgvNJTFW0UGC
 OQY84ytNuFRRFUx1Mcf6LVMUoAXpRMYcGPMz7iwrupVdW2889Ar3/1RbsbYxvsqU5WUyu6BN/+1
 HVx25scT92R8O6uPJ86jQq0+x1sLfJZN/TyoIbGY33VGg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772709049;
 b=GPOB1f0QVH+XsOpzf4IgKB0mxUqHdMkrnCZ9JnHcNagGlIxWqbgHknzfBVR9P4au67LqSBjw
 qOfRpUH14aMvqh8U3gK8WYOmXvtiKmMWEO9adq6elESCIR8hvvsG8ylynuYJscjGYn6pvbxG1EJ
 p6Q+wWi6HLkpqoXrohjpTB4AwkQBjCgDh0dlgEq4XDwQ6Vb83SYXWC+FTms1L/qnmuPje4dQx6C
 ACjORDKBi0K03Od6ab3gbwHVYNYuTkIG948yziEQGoZxrlT+ra1VA/nvEGsbmy8WxpEHdUQiPdP
 S+A6Q7VYh25luRNBde6gn2QRd0klN3kMdV6rTRlEdNa3A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz1.antispameurope.com;
 Thu, 05 Mar 2026 12:10:49 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 0EAABA40906;
	Thu,  5 Mar 2026 12:10:44 +0100 (CET)
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
Subject: [PATCH 2/2] arm64: dts: tqma9352-mba91xxca: Fix Ethernet PHY IRQ support
Date: Thu,  5 Mar 2026 12:10:37 +0100
Message-ID: <20260305111040.1899965-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305111040.1899965-1-alexander.stein@ew.tq-group.com>
References: <20260305111040.1899965-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz1.antispameurope.com with 4fRRfX5Cr3z28hdF
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:d2d564208654f80f3876e3d2097a5623
X-cloud-security:scantime:1.415
DKIM-Signature: a=rsa-sha256;
 bh=N9XnppO8FMkdczsYyKMwQiqpcLf9DtxGsFU5Qaw3s9w=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772709049; v=1;
 b=TBjYwLjs61a36cEF4AsrPi4QLXzNbFZB8hTDDSnt9H3/CrxT9j8CSbkfDKv96tBNTx36vvJ5
 JnOICqry7HNhkyxLqNBZZlPX2X+OHUWE2z1Vw6i6XALTVlvaCgzIjP7IEZuk+fd+dOL/NaYq1IV
 OovyBcflOuwXZ6N4r2qlIwKR3G5w3gxk+NtIq9Gi2iyZmcsj1eZ42ePSyP0b5mg36a2gqV/SQ0q
 ta4kKo0QW8c0SDyHpD3zncXcdHgSq4Rf+koXF6EEvcLK2oLak/fzF/8901s1W/iImrP8xDUMNfA
 jIA/BuKQSImIoijZE3Ws82JOiZhhdXayS8VvziaOw6HyA==
X-Rspamd-Queue-Id: 36DAD21079C
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
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271514-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,tq-group.com:email,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Action: no action

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
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


