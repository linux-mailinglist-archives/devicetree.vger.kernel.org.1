Return-Path: <devicetree+bounces-253496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C93D0D8D6
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 16:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 860F330393E2
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 15:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64174348898;
	Sat, 10 Jan 2026 15:44:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA38E2628D;
	Sat, 10 Jan 2026 15:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768059873; cv=none; b=MhDgFMCHaI4ukz2Pq+VZU1/FJOMyCSpM4xEHGQw6FEiTe1VjPbaRRfC/RsKTHl/tB32JWK83O99AyjMz2hQZPwNdm73jsBDmjdeCnnHxhUw4e/j31g+1gdGSqHBiNiyoDu7HT4BdrBPZvMV/Cazv8qA5Ly2CMMZ0Thnw6vXVXGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768059873; c=relaxed/simple;
	bh=mulrbxCV0UhMJwrv2JXHsPNN5v5K3n2aBtnDBwXn37M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B6gSozS10zSFww+/gZ2xyXXGPk8SMb9teIQD5b6risLrlxk0q9seCfUBAE2byXne6ClgiWjqZtVaI3N2azI1DooGrOXF4LEg29oiGp9PNeC8gzJSf+mabxGuN5wPcA72jey5jACxwzK0DFDEyOWGx4GPincaxaEuXa9sN4fsieE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id 096CE1C244E;
	Sat, 10 Jan 2026 16:44:17 +0100 (CET)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdde:8c00:6078:eb97:88d9:587f])
	by srv01.abscue.de (Postfix) with ESMTPSA id 0DBEA1C2457;
	Sat, 10 Jan 2026 16:44:13 +0100 (CET)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Sat, 10 Jan 2026 16:43:38 +0100
Subject: [PATCH 4/4] mailbox: sprd: mask interrupts that are not handled
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260110-ums9230-mailbox-v1-4-5941cab4f4e5@abscue.de>
References: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
In-Reply-To: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.2

To reduce the amount of spurious interrupts, disable the interrupts that
are not handled in this driver.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 drivers/mailbox/sprd-mailbox.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/mailbox/sprd-mailbox.c b/drivers/mailbox/sprd-mailbox.c
index 26256581a76ad59785a1c87a34eb91f5985dc948..565502904e1f296dff02e308d8b7f1e1ff2d1692 100644
--- a/drivers/mailbox/sprd-mailbox.c
+++ b/drivers/mailbox/sprd-mailbox.c
@@ -282,21 +282,19 @@ static int sprd_mbox_startup(struct mbox_chan *chan)
 		/* Select outbox FIFO mode and reset the outbox FIFO status */
 		writel(0x0, priv->outbox_base + SPRD_MBOX_FIFO_RST);
 
-		/* Enable inbox FIFO overflow and delivery interrupt */
-		val = readl(priv->inbox_base + SPRD_MBOX_IRQ_MSK);
-		val &= ~(SPRD_INBOX_FIFO_OVERFLOW_IRQ | SPRD_INBOX_FIFO_DELIVER_IRQ);
+		/* Enable inbox FIFO delivery interrupt */
+		val = SPRD_INBOX_FIFO_IRQ_MASK;
+		val &= ~SPRD_INBOX_FIFO_DELIVER_IRQ;
 		writel(val, priv->inbox_base + SPRD_MBOX_IRQ_MSK);
 
 		/* Enable outbox FIFO not empty interrupt */
-		val = readl(priv->outbox_base + SPRD_MBOX_IRQ_MSK);
+		val = SPRD_OUTBOX_FIFO_IRQ_MASK;
 		val &= ~SPRD_OUTBOX_FIFO_NOT_EMPTY_IRQ;
 		writel(val, priv->outbox_base + SPRD_MBOX_IRQ_MSK);
 
 		/* Enable supplementary outbox as the fundamental one */
 		if (priv->supp_base) {
 			writel(0x0, priv->supp_base + SPRD_MBOX_FIFO_RST);
-			val = readl(priv->supp_base + SPRD_MBOX_IRQ_MSK);
-			val &= ~SPRD_OUTBOX_FIFO_NOT_EMPTY_IRQ;
 			writel(val, priv->supp_base + SPRD_MBOX_IRQ_MSK);
 		}
 	}

-- 
2.50.0


