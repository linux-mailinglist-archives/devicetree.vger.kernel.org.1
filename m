Return-Path: <devicetree+bounces-262569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGLmGkIOg2k+hAMAu9opvQ
	(envelope-from <devicetree+bounces-262569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:15:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E73E3AE9
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 644343004904
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 09:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59963A1E6D;
	Wed,  4 Feb 2026 09:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="TjwoRbih"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA4E3A1A5B
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 09:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770196542; cv=none; b=o2aK+5rV03PZ/cS+eL8WsL+uarltIIzxdmM6Q/i2UUN+gd+qLkLrbA9oIn6IXL09lAXNGRdCq1z5+hHiYcLeybrnBwlko1aBiW6FrVWToY/sEZ5Nr92cCu0mzF4bqRkD2jecKc6hA5/Qu1mFmpIqsJ2ErsPAHk2L2F9BQpdpxrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770196542; c=relaxed/simple;
	bh=u9L9A/b3l2dQgyXVCQAFYECVTk8TrUDxNNqPm8mp15k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QDOUge2ANUaXE/PknSe6dQ0mOc1LzJOxSuzfcozq3K11gfzXyz56rksThUNREHliUTCMZ72e8NSA5zI5ySpDqksK4qH/WPaqgE/dgZSlMpmBrOF6/B6KCrIe1ZFhD9BI8J0VxsqQfDvDoSpyxj0GMJsa8WhfF61g8ge5/gfV2Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=TjwoRbih; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 24EAC1A2BE7;
	Wed,  4 Feb 2026 09:15:40 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EDB6760745;
	Wed,  4 Feb 2026 09:15:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ED690119A865B;
	Wed,  4 Feb 2026 10:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770196539; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=7C6sOZmDev20rPO1grHjaC2x/4LZuuGBj/em9R7llW8=;
	b=TjwoRbihtjvicDmdk0pMYQjCJseF0EOPq+K3/pSbdo638BMBnIhNTNbDZ+2Vm6/KBiIoz8
	MUU5ZP9dr1tHswCQKqQH1TrCCAGr3Ik9w5OHzHyVv0/5QOFzGYRJGsU26X6o+xd/XMd1FI
	7i3oYahHA5AGXpQkxk1aTTEo15K5rpf1X8DU8yndmw7/ZqcxHhA//gI5BksdoyyjLExcFM
	RLAQfAzySOjQn5vSTT0z+++Poq8Cmc8Lk/sNG7MrER2gXamKqPAtq3nOfulA4/L9i5Zr5/
	9FOZgsycypYDtZoTxpTiXM8blIQlNTkR2gMRL3YBHFHWocKcVDWM9qyT7vVXsQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	zajec5@gmail.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH -next] ARM: dts: BCM5301X: Drop extra NAND controller compatible
Date: Wed,  4 Feb 2026 10:15:30 +0100
Message-ID: <20260204091530.624230-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.51.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[broadcom.com,hauke-m.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	DBL_PROHIBIT(0.00)[1.19.21.224:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:email,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: 01E73E3AE9
X-Rspamd-Action: no action

Fix the dtbs_check warning introduced when the brcm,brcmnand fallback
compatible got removed for iProc machines.

Fixes: 4db35366d6dc ("dt-bindings: mtd: brcm,brcmnand: Drop "brcm,brcmnand" compatible for iProc")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---

The above commit is in mtd/next and will be part of the opening merge window.

---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index d0d5f7e52a91..46b650abdb90 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -479,7 +479,7 @@ thermal: thermal@2c0 {
 	};
 
 	nand_controller: nand-controller@18028000 {
-		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1", "brcm,brcmnand";
+		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1";
 		reg = <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f00 0x20>;
 		reg-names = "nand", "iproc-idm", "iproc-ext";
 		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.51.1


