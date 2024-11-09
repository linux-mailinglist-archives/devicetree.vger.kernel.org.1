Return-Path: <devicetree+bounces-120513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BC99C2F6B
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 20:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45DFEB21A84
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 19:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BB01A0BFD;
	Sat,  9 Nov 2024 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="buo8KZZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABF71A00F2
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 19:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731181942; cv=none; b=G93rsajsJjmcHbQb4hDqdTeSYbsnJJmRxYmN172A6fZsc6dzFTScFrzzfBim5xWtr0aZY1chmy+R8JyEUGmmWk1Ao+Hn8pJ7cx4qCdvC3O8hdykgdwctiqeHty/45hioHHdgNWkcpu9GP0NX3UGjBUSqUAEisGy16cX7q3Sw3s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731181942; c=relaxed/simple;
	bh=LV7SPvJw7vBMe8rg9yhfbRbdXTu1kfyfhM7Z0nqZXcU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eWSTTCu6tLK8SOHngQm0E/SZHd9slIQxJkfomoXgqIm/mln0uWlhRfIcvGEVgK5p1WoWW0b+NBuiyBICpiQQpdY4k5/+bMHSXq9KqpLWb9Pu8dJtBnjhVUqa3HCGYtwgEw63AxOiD/38U1dDDjoCcSafQavaCMjNcCySxyRMQBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=buo8KZZS; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71e681bc315so2389604b3a.0
        for <devicetree@vger.kernel.org>; Sat, 09 Nov 2024 11:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1731181940; x=1731786740; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uC/Aqfht74BfKqo7buArS8NTdFz27K7/sj2Os++ZHYU=;
        b=buo8KZZSG7Q3aIZDKnPwKbY8nzYfS7fFuB1ONKKV9vAIlbKwLwbaw8B7uhsqoC6pp4
         6hOlX7CwOGYYRpw/jFV50+jakVl+hhkxOLD0wsg3Rq1tZ6OpmDMvZoeodsp3gAr+YLYz
         EXUdBE/1hSm3+/Lerx2GH9TcASQPgV88LB2MIJDqY8k/HfmoUwFdrfeyfld/PXSAUhJV
         LANtkwr7xTbDdD94WH++KD+4zV2rZPlC+3Y0azwujm8b8y3mOIQqyNMZqcwUbZFdYBAd
         ggUaKVsBNSLSriE8nd43uExYP5DgqNMlGh3LARCmDCByR+l+jPISq9Hxw/d48OeIvoPV
         JX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731181940; x=1731786740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uC/Aqfht74BfKqo7buArS8NTdFz27K7/sj2Os++ZHYU=;
        b=Jrqp/VY2wiqF3OW3z4VKDy0HZWtSpEthXK94qtIgqSzaYGMme8EHbORNQ81YMTajer
         XR1ULcdKvO1bZg5vQq8BR+kt9UGSX6E6Z0BcOqGZV3Thl5RSf1xOl49OzEM2TxK4GAmI
         xR2NCrSBT8htaE58osIE0VR6e1imhxiYruS4R43OyW3D2vyV+9bnm89vdyJ5dAMbc5EY
         KHBRP1gCV6dyuS/K/rMbJs3XEmC8MFZSx1XK7cpx9CdVfIu8B2bIcAEDd0SX0QxdHMYw
         TmMY/pSIfb09I/pgGFnffmmUg7ZLKhShl9KoPTq8ho9LzLIQJ2JybhsT/e64JXIY1S6k
         KtsQ==
X-Gm-Message-State: AOJu0YxnXmkV0xN4H3xNawBiUjTmvVQU6/21d/bmDMB9M8CcuGnaNL/r
	YzxEuXUsRCVjCocv1ECENLm4FcEpSM8TDNVaBncTT/0bWuOHVLPFdxSe74Y9Mw==
X-Google-Smtp-Source: AGHT+IHQxgNVWJFp45lVcQFqlSiJyuXRJLd2I1ZpT5fDTPHng9gSOcweCkStWBA7PTyur3DSUkNghw==
X-Received: by 2002:aa7:9f4f:0:b0:71e:40cd:b607 with SMTP id d2e1a72fcca58-7241230ed29mr10408575b3a.11.1731181940345;
        Sat, 09 Nov 2024 11:52:20 -0800 (PST)
Received: from [172.22.58.163] ([117.250.76.240])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724079a4177sm5972288b3a.99.2024.11.09.11.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Nov 2024 11:52:19 -0800 (PST)
From: Ayush Singh <ayush@beagleboard.org>
Date: Sun, 10 Nov 2024 01:21:35 +0530
Subject: [PATCH v2 3/3] of: Add notifier in of_reconfig_notifier_register()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241110-of-alias-v2-3-16da9844a93e@beagleboard.org>
References: <20241110-of-alias-v2-0-16da9844a93e@beagleboard.org>
In-Reply-To: <20241110-of-alias-v2-0-16da9844a93e@beagleboard.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 d-gole@ti.com, jkridner@beagleboard.org, lorforlinux@beagleboard.org, 
 Geert Uytterhoeven <geert@linux-m68k.org>, Andrew Davis <afd@ti.com>, 
 robertcnelson@beagleboard.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2046; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=LV7SPvJw7vBMe8rg9yhfbRbdXTu1kfyfhM7Z0nqZXcU=;
 b=kA0DAAgBBc71x4nlWnQByyZiAGcvvV+iIvLUBoBURgIH4sC0ZtcRYPLBYkh69TrlgTYVgZSLt
 okCMwQAAQgAHRYhBN/MEx7yTy1lb6UE1gXO9ceJ5Vp0BQJnL71fAAoJEAXO9ceJ5Vp0Wx8QANro
 3HQOQ3kwIL9CMjIJ7g2/g4+DpLezqa98+8ZU6Zu4dhyp0VilIK2DMSpECJ2qFiHRePLPtphcfOl
 ZUbnS4nWBZ/T7OEFMV/kEw8Kk+pLWYn9GAVimVhavx9pVyX7ddwJbHE3SpyZ81p2M0K5nzi7OWb
 qt+p0W/RxEO1UHm4MFvKPRtRZjecVtpgnCqZ8ATy/Q7uCD3I7OnwqRwAtjT6FXUWuH0wg2BaqSM
 LI4aRQ0k84w7GqqhNk2zAjfIdWHT+BNH9Baikmixw3T0yG//3LV1PrJF6Ii7HWF4XbYyOxUePqY
 tZYhqw0FzDUMwfsj2N5WAnysFUVFs1UlRAffOORXHlGr3dknxItJUJ2JZmKimK5YQAd9V/mddmX
 l1W6+RRdGO6AOUDdVeiY1Bj7FHXD4WrN+MjUVmgFd2k9/p0G/xpJ+vMAarXRYJ4IivZL5G5cpC2
 Gf10lKf4tiRjmzCMot237977rZqOELD/de1KU9l3MZA3+h2q1EK9IB2MDjhieIKQHBH2le/Hp5q
 x/IlcL5W1oui5CsL9FUEkaCUCwu8FMG9nycsgeMNCv3tq1LvcVgFKIX310EYDrpLp0m5qU+qRUc
 f75JNx4Y7Hf9LCOwt3G6XkBhxNvKkXi3zP8GaPZ59O9rYBc36XMbNDmv+sGsaHg1BeZsdcS0swV
 bE23I
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Currently the list of aliases is not updated when an overlay that
modifies /aliases is added or removed. This breaks drivers (e.g. serial)
that rely on of_alias_get_id().

Update the list of aliases when a property of the /aliases node is
added, removed, or updated by registering a notifier.

Co-developed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 drivers/of/base.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1cfb3cd4493e17d16868981288115798c6a6a151..5c061fdca885973d4389c0f6afe459a751d850b8 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -235,11 +235,50 @@ static void of_alias_destroy(const char *name, void (*dt_free)(void *))
 	}
 }
 
+static void *alias_alloc(u64 size, u64 align)
+{
+	return kzalloc(size, GFP_KERNEL);
+}
+
+static void alias_free(void *p)
+{
+	/* Leak memory */
+}
+
+static int alias_OF_notifier(struct notifier_block *np, unsigned long action,
+			     void *data)
+{
+	struct of_reconfig_data *reconf_data = data;
+
+	if (reconf_data->dn != of_aliases)
+		return NOTIFY_DONE;
+
+	switch (action) {
+	case OF_RECONFIG_ADD_PROPERTY:
+		of_alias_create(reconf_data->prop, alias_alloc);
+		break;
+	case OF_RECONFIG_REMOVE_PROPERTY:
+		of_alias_destroy(reconf_data->prop->name, alias_free);
+		break;
+	case OF_RECONFIG_UPDATE_PROPERTY:
+		of_alias_destroy(reconf_data->old_prop->name, alias_free);
+		of_alias_create(reconf_data->prop, alias_alloc);
+		break;
+	}
+
+	return NOTIFY_OK;
+}
+
+static struct notifier_block alias_of_nb = {
+	.notifier_call = alias_OF_notifier,
+};
+
 void __init of_core_init(void)
 {
 	struct device_node *np;
 
 	of_platform_register_reconfig_notifier();
+	of_reconfig_notifier_register(&alias_of_nb);
 
 	/* Create the kset, and register existing nodes */
 	mutex_lock(&of_mutex);

-- 
2.47.0


