Return-Path: <devicetree+bounces-242347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88322C8960C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A309A343CE7
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0896131D381;
	Wed, 26 Nov 2025 10:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Nr0U8qMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD36322A00
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 10:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764154019; cv=none; b=tyNFDz9OgO2Je2DUIIQcdAmQuHq5/XdX7DdMvxb01bD4/zN/RYy103g6P2DK74LXjVUaGQw5Men0CuBXxWVhOJ26Niu+0UQ9imrHgNsisBnGg8a1EMZqoPHNU/WLuybb/4QyvB3WCrMMIxE3+VMJNlEA6bLoPAyiInZAfYR8bos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764154019; c=relaxed/simple;
	bh=wnj9fWPMt20YBlywpsShCammpl06YijBh7wCQtHItaI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i1X6f7njaMPuAktE+MDDOc8efRvsVbdf83vPFqyHv16qNRt83FkZCCy5ulME6AIuFY5akpib7H81T/kX9Szv9pgEMG1IyMeWO0JoKN2xMnVWqQ4R+GHnYiHeefrj9BG+OsSCgTekhyinsZBOxV22RMuDCccQovaLx7IoW+Ux5vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Nr0U8qMQ; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 2EAE0C15D77;
	Wed, 26 Nov 2025 10:46:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E6A7160721;
	Wed, 26 Nov 2025 10:46:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 70D37102F08E0;
	Wed, 26 Nov 2025 11:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764154015; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=zPMXDsdjgwzFcrMyh3XFWmeN9DIP4crIyYDApglZPhg=;
	b=Nr0U8qMQEzzk0mV+oK0w+RdfZqehI9O7Ojs19N3T2K7tx+xoktignNG79Imomp6Mn5iKyT
	m82Cb1bu+B8yrMdxyXFpxnzDtLChkKCNsJ5K3jjZGkYWTkhX9Kaf1HRUseqons4kiJa9l4
	FPPX8bTG+dYnJvYYXNg8umvvRo0bSEtDxBuTwrse4MZYOSEnxz5VMAxtCy5Zt/AVT7Gk9i
	dhqY78iCLeUioVDBUqB7xzb2e0rJCE1NuHjIoyZDmJpMOFx/Artnd8qpXsruy5838CByAX
	9fGrIa4zanTxtmMJakqJb9g7PoCipdGASJ7mE1vZ/tAKVyWDOU3E8XcdKkpM0g==
From: =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
Date: Wed, 26 Nov 2025 11:46:29 +0100
Subject: [PATCH v4 6/7] i2c: designware: Use runtime PM macro for
 auto-cleanup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251126-i2c-dw-v4-6-b0654598e7c5@bootlin.com>
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

Simplify runtime PM handling in i2c_dw_xfer() by using the
pm_runtime_active_auto_try guard. This adds the proper handling for
runtime PM resume errors and allows us to get rid of the done and
done_nolock labels.

Signed-off-by: Benoît Monin <benoit.monin@bootlin.com>
---
 drivers/i2c/busses/i2c-designware-master.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/busses/i2c-designware-master.c b/drivers/i2c/busses/i2c-designware-master.c
index f3c87f447dd5..907597c7a05c 100644
--- a/drivers/i2c/busses/i2c-designware-master.c
+++ b/drivers/i2c/busses/i2c-designware-master.c
@@ -905,11 +905,13 @@ i2c_dw_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 
 	dev_dbg(dev->dev, "msgs: %d\n", num);
 
-	pm_runtime_get_sync(dev->dev);
+	ACQUIRE(pm_runtime_active_auto_try, pm)(dev->dev);
+	if (ACQUIRE_ERR(pm_runtime_active_auto_try, &pm))
+		return -ENXIO;
 
 	ret = i2c_dw_acquire_lock(dev);
 	if (ret)
-		goto done_nolock;
+		return ret;
 
 	/*
 	 * If the I2C_M_STOP is present in some the messages,
@@ -923,13 +925,15 @@ i2c_dw_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 		for (cnt = 1; ; cnt++) {
 			if (!i2c_dw_msg_is_valid(dev, msgs_part, cnt - 1)) {
 				ret = -EINVAL;
-				goto done;
+				break;
 			}
 
 			if ((msgs_part[cnt - 1].flags & I2C_M_STOP) ||
 			    (msgs_part + cnt == msgs + num))
 				break;
 		}
+		if (ret < 0)
+			break;
 
 		/* transfer one part up to a STOP */
 		ret = __i2c_dw_xfer_one_part(dev, msgs_part, cnt);
@@ -937,12 +941,8 @@ i2c_dw_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 			break;
 	}
 
-done:
 	i2c_dw_release_lock(dev);
 
-done_nolock:
-	pm_runtime_put_autosuspend(dev->dev);
-
 	if (ret < 0)
 		return ret;
 	return num;

-- 
2.52.0


