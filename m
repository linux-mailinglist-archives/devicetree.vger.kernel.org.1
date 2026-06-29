Return-Path: <devicetree+bounces-316688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 653vKSgWQmqzzwkAu9opvQ
	(envelope-from <devicetree+bounces-316688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:52:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D166D68E9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:52:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qAJxWiPV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316688-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316688-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 92B7130233FB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4BF3A7F66;
	Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186A338911B;
	Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782715774; cv=none; b=ZLC5rpSGgRpFrKlkfdvRsXkBJOXd6gdnUalGJaYiKAi2ivNMTArH95AqaJLF7j95fdrl2zwOKFzFfM9/xatlnNFCFfbr4yD01rDe0WG/7utIL75Ep1F6bjyL7Cg2jmCOwoX0ZycGsZ9kvHVmxh9mdzdhrgpLT3TINCyQUcX2ZSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782715774; c=relaxed/simple;
	bh=FDwiNnQBBCZ/QNpWwqyHzdSkJIqsF5fGdO+P3uhJhds=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WGp88iwNAYIDNfoim7seU0Vpwto5UV4GXSnzn5zpdAnCihA8F+noKGtMDiD6m3SGyozYceRFv8F4++RCEjfWmASkhTq15hJMVsCjfPvZA9/7f0CHjwFLLMdGCyUUk6mxXb8g2XwMVgkT9gHB6loFTf0VgQn5LOjbaxaOrCN/Msw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAJxWiPV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60A0C2BCF4;
	Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782715774;
	bh=FDwiNnQBBCZ/QNpWwqyHzdSkJIqsF5fGdO+P3uhJhds=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qAJxWiPVg6528Lhg4/0l0Av5OZ8Gz+nivKx5XllbrCQ8K3951ahAjQKIrxZ2w9+US
	 9KEMeSuKAenLBKu6fD+biwpbGu1Y/yNNIUAe82HYmpVnSCeoApmJ8soBTa5Vh9FXem
	 maezA0zXrkmlJe/AsUXsT0ahXmv1XyunYhe1azV/6ad4TRjpakhJ5HxIpaTmuXdxtJ
	 ktsBMxHYjM3ZeWd8v0OnF59BtCrlYrBx9RO5RNEtiqFvXUwectd/Ul7hXr/QTqOWd7
	 dyjt8rqACywE5z5NgwtIe040NB1R5SGRHs7dlaFp1Nv3hFWOoXxJdjFx2JBsGvFA1b
	 pRnCuF+2do9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDDCC43638;
	Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
From: Yu-Che Hsieh via B4 Relay <devnull+yc_hsieh.aspeedtech.com@kernel.org>
Date: Mon, 29 Jun 2026 14:48:58 +0800
Subject: [PATCH 1/4] ipmi: bt-bmc: Use bitfield helpers for register
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260629-aspeed-bt-bmc-multichannel-v1-1-fc23ee337f7a@aspeedtech.com>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
In-Reply-To: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782715772; l=3925;
 i=yc_hsieh@aspeedtech.com; s=20260629; h=from:subject:message-id;
 bh=HQw8rGJUsM6loLGP55U5cgMUUCPUOKcrGTqHI8TGeyw=;
 b=Mg57Y/Vn2ocHuNlZAZqksIQ0vRHfMU0JKXY0uL/knqv7c4ICD8NzGXdCdiFClN9xhS/Yheusc
 B5G083PbCmYD71NYrV8XV1FsDJV8yyawcP2dzWurZPGlGsjI8mi6jI7
X-Developer-Key: i=yc_hsieh@aspeedtech.com; a=ed25519;
 pk=kLxUeF7g6teciq79it9N3tYNgp3yCspZ+AHlYSnZ0gs=
X-Endpoint-Received: by B4 Relay for yc_hsieh@aspeedtech.com/20260629 with
 auth_id=844
X-Original-From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
Reply-To: yc_hsieh@aspeedtech.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316688-lists,devicetree=lfdr.de,yc_hsieh.aspeedtech.com];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:yc_hsieh@aspeedtech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[yc_hsieh@aspeedtech.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,aspeedtech.com:replyto,aspeedtech.com:email,aspeedtech.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 17D166D68E9

From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>

Use BIT(), GENMASK(), and FIELD_PREP() for the BT register definitions

and register field programming.

This makes the register layout easier to read and prepares the driver

for later changes that need to program the BT_CR0 fields from device

configuration.

Signed-off-by: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
---
 drivers/char/ipmi/bt-bmc.c | 72 ++++++++++++++++++++++++----------------------
 1 file changed, 37 insertions(+), 35 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index a179d4797011..f3c67272502f 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -15,6 +15,7 @@
 #include <linux/poll.h>
 #include <linux/sched.h>
 #include <linux/timer.h>
+#include <linux/bitfield.h>
 
 /*
  * This is a BMC device used to communicate to the host
@@ -24,33 +25,34 @@
 #define BT_IO_BASE	0xe4
 #define BT_IRQ		10
 
-#define BT_CR0		0x0
-#define   BT_CR0_IO_BASE		16
-#define   BT_CR0_IRQ			12
-#define   BT_CR0_EN_CLR_SLV_RDP		0x8
-#define   BT_CR0_EN_CLR_SLV_WRP		0x4
-#define   BT_CR0_ENABLE_IBT		0x1
-#define BT_CR1		0x4
-#define   BT_CR1_IRQ_H2B	0x01
-#define   BT_CR1_IRQ_HBUSY	0x40
-#define BT_CR2		0x8
-#define   BT_CR2_IRQ_H2B	0x01
-#define   BT_CR2_IRQ_HBUSY	0x40
-#define BT_CR3		0xc
-#define BT_CTRL		0x10
-#define   BT_CTRL_B_BUSY		0x80
-#define   BT_CTRL_H_BUSY		0x40
-#define   BT_CTRL_OEM0			0x20
-#define   BT_CTRL_SMS_ATN		0x10
-#define   BT_CTRL_B2H_ATN		0x08
-#define   BT_CTRL_H2B_ATN		0x04
-#define   BT_CTRL_CLR_RD_PTR		0x02
-#define   BT_CTRL_CLR_WR_PTR		0x01
-#define BT_BMC2HOST	0x14
-#define BT_INTMASK	0x18
-#define   BT_INTMASK_B2H_IRQEN		0x01
-#define   BT_INTMASK_B2H_IRQ		0x02
-#define   BT_INTMASK_BMC_HWRST		0x80
+#define BT_CR0			0x0
+#define   BT_CR0_IO_BASE	GENMASK(31, 16)
+#define   BT_CR0_SIRQ		GENMASK(15, 12)
+#define   BT_CR0_SIRQ_TYPE	GENMASK(11, 10)
+#define   BT_CR0_EN_CLR_SLV_RDP	BIT(3)
+#define   BT_CR0_EN_CLR_SLV_WRP	BIT(2)
+#define   BT_CR0_ENABLE_IBT	BIT(0)
+#define BT_CR1			0x4
+#define   BT_CR1_IRQ_EN_HBUSY	BIT(6)
+#define   BT_CR1_IRQ_EN_H2B	BIT(0)
+#define BT_CR2			0x8
+#define   BT_CR2_IRQ_STS_HBUSY	BIT(6)
+#define   BT_CR2_IRQ_STS_H2B	BIT(0)
+#define BT_CR3			0xc
+#define BT_CTRL			0x10
+#define   BT_CTRL_B_BUSY	BIT(7)
+#define   BT_CTRL_H_BUSY	BIT(6)
+#define   BT_CTRL_OEM0		BIT(5)
+#define   BT_CTRL_SMS_ATN	BIT(4)
+#define   BT_CTRL_B2H_ATN	BIT(3)
+#define   BT_CTRL_H2B_ATN	BIT(2)
+#define   BT_CTRL_CLR_RD_PTR	BIT(1)
+#define   BT_CTRL_CLR_WR_PTR	BIT(0)
+#define BT_BMC2HOST		0x14
+#define BT_INTMASK		0x18
+#define   BT_INTMASK_BMC_HWRST	BIT(7)
+#define   BT_INTMASK_B2H_IRQ	BIT(1)
+#define   BT_INTMASK_B2H_IRQEN	BIT(0)
 
 #define BT_BMC_BUFFER_SIZE 256
 
@@ -361,7 +363,7 @@ static irqreturn_t bt_bmc_irq(int irq, void *arg)
 
 	reg = readl(bt_bmc->base + BT_CR2);
 
-	reg &= BT_CR2_IRQ_H2B | BT_CR2_IRQ_HBUSY;
+	reg &= BT_CR2_IRQ_STS_H2B | BT_CR2_IRQ_STS_HBUSY;
 	if (!reg)
 		return IRQ_NONE;
 
@@ -398,7 +400,7 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
 	 * message to the BT buffer
 	 */
 	reg = readl(bt_bmc->base + BT_CR1);
-	reg |= BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY;
+	reg |= BT_CR1_IRQ_EN_H2B | BT_CR1_IRQ_EN_HBUSY;
 	writel(reg, bt_bmc->base + BT_CR1);
 
 	return 0;
@@ -447,12 +449,12 @@ static int bt_bmc_probe(struct platform_device *pdev)
 		add_timer(&bt_bmc->poll_timer);
 	}
 
-	writel((BT_IO_BASE << BT_CR0_IO_BASE) |
-		     (BT_IRQ << BT_CR0_IRQ) |
-		     BT_CR0_EN_CLR_SLV_RDP |
-		     BT_CR0_EN_CLR_SLV_WRP |
-		     BT_CR0_ENABLE_IBT,
-		bt_bmc->base + BT_CR0);
+	writel(FIELD_PREP(BT_CR0_IO_BASE, BT_IO_BASE) |
+	       FIELD_PREP(BT_CR0_SIRQ, BT_IRQ) |
+	       BT_CR0_EN_CLR_SLV_RDP |
+	       BT_CR0_EN_CLR_SLV_WRP |
+	       BT_CR0_ENABLE_IBT,
+	       bt_bmc->base + BT_CR0);
 
 	clr_b_busy(bt_bmc);
 

-- 
2.34.1



