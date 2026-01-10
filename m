Return-Path: <devicetree+bounces-253493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1DFD0D8C4
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 16:44:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C8F3301CEA6
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 15:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A6A734844D;
	Sat, 10 Jan 2026 15:44:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA58F347BC6;
	Sat, 10 Jan 2026 15:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768059872; cv=none; b=lx6t1yHSWfBzib8xlcN063KZ8HarvSjRHU1JHk77M86rxdUEoJk4pp4bGVfcCZpNcifHKCa8gXqq/avV6k9Dt6jk6qMMtZY5bNCNTu3LTIofCOQf1sF1cgu3bco3/PuLnJW+wa+hPDphM08pJENKV+z1R0QBkWjeqacXn29zsqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768059872; c=relaxed/simple;
	bh=JVaZLM5WDONsNI8JffNk5QnOirU9Fr9+0Vc7reZjQD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XtjJVO6BT8CK+yByzdaIzmMfAJja5t9oqnVoluuOiJlSaKBxFvF/RuywAT+I+L6UPVBmCnRnuTV4cmsh4O8jbkfQGvvzNDvdjRkqo6IC9AREdBOcd9p+exaHN7TICDYUA72oQhAItWomA5yAODXXlrGUS8mlsoI6wsSnNvm3gjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id 036811C2456;
	Sat, 10 Jan 2026 16:44:12 +0100 (CET)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdde:8c00:6078:eb97:88d9:587f])
	by srv01.abscue.de (Postfix) with ESMTPSA id 6E5151C2450;
	Sat, 10 Jan 2026 16:44:12 +0100 (CET)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Sat, 10 Jan 2026 16:43:36 +0100
Subject: [PATCH 2/4] mailbox: sprd: clear delivery flag before handling TX
 done
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260110-ums9230-mailbox-v1-2-5941cab4f4e5@abscue.de>
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

If there are any pending messages in the mailbox queue, they are sent
as soon as a TX done event arrives from the driver. This may trigger a
new delivery interrupt while the previous one is still being handled.
If the delivery status is cleared after this, the interrupt is lost.
To prevent this from happening, clear the delivery status immediately
after checking it and before any new messages are sent.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 drivers/mailbox/sprd-mailbox.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mailbox/sprd-mailbox.c b/drivers/mailbox/sprd-mailbox.c
index ee8539dfcef549317f7b86321930bd6bef044598..9a3d388f76b78632ca08948e0fe0ad484aed23c3 100644
--- a/drivers/mailbox/sprd-mailbox.c
+++ b/drivers/mailbox/sprd-mailbox.c
@@ -166,6 +166,11 @@ static irqreturn_t sprd_mbox_inbox_isr(int irq, void *data)
 		return IRQ_NONE;
 	}
 
+	/* Clear FIFO delivery and overflow status first */
+	writel(fifo_sts &
+	       (SPRD_INBOX_FIFO_DELIVER_MASK | SPRD_INBOX_FIFO_OVERLOW_MASK),
+	       priv->inbox_base + SPRD_MBOX_FIFO_RST);
+
 	while (send_sts) {
 		id = __ffs(send_sts);
 		send_sts &= (send_sts - 1);
@@ -181,11 +186,6 @@ static irqreturn_t sprd_mbox_inbox_isr(int irq, void *data)
 			mbox_chan_txdone(chan, 0);
 	}
 
-	/* Clear FIFO delivery and overflow status */
-	writel(fifo_sts &
-	       (SPRD_INBOX_FIFO_DELIVER_MASK | SPRD_INBOX_FIFO_OVERLOW_MASK),
-	       priv->inbox_base + SPRD_MBOX_FIFO_RST);
-
 	/* Clear irq status */
 	writel(SPRD_MBOX_IRQ_CLR, priv->inbox_base + SPRD_MBOX_IRQ_STS);
 

-- 
2.50.0


