Return-Path: <devicetree+bounces-271515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCAGLEdmqWlN6wAAu9opvQ
	(envelope-from <devicetree+bounces-271515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:17:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F93C21075D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:17:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 862C0317B547
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A740F382298;
	Thu,  5 Mar 2026 11:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="i5nZiZBw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay12-hz2.antispameurope.com (mx-relay12-hz2.antispameurope.com [83.246.65.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EBD3845CF
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.98
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772709127; cv=pass; b=d1VefoYsgJezmAtDcbK0qNcWSbXqodDo4uEjmNYrr8lLa1aURFm9yYbLeZs3MZ9mykElOoWzIAL4o+nauemVxOFqSWYByfKkTTjZ5c8Cj2QsOcVeTlwjBT3qkhQJCovqHW7Jo1JUKctzGuQBfk/iYswJTMBkr+hj0+8+DkP+Xgs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772709127; c=relaxed/simple;
	bh=dXspexM/PX2F8ART0tJsJpHJJRGQMWvcc478lZ7RmKI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=prDeLNum15RUEy+z22w6QjrdBXkw9oGZm5avQDlc0B8jAzcfrJkPNzAYE9CPwzOI6hMrXkC4MO3w6o/9R4wU1WnApHLCxUI3WjLiHzomFFGBsUXPHf9Mys/W8YaKDYV3cE25zsETDAx+fXA86PQ8nVC6xHisxhB2VLWDHiLsygc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=i5nZiZBw; arc=pass smtp.client-ip=83.246.65.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate12-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=PVhuX+l+sVjGT+ko5BL1Nb+mbnU6aEmFddU/rnrJ3m0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772709047;
 b=nDJWXDzYY+RrUm+Uhq5Z50BlW3i/zKQpPW9fUNsva3syFU77fPq2bpX0I8aGag6KYp49t0x4
 ogkuw8vFZcGs5/+2mVDaCC6z1RnexRZVLYX+dAvosQxr8fEWhFpl3Drs+mVIr/DbwtgmqbbuPSs
 0RQYpaCjVhIF50NPC47RHBuuEJFLlpQjMt4cOGEa/9H0FzhFDB/nd24Fwbbeu7cCW1evrVE+kTk
 Ak8y2HSG8EgPANygFP92dTVUWUoLhkLmcRxZIDTML6JpLCuUPrhREx3z696EQZqR6tpwIkADbAt
 4OZsbbi0oOSvLjbaSVZE2bNoduLCFQhHQ+ykGbWT4tdYg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772709047;
 b=ifk1eg2FnqnzF1dgMUz/PV/qe78Ox2o8jx2VdJOThPYCIilWUBHBD5O+ul9aSxbCAR2My5IH
 JmZWBuaAxWNdNik0AHeWiPlQOvtPnCibczFGnhseIHfN6/wFTYI4Jh6fjNc0KB32O6aGMnrrWBt
 PkEgPE5GzIsNEQM6/LakEC635swUVjZb6qEN62jwuT67CnlYzJHjPKjGzK410xPPDWYrY0Eg8ju
 wvF2QZn5rTIl76Gf7gswHJwZ21atV8Kcr+jSMefZqlOmrsJFnBsDaM34e0r+ge6oOdmmKetmH6r
 vV4Yi0mMMH9eX++6ZAfdR6Vd6aC8t/gP/UgUbz8r8S43w==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay12-hz2.antispameurope.com;
 Thu, 05 Mar 2026 12:10:47 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 5053DA4079E;
	Thu,  5 Mar 2026 12:10:42 +0100 (CET)
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
Subject: [PATCH 1/2] arm64: dts: tqma9352-mba93xx*: Fix Ethernet PHY IRQ support
Date: Thu,  5 Mar 2026 12:10:36 +0100
Message-ID: <20260305111040.1899965-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay12-hz2.antispameurope.com with 4fRRfW0jJDz3B9xY
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:1285649cdad526a2a0167bc5483f14a0
X-cloud-security:scantime:1.458
DKIM-Signature: a=rsa-sha256;
 bh=PVhuX+l+sVjGT+ko5BL1Nb+mbnU6aEmFddU/rnrJ3m0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772709047; v=1;
 b=i5nZiZBw721tSIDKf68CGETb42+SvVZq+9C5THlQ2OyjvSbGbkSqhJNwFDswN/s0/iDQMfxy
 BUGKRvyuC4H6RaVcezS/hBxohoT12m+bZNQVCf1XejOs8VCZqFrPvFh8MDRixyAT2Ob93kkapD1
 ns1X7iy/nS9ngf8Xr8wbq/NVj1rf1uWkG0qO+s6wCLAY9rir2pwuBdA9DeHO/6U4qGHbOfGQeMx
 upfZ6G4xNqMBl6yV8TZ9R69rmj2muNMnMa+FA/K7TNgbm5QQmsNx3B1tx1V60+Z5Z77SV+gakXY
 jqQsO/I/ZR31JAJG+hzCp1xTdFT2ApI3UQeyMty74SVFg==
X-Rspamd-Queue-Id: 1F93C21075D
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
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271515-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,tq-group.com:email]
X-Rspamd-Action: no action

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
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


