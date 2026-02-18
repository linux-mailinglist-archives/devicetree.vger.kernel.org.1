Return-Path: <devicetree+bounces-266425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMb3BJ+9lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C96F5156992
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D54543009886
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9DD2D3A6A;
	Wed, 18 Feb 2026 13:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="CbfEtxDq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD292D0C97
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421053; cv=pass; b=tALNK8KSxN/LB29TdbVXXB6VwRd405fm36NchDoFpXD3P8j+HYF+d17081jGD95j41Zu0XC4YyPKf5wmya67Dijw182+jhu8HE5ErXriVs6Q79U4ZGPVAQPFdzzrFn69qQE9OuFFAr4G9AFHvVOhmkR9b45s64zAKSI2Z2Nw0OY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421053; c=relaxed/simple;
	bh=P3l/dVJ57TWhUMY71vCumGX3/oMJ1ARLqrmPuHllZ7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=td2P9g41QoHAnSo+SEL3aUZzyOG8prQVn0+GJA/zu8DPqVFo2Vc+br288/b4XVtueXFQaPITiZ09UVFBV4ZtdIilZ2yrP3t3TVxbljM3tSjYlIm5aoTbeVqXrn6ZYFZAlgf2ii3U5UiqudnHbjy4DI5d9M0isYpfIHi5S7k53ss=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=CbfEtxDq; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=PLt6KIS3heA6+KbSYDWlFsnZTNJOkMMZOLH/WTZ53uI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421032;
 b=QpY1iFTdUkeruK+sHwaRfjYfXLZ6xWcV2pPuuQYD6jqYk2iREJ5DBQzjaOoNUkAH3hJHm4Xa
 C/dDcsNyExppxQSpiNXXLYMCaDXkla0iy+8LIjUjCiKCb4bsfIXLfMM+pUH7p+QZ8j6bibY2p4S
 Tkr15C+XxnoawjqcfCH1d3rpyn3a0VNg4KwhmHa2mJvE2swzMRzsyj9yP89EDlwQdQ9kEGqYkLs
 ThjXTro4SX5jtkvrj79A6/ICGnuh9njwiPLrd+MSu+GebDebIAaDXt1qS7LrOk1qkglx93cmWzH
 S17qHc4miRqUVXnTx6sxs+QUh6NGHV3uRRge1M+jn2p5Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421032;
 b=rtpZFUAyDiihqlSCNEj5luyzz0vJ/tgSZqjaeXL74JQ5IFUK2qCV2DTMopla5dF1aiFvFUO/
 RSTljjn6EbejXJpCj9wtF07cFGM08bAcM8bsFRxi1vf1bH3yJZYkhzkOgH6vBkX1fSPu1SX5nxd
 yjcGZJfre4c7pMoBnz4XJpTinDOugnOU2UYys7Ksd7DjFlI/I2FhtU35UDwXge1LzIqZ3JoxBIQ
 760CA64Op1xtapGBf925CpRwx132Z4SlbPRk79vtxlg4N+7+zoux1yJnceBI2XwOpnJTer9aQER
 0TsTOK8zO9RCkuUdV17z3dtWJROf7s7NhaqhcpuLm3j9Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Wed, 18 Feb 2026 14:23:51 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 841F9220B97;
	Wed, 18 Feb 2026 14:23:45 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] ARM: dts: tqma6ul[l]: correct spelling of TQ-Systems
Date: Wed, 18 Feb 2026 14:23:37 +0100
Message-ID: <20260218132339.32157-5-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fGHJy1tZKz3ycBd
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ccb46d170f3ce977e46404c63492de13
X-cloud-security:scantime:1.867
DKIM-Signature: a=rsa-sha256;
 bh=PLt6KIS3heA6+KbSYDWlFsnZTNJOkMMZOLH/WTZ53uI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421031; v=1;
 b=CbfEtxDqR1+Sj8cHt9GEiqc5L9X/PeJ+gi2CgPH14wbx6h81RjhA1gqH7G8sx9jf3CtrOg3I
 qb50qJkkoRAd8x1/K57zZAB8A+KP9SsnqJ9tZQ2H1Jjkb9m2sU5a+6gFJk1tMiGAFF1tdkbBSdC
 IgOEFDzJdt/FE/JibwyZwB2uL/ZUuZuXgcnwSTJNKApbH5vtIFetT2yczkBb/DM7vV0ZF+im94d
 XFaIYKVicsoIrbzUPwsWxQYGpi0ikqq/58AaJmeKtMsDVGaxuI+3+48vYhSjNBMSAr5TVmuqnOA
 OsYzHt8rpANRbFIWwFqVoFXwVBg5f1o7Xw3AJPKBENz3g==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266425-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim,tq-group.com:email]
X-Rspamd-Queue-Id: C96F5156992
X-Rspamd-Action: no action

TQ-Systems is written with a hyphen. Correct the spelling.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts   | 4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi        | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts
index 9d9b6b744a1c..9d637c0a12ec 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
 /*
- * Copyright 2018-2022 TQ Systems GmbH
+ * Copyright 2018-2022 TQ-Systems GmbH
  * Author: Markus Niebel <Markus.Niebel@tq-group.com>
  */
 
@@ -10,6 +10,6 @@
 #include "mba6ulx.dtsi"
 
 / {
-	model = "TQ Systems TQMa6UL2L SoM on MBa6ULx board";
+	model = "TQ-Systems TQMa6UL2L SoM on MBa6ULx board";
 	compatible = "tq,imx6ul-tqma6ul2l-mba6ulx", "tq,imx6ul-tqma6ul2l", "fsl,imx6ul";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts
index 33437aae9822..5676904820a9 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts
@@ -10,6 +10,6 @@
 #include "mba6ulx.dtsi"
 
 / {
-	model = "TQ Systems TQMa6ULL2L SoM on MBa6ULx board";
+	model = "TQ-Systems TQMa6ULL2L SoM on MBa6ULx board";
 	compatible = "tq,imx6ull-tqma6ull2l-mba6ulx", "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi
index 6dd1b359e086..ac18caf5a76c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2l.dtsi
@@ -9,7 +9,7 @@
 #include "imx6ul-tqma6ulxl-common.dtsi"
 
 / {
-	model = "TQ Systems TQMa6ULL2L SoM";
+	model = "TQ-Systems TQMa6ULL2L SoM";
 	compatible = "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
 };
 
-- 
2.43.0


