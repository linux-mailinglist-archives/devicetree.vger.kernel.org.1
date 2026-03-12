Return-Path: <devicetree+bounces-274517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFQpGa2Rsml5NgAAu9opvQ
	(envelope-from <devicetree+bounces-274517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:13:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFC4270296
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:13:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A20E3036769
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A2A3C4575;
	Thu, 12 Mar 2026 10:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="04hDAdl8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3A23C3459
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 10:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773310339; cv=none; b=bw3HYc14AEF0ts1w6UG5FXgPy8S+JlogJJLeymvqJ6+5Du/eh5mtvZpbDIerwCW3/75Nf2zma66055P0IiTxhtNeXhQxdAe6vaekM0v61xazK/ap5gOJF8oWU73I7sramZUpIg52W52qgAyqSHmKA9ElC66dn7saP7MLbVk4qQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773310339; c=relaxed/simple;
	bh=1snz4nu932BQaPGj1m5kJt/2+RkGMe8mWiHUlyDrJnY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b4jOkJeyjA3rB27+9SBdliFGnr3x7bE0Ca7OFtBKUXa4l0j9T9A7mv1Yg1dTxt9r6mXuMVv2szxEccW63vZg88APRZGOztpg/ltNqmi3CNR74Pip08ByFOMOVWte+RAyp0vacA4iXXzqDSc0scqu80T4WJRJb4tc2Sqa0zceCig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=04hDAdl8; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D351F4E42650;
	Thu, 12 Mar 2026 10:12:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A38075FDEB;
	Thu, 12 Mar 2026 10:12:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1111D10369D7E;
	Thu, 12 Mar 2026 11:12:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773310333; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=x8skTqfbUD9JCb+byF4bxHeI2j2p4qGQHJqCgQ+a5aQ=;
	b=04hDAdl8RvFZx/TOY2lTFmGctnnSllSuRGcHq5JwcC/6m7SIzb3AaUnyuLGuExembkBapt
	frxtQrPrA2QqzhznosGaeVJNWuOsdpBq1zCCXGP5TMzKsnCc2lYS4YOXw29f2Gj7x4Eo6x
	qTF3AAfBwWsHxobvSJQXKBym+nIc403gb2R+PtFvdSunV4zSERva++eiBn60+5Qf1mABt+
	W/erSgrUVW7G62f3gNiWu0jbdPDtZ7l6uUf/3PoGR1IRoPWAG7+4Q2i0yf1EK2FDMYpxEc
	9HJV2xkPllL+3TaRDULBsVrX3kZ1qo8aVEnxXIUmaP1F1/18MdtOK97hMa3V/g==
From: =?UTF-8?q?Th=C3=A9o=20Lebrun?= <theo.lebrun@bootlin.com>
To: theo.lebrun@bootlin.com
Cc: Ryan.Wanner@microchip.com,
	Valentina.FernandezAlanis@microchip.com,
	abin.joseph@amd.com,
	alex@ghiti.fr,
	andrew+netdev@lunn.ch,
	aou@eecs.berkeley.edu,
	claudiu.beznea@tuxon.dev,
	conor+dt@kernel.org,
	conor.dooley@microchip.com,
	conor@kernel.org,
	daire.mcnamara@microchip.com,
	dave.stevenson@raspberrypi.com,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	edumazet@google.com,
	gregory.clement@bootlin.com,
	krzk+dt@kernel.org,
	kuba@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	netdev@vger.kernel.org,
	nicolas.ferre@microchip.com,
	pabeni@redhat.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	richardcochran@gmail.com,
	robh@kernel.org,
	samuel.holland@sifive.com,
	sean.anderson@linux.dev,
	thomas.petazzoni@bootlin.com,
	vineeth.karumanchi@amd.com
Subject: [PATCH 3/3] net: macb: drop usrio pointer on EyeQ5 config
Date: Thu, 12 Mar 2026 11:11:38 +0100
Message-ID: <20260312101138.465482-3-theo.lebrun@bootlin.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312101138.465482-1-theo.lebrun@bootlin.com>
References: <DH0PZN0WJZC5.26KLH464PMMTP@bootlin.com>
 <20260312101138.465482-1-theo.lebrun@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[microchip.com,amd.com,ghiti.fr,lunn.ch,eecs.berkeley.edu,tuxon.dev,kernel.org,raspberrypi.com,davemloft.net,vger.kernel.org,google.com,bootlin.com,lists.infradead.org,redhat.com,dabbelt.com,gmail.com,sifive.com,linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274517-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[theo.lebrun@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[32];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2CFC4270296
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

USRIO is disabled on this platform, drop its inherited usrio config.
We will end up with MACB_CAPS_USRIO_DISABLED on this platform:
 - We have no config->usrio so macb_configure_caps() deduces that the
   feature is disabled.
 - Anecdotally, we would also land in the runtime detection codepath
   that reads DCFG1.

Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 972499aa4191..0e2200cf4206 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -5592,7 +5592,6 @@ static const struct macb_config eyeq5_config = {
 	.clk_init = macb_clk_init,
 	.init = eyeq5_init,
 	.jumbo_max_len = 10240,
-	.usrio = &at91_default_usrio,
 };
 
 static const struct macb_config raspberrypi_rp1_config = {
-- 
2.53.0


