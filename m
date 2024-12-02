Return-Path: <devicetree+bounces-126213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE579E0913
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E48116F8E8
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED391DDC18;
	Mon,  2 Dec 2024 16:35:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1001DDA2E
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157347; cv=none; b=kgXrXYklRRq8FJn3dN3IxmxZkezuYwnfHiP9obE7oOKgcjymfrk5TSdN+APZW2DcNNyzeberVsUYwY/lVJaKq+uEbkPYI1KwYm8tgWrDD8m7Zk2FMoqDRDIwf+kia7jrT7KtlcXOG4Jz8u/R9SOA1OwIu97wbgluc7NRceI6Kro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157347; c=relaxed/simple;
	bh=vzVYWqRuvJ/DR32lne+6U8YOTfeeJ6uP4kuNCyeLjfI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uMsEEdQREXl65a7Z7RDZI1L9Ubuf8/TneMGOE0qnta67GC1Y6aPCooXyfvALvmsPyCqYqZhPsaNYAw7IvAjwsi6fPpdRvkPPQFh5sawU55RwSTb+vmuNXhZDOK0jm4cnsucKRDw8o6++uMgcoF0ct8ApAJeyF5Uc5ZcYs6TihDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tI9Od-0004Mi-5y; Mon, 02 Dec 2024 17:35:39 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 02 Dec 2024 17:35:20 +0100
Subject: [PATCH 1/3] mtd: mchp48l640: make WEL behaviour configurable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-mb85rs128ty-v1-1-a660b6490dc8@pengutronix.de>
References: <20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de>
In-Reply-To: <20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Schocher <hs@denx.de>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1701; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=YnwbiJO7X9hCHNnU39mclSYSZ2iVlKIANZV6k28zZuk=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkj3fXiTQyJWdanbbz0NQ9+fXg7zEnbl5J62kLRiYXDYn
 nKsN3pvRykLgxgHg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCJ9Hxh+MX/JexrEXuhscKij
 ZjdLEb9oXd1ayUNHt1yf2HNf/qL+AkaGe/ODy2ZNWvgk/dKuZ/KiL0UWtm1b4dm+bs11ic/7tdR
 vcgMA
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


