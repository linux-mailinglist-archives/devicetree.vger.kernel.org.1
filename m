Return-Path: <devicetree+bounces-273680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KR1KmpasGmMiQIAu9opvQ
	(envelope-from <devicetree+bounces-273680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:52:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 334F0255EEE
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFF2631F847E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25593D8120;
	Tue, 10 Mar 2026 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dYUR1/EF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E1C3D47D9
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164930; cv=none; b=ls36JsFNb5v8ELJDaTXXpRW2deSzhK7A9/rNGlDugX0+xM/X+5PilAD2SWxo91hgZC4cAlRYvI6TsKHd1CSGGW5OI8mWaqg/5bScrgZoSfGCn7c4XezXPuAnLh9p2pe0eSlMWOqOfQCqESXEbuKUfHMXVtwsZsFLV9cPbS2NAAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164930; c=relaxed/simple;
	bh=04UJ9uO0ADy8N6057D8nFiQ/NIMCKApqnGi41YmNbpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kxm7b8RNwfDzkhP2O2q/iRfaewSZf7amCrdolXseu/eOOQRr/bE9w07C7FK4+/T2WB18oabVhvpUKIHD7ZsWZN6DiA380WJakpmcDVNLVy/29zshRFUCqa/xBiOPTX+D+MYNKIEn3UYThfhnZJQzidt6gHfG5Cr948EN87ButtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dYUR1/EF; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so6360895f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164927; x=1773769727; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y6LuG3NPimfXkyOGf802SE8didLWs7WuYqKmvVqraAs=;
        b=dYUR1/EFyCSDdVdlEYqmgl8zTRuMIqWIVOQLmr75VCNXLBRmbZO1swTM1gsQRJHGSZ
         Eb7vBGfmEeIz1GT3w938n+mQl4TytkY6hHlVCRlK1dzCsPS4AulQtuCtCRXZIrGPWN4k
         9rCQq5V54KiGrdBVQGzAClaCY3gcHsLdeZfF24uKr9ivr9Vt1JGRQk0eRVeD7RNL0nJO
         p85jzg+8i66oiF6zuGCveyh6poCpzfgTHAQXuIUWqS0QvxGasoerz1gPjRChTCRt6KxS
         6GkpYbnwjUuaX7JUDmfT+rXTcnnZqyU8ZINJsmqaorSrErBjbpcQcshiXiHQwbe4r1jY
         kyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164927; x=1773769727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y6LuG3NPimfXkyOGf802SE8didLWs7WuYqKmvVqraAs=;
        b=AeFjwFifUzpvX/ZwnRqX3uum4HbdjA3BPpIr1rBF23hl1nqSshi6fQem1XJKETrReD
         Faw7EdRrjTdeZPavNas1QtD71NIeSL5H+XiLeFw8ZFBZjNUEZz+6lRBlwURrTkbasKii
         nLxYr8qw3mXfKzVPbgTt4qrMfpnLIDLzibCTZTsFg38bxxp4gtPu4c6C+txUnRnul1N7
         E4ggMJrPKt6cbUmFfiuUutB/aLlJRemglJ4AW9wY9XdvTU1p24Y3IX4TtU+TdzUa0BCG
         YDJJBX2mFENtw4tN2yi0Dq2OzB12FKAV6BUGbeyBu5f2ObMIOVdHA0GExFYrLIBA8Tkq
         6d6g==
X-Forwarded-Encrypted: i=1; AJvYcCUG7gJ29tHVRm9EVKoalWSgZuryM2QV8MDpNBkNLaICoRVs6kf+xvE94OazpmuQvVbs6wTYmWcGc/Iv@vger.kernel.org
X-Gm-Message-State: AOJu0YwQi+WcZtuRqMSfkYPyrA3SquJ1XinupRrzcyylMBiV544v0WlE
	6K/fnQCGI3UcEdd5YGDK/bbYXyQKAJSElxU3bYpmCbFgP5m2F+KAOl8w
X-Gm-Gg: ATEYQzzaZ3JrUE6YRPSZi4AuYkdC2SQR2pyhEUFachhEeSGHcPrXPIxXDY+PSJw2Fnb
	4bHGmW0BGyepGVpNWrOPcEpFantQ5GpKqqU6guw+hbpxTg0GwFdFqlICqENbmQT5qAmG84fb868
	1v5dghqFxOfaDoBYZerS7dC1+stdrtWxYgjg2KGg1wo6BxNF5t1pBCCJC6HydIoQ7XHSS+R5Asz
	gEuBVOfThlZw1EOLJUz70wUSc2ToxVgWzNGpdrN9NrV76kZxZFmQNTgFOps1B4oRanPtPfxXQ6P
	diJTXH1lzpnq16LP2HQO31i4olx+ix4YlWrH77JIYTVzVwrIi+KASoRuefZ7AGthHViYYG0WRln
	F2nw07dCvG7c41h29wzmojPdqvyWU1W0o0LdSQyrEAfB3X1xLp6NzeFsqEehCm0C89GL1nc38O2
	6Se27dxuG9AcD2Ys7Eev5GFdwU6nTzZZPBm8s84EVQ+jf5chliCJpYBDxctg==
X-Received: by 2002:a05:6000:144b:b0:439:b522:37f6 with SMTP id ffacd0b85a97d-439da6694e9mr30091410f8f.35.1773164927204;
        Tue, 10 Mar 2026 10:48:47 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae45786sm42986166f8f.32.2026.03.10.10.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:48:46 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v2 2/5] iio: dac: ad5504: sort headers alphabetically
Date: Tue, 10 Mar 2026 17:48:32 +0000
Message-ID: <20260310174835.24209-3-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310174835.24209-1-0rayn.dev@gmail.com>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 334F0255EEE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273680-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Rearrange the include headers in alphabetical order to follow the
standard kernel coding style. This is a preparatory cleanup with
no functional changes.

Suggested-by: Andy Shevchenko <andy@kernel.org>
Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 drivers/iio/dac/ad5504.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
index 355bcb6a8ba0..20a36e4a389e 100644
--- a/drivers/iio/dac/ad5504.c
+++ b/drivers/iio/dac/ad5504.c
@@ -5,16 +5,16 @@
  * Copyright 2011 Analog Devices Inc.
  */
 
-#include <linux/interrupt.h>
-#include <linux/fs.h>
+#include <linux/bitops.h>
 #include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/interrupt.h>
 #include <linux/kernel.h>
-#include <linux/spi/spi.h>
+#include <linux/module.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
+#include <linux/spi/spi.h>
 #include <linux/sysfs.h>
-#include <linux/regulator/consumer.h>
-#include <linux/module.h>
-#include <linux/bitops.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
-- 
2.47.3


