Return-Path: <devicetree+bounces-233785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C0BC259B0
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 15:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B0791A63344
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5178334CFAF;
	Fri, 31 Oct 2025 14:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="DiqSK31Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E43634C821
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761921361; cv=none; b=Ox3b/CFEwmywBWZarlYoO+tsZ7BrQXIXHXANByeCXmyshnZasQ5YMPX4GIbXezcXHJ5SXpExoXOtPllMBJ6pOoYjIg2///u34t2U/U0Z5Xi/n1BmH6/8f2B/4Peu3e5l8NjRRyuI4mwDudpnLemDfqW2HYXCn+a01GG5SMVSHws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761921361; c=relaxed/simple;
	bh=QYdwTGffhiIsHPXcV+yojSMBuQCvwVv+QuSeD1Et69Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rg91ZOGq02rGpyCi30wpednjWGmYKWg4Bf5qbmDC5K8r4JvfF2kkCwbyGKWw9wpalRx7lvu3xof5gT0IEOcVy0uf4Op6VICUwxJZ0UyhCXRLtH9KrL4uZehsVDRci5UGgpEAgmO08Nj1yfcd1TN82CYwOVYrDJIX+t7ex3xCp8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=DiqSK31Z; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 76F9BC0E958;
	Fri, 31 Oct 2025 14:35:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0407E60704;
	Fri, 31 Oct 2025 14:35:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 695B811818039;
	Fri, 31 Oct 2025 15:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761921357; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=/r+8Xznx3k7NPhBfqnm1ZY9xbZMhMWI68J+yr6/nu6k=;
	b=DiqSK31ZShcEOTH4IkEYxhu5kBnbxYiuKxzsSduaxsZVcjfeku3QlVJmxCkAXzBL5oV+f3
	Al1oIDRhqRhJttItSLjTH0fXPBvkDFY2U82zK/DAmrkcFDfVHIPLQ4jSAIH3T8uuUJPYwj
	5NSLjfrPdnsOK7LK6Ax5fN5YiaYjHfCqvZt+eWZzvNkESkNayCmqCV8Frbxg57qi8oG8E3
	XiSBNf1uhzbFW43twbXpZDU1PdYXAQO7bRHYy4/gA6OHtlJQr1HOLaGQV0RFjz08h65J0G
	ZQ9QxEwEtm1xmNQjdgF9Escl93/Z0jPDI8VEayfu43SzBi9Fnk/JK30kYCIK/Q==
From: =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
Date: Fri, 31 Oct 2025 15:35:40 +0100
Subject: [PATCH v2 2/5] i2c: designware: Optimize flag reading in
 i2c_dw_read()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251031-i2c-dw-v2-2-90416874fcc0@bootlin.com>
References: <20251031-i2c-dw-v2-0-90416874fcc0@bootlin.com>
In-Reply-To: <20251031-i2c-dw-v2-0-90416874fcc0@bootlin.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, 
 Mika Westerberg <mika.westerberg@linux.intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Jan Dabros <jsd@semihalf.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 Dmitry Guzman <dmitry.guzman@mobileye.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rt-devel@lists.linux.dev, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

Optimize the i2c_dw_read() function by reading the message flags only
once per message, rather than for every byte.

The message index is only modified by the outer loop, so reading the
flags in the inner loop was always getting the same value.

Signed-off-by: Benoît Monin <benoit.monin@bootlin.com>
---
 drivers/i2c/busses/i2c-designware-master.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-designware-master.c b/drivers/i2c/busses/i2c-designware-master.c
index 41e9b5ecad20..ec4fc2708d03 100644
--- a/drivers/i2c/busses/i2c-designware-master.c
+++ b/drivers/i2c/busses/i2c-designware-master.c
@@ -586,11 +586,12 @@ i2c_dw_read(struct dw_i2c_dev *dev)
 	unsigned int rx_valid;
 
 	for (; dev->msg_read_idx < dev->msgs_num; dev->msg_read_idx++) {
+		u32 flags = msgs[dev->msg_read_idx].flags;
 		unsigned int tmp;
 		u32 len;
 		u8 *buf;
 
-		if (!(msgs[dev->msg_read_idx].flags & I2C_M_RD))
+		if (!(flags & I2C_M_RD))
 			continue;
 
 		if (!(dev->status & STATUS_READ_IN_PROGRESS)) {
@@ -604,8 +605,6 @@ i2c_dw_read(struct dw_i2c_dev *dev)
 		regmap_read(dev->map, DW_IC_RXFLR, &rx_valid);
 
 		for (; len > 0 && rx_valid > 0; len--, rx_valid--) {
-			u32 flags = msgs[dev->msg_read_idx].flags;
-
 			regmap_read(dev->map, DW_IC_DATA_CMD, &tmp);
 			tmp &= DW_IC_DATA_CMD_DAT;
 			/* Ensure length byte is a valid value */

-- 
2.51.1


