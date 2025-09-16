Return-Path: <devicetree+bounces-217996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD16FB5A031
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 20:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7345F468005
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 18:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5432D5938;
	Tue, 16 Sep 2025 18:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cVLqKVVj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AA2C15B8
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 18:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758046153; cv=none; b=ZyLEM2sfBsVEcm45NtAUe0vLS9EE4DHo1zLiPg+rQACDd1QbRDkcJP/iZ7GGbokyQY5UMAFXoA3yuz5e8JaImitbi0XCDQ71n4n9RuSRGYpSqIk4Mm0Ey51SHRGNlQUlJWnOvWXFd+Xn1XV51HUbqRsmIf/AXyjg5j9V2+eqqNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758046153; c=relaxed/simple;
	bh=/O6BqGKoOZ5K9649O9Td5nw4GX8SCQcR9AEX3uia0bE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s+S599xCFpAptyV0hGfp3FS+muv9tKV50EHYvd9aPnPoElWStsj4+wweY2BsedNFE+oOSWjV2PoJY39ApOfciCZIpmVZfCdWiJuXIBUQpgbInLt05t5y2SyzmNrGQmEKJ5VgOVfSY6WuUAWx10G9gJ7Bec0MIYbVI3bIdQp2QNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cVLqKVVj; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2570bf6058aso75072545ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758046151; x=1758650951; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=393ZSVM5ykI+sxD/ecXmybLM1cMLXmjzwmWfsXvDE08=;
        b=cVLqKVVjMcIDAHwqxyco4/O0tklqV5SXEQvkcTQb5P5x0DVU6C6LCC2n3xvTRmLX79
         yiEb60uVuv0GyP4spKLWxGZBmkuRNMrtRi62RrBRY28kcvgmwdfEiJE+pIXmDT9LaT5i
         2g+OU47H/J8uFolgzPRVRw5PcJP5ZTwn9fuJJWdJ2IPwTX7CC8/OLks+YhS5EqGLrNS8
         /zNQdRKhj4OuyNAocx/MkLeeA4I6bNBGFkFU7QJEe54AIkkxkm0Zo30HOVfiKHTQ3ZpR
         weNwogvfxpulFqzmtcl6NI84reiqOIGtBmLzeINUvgbmU+oJ7akxHL+U4L++lsoBXXoD
         xxAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758046151; x=1758650951;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=393ZSVM5ykI+sxD/ecXmybLM1cMLXmjzwmWfsXvDE08=;
        b=dw5TM5YJB6tsvHTdWa+zcJHkFaLc0zbKNfzkafo5dvKirZJLrqDaOGrdI+0UezLgyz
         M8TGI8pe8SsbUMuNQ1tyDZI0No2MCXs0AKYMvQai0+wFKmf3rIF5RB1wfK4tznf2iMKH
         S7eozDa9ox6fl6SjwgBUvjPd9W7RgsnUWo3AoiSI464B3cKLkktwRZpcgUfLBVN9mge2
         HzPpq0jYiMzU1/7LEddhGQGNfLIjIgz0GEcVV8j0RUJvZk4XuXjHrzd+pDdlHJQt7I5V
         uPIfNyDy6bu1H5spjck8EEJBq4+aNts3Mlvx6MnOkT/4kPfeGcaLfBpGep9C49aQfart
         /l5A==
X-Forwarded-Encrypted: i=1; AJvYcCXwgIRtZDdVJ2SB5hOYsiGtQToqXq9TL2JJ7y73IdWcwyIcaFtGq1jO39KPTPZTZOFvpPzpp9tbDGyt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2IdUvm9MrVpwMc7j5uLkJ+65flQHOim2cACXfiOJl1IaWkumA
	LwGxbhG8ZazDjtasis5/y8AWOHAtSmbi3ydZjiSnIvD44b3H5ZGeoqDb
X-Gm-Gg: ASbGncuUer0aHOHF0RUUheYYZ2JhY+Hv9zyQL1iBIQZ/N+oS+qb8oR7Z3ImwqTprZbI
	BuBfEzyaZerXYmmn7y4hfAaezLhhsWgRedZNxkx2h2CeMVLoUa2HH8V//uFXBAOss4TiuDOx6fn
	Ii9RlTs+mBnXOXiDHevQxCjYtIbzuXpD1u5zHU5nBxoTaQb6WEaIimkn8RRm0Ox2rA4S2gd86n+
	7+nbalTLgRIU1Z+WpAVwEN3/FSUO2a53LHiribmihl+RoQoT6UlcHtfNlJjLnqkHVG2Lrpme5f8
	lgj7Hdsq2T/N3pok0hCHtXEgK4+lP1r5IqLwG1tEfrTf1IHkOiVUO4Z0pf6WRDfFyynRbYTRGxc
	OXkFk0w1XXquVnGarBNrH+CE=
X-Google-Smtp-Source: AGHT+IHDZ6xGl1SWZavtrIus2FwQJD5U1ZdJNYFkIE+cJe1VxYs5Y5VTvNHZNsOf98c4IOblb6w5Pg==
X-Received: by 2002:a17:903:298e:b0:24c:7861:2ee9 with SMTP id d9443c01a7336-25d24100ed7mr234529115ad.2.1758046151255;
        Tue, 16 Sep 2025 11:09:11 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:df19:cd01:3e91:19aa])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c36cc53a1sm167941925ad.2.2025.09.16.11.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 11:09:10 -0700 (PDT)
Date: Tue, 16 Sep 2025 11:09:07 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Alexander Kurz <akurz@blala.de>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dzmitry Sankouski <dsankouski@gmail.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, 
	Heiko Stuebner <heiko@sntech.de>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	devicetree@vger.kernel.org, linux-input@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/8] mfd: mc13xxx: Use devm_mfd_add_devices and
 devm_regmap_add_irq_chip
Message-ID: <fqhldiqylcsp6kp4tvhopxekgszabbemnvbseygkqaipgp5mhl@wtz6c7kjloko>
References: <20250914193723.10544-1-akurz@blala.de>
 <20250914193723.10544-5-akurz@blala.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250914193723.10544-5-akurz@blala.de>

Hi Alexander,

On Sun, Sep 14, 2025 at 07:37:19PM +0000, Alexander Kurz wrote:
> Use devm_mfd_add_devices() for adding MFD child devices and
> devm_regmap_add_irq_chip() for IRQ chip registration.
> 
> This reduces the amount of required cleanup.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  drivers/mfd/mc13xxx-core.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mfd/mc13xxx-core.c b/drivers/mfd/mc13xxx-core.c
> index 920797b806ce..091c9171b2b7 100644
> --- a/drivers/mfd/mc13xxx-core.c
> +++ b/drivers/mfd/mc13xxx-core.c
> @@ -381,7 +381,7 @@ static int mc13xxx_add_subdevice_pdata(struct mc13xxx *mc13xxx,
>  	if (!cell.name)
>  		return -ENOMEM;
>  
> -	return mfd_add_devices(mc13xxx->dev, -1, &cell, 1, NULL, 0,
> +	return devm_mfd_add_devices(mc13xxx->dev, -1, &cell, 1, NULL, 0,
>  			       regmap_irq_get_domain(mc13xxx->irq_data));
>  }
>  
> @@ -455,8 +455,9 @@ int mc13xxx_common_init(struct device *dev)
>  	mc13xxx->irq_chip.irqs = mc13xxx->irqs;
>  	mc13xxx->irq_chip.num_irqs = ARRAY_SIZE(mc13xxx->irqs);
>  
> -	ret = regmap_add_irq_chip(mc13xxx->regmap, mc13xxx->irq, IRQF_ONESHOT,
> -				  0, &mc13xxx->irq_chip, &mc13xxx->irq_data);
> +	ret = devm_regmap_add_irq_chip(dev, mc13xxx->regmap, mc13xxx->irq,
> +				       IRQF_ONESHOT, 0, &mc13xxx->irq_chip,
> +				       &mc13xxx->irq_data);
>  	if (ret)
>  		return ret;
>  
> @@ -502,8 +503,6 @@ void mc13xxx_common_exit(struct device *dev)
>  {
>  	struct mc13xxx *mc13xxx = dev_get_drvdata(dev);
>  
> -	mfd_remove_devices(dev);
> -	regmap_del_irq_chip(mc13xxx->irq, mc13xxx->irq_data);
>  	mutex_destroy(&mc13xxx->lock);

This causes the mutex be destroyed while the sub-devices are still
present. The power button will try to call mc13xxx_lock() and
mc13xxx_unlock() and of mutex debugging is enabled you'll get errors.

I'd remove mutex_destroy() as well (and transitively get rid of 
mc13xxx_common_exit()) and then look into getting rid of  mc13xxx_lock()
and mc13xxx_unlock() because, as I mentioned in another email, they are
IMO not needed.

But this version of the patch is broken as far as I can tell.

Thanks.

-- 
Dmitry

