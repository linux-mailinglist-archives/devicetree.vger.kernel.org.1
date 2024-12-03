Return-Path: <devicetree+bounces-126504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 126F49E198D
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:42:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC224282D4A
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DDEF1E25F8;
	Tue,  3 Dec 2024 10:39:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA291E22E9
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 10:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733222348; cv=none; b=HlEDbAM0JgIMw02N5dMg3KTG9jxRDSz3iDjzRrWV+mt+IdAXvpMZgW5D6i5oa8ob3FNVw/+T9UHxOd6Wg+i0f1rdkzIj0HAKqxO3cxaUE12G5xWMVcO18GESoSd7guUz0JGmvlwpFuAWHSnT0EIK5l9sdcyplUgL4HiowVrgbhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733222348; c=relaxed/simple;
	bh=ANJhEQnIZzpgMyzVcsIOvll2KphdP0bup3EjD2KAFAc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hCxoQycLSa/DeZ/owWgMjrUc8ywovbA+TvraiVAWs5PGmJY/AjITbMozn0kbqfkoJBqYdgGJpPlV38Y6XdIkrpKPqBK38q/4EtuliLronZPly7OqsFIRDd3Xf99MReTo7fVw1UOLqPPPWAh9vAfYfYWTBpWpxcQBQ3U0AnHvxfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tIQJ6-00012Q-2c; Tue, 03 Dec 2024 11:39:04 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 03 Dec 2024 11:38:35 +0100
Subject: [PATCH v3 1/3] mtd: mchp48l640: make WEL behaviour configurable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241203-mb85rs128ty-v3-1-79107d54d839@pengutronix.de>
References: <20241203-mb85rs128ty-v3-0-79107d54d839@pengutronix.de>
In-Reply-To: <20241203-mb85rs128ty-v3-0-79107d54d839@pengutronix.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Schocher <hs@denx.de>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1743; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=pmKV2DTV1hVzHSifSfG65uDKd3xGW/MuLvE4Vczmd2E=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkj3u39kRrfVeSbBia9O6pavmebx4fPZzxbeURUp7xY5N
 NstuqHh3FHKwiDGwSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjImiBGhov+KzlOrX24eMnM
 TeHp337E+ddOem10bnf/09x+J9bex4oM/90vdGxy31PVs9mhg2sj44Nf6+dHJhgs0Hh8e7HvxBO
 GHGwA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: David Jander <david@protonic.nl>

The 48L640 resets the WEL bit (the Write Enable Latch bit in the status
register) to zero on the completion of write operations. In preparation
to support chips behaving differently, introduce .auto_disable_wel
capability, and, if it's missing, explicitly reset the WEL bit after
writes.

Signed-off-by: David Jander <david@protonic.nl>
Reviewed-by: Heiko Schocher <hs@denx.de>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/mtd/devices/mchp48l640.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/devices/mchp48l640.c b/drivers/mtd/devices/mchp48l640.c
index f576e6a890e859e7d20aeeb2ede4ca0acf4850fc..4cdd24aaed416fc7e40a8060b5c7eaf6684fc6d5 100644
--- a/drivers/mtd/devices/mchp48l640.c
+++ b/drivers/mtd/devices/mchp48l640.c
@@ -27,6 +27,7 @@
 struct mchp48_caps {
 	unsigned int size;
 	unsigned int page_size;
+	bool auto_disable_wel;
 };
 
 struct mchp48l640_flash {
@@ -194,9 +195,15 @@ static int mchp48l640_write_page(struct mtd_info *mtd, loff_t to, size_t len,
 	else
 		goto fail;
 
-	ret = mchp48l640_waitforbit(flash, MCHP48L640_STATUS_WEL, false);
-	if (ret)
-		goto fail;
+	if (flash->caps->auto_disable_wel) {
+		ret = mchp48l640_waitforbit(flash, MCHP48L640_STATUS_WEL, false);
+		if (ret)
+			goto fail;
+	} else {
+		ret = mchp48l640_write_prepare(flash, false);
+		if (ret)
+			goto fail;
+	}
 
 	kfree(cmd);
 	return 0;
@@ -293,6 +300,7 @@ static int mchp48l640_read(struct mtd_info *mtd, loff_t from, size_t len,
 static const struct mchp48_caps mchp48l640_caps = {
 	.size = SZ_8K,
 	.page_size = 32,
+	.auto_disable_wel = true,
 };
 
 static int mchp48l640_probe(struct spi_device *spi)

-- 
2.39.5


