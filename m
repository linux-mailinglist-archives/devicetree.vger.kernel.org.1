Return-Path: <devicetree+bounces-264060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAhCC88CimluFQAAu9opvQ
	(envelope-from <devicetree+bounces-264060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:52:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9091D112319
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6037A300620C
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D4C37FF73;
	Mon,  9 Feb 2026 15:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="p3T/ACjs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5193337E31A
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 15:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770652324; cv=pass; b=jAZON4WaHdJdLNjeIGmJVLE9eEox7mOZH/IJ4dwPaSMVVFrIBXUmjSr3iwb0oH5k3+zRnvtf/zCrg2hI+cep/g1+7Pbz4g2qVwMiZbJl36nY7QJoH8sELQ90cVfGzpfw4Pp9ygvFwXCa184MWU0qmwnkVzIIarK19WuB9FgqdTQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770652324; c=relaxed/simple;
	bh=oZGkYK2uUIm4Q4ycZwkTeXwq46eRXHuzyCKfsDPzIhI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=M81H/XhzHuuoZqbNyMJJJYngw+W2LG0AuCoacrJLh1iQf/itATkiorhmDVAOMEz4dW9mt5KuK0FuzwHb8wCdz4bEcOcAuefZDbL56kXO6hq8pAq2DiMlNE2SKb7sUQKTTicW7zTj/2rUlz7NVdNuSt3b76kwiiyoli5B+nf7oWM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=p3T/ACjs; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=3g5o+E0WFL3obDzGGRCqcl1rSO7KKl3sh7z8nGhRozg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770652235;
 b=mRKQ0b6kAWCuJnJkL5O8D603quwm7GOBLe5fhnCNSs+yam88bbkqM3nB2j4j/4qk8AleblFz
 St4Yu3MNOIDjbv9yivZ7W4EDejDvUkmNHphABfPLwttn/Qs5HqhdGK8LQBHw8gWO+UtXLfeDviF
 MJQ1yP8U2tGBytTUieFnPIgkyE9j3k1HmvC6UQLYouIlWqkyVXGU7cUYG8pWRj2H6DWAEedeg/7
 JOxb0/hQvpQVxI4Vv3O75uuMVy/Xl+OCj5P1mfhxw/VNTEkU5vywdn2DeMdvxQ4vk/d9a1x5NAv
 BqpzkGhvXA4gZVdE+lV8YvvValkFfDhk9kkYmZ5QiH4ZQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770652235;
 b=EEHB23FH8CyKXxnZzD7rJD4wWbuI36oYx34raeaHo/xTIyDfwKf/AZgplrE7g7kI5AZhdwBu
 fWwzIb99GO6O2SCinq8+uYXjVvWMuApStjabK9h4PzIAumungn4nFb9Jde/5POgPECMZCX7gPy9
 mzKdLvszHKUCQg1tQ4Rjd5Gmn28U0WyPQXo9cwYBqD7YZtQfD8Gw6eRY9amspmbeHQzNYoA5mth
 ria/TI1YyrW70wtboIHa2FM+Fg+xthmoGNJpk4iWWG/Mze2nNn9AK0WHsPdhM4Xy6+LFQY0MoQu
 CmmQjH80sIjxemA/JNdgGkuvO6Y3gOluF8YfVXAZKyoYw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Mon, 09 Feb 2026 16:50:34 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id ECFAFCC0D37;
	Mon,  9 Feb 2026 16:50:26 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: imx91-tqma9131: improve eMMC pad configuration
Date: Mon,  9 Feb 2026 16:50:13 +0100
Message-ID: <20260209155015.267008-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4f8q0M5Frgz2nJ5t
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:71fe5ffff8ee5df7b92405f7a7f4c441
X-cloud-security:scantime:1.844
DKIM-Signature: a=rsa-sha256;
 bh=3g5o+E0WFL3obDzGGRCqcl1rSO7KKl3sh7z8nGhRozg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770652234; v=1;
 b=p3T/ACjsY+w2i3T9m+Nfmkt9arRw74cmS50blzp8wf8ChReG9W8aDpiVZOEBkOC6rfETdFN6
 gqoD+iUAbdKgyPKXRFqvz/iy6dAGOYcwgRGhTPc8YSMMval1w0h4EBxnXrXMgum9ngLpbr4lBhN
 OPQKVTJWptxmlD5ROrc19nRYrcbKjtI7is5+wUA1/0bEIrleuiheaW0cAZjMgKLKNT7ha63lBIT
 obEvW2DZ4FvajW9/LB+/USMlrPzcE0QQKJLArSE/e3dUsnQlw5EyxQ6kqYxXHrSnwW043x4GX6P
 vNbAMmtgMHCFOmUPKDniziVYfob/E0bHSQuuP0w2zturg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264060-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,ew.tq-group.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9091D112319
X-Rspamd-Action: no action

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

Use DSE x4 an PullUp for CMD an DAT, DSE x4 and PullDown for CLK.
This improves stability and detection at low temperatures under -25°C.

Fixes: e71db39f0c7c ("arm64: dts: freescale: add initial device tree for TQMa91xx/MBa91xxCA")
Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx91-tqma9131.dtsi    | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx91-tqma9131.dtsi b/arch/arm64/boot/dts/freescale/imx91-tqma9131.dtsi
index 5792952b7a8e1..c99d7bc168483 100644
--- a/arch/arm64/boot/dts/freescale/imx91-tqma9131.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx91-tqma9131.dtsi
@@ -272,20 +272,20 @@ pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 	/* enable SION for data and cmd pad due to ERR052021 */
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = /* PD | FSEL 3 | DSE X5 */
-			   <MX91_PAD_SD1_CLK__USDHC1_CLK		0x5be>,
+			   <MX91_PAD_SD1_CLK__USDHC1_CLK		0x59e>,
 			   /* HYS | FSEL 0 | no drive */
 			   <MX91_PAD_SD1_STROBE__USDHC1_STROBE		0x1000>,
 			   /* HYS | FSEL 3 | X5 */
-			   <MX91_PAD_SD1_CMD__USDHC1_CMD		0x400011be>,
+			   <MX91_PAD_SD1_CMD__USDHC1_CMD		0x4000139e>,
 			   /* HYS | FSEL 3 | X4 */
-			   <MX91_PAD_SD1_DATA0__USDHC1_DATA0		0x4000119e>,
-			   <MX91_PAD_SD1_DATA1__USDHC1_DATA1		0x4000119e>,
-			   <MX91_PAD_SD1_DATA2__USDHC1_DATA2		0x4000119e>,
-			   <MX91_PAD_SD1_DATA3__USDHC1_DATA3		0x4000119e>,
-			   <MX91_PAD_SD1_DATA4__USDHC1_DATA4		0x4000119e>,
-			   <MX91_PAD_SD1_DATA5__USDHC1_DATA5		0x4000119e>,
-			   <MX91_PAD_SD1_DATA6__USDHC1_DATA6		0x4000119e>,
-			   <MX91_PAD_SD1_DATA7__USDHC1_DATA7		0x4000119e>;
+			   <MX91_PAD_SD1_DATA0__USDHC1_DATA0		0x4000139e>,
+			   <MX91_PAD_SD1_DATA1__USDHC1_DATA1		0x4000139e>,
+			   <MX91_PAD_SD1_DATA2__USDHC1_DATA2		0x4000139e>,
+			   <MX91_PAD_SD1_DATA3__USDHC1_DATA3		0x4000139e>,
+			   <MX91_PAD_SD1_DATA4__USDHC1_DATA4		0x4000139e>,
+			   <MX91_PAD_SD1_DATA5__USDHC1_DATA5		0x4000139e>,
+			   <MX91_PAD_SD1_DATA6__USDHC1_DATA6		0x4000139e>,
+			   <MX91_PAD_SD1_DATA7__USDHC1_DATA7		0x4000139e>;
 	};
 
 	pinctrl_wdog: wdoggrp {
-- 
2.43.0


