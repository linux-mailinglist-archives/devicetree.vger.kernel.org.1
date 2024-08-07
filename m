Return-Path: <devicetree+bounces-91883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A30E94B018
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 20:55:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44C8A28475D
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 18:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F10E1422AD;
	Wed,  7 Aug 2024 18:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="K4ybcO5w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ACB85654
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 18:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723056937; cv=none; b=hnTLrNPJ/59GzuNflFV1V6e4a91gXU8zNmkcW7KRERsA7buGRjoNnJSLAlAYrR9D5wMFTlC69a0W4ttv7OpsnhgZEyRWPv9AK/tjRiQLpuh82pFw6CM9tPusFnXHg7VTI/QxcCBaNz5/oF8m6BaMidUXI8Bkqztp3yfAT+8O5vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723056937; c=relaxed/simple;
	bh=QzhlHFhB1FlhGEk8gZPrNnM4az2SdvOjtcQi634hGIg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=YGq29VnQp0hj9q2yQDg82Kr0zP/iTUxgdFRtkHFtNP6NVGPUgVNbCFNE3wlOJMBQXfahAUoeI/9SBS3Yrj54cDGeBnJpT2YibeKDjO2T7QBgyHHzSxrBQqCr84Ax/RP9qFEfG+64yEYlBYYNInmCFQA2kqqQF0ddoicypsNStVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=K4ybcO5w; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-710afd56c99so140683b3a.0
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 11:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723056934; x=1723661734; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFMK304Cg4PQj4mJQ9LEOTK8TkHQhLXzoojwOreQ/Ok=;
        b=K4ybcO5wEPjvJSXg2hs3VvuZiX6MvQowzIXetYqdlb1poo3K6RH9nAsVOajDuQwHgX
         epKi1wdjKD0DG5vpiaxzQ06eqUfJfeSgyC1quEbnSWe6zweSR8z+tdO5KPPe+y9QYbpi
         0adWKjOaNgagHUivC7i+ujbZ7r0A/c0TFzxAbARARwkj9t9G04DVC94+fPrAdI6GPt7J
         8gqramJqlZ6R4scpq+rk9+8WWFptzm3fDDF3vGpQzsQ7VB8CVZgQqiuMu7H1nsQvR7gY
         DJu/1zZwCU+xCN2Rc5eYtyJuUZFAPBWYXb7+kMTWl9LAb+hPVSLBFNpR/wobcZXLYJ3b
         89zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723056934; x=1723661734;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFMK304Cg4PQj4mJQ9LEOTK8TkHQhLXzoojwOreQ/Ok=;
        b=gQMALo/RpV0paZ5CgIbVUKVk3Yec46/ZKpSsgtIMeIJZZawhnNM2hrqBHarXLKqePJ
         xhwoCyojDA/Lv/nCdXRpit01DnUArhGYZ1MIoXshwQVH4O8m0cTKdqqKtS74rZBgrz6N
         yGS9ip3zJ6LLA/5BytAY+zmVpOjWYBsNbmbqZqRzOgYN51V/0Mhqo1oMrPgy9ATb9SfL
         POic2fp+8DN2N17iH+oisDav0GfajkzpkWvaTIsqampk9woqOaBl5ixdVUwR5urXz+RH
         zkJ+cXYrghJd25EJPhs0dYiH1ZPJbV5rktSwVT9Ev3hAxp70RhkCsga6RjRJNGgGDLT3
         UWQg==
X-Forwarded-Encrypted: i=1; AJvYcCUIW6dCqGJ7VI2jKfR4IuSEJt4f7ANql/1IBdClU4owowMH/16IHpqgndJWDOsdJOYpuAgVnyrBfha5@vger.kernel.org
X-Gm-Message-State: AOJu0YxdyFuDAfVIyyzR6f0DP8UxdBS2SKarqaJrqHySwB+puAhtmOpb
	AHB2x1Gg0Ahg9NGhEok8UvI6wekNJG5WTj3vmJRYpS0t97TbiHv2vyi/8ySPfq0=
X-Google-Smtp-Source: AGHT+IEYK846WIyyA851lwFO0Thrl84W8t0gbyPKmjyyprzOtO6+L8KKdMUAaabzXjldmTOqaK+sQQ==
X-Received: by 2002:a05:6a00:6f5b:b0:704:2516:8d17 with SMTP id d2e1a72fcca58-710bc85f5e3mr5133969b3a.8.1723056934390;
        Wed, 07 Aug 2024 11:55:34 -0700 (PDT)
Received: from localhost ([71.212.170.185])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ece4967sm8678435b3a.138.2024.08.07.11.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 11:55:33 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Markus Schneider-Pargmann
 <msp@baylibre.com>, Tony Lindgren <tony@atomide.com>, Vignesh Raghavendra
 <vigneshr@ti.com>, Ronald Wahl <ronald.wahl@raritan.com>, Uwe =?utf-8?Q?K?=
 =?utf-8?Q?leine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Thomas Richard
 <thomas.richard@bootlin.com>, Thomas Gleixner <tglx@linutronix.de>, Udit
 Kumar <u-kumar1@ti.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
Cc: Vibhore Vardhan <vibhore@ti.com>, Dhruva Gole <d-gole@ti.com>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/5] serial: 8250: omap: Add am62 wakeup support
In-Reply-To: <20240807141227.1093006-1-msp@baylibre.com>
References: <20240807141227.1093006-1-msp@baylibre.com>
Date: Wed, 07 Aug 2024 11:55:33 -0700
Message-ID: <7hed70kvru.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Markus Schneider-Pargmann <msp@baylibre.com> writes:

> v2
> --
>
> In Version 2 I removed the Partial-IO specific patches as these can't be
> tested due to power issues in Partial-IO on am62-lp-sk and similar
> boards.
>
> I added a patch to add DT 'wakeup-source' support.
>
> Series
> ------
>
> To support wakeup from several low power modes on am62, don't always
> enable device wakeup. Instead only set it to wakeup capable. A
> devicetree property 'wakeup-source' can be used to enable wakeup. The
> user is also able to control if wakeup is enabled through sysfs.

For my low-power constraints series[1], it's also important to not have
the UART wakeups unconditionally enabled, so I like the defaults
proposed in this series.  Thanks!

I tested on k3-am62a7-sk along with my constraints changes and all is well.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>

Kevin

[1] https://lore.kernel.org/all/20240805-lpm-v6-10-constraints-pmdomain-v1-0-d186b68ded4c@baylibre.com/

