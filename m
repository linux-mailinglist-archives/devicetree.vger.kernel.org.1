Return-Path: <devicetree+bounces-89555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9479420A1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 21:34:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23A4E284251
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 19:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9017A18A6C5;
	Tue, 30 Jul 2024 19:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OhghCyWA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92ED0770F6
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 19:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722368041; cv=none; b=uDb2Mqbyw+vgavtDQFisi/3VVyI9BzevIiXJm3x0DaoN7FzCtZD5snWK5JZbM6CpX3rSpImWf8kcB6dEg+rFdkC+VYnONv1mXOyanwAPPhJn1MxQ6+lGJcxiP0TfDgD0xu119BNNh1lYdHaUIAVYuLunAoG3YnpP1OZeFDsB7ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722368041; c=relaxed/simple;
	bh=omf2X1L/LKEL4UHtKhSM2wQmgye4tQs+vDaZiXSvInQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=FVDk0QuWBohYw/BP73ol8DbusGeey8c5BmqqrZBHGgRPckgLu8QkIMdp9CugXh2AUK7Cw5yV4S6dX4Nwk4F63bjIaaa25nJ9uf5CDwny95n+lKsHkXO38AQ1tvc8YWRDJePihH6ABZlv52MhE9MUL1Tn53lqvuaOqsjY+6MMU8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OhghCyWA; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1fc66fc35f2so1700355ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 12:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722368039; x=1722972839; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=VeimEcrtXREu345QOU87DnizcugtBEtpmX3D5QJy8J4=;
        b=OhghCyWATs/ozEG4uDYanTn1mnhf1y82xZ9/fNjaE/cawi3B3HoyR0jGck5QNxzirG
         Obpo8Ft7x++GlfN8AYHpR2GwhqxFNVASfDkylzN8tzUZyZFetZNj0VWIEzS6kAhK+xba
         x1QiajA6cGk481ggv+iaZEMWlRPTTbEG/+wLTs4a3z/L2kq12N9igc1KYp1jnq0Ub3tV
         OZM9PpbLcvy2xqQsMtQAklo80FI1E3lPtOmXdQBJJH2YoVpOHQN6DWLRgWug0Fi9r0ic
         mwK4/MbDf6DM6W58LrvLCfSybrRlJxQYew+JJ0qTbyK/v00s87qnXDCwG8T3Ee1T5Zz0
         R/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722368039; x=1722972839;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VeimEcrtXREu345QOU87DnizcugtBEtpmX3D5QJy8J4=;
        b=RAte8xJ78GuK6QJXQxzJGl+sVid32olsPvj+zOOAqo5NW2Qu6HiLMN2aXciPy9lsiY
         unTnU0rkpYHPAyW+kBpnZjCuJuax06BhdxlmgARPxYZFO6/fi2hf0rkelLtf93duHBUc
         lDfjAV9xcLCvi+ygrNBb1cQblkKGVjJ5oAmeErDVvmnPUXAVmyBwiZFo3fP4+zj567le
         6+a0E/PwaTcwvuyt0RMuNzWMMloQmFrsxKZd4zhqcudYof+ChFHI2r6PU5PcaGUYySVV
         JPkAA3PdPtb/tZfLGd+Yw4NQ0EZSmgnqi9A7+0Ana9UnK7E9ZvaEzxKAHKAyGIHjbSMc
         9dZw==
X-Forwarded-Encrypted: i=1; AJvYcCXwIcYhLStobbDKfpFZEncCq7a9qUVo7H0wWHR//btHxgI3sJai650HARe8PGh1oaQoisVK5CWFHgGRqkM1l/ABGeCCaO8P09anQw==
X-Gm-Message-State: AOJu0YzaND1AoGlNf2clx3uHAcw+xqZt9UswJYeClOvsXPUjmOH4GT2l
	qsmySK8V7WXw7iZ7adTD+Nw7JioC3JMihd9yH/013KNw6gtx0uBHA/VfNXo+ul/LRBps/JYSZe9
	5
X-Google-Smtp-Source: AGHT+IFkDhc8yviwAlThuG4ZoWAs5VdPkSosPcXR0VUE/A4FR2+6AXlSgN0b2AGf1N+G4hTO/60CJA==
X-Received: by 2002:a17:902:c40f:b0:1fb:5d71:20dd with SMTP id d9443c01a7336-1ff37b2efc8mr57345095ad.0.1722368038924;
        Tue, 30 Jul 2024 12:33:58 -0700 (PDT)
Received: from localhost (75-172-120-197.tukw.qwest.net. [75.172.120.197])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9f8461b5asm9312814a12.36.2024.07.30.12.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 12:33:58 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Tony Lindgren <tony@atomide.com>, John Ogness <john.ogness@linutronix.de>,
 Markus Schneider-Pargmann <msp@baylibre.com>, Uwe =?utf-8?Q?Kleine-K?=
 =?utf-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Ronald Wahl <ronald.wahl@raritan.com>,
 Thomas Richard <thomas.richard@bootlin.com>, Thomas Gleixner
 <tglx@linutronix.de>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>, Dhruva Gole <d-gole@ti.com>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] serial: 8250: omap: Set wakeup capable, do not enable
In-Reply-To: <20240523075819.1285554-4-msp@baylibre.com>
References: <20240523075819.1285554-1-msp@baylibre.com>
 <20240523075819.1285554-4-msp@baylibre.com>
Date: Tue, 30 Jul 2024 12:33:57 -0700
Message-ID: <7hsevq65ei.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Markus Schneider-Pargmann <msp@baylibre.com> writes:

> The driver sets wakeup enable by default. But not all uarts are meant to
> be wakeup enabled. Change the default to be wakeup capable but not
> enabled. The user can enable wakeup when needed.
>
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>

> ---
>  drivers/tty/serial/8250/8250_omap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
> index ca456ea23317..5b7508dfb5d8 100644
> --- a/drivers/tty/serial/8250/8250_omap.c
> +++ b/drivers/tty/serial/8250/8250_omap.c
> @@ -1496,7 +1496,7 @@ static int omap8250_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, priv);
>  
> -	device_init_wakeup(&pdev->dev, true);
> +	device_set_wakeup_capable(&pdev->dev, true);
>  	pm_runtime_enable(&pdev->dev);
>  	pm_runtime_use_autosuspend(&pdev->dev);
>  
> -- 
> 2.43.0

