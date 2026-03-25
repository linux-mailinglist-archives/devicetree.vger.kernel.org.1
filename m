Return-Path: <devicetree+bounces-280293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Bw1JkCmw2lssQQAu9opvQ
	(envelope-from <devicetree+bounces-280293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:09:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 39326321E71
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:09:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA197309E7F9
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 09:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357FB3370FF;
	Wed, 25 Mar 2026 09:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NmhtCt7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1370347507
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 09:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774429719; cv=none; b=LP8pVrNjnKTuORgR4BuoGVSvYJHOXRwM9jQs1xFV35X8iE9bbXearYmlRSHDU+HegnqIAJDTrDwICOg3uFAVjT5n1I4gBUTk813eVdEBgJrf640h3lKqk/hwxOY40F9+jHF6chI8WiK5+UfzVSTsEHAYLgj6GtHSOCh19HChlNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774429719; c=relaxed/simple;
	bh=Y1YDUMJ0n8VY4xi8WORJkohpo3iw+yO1KCBrDnrWWIY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=nWO0w++gMXy8t13FziO/A3osWEV44c20NnnAwkUlWWE7UeARZTt2mZjenXIZRSjN0af48nKzRRP8UF3apxRQC8mWE9VBlzO9tGmLoUHvXR7O1ZeLYqeSZsazCLTajW0x59S767UwNZJrQvc6DP1SgvYU9Oi4sHsRfJaOnWOzu5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NmhtCt7P; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c736261ee8dso853681a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 02:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774429717; x=1775034517; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mhWnbpoS9T7pkofCjEvHd+AoIWGTN97nVl4Dsa2uwX8=;
        b=NmhtCt7Pc5PspekFeEaAdowiZo8TDhKUSVAPUBbfAtU5bM9LAkGSiJc9YhVN4tEbe4
         WTPkfZsvtfxr97plyASxKzFCsfggVpIf2bXb186YyApoYu9FGpjesJ/0+GkDEll+hXKu
         l7fPHhZb1++9eZ6Y91IS5Q2pA3/rAYgdgiFN4tTaT3JPezbghKsXpoudAdKyhWOSDUKP
         ON9J5dtfA1pDa4+r4Rk0p4kr0WoDJpXj0fPqD3L7NS1N2KWR+EhZsVsVXhzMzcslAJ0b
         Du3HVs1MQRvg9YaN4/I643hNqxpxYe20tG9hvU/K5KFnGSdDqBVeqOugAKiYyybUnImn
         Ygaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774429717; x=1775034517;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mhWnbpoS9T7pkofCjEvHd+AoIWGTN97nVl4Dsa2uwX8=;
        b=gEsP38qwlQiRFoMreiq/NGoJYdYTIEUvDRxHQ33MM7hcymzqkm6ihS2hqiZI14uyNI
         LgLXb9MHlWhBv01ZyBFgUW4G5tiH4LTP9XTUGxfAvis3yHs1OQg/g1BrsuM1AyuLQWU5
         744auKtytHIX6tvIJriSAFqQYucH0OJXwy5RVi7qxeCsYB/D/0Zitw0Q3mbNTFnIFWYL
         YcLhi/8zhK+kvJyvP5ft24LxUDfqUlQ1EpGZUZilkkm6WfCP4e4rT/M1UtrbbNW0mgVj
         /5KIFvvk+azQPdNJHGdYl6Ei8peW/N6doJYjvvlJD4uryDZJnNXjSnADyN3yZNsvyXoF
         C4dA==
X-Forwarded-Encrypted: i=1; AJvYcCX9wyCqO1oF+GBOJFdKPTQ55wg5cBiAM9TZB+y7TTcN6cx7iv7jkXTtI/py+NbFRrww0oG97PjbznlO@vger.kernel.org
X-Gm-Message-State: AOJu0YwCjGH5wFZ8oeD9JhlD6J7teA80LbbiznU8e6fIS7lkrbW5eeuZ
	6e6T6vO+bVLNo0y4wQtagDB03paJdcsd+mdI4mUU4WeI3nr581xyx0+U
X-Gm-Gg: ATEYQzxmXuln7kWlM2gPWng8x5EJPdKHYb3HoSqFEdVCq1p3CMq2cKiSCYLdG17qWVz
	5WMzxMDi4SgJR0MScyrNQhFbgHdGahmABxxn27S+iz4D8PhI+sepY2h2jsUmziqWgk3He/x8JCy
	pHzu1VLG8fk1poRTux3aKcVd27u+94jICpEZBkbuhJ37F5fPm3lU2Hf3UKm16uP5wVOXB4TlQtN
	8CybdYtpxU+Qv6H1Tcd+xXIJa8E72jylGh3u7uuC934fQkzw0YQZnlRsrSzexjByDS7yKHSfW+A
	dB6FGMMBI4IyEbMGrKAyzl06av2rbXxEIh7AGyvTCVieRH5uBFp9wAgAPpcSvVXytKRI0ddG1MO
	HyiFhd7DlKPu9UoDJQ/8g/gxohUQM8BJOXleXsUQVQF8NUQZhyK9XraGSoWXuv1tvZWvrfNrLsP
	pWdujnxRCxs4d7+iVbpR3dGnS1iTdeS4yJ2DYjNH2tgngZ8SqQWBOw
X-Received: by 2002:a05:6300:8b0f:b0:398:e30d:da6d with SMTP id adf61e73a8af0-39c4ae4faaemr2929569637.68.1774429717318;
        Wed, 25 Mar 2026 02:08:37 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b03bc6881sm17476982b3a.22.2026.03.25.02.08.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2026 02:08:37 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH v4 4/4] hwmon: (sht3x) Add support for GXCAS GXHT30
Date: Wed, 25 Mar 2026 17:08:10 +0800
Message-Id: <1774429690-129139-5-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1774429690-129139-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1774429690-129139-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-280293-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sensirion.com:email]
X-Rspamd-Queue-Id: 39326321E71
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the GXCAS GXHT30 humidity and temperature sensor.
The GXHT30 is software compatible with the Sensirion SHT30.

Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 drivers/hwmon/sht3x.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/hwmon/sht3x.c b/drivers/hwmon/sht3x.c
index f2b1d3b8eb23..1561c0f46f75 100644
--- a/drivers/hwmon/sht3x.c
+++ b/drivers/hwmon/sht3x.c
@@ -934,6 +934,7 @@ static const struct i2c_device_id sht3x_ids[] = {
 	{"sht3x", sht3x},
 	{"sts3x", sts3x},
 	{"sht85", sht3x},
+	{"gxht30", sht3x},
 	{}
 };
 
@@ -942,6 +943,7 @@ MODULE_DEVICE_TABLE(i2c, sht3x_ids);
 static const struct of_device_id sht3x_of_match[] = {
 	{ .compatible = "sensirion,sht30", .data = (void *)sht3x },
 	{ .compatible = "sensirion,sts30", .data = (void *)sts3x },
+	{ .compatible = "gxcas,gxht30", .data = (void *)sht3x },
 	{ }
 };
 
@@ -959,5 +961,6 @@ module_i2c_driver(sht3x_i2c_driver);
 
 MODULE_AUTHOR("David Frey <david.frey@sensirion.com>");
 MODULE_AUTHOR("Pascal Sachs <pascal.sachs@sensirion.com>");
+MODULE_AUTHOR("Zaixiang Xu <zaixiang.xu.dev@gmail.com>");
 MODULE_DESCRIPTION("Sensirion SHT3x humidity and temperature sensor driver");
 MODULE_LICENSE("GPL");
-- 
2.34.1


