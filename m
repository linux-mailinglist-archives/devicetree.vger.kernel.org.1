Return-Path: <devicetree+bounces-327121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xNYmFS+YV2qXXgAAu9opvQ
	(envelope-from <devicetree+bounces-327121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:24:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ABF75F56C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:24:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=LBtXZzTq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327121-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-327121-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FD29301F79D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDDEF37204C;
	Wed, 15 Jul 2026 14:23:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EB23546F6
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 14:23:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125390; cv=none; b=C80NVM5HxKqVxiJo1ZHhMqwLYGYEXyiQlk6bHXEfA8dfyvBP1hnEX/1afAB/K4qc5ikptdTqHqzw7MhiIyxQOlwfoSy29Fuh/gZDpXchs6wHqZVMDVSbOaBQ8OWXxT3tbGOY07THcWziac4K0AkgxdYGD/NQjFJ7iZ1mciJu9WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125390; c=relaxed/simple;
	bh=HOom1bxrDO/GHwXqY0qD5lhaVaSjF0F+dciyfNclTPE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YjcLDpq9oDMMKwCsiTj/ynIENnKRlLl7KtjWBWTI+vAIuwfe92qJ+IClZrcrVfW7UR+Yj1+dROr9xxNfD1QW3ogXp/FEWD26nlfUhjs50MT4iDAUwEWiaKyMpnhNTUBTz8ZaEDqLaIT1RCOvTMbs1mjLSUq9H9t9dwNkMO83/wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LBtXZzTq; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id B31EFC2B9D6;
	Wed, 15 Jul 2026 14:23:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BFC056035C;
	Wed, 15 Jul 2026 14:23:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6556911BD3BF5;
	Wed, 15 Jul 2026 16:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784125383; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=yoILlpMIdQMG0h6z5e/h8NeegbfAs8+0w/UxB1yV3ZQ=;
	b=LBtXZzTqPsjY8076vvHsITNenZZhN3Ct1xGoOb4tKz94haxgx+p1EqHsM3Wht2WS6eCzeO
	W68OJBOcMBnh+iBIbTsSUCmw6agoaLFewyzwW5PVCSIC5zWuRoGD4LTMMJM3IimEB1j+bm
	SK4L8s7IFcfUZGtlK9sVg/sfMuSawx1Ww/tkUr3EX8oHFJwfmwfUUG91rtWRRITcs3vVXK
	zwgga9nsGKSxEb5HDLo6fHIfWvwS5ThqeiZR6nKM0Jh3I0ir74wObv20Uu+ypYe0b0WJ/6
	svnIx1LBPcYhyXLPnU6h+9dBcBPJeAUwedifWPCAAeNfQrgtxq7IAmNfdF7tMg==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Wed, 15 Jul 2026 16:22:21 +0200
Subject: [PATCH v2 4/7] arm: dts: st: stm32mp157c-ed1: Add bootph-pre-ram
 tag on optee reserved memory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-mathieu-uboot-dts-import-v2-4-bc931417bd0e@bootlin.com>
References: <20260715-mathieu-uboot-dts-import-v2-0-bc931417bd0e@bootlin.com>
In-Reply-To: <20260715-mathieu-uboot-dts-import-v2-0-bc931417bd0e@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Wei Xu <xuwei5@hisilicon.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
 Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, 
 Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, openbmc@lists.ozlabs.org, 
 Tom Rini <trini@konsulko.com>, Peter Robinson <pbrobinson@gmail.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784125361; l=997;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=HOom1bxrDO/GHwXqY0qD5lhaVaSjF0F+dciyfNclTPE=;
 b=mAiPNP5DfX7wuIjQ0yqQikVNtsTgizsMceV5ShTy0brhE9vMlpuKroXPZBEr+g5pkuR/8K/S/
 SgNqYCMvu6FC8ySLhZY2pTwuzzquK0XVLdITpKUPiycOJreSa+OMdqB
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327121-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,foss.st.com,hisilicon.com,codeconstruct.com.au,google.com];
	FORGED_SENDER(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:xuwei5@hisilicon.com,m:andrew@codeconstruct.com.au,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:thomas.petazzoni@bootlin.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:openbmc@lists.ozlabs.org,m:trini@konsulko.com,m:pbrobinson@gmail.com,m:mathieu.dubois-briand@bootlin.com,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,m:taliperry1@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[bootlin.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,lists.ozlabs.org,konsulko.com,gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8ABF75F56C
X-Rspamd-Action: no action

Add bootph-pre-ram property to bind optee reserved-memory during the SPL
phase.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Link: https://sashiko.dev/#/patchset/20260710-mathieu-uboot-dts-import-v1-0-ffe0210e50c9@bootlin.com?part=2
Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 arch/arm/boot/dts/st/stm32mp157c-ed1.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts b/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
index 7da726035086..827480e9bf7d 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
@@ -34,6 +34,7 @@ reserved-memory {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges;
+		bootph-pre-ram;
 
 		mcuram2: mcuram2@10000000 {
 			compatible = "shared-dma-pool";
@@ -74,6 +75,7 @@ retram: retram@38000000 {
 		optee@fe000000 {
 			reg = <0xfe000000 0x02000000>;
 			no-map;
+			bootph-pre-ram;
 		};
 	};
 

-- 
2.47.3


