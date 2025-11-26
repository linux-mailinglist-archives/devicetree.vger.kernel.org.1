Return-Path: <devicetree+bounces-242483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8E8C8ACD8
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:03:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0D9D94ED68F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 16:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AFEE33C19B;
	Wed, 26 Nov 2025 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GznyddyK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DEB833B97F
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 16:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764172833; cv=none; b=KOLNL25mNKTspmxRSKiGJcff5GwfT0sg+q9jblvaMRQ+bvNpNt8wV86KbTxXMiLRwTTo0TRP5pNOg4HI/sFB6E90hbCKpF///yWoGp1nxPBttmNHIPZLB0w/itrSDNvZk8sJb3KTLLF7XOJarTSqxaQnj3Rf9dEq3h8W8VvMfLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764172833; c=relaxed/simple;
	bh=WBJ9UwUNrgy/X0b0BvnOXQpDRGyYIy7WU+2Gj+p774c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S2s63JlmQHhgSDzO/jSaJyqaOUKlrP4V5Ht9J5V2lWxvU/Lu2mnVtdZrm0c+AUy8oUFW0jft2INPx13oRvkFzyJ642JWIzR8+rQrkluUQFXgkV+WxXzEpOItlvqqJM6GVyOXo4+802XB+AVGgucNAZcBzaIivndFOhjuUj5GTKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GznyddyK; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-bcfd82f55ebso506804a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764172831; x=1764777631; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZ9M6k/4ewqJkE2TX87HwTQsuW0EN1M63J7M16fS/j8=;
        b=GznyddyKpf8VEbt0x7coIKsZpiCgiyOza3ZG0WDpm3vX4OlWsyrTmM5SKHqAuS4UYz
         n7ypeJ0k6VsF3SxHF/VSEBykvU82dWT7h0LDSbjekroXMkqyUKeHI/hbvDpTzc5EH/x+
         5JwmQ6p/nn1JsN8tqBTx9jQFnu9RaSil8FV65Alz5KnFDxjf6h1C9Bt9B6/I6+P8zcJg
         mHq+ckc26vQki1ZAMEdh5Wg9iIHjhMPrPvbWoQwLwvKe5x0v32SUUFqQEI9TBtcLaeEk
         S+ZYHo0XPxBKP/yZ7iBmpQL/n7jq81Quoeq+xb6EB49q4GKsAg/yClET1L1bAZB14Psr
         o/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764172831; x=1764777631;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rZ9M6k/4ewqJkE2TX87HwTQsuW0EN1M63J7M16fS/j8=;
        b=umeZBrWQrPBMeglD0pVC6Z8x2iT0mf49tr15gZAyyvKB3PVR/p/z7kPLoxgUOudmCH
         Fx5BbDI9388tqAGJjHy0tBog48Lb+9qUTLOeNOchNx3KXABqbKqTAaEBvVAeOaEPnB0I
         bK2UlPXL9C/fD1IfAMjPulupwZojGlIivjn4WGXsdN7tl4zUI8t81T/+qxUEljCDxdCJ
         EhybTTKVrqBe9q9KVu8+hUSgf5LzL8urKJKSewhmK9Fh+UmeE33Lm2+oMQMltMK4qfko
         VkDkjJJWNunnFrUuoWaSSqFWiFyuWMvfHXheEjzfN/C6E6vhn9DD2h+1gxHUQeg08tKB
         r5zw==
X-Forwarded-Encrypted: i=1; AJvYcCVo3LRknKZVc9b1HCWCIn5ZV2RCm0f7Eg/XbFCyAc+vLQ/ePlYA9IG27NlqLmJLqZhpJH/MR6vUI2+T@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo/xyY2t58GexnjBr1jLp4WexV4XYDQPEde7gEH4+uzs4uviVe
	ZCdXHcBhNzfESqjBTki4wi0rYhJLtQveLLTkXO1q/DC4FlNgLu6VjgWN
X-Gm-Gg: ASbGnctN6TdDW4cLpvrfH/MUT4xzQS7MBHSRg9oKYY183il8r4U6kVAHtdth2TNw4zw
	heP1VDfa1Y8wxhx7lpG7sTxg3vxtCf1iN7uXE9xzwzWqcW/beid6rQAknylDynrSabUJ8Z1GfUr
	+XqsEfLv52+hqZtGN4oGSZPxK9S9eNA92Pn/mwypYrMtKwwV2EA/yawNW+ETtNVSvYWmJuK5MH+
	QHMM8wr5iWQZHoVFAHeWdeDeloeYt7VFGCaxbo4fvm0dz9nbzbNQFUmh7SLfG7NkV9n/Ap5wA8A
	hDSRK0TDdduwHquC8hkFT1qjp6WF8vwMIrJhKYzMfsFmzRJkaDzK0H8jgEeHMB1qkAzMES5WNK0
	s080ZnK87u9vnf8BR/sVuKy9zyBEiAGouKAY374nRRXcfpNZTtQXmNp5mv9N7Qkg2t17RxAi5G9
	BKdCTO5Xg6uJjoZXMCIVZ8cQ==
X-Google-Smtp-Source: AGHT+IHW4vl9EURMb8YJrD3dHKPOSvMXx6AkbqAkBsNYyyUqCnQUvs3T4dn6AYYdWnbh0jPv+aNGrQ==
X-Received: by 2002:a17:903:384f:b0:297:f527:885f with SMTP id d9443c01a7336-29b5df697dfmr276743665ad.0.1764172830405;
        Wed, 26 Nov 2025 08:00:30 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.116.199.188])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13a865sm203447045ad.33.2025.11.26.08.00.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 08:00:29 -0800 (PST)
From: Nam Tran <trannamatk@gmail.com>
To: lee@kernel.org
Cc: gregkh@linuxfoundation.org,
	pavel@kernel.org,
	rdunlap@infradead.org,
	christophe.jaillet@wanadoo.fr,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v18 2/3] leds: add basic support for TI/National Semiconductor LP5812 LED Driver
Date: Wed, 26 Nov 2025 23:00:24 +0700
Message-Id: <20251126160024.141129-1-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251125134836.GC1127788@google.com>
References: <20251125134836.GC1127788@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 25 Nov 2025, Lee Jones wrote:

> > +static ssize_t parse_drive_mode(struct lp5812_chip *chip, const char *str)
> > +{
> > +	int i;
> > +
> > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_0 = false;
> > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_1 = false;
> > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_2 = false;
> > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_3 = false;
> > +
> > +	if (sysfs_streq(str, LP5812_MODE_DIRECT_NAME)) {
> > +		chip->u_drive_mode.s_drive_mode.led_mode = LP5812_MODE_DIRECT_VALUE;
> > +		return 0;
> > +	}
> > +
> > +	for (i = 0; i < ARRAY_SIZE(chip_mode_map); i++) {
> > +		if (!sysfs_streq(str, chip_mode_map[i].mode_name))
> > +			continue;
> > +
> > +		chip->u_drive_mode.s_drive_mode.led_mode = chip_mode_map[i].mode;
> > +		chip->u_scan_order.s_scan_order.scan_order_0 = chip_mode_map[i].scan_order_0;
> > +		chip->u_scan_order.s_scan_order.scan_order_1 = chip_mode_map[i].scan_order_1;
> > +		chip->u_scan_order.s_scan_order.scan_order_2 = chip_mode_map[i].scan_order_2;
> > +		chip->u_scan_order.s_scan_order.scan_order_3 = chip_mode_map[i].scan_order_3;
> 
> Where are all of these used?

These fields are part of unions (u_drive_mode and u_scan_order).
The bitfields are packed into drive_mode_val and scan_order_val, which are
written to DEV_CONFIG1 and DEV_CONFIG2 in lp5812_set_drive_mode_scan_order().

> [...]
> 
> > +union u_scan_order {
> 
> What is 'u'?

The u_* and s_* prefixes were originally meant to indicate union/struct, but they are not idiomatic.
I will rename it to
        union lp5812_scan_order {
            struct {
                u8 order0:2;
                u8 order1:2;
                u8 order2:2;
                u8 order3:2;
            } bits;
            u8 val;
        };
and do the same for u_drive_mode.

Thanks for reviewing.

Best regards,
Nam Tran

