Return-Path: <devicetree+bounces-263794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IP/SIaRXiWlQ7AQAu9opvQ
	(envelope-from <devicetree+bounces-263794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:42:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3081510B703
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:42:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB38D30131C5
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 03:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3819E2DB79E;
	Mon,  9 Feb 2026 03:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kD7/1WZa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A7F2868A9
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 03:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608424; cv=none; b=eY6IQEQpd6MTGrzVMI+11o6fk4Qk45vnMeGVAxrFA+1hHVek/dFFF/7P7WGOZMfsJBLRF+1/T7VebvLuX4rYAeht4RMKm+aFebUUphdf2yBBiF/T1qrpWLEBL4VUY5IhFdt4NHyJmdqQi+68T6Y/2dIN54AJikIuJQRVRIZMRkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608424; c=relaxed/simple;
	bh=VzX6g3lIajNovlrTefHtsXrHHczuBrvgOnSyCfqNkC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AQ05l8T8+Iu50r+aEUnEzKIT2wJ12NZXZM1saiQh1OBl2Cfeim7QKSgsdrmwOusDr373MQ0B4sr2RqkHV3dwVgJvKQygHY2yKFPPt7vvI8+8Plk1vOoLR5xH0nNrAFQkKlWj3s3WmBTDdG2IUBXEu6fB+xayMmeq2uZE0ryonKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kD7/1WZa; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2ba76e80509so16927eec.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 19:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770608423; x=1771213223; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fzi8pCQ8Ziy85qehusmKDlTJyyfVwuNngkRLpKcT0QY=;
        b=kD7/1WZa6QYal6IYD4L+n96w8jc37uKV/88UJ/EbR0kkBz40sb5qroFLwBJ5OA6vSv
         Co12k/4SvElzCQZPv0zp+qTTO7a+k6ehz/DjzIRs8c2NjdIjyB2Ae2gG+fuYNqnpGRDE
         2ASjXdbw7vIqSZsiNUV+rARYf+pfJpZcZkyLsUdsxCQ124a8kCW4a0zGFPz9Teqd4RyF
         LQEPQFlF6IZj99l2Nxp5Ha1womgZqW4ApxumJkcbOiqEzlLq/gaVL2D0wqvkBUXURnTD
         bRE3J3CPzfoAj0ivCzCuU5NpKaoxljo5q4NWAhv0/TgDQj1SUzR8Ejjc1SMZwlkwCOQ1
         YMZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770608423; x=1771213223;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fzi8pCQ8Ziy85qehusmKDlTJyyfVwuNngkRLpKcT0QY=;
        b=TMWTUSb5XAQlj0Me24JrwUCChoLcpiVPU9L0TZoRTLRk1TmzX3au31JO5oBg7l5TFg
         VGwXbxVGfFL1bSdcA1r8dQzjhmS2C621RmjMvwPmrDi5P42Ztj3VSc4fsW7c3UN4eV/o
         ILm+2+2xwRotwb4Emls4mwV5xwvlwn5fwwsTkKgmeRqEPErnH9ayfOYKa9pUqgsApBmB
         NCPcGrSnt73XCjq4KL065MXTDjjfSS20S3ZDV4kQjiGHlKqSOEwvvxxlzuVDYAnRcqy8
         s0SuI0zP9RZB+pxeee8FcjowhLnIOvzChTiOjJCgrxU96Y9mKYmI8/HDD/pFu4jzirx0
         XxRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUc+VCNNNvcJLrb/XRk5tpuAfHTU3DUzIuTbTM/pBJL+14naD91C2wnTn3cFd/JBzucJ00EaVevceaR@vger.kernel.org
X-Gm-Message-State: AOJu0YwsL1o5yGm6WMT4cE4bFzrkzIY1NQl/JU5/MkXqw35+Pm6LLxkJ
	PdvVepMS+eGUJExIECFDCSnAkpHjlQ5sTSJQm2ruMqZ6Q50VK4Fl+TOL
X-Gm-Gg: AZuq6aJlrg8t5r6k6JOsFO5J580li3a91Eu1H9LtZhtTDfvj0G76nJX3/udQIfSGAmk
	AtjwAtDpUlg7Yz/VSjiVHT2MqVLmB51KkNZorrire8jSGttjFwHIxRQ8eSbrKpAFHojLZmOvW7R
	0JFwGli7FIN3snimCF8tHz1Q7udTI/LhFI2MQpV2vbRnfZ6SohEfkQqu0aW/GR42HvWVtNceKRR
	PIt5lz0K54CElyz1KT6tIIh0PkwUyeBtMRAT2JODc5ySQbC8e0rBP2tt35pIIPQHSY0BiGzgfh3
	zte+a/7OgJB/z9rGJiPQlJ8jLi5ekwPMzVAFxefX31cnLFyl81KEt2V+VAJ8w/OHy+2/zkR/2KN
	EaZ/kUAxUPv2VebY//skocA9KkRKbw/pojiEqSq63bbN304wNCNWs9yDZwPuibhmeQwtdlrKX6b
	fb6O1M3cPQ7Fk=
X-Received: by 2002:a05:7300:8812:b0:2ba:6978:2b0 with SMTP id 5a478bee46e88-2ba697806damr442444eec.4.1770608422761;
        Sun, 08 Feb 2026 19:40:22 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855af5ca2sm7682073eec.8.2026.02.08.19.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 19:40:22 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Mon, 09 Feb 2026 11:37:06 +0800
Subject: [PATCH 5/5] iio: proximity: hx9023s: add ACPI support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-upstream-20260219-v1-5-2b4d74e309d1@gmail.com>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
In-Reply-To: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1694; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=VzX6g3lIajNovlrTefHtsXrHHczuBrvgOnSyCfqNkC4=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJmdYT9dhMrjVk4/Xr6ToV34eco7Bf5K48X6dZvEVd7du
 3XAvz6jo5SFQZCDQVZMkeXM6zes+aoP9wT/ds2AmcPKBDKEgYtTACbydSrD/4zGKpmdmyyzcncK
 pO9w9vrwLeCuq/98N5kzeVo+AaJPxRj+F83TW2Lst3Tq/gWR0zM5qq43/7SQqVGPjtutH3rY4It
 vBAA=
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tianyihexin.com:url]
X-Rspamd-Queue-Id: 3081510B703
X-Rspamd-Action: no action

Extend the hx9023s driver to support ACPI matching by adding TYHX9023
to the ACPI device ID table.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index b680b89956bd..6bf5a02c3615 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -8,6 +8,7 @@
  * http://www.tianyihexin.com/ueditor/php/upload/file/20240614/1718336303992081.pdf
  */
 
+#include <linux/acpi.h>
 #include <linux/array_size.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
@@ -1106,7 +1107,7 @@ static int hx9023s_probe(struct i2c_client *client)
 
 	ret = hx9023s_property_get(data);
 	if (ret)
-		return dev_err_probe(dev, ret, "dts phase failed\n");
+		return dev_err_probe(dev, ret, "failed to get device properties\n");
 
 	ret = devm_regulator_get_enable(dev, "vdd");
 	if (ret)
@@ -1195,6 +1196,12 @@ static int hx9023s_resume(struct device *dev)
 static DEFINE_SIMPLE_DEV_PM_OPS(hx9023s_pm_ops, hx9023s_suspend,
 				hx9023s_resume);
 
+static const struct acpi_device_id hx9023s_acpi_match[] = {
+	{ "TYHX9023", 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(acpi, hx9023s_acpi_match);
+
 static const struct of_device_id hx9023s_of_match[] = {
 	{ .compatible = "tyhx,hx9023s" },
 	{ }
@@ -1210,6 +1217,7 @@ MODULE_DEVICE_TABLE(i2c, hx9023s_id);
 static struct i2c_driver hx9023s_driver = {
 	.driver = {
 		.name = "hx9023s",
+		.acpi_match_table = hx9023s_acpi_match,
 		.of_match_table = hx9023s_of_match,
 		.pm = &hx9023s_pm_ops,
 

-- 
2.43.0


