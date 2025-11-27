Return-Path: <devicetree+bounces-242791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9F9C8F0D0
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 029D04EEFE4
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55163334C31;
	Thu, 27 Nov 2025 14:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cHTwg0Xa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D50D334C07
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 14:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764255506; cv=none; b=YAjeLKIhXVu52G0IhTzYd3n3j+WXJjtrZw68NzlmIgchRBevZypBtGN6WhZbQaYap57VK60wAotk1m+WY03R3hxXXFswk1qHULmPN3lKgwcOkLjShjhLPOvAbhQY/RHFB9g8EQYJWScvarEKPWH7U0gC6hLfQFoyYVcNRlF/uqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764255506; c=relaxed/simple;
	bh=EdT5rHOj/uOOThgmjWa/IHFKAYOs+mZlMeM3C+jyHaM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=txHW86loboJHhNICjliV16uC281vtEuSy2lB/xdO+GlPRjYen+I9v6xSqQo8+eLP6XBHWfu1FVr8zAQMY4Tb8EoneMs0Jor9nBZYM0k/Q56BJbUIcWVaZ9yT00ARYl9eOZtvP3UEtKmIOuUAHIt/Shc2L/HeUvAVspBUUHnTK/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cHTwg0Xa; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso1006636b3a.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 06:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764255504; x=1764860304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bshIT03RXVpYAx2QOnAzStF6XTavPN9dCPyAspH0y8k=;
        b=cHTwg0XayGXP/cX+b7Z52pU9UljV4vwuNWArQ2Sbpx4IOEk1sszczy5msjCcnRhHNi
         04xvHkKnkAslslaao7duIis25Ia+CL8L6eXhCo3Wuif1cAjDkReDokBXk+/BIgAot/LY
         HVM0i6k6iWzp88Ap9rZy/yzworZQoZBHSjYYF0HR9sYcUcbSkRwejbiqaeNuRfgFQtyA
         KBH6eGbdcXj67T0WFq74qQAL8xCN7YGfpfJEw2u7CE+h/44BfslCyjoU248NzmOoWfPi
         CId19FpK888wwtxzs+fIDieVWDAxSKQLEcEiR/8wQWKrQJWc5Ow6IAtA/6egL2KQ8ITI
         BWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764255504; x=1764860304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bshIT03RXVpYAx2QOnAzStF6XTavPN9dCPyAspH0y8k=;
        b=k2bVRF0VTj+KNPbyxGUY/XA0oN5WrKDlu5odBa3zjYBRNak4fi+v6MfUUETgrlSEk0
         06imyEVZ2hdWkvqLlEA93P1xRorTfMdP7vpfGswujKyXZk922sL7Is3MF9o+qCigtifp
         0iYnarHLp+RgEJnVr+knAuapplxZAlBdS8rF3+iomuF0StdjrA4CzemALEK8Pms+Tn8K
         xgXYSdWlmaKV6290pBbzog3IzY+dz1ETWx987ikdt4qpEOaCYFG6njOV9LxS5PnQWBFY
         WBX1IBWOJBTQT0FMdaSDX66o21ioljK9kKr7DfDf8du9xjSh5o/CCDXh06YFJAuiDdVe
         JAMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWBSzkj1JUVZVsQxt1zoIVThTt51pkCtZKDrPZ0Wzhs8usGU/IOuKAJuzRcLIJ0PMArT2y3Ki+6TCo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+cBhWcAeC+Kby03qOu0dDyplPESAMVXDwoaE3Ylg3U87+CVYF
	WV0Coh3xqN+JxoH/hTvMWM+URcnF6TZ00qrsG+OKZR+4k3+7rISkGIo6
X-Gm-Gg: ASbGncth5o6r4mC4EF8plHF4wHRT0fYzS+t43ct4R7BEZyc851ON4Tm+jWQGI5Kddz5
	rvmth/hKcsvWenKPbyW3vQ7W8azvBl2DmAl3NuORgW4rhzcvtnE/kGYu2llUUMdPXIYm4PbSOLn
	xcUAd2IAt04z2fAYZoy1qqUrbsfxMqd462COfRvFRDq3oKgXgEnmacxJulVqUmSVb7QrV8lSh/h
	UrQFIENRuaHIkzWcsoazns7lsJG0H1+JL0njDW4IweBiSYDqplliARXNSU7TsMo3GfXtigqAQSL
	esDZn8GO/8b8OkPp1doyhitHw8tTKLqpFaMKyV9/hbOXk+J+ZFKMHQVYk4iKwmQDMSDwjph8dMf
	kK1Ca6QYzZW4whAlanqlBNkLB6a+uWYyCQrWyiHibHBxZA8jI5zc1NDYFa2zUJydBDyHXg6hzeX
	cpJ8BQKuOzN5FN4O4tOVujTA==
X-Google-Smtp-Source: AGHT+IEKx5CCbH38MnNhrI6IDEmd+w6puHRkJx1sqX503mnKJpgOPtQnM7atYk4oRY+4tTRV0hoQpA==
X-Received: by 2002:a05:6a00:2e0f:b0:7ab:3454:6f2b with SMTP id d2e1a72fcca58-7c58e113fc4mr24347692b3a.19.1764255503666;
        Thu, 27 Nov 2025 06:58:23 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.116.199.188])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d15f177566sm2205249b3a.51.2025.11.27.06.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 06:58:22 -0800 (PST)
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
Date: Thu, 27 Nov 2025 21:58:17 +0700
Message-Id: <20251127145817.172871-1-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251127113213.GI3070764@google.com>
References: <20251127113213.GI3070764@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Thu, 27 Nov 2025, Lee Jones wrote:

> On Wed, 26 Nov 2025, Nam Tran wrote:
> 
> > On Tue, 25 Nov 2025, Lee Jones wrote:
> > 
> > > > +static ssize_t parse_drive_mode(struct lp5812_chip *chip, const char *str)
> > > > +{
> > > > +	int i;
> > > > +
> > > > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_0 = false;
> > > > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_1 = false;
> > > > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_2 = false;
> > > > +	chip->u_drive_mode.s_drive_mode.mix_sel_led_3 = false;
> > > > +
> > > > +	if (sysfs_streq(str, LP5812_MODE_DIRECT_NAME)) {
> > > > +		chip->u_drive_mode.s_drive_mode.led_mode = LP5812_MODE_DIRECT_VALUE;
> > > > +		return 0;
> > > > +	}
> > > > +
> > > > +	for (i = 0; i < ARRAY_SIZE(chip_mode_map); i++) {
> > > > +		if (!sysfs_streq(str, chip_mode_map[i].mode_name))
> > > > +			continue;
> > > > +
> > > > +		chip->u_drive_mode.s_drive_mode.led_mode = chip_mode_map[i].mode;
> > > > +		chip->u_scan_order.s_scan_order.scan_order_0 = chip_mode_map[i].scan_order_0;
> > > > +		chip->u_scan_order.s_scan_order.scan_order_1 = chip_mode_map[i].scan_order_1;
> > > > +		chip->u_scan_order.s_scan_order.scan_order_2 = chip_mode_map[i].scan_order_2;
> > > > +		chip->u_scan_order.s_scan_order.scan_order_3 = chip_mode_map[i].scan_order_3;
> > > 
> > > Where are all of these used?
> > 
> > These fields are part of unions (u_drive_mode and u_scan_order).
> > The bitfields are packed into drive_mode_val and scan_order_val, which are
> > written to DEV_CONFIG1 and DEV_CONFIG2 in lp5812_set_drive_mode_scan_order().
> 
> Sure, but where.  What line of code?

These fields are used in lp5812_set_drive_mode_scan_order() when writing the
packed register values

	val = chip->u_drive_mode.drive_mode_val;
	ret = lp5812_write(chip, LP5812_DEV_CONFIG1, val);
	if (ret)
		return ret;

	val = chip->u_scan_order.scan_order_val;
	ret = lp5812_write(chip, LP5812_DEV_CONFIG2, val);

This is where the bitfields set in parse_drive_mode() are used.

Best regards,
Nam Tran

