Return-Path: <devicetree+bounces-266981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMhsDf5wmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:34:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5CE16861F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7DCC30D9226
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5028526B2DA;
	Fri, 20 Feb 2026 14:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="RqiNMJ2J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay93-hz2.antispameurope.com (mx-relay93-hz2.antispameurope.com [94.100.136.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A74C2620E5
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.193
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597925; cv=pass; b=ofR6U7Thpn+lNPz4vTwmQFrLrjILh0/ftoiqSu7B3KZ/qTSiAjX/bx/6Vf/w79XMoMQ5w5qK5GwIusAEpQGhHbwVsB4bCdLV2p8MdHSJl2HtFY4M5C9gkSAbMEhKnbsJI6ZWOSvAtju5r023JGZ5JgEyqtVv1OUh9Bwo1PnR4cM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597925; c=relaxed/simple;
	bh=P3l/dVJ57TWhUMY71vCumGX3/oMJ1ARLqrmPuHllZ7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bMmW2AXxQvvtefjhtkT33XdLgjlFXYkS5cjtfq9WmQ5oTUkL6Zz5/dV94V0HCosG/p5Pugt4IogfID9ayccNUHNftHl9XfEmGAcrb734pyq7EA3g98JPAuvXxJkuxCYmrUkwx3t8ipCUjmL2LMJ05106Xy7tyZQPZtDtv5tlrtQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=RqiNMJ2J; arc=pass smtp.client-ip=94.100.136.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate93-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=PLt6KIS3heA6+KbSYDWlFsnZTNJOkMMZOLH/WTZ53uI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597879;
 b=M4sBP7yuUMhYSVX7XNd4kyHqzTOLndHGdadTAXp4oDl3dPtZ4PdMI5hUAEpHg3REomExuFUi
 ytrbPWPDkj8o2wliYMGeEl67XZ0zRdQfscqgeB5mHpTNddY6E7+ec5bpljwmYDgl5cNcv3joJ8l
 EWWzTkJnnHPKM7zfM0qT78Wlvvju0umcWU9Z/2da3PCK4yk3Ar6aep2wWM1NqxxZyh7QwwFiHqI
 vvd4SUdRcH1DvvyOHtip6CY66KlPgXhZsUZsKno4hyB6eZ4bcpvh6gjrzCd+L5gPyecWrWZCFjC
 tnPq95NY0TIHVbIUwgy8gJifPOUWcrVAj2j43f7uFzaMA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597879;
 b=EBGWnqymtB/PqgQpOhVv+qAsUiRe2N0yyeR8W/c4b6tmtNRsxrAMKiOkhSM23V0cdTzx7T0R
 Ux/niQR+Hxm7oTfcrsF9A4PLR5wKSmsTwlb0rH+EHCESCN7EhMsSAim6ZWAXAaVqVaVC0e+3bwB
 dXBsblxhA1IKsgnrRmbMvmhRMBDFNRaOst3wlu2DmipIIPLe48CDjoWh6w4fzB1R3W6mciFF6EH
 MXmoPvNGHM7VA/7QiO/kSSExKuaTCWDaLqUTvbyN2lZ6LkG0FucY5QazORaYb8zivyn7c/8EWoL
 SfjwcTiucllyg5x4SZpYxFnzEOcNcqSi7ZL5VXIPfB/PQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay93-hz2.antispameurope.com;
 Fri, 20 Feb 2026 15:31:19 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4CCF8220B97;
	Fri, 20 Feb 2026 15:31:12 +0100 (CET)
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
Subject: [PATCH v2 4/4] ARM: dts: tqma6ul[l]: correct spelling of TQ-Systems
Date: Fri, 20 Feb 2026 15:31:05 +0100
Message-ID: <20260220143107.186956-5-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
References: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay93-hz2.antispameurope.com with 4fHXjs02nKz4QPVS
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:7527063d6539b56d99d50d98f41cb596
X-cloud-security:scantime:2.103
DKIM-Signature: a=rsa-sha256;
 bh=PLt6KIS3heA6+KbSYDWlFsnZTNJOkMMZOLH/WTZ53uI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597878; v=1;
 b=RqiNMJ2J0Mx1pwnxrLk2ba1C9nDtPOBve1dLHunYBgVzHCiwZHAmlVb5z/jsQzNMQZ9pd7R6
 WCeCyU8lAjDBX2R9vmsCNxkJ4J+QtAM+kPQZ0ONqrq9du/D/NORs4oJsSjkAgzYehu5OFTcpRP7
 cXNkLKa5MhBc7n/4GRZ1YkVg9bmoU5Zvc4+QeeioRULUauIqYO2TcQxAQTtB+4JyvEJrdZjNiCZ
 fGq7+oNwnkRFOMh9oZ+Eeyl0FLKZ5WX+Bb5CBFA7D+ri1qCxF4Z/5VWnLSJSCHupdwVNWMN/2x0
 4mBvYVRKlHT0boUGu8vDNQDfJcbd9bOcHFcogQF2XpYbQ==
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
	TAGGED_FROM(0.00)[bounces-266981-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 8E5CE16861F
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


