Return-Path: <devicetree+bounces-242344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D40C8962A
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CE7E3A867B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18CC1320CCB;
	Wed, 26 Nov 2025 10:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="07ckD+4n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B7D2620E4
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 10:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764154017; cv=none; b=dgmzIthsNgs0JqKKaLtoZ4j/AGIlGIf/fSKWQSZ9GpGRLDmI1H6Mb4r0baqja8gO0ye2IcCwfngJWLL5yVQxFsdI8nMfQ54oxUnWedy4j91PjMKWDnslKDqu10YOJd1TC+VdSoG/dPdB/1lRNznv9u0GcVnge8wysrfIkNfDuE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764154017; c=relaxed/simple;
	bh=SHaKcdbxVrKoU8qMVpKry86uYp0Zz4Sh9gmZSF9TBD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=opv5ycAfKO0P6z26uzEBIqP8M22S3mmeVvjGgk69mTiozK/4NbrfyZBMgaf3ugUpAhkP6Z5xcbQN5nTUqymXcXpazRb+CqdjkdNfAmiUQkU4IrZYcLuNotJY+J3pAbogu1wMsUHhvGmqjLXtP41GhwkZenkEG8+navC/MSBVrt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=07ckD+4n; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DBE66C15D78;
	Wed, 26 Nov 2025 10:46:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A03E760721;
	Wed, 26 Nov 2025 10:46:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 70B2C102F08D6;
	Wed, 26 Nov 2025 11:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764154006; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8xK61RZHCK25RRSsygPfCpMDLwLhjqbk8IWk2PRlvNk=;
	b=07ckD+4nujRzYAjSA/9XK5j92QymrWnxonHsPPskd9a/2qt5ZX3j5JkUG8nn2kfvCMKLCz
	F1YpN9FYghG1Oo32uupISMt8rQfgruKXKBrXHs3IbNAX+vpilE8OOJW2/uilmmFEAPNGZ0
	8rRydHxJP9m0P26tqsC2m/+CsLp8TkmF9Av/AvxruGiPaxNtW4iM8/LPns833Fe28XFDy7
	pw6QOStXRjZ6kOAYDQB5tLYBru8ghKsiv0/W0jNeFv5AwpHZ1+Jr1FFSfZBxXOwAHIxCGc
	3ztji7tAmzlRqndHeM5HJg/vVlRXTx5c/LTvS9XatK6MKHRZzGJwHjiFih5doQ==
From: =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
Date: Wed, 26 Nov 2025 11:46:25 +0100
Subject: [PATCH v4 2/7] i2c: designware: Optimize flag reading in
 i2c_dw_read()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251126-i2c-dw-v4-2-b0654598e7c5@bootlin.com>
References: <20251126-i2c-dw-v4-0-b0654598e7c5@bootlin.com>
In-Reply-To: <20251126-i2c-dw-v4-0-b0654598e7c5@bootlin.com>
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

The message flags are accessed both in the outer loop and the inner loop,
so move the declaration of the local flags variable to the outer loop.

The message index is only modified by the outer loop, so reading the
flags in the inner loop was always getting the same value.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
2.52.0


