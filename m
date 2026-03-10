Return-Path: <devicetree+bounces-273681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMlpNIlasGmMiQIAu9opvQ
	(envelope-from <devicetree+bounces-273681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:53:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FAE255F03
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75A13321B53D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663343D47D9;
	Tue, 10 Mar 2026 17:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ffyvomWA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A93E3D47D4
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164935; cv=none; b=CxpA58zIircTkU+9BWs1mM2fL/plq0DXN7SS1hcCBIPayokZrYqUFEsBx2rQXhyQLIOXq+K9cptXn/YDYtx1OMV4a+/YILMWQQzJgLpyNNH2lanZs+6IJlA/C4+Xhiwqi9m0JnRDlA4Cm71vhcFm5gD3O1vtJBTDLFnQZHiBEso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164935; c=relaxed/simple;
	bh=rnH1lDDijdWio4hvMnW+OzLLpzrfOxd6aREo/7Qnkbk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NhN1JN6NklCKZBR5k2d2XzTWSOqYZip3WwDCLAFVd3HCFP1lfo0gi5dpc2jY11tkX+os+5a+zHIsrmkrJkp3QIfasRELLUY/UigcedmudFLXWuvsrTW/aeUibS2YQZr9qoMyJNy7+vkGftip/sp1Z8ezq1DFfgtrk5iAyvhm0q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ffyvomWA; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852e09e23dso30595545e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164929; x=1773769729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hG3aSGfDs+bX2W0OvTuhZZGpmjfGIX98rNhNH+D4xOM=;
        b=ffyvomWAqIs30b4tbEVvnBrxwwmZIUp1lpJ6FubjIWFE2TXRZsDgaVXLGrNRYAMr/Y
         dgYzqKE1BLhX9TuaR8p+r1Jg0L4rEcMUwAhOEiob3iUQH03y5N3G7D8E6yOd8fDruP0M
         GfeHb7WeFYXJKW47EYNYiVpd/gov0tL/c3eUgrWB3F0gMEefj4Rqro1LerIpSMVA9mrj
         CMNQJCXkW/dIk1BBMBh5Bsm4LierNVckg+/6othwisI8oxA3pHPuE1IYoY4INeSM+nSn
         BAVb4p6ZLOaXKfjpOYpDBwK1TlUyyH7A0/lG37MYMnZqUv/bUpTajVrZImZ+vfxiRyhS
         LZ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164929; x=1773769729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hG3aSGfDs+bX2W0OvTuhZZGpmjfGIX98rNhNH+D4xOM=;
        b=Hi5vrr43sDdyukJGDUO6S/xHcMONM5iI6SCSqq07ilA3EsYhw7n8StPcIZEenRgWgZ
         fPLKG8OmXIKEjt+w7I0K/wbt3+XW4T2FMiq0LqFMzB0Nl7lx/OnFWh8HHdtFuWzzWCOZ
         ZUzcCpn6z9npz/vhBod/hKPE+robvHT+iKDo3ARyOFMEttz5frZNpLEkBOQBJWyLxmJM
         WRbeeRzeYO8EvawCX4BmnmFaumW4BnZsUCS56UkYiVt70zeap36Y199ywj59Yn+rskb0
         5CaM9a2voWklsRzFY75RNpUgp+Q3GMAbj7jJoDBLHpcyVbbbVVp1sdhCLb3tiY+yxzws
         XEYg==
X-Forwarded-Encrypted: i=1; AJvYcCXpwohpsp+UDAlgcJrTZLrx8ci3fakTZuMUuUO+xnqo2sL7bfyQF+VIBsUhyiL+Rsd4k3MonvlFvjE6@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlv/5BF1vd7dym2iWDqIfzon+m6Vn7tPRj6FW4kiChWzMNZZfn
	DRUNL/CkrwoBnI8GfEU7kdq+hHz47at5lgCunWFHpaKGRJY3HBMB0iwH
X-Gm-Gg: ATEYQzyNznLZYR5OP6Z+1/XpWELqulqrJXSwAhMKo1SzmDWRsSb68cNAR9K+7MQJ2ma
	B3XoWV8bmh3Kl+J0WGTyro1DpZbp8R+nA/As0qEygyJmXCXBr3qRcDK933AhH0t68BeWqwja5Z6
	94PuRoPVWiW20LmmV9wwEo7ZjM1VwPGNiDkr2I2GBilNjMiI7pTl4U7YZ2XnJKOe5A66p03t1U1
	eUfWuF04kn+x0LtKwbmQ/IXZu0kq9XvEXkZLW1Cxw9lRZ4zvU3iQTZXQ9yL37qq8raM76OzcE49
	0aHo3uMGpBlX4w8Y3svWCUJGTNQiJfTdXVXoyTB/LtThKhmgaR6iaAPPi9W+s3mzuykHrU2+Bgp
	EpBiUhfHIiEBja6gi6zpQNqP2Kfl9akBPrBFW8N7iumxUlZ9jGg3LaTir52gkae/Hh6pUOynnLF
	MeAAsrEmrJQfrxJpa4nubswVeGh5xYZ2PqSGuN8C0CwZD3v6lP69eZgy59Tw==
X-Received: by 2002:a05:600c:138a:b0:477:7ae0:cd6e with SMTP id 5b1f17b1804b1-485269196ffmr291701295e9.5.1773164929303;
        Tue, 10 Mar 2026 10:48:49 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae45786sm42986166f8f.32.2026.03.10.10.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:48:48 -0700 (PDT)
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
Subject: [PATCH v2 3/5] iio: dac: ad5504: Align headers with IWYU principle
Date: Tue, 10 Mar 2026 17:48:33 +0000
Message-ID: <20260310174835.24209-4-0rayn.dev@gmail.com>
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
X-Rspamd-Queue-Id: 33FAE255F03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273681-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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

Update the header inclusions to follow the IWYU principle.

- Remove <linux/fs.h> and <linux/slab.h> as they are unused. The driver
relies on devm_ managed allocations, so slab is not required.

- Replace <linux/bitops.h> with <linux/bits.h> as only the BIT() and
GENMASK() macros are used.

- Add <linux/mod_devicetable.h> for struct spi_device_id.

- Add <linux/errno.h> and <linux/types.h> for error codes and data types.

Suggested-by: Andy Shevchenko <andy@kernel.org>
Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 drivers/iio/dac/ad5504.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
index 20a36e4a389e..e71218c44982 100644
--- a/drivers/iio/dac/ad5504.c
+++ b/drivers/iio/dac/ad5504.c
@@ -5,16 +5,17 @@
  * Copyright 2011 Analog Devices Inc.
  */
 
-#include <linux/bitops.h>
+#include <linux/bits.h>
 #include <linux/device.h>
-#include <linux/fs.h>
+#include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/regulator/consumer.h>
-#include <linux/slab.h>
 #include <linux/spi/spi.h>
 #include <linux/sysfs.h>
+#include <linux/types.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
-- 
2.47.3


