Return-Path: <devicetree+bounces-284000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNJTGgxMzmmjmgYAu9opvQ
	(envelope-from <devicetree+bounces-284000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 12:59:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EC238803E
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 12:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44D2D30B00F7
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 10:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1508B3A1A55;
	Thu,  2 Apr 2026 10:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=norik.com header.i=@norik.com header.b="gUSz6tHx"
X-Original-To: devicetree@vger.kernel.org
Received: from cp2.siel.si (cp2.siel.si [46.19.12.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DB035E95A;
	Thu,  2 Apr 2026 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.12.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775127379; cv=none; b=n1ngbBfY7oIJvxnCNvWw6l1f9MbwvDb3+rb9H0SnvMYvelX1gp8qZQqE0e5amT0ZC50lXoV1HtWFOfEO46r/Xv2K7ySYmlT3vkoN1RrkMdouXdiuMxSoeRt6kqgrNIFDckuV+Mbgb1gN/ogUHwPY6/JEEwFIZlQhlnyb/W+f+OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775127379; c=relaxed/simple;
	bh=h80/pK5n8GbsLD127p1RK7f1C6Cj7J6sAyRgLa6dop8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nYXdl6CAuKBRczwHgd4XWwC0L8gXBJgWJnRabVwx+cBV3tf5dEa+pfVQWQU6pP8BqwJihS6UnV7FlpK36/9EwDwBplzjt3XvTo/ktIwMwekeRg4CMjMWAQA1OWNHtzcQqMSZObSIMqYIs+Ekd05TNbiqSuZbB2m4lRb/HpboK/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; dkim=pass (2048-bit key) header.d=norik.com header.i=@norik.com header.b=gUSz6tHx; arc=none smtp.client-ip=46.19.12.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=OsX98dYaf7fHr800aVFe36pJn1lSFXVN/+2ZuPJfZTs=; b=gUSz6tHxzCusqmIdBmBECTwvIT
	i9ICORrQzUkw7UBZtB6RKqpgf5QyqUzIh44r++vBeTlNawSg9PBrGy1VY0WNAVotXo/SHMik6+WeB
	/OIVPfXy55kqn37cK0ewFZxt8NVCFY3pfFOY2IHSfGxetRUFlPjF8alqkEWka9+4qf0SxRdsxRPei
	jSNw9CMRk7p9itEujlbW80HDf4UY5ZzPtMj5ju5HpB2cO22lsZTxwgflmpHGKadeLLO89TQ4gqOXN
	UXAEu3xrDnVAZUlqN2w+Xc7JC9Ls6S+0giGA46vRydxu48dDGNF1D0mX3XobRb2zME7px/jZaHhZx
	APLXHN7Q==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:52086 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1w8Fig-00000009fYO-2rpF;
	Thu, 02 Apr 2026 12:56:14 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	upstream@lists.phytec.de
Subject: [PATCH 2/5] arm64: dts: freescale: imx91-phyboard-segin: Add gpio-line-names
Date: Thu,  2 Apr 2026 12:56:10 +0200
Message-ID: <20260402105613.1303871-2-florijan.plohl@norik.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260402105613.1303871-1-florijan.plohl@norik.com>
References: <20260402105613.1303871-1-florijan.plohl@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spamd-Result: default: False [2.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[norik.com:s=default];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[norik.com];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-284000-lists,devicetree=lfdr.de];
	HAS_X_SOURCE(0.00)[];
	DKIM_TRACE(0.00)[norik.com:-];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_X_ANTIABUSE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,norik.com:email,norik.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C2EC238803E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add gpio-line-names for GPIOs with a defined board-level
function on the PHYTEC phyBOARD-Segin-i.MX91.

Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 .../dts/freescale/imx91-phyboard-segin.dts     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts b/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts
index 7b18a58024f5..8b19fc17eacd 100644
--- a/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts
+++ b/arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts
@@ -137,6 +137,24 @@ ethphy2: ethernet-phy@2 {
 	};
 };
 
+&gpio1 {
+	gpio-line-names = "", "USER_LED", "I2C1_SCL", "I2C1_SDA";
+};
+
+&gpio3 {
+	gpio-line-names = "SD1_nCD", "", "", "", "",
+			  "", "", "SD1_nRESET";
+};
+
+&gpio4 {
+	gpio-line-names = "", "", "", "", "",
+			  "", "", "", "", "",
+			  "", "", "", "", "",
+			  "", "CAN_EN", "", "", "",
+			  "", "", "", "RESET_PHY", "",
+			  "", "RTC_nINT", "PMIC_IRQ_B";
+};
+
 /* CAN */
 &flexcan1 {
 	pinctrl-names = "default";
-- 
2.43.0


