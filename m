Return-Path: <devicetree+bounces-114395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E74B59AB85F
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 23:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DB3B1C23BF6
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 21:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401CB1CCEFA;
	Tue, 22 Oct 2024 21:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2aLN3mJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660091CC8A2
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 21:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729632022; cv=none; b=lZdMaPnKnV86y0iLojhDy1V54+jcgHXZ5RAGc2mndhAblH5PnRvO6ltesQymYczPSLiW99KkOKeFbdY9Q3jSKxab8BDMtWTg56lDn0brBV5irJaRolGLon9cjSp4Y1J+w7QiR00DjvhcjottFjU5mXyVNJdZEucOOB36jlNrZKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729632022; c=relaxed/simple;
	bh=ZhxVS2REzAmANbrZ9nSRuAbyeGAVAMksIebOeLoogO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=CIRr7XYxwmm3QlpbK30gtaw/Jw0oGD4kMrYJACZxopDWDmBQgIOw3LkEV+uZHBtA94HxOyHZHWKG1BZYrjp+Pr4YZmLKodd25Sh3TL9bSSsHv8QuieiqNTr658kbsD/6Oje9ZEL92TXtehycai5gpGdmnZpNEEjoKIedpVxH7kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2aLN3mJf; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7181285c7c4so2842826a34.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 14:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729632018; x=1730236818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WJnpg9g6r2pW20CfWdE7jCUk/9u5wbr1trHPxKu6nHY=;
        b=2aLN3mJfMZP6cW9G0tGJpdS8LkrApG+IN6Tjq3Qv97GEIsQB7Unx1zTQRQRrK9YOzL
         6XAbYP1Q7woKtcYedRC8apdAaFw6t7Rt4gZHD+V9k0NxcumGNhU95nhJ9kEq2w6TDblt
         ziLOJvzwlSAd76xBZ5qyysnM/o2aa172G9iiWQ+jqu1uN7XzQD32cIng/h45oOR8+X0l
         KEgYnmF039g2oXPvrz6xO4+I6EB8snF3UgX2aPMZgeb3xycrffnB7kgAU8XR4UAaOQyY
         E5HTrlsSKzlf6XaS2MMpxyZBmzmT+31U6fzgpdGwHlqOCrxudkWXvIkWn9WKVQA/ZasC
         010w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729632018; x=1730236818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WJnpg9g6r2pW20CfWdE7jCUk/9u5wbr1trHPxKu6nHY=;
        b=jBnOVaHXeQ0NNvv6HSvgG3KIZWmYWmtFavp1SwaGkbUav43JBsdVnpGr6lOpXuAoCD
         c/nAybE4swBXTGqE5czFZ/JkpkD0gqyYKorgZA/K7s3q1ur74/974BN05hl4CYxlqdhg
         kCqbRhOU9DWoiogfHvc37u32Z92NkaDlrvA/+7WNUd0hjiml2GMaKnkbCpTxAZxp2F94
         Ufdtt3JrwOZcrbzf8GOH/67Wl6FMTBlQpAIYX+C0b0VFID9LSthB47s0Cg8I2P74nzDc
         Luym2rHXlONnzbMFgTj9NoTwVof616OZ1zA86ES8CblH+EZXLrlnQud77aHW0QBdrr8Q
         k6gA==
X-Forwarded-Encrypted: i=1; AJvYcCWIo65r7Y3cfWzwBhqzfrcvaoF3kmipWBWA4B+DS3volE8EKdRBFA4XHFfoZfeLk9gW4D68vEErtuct@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh8UzVLZL2mQ11aXozRPzY2zZfkgsRNv4XFB+gknqW4OFEqNin
	qYo4ub4n6BrqBt13Tcqo+ALPFMMDPhRd+GYnsT5pOz8++IN39C1GdBq+Y/acNX4=
X-Google-Smtp-Source: AGHT+IFsMwsPsTvpCwDmnZIxOfs4K2TEZ8wjRPWKgUsV3+xu7SPPImS6MoMNi6W3AR8/WuPjLaRHCw==
X-Received: by 2002:a05:6830:91a:b0:718:109c:b733 with SMTP id 46e09a7af769-7184b4494fcmr574446a34.29.1729632018318;
        Tue, 22 Oct 2024 14:20:18 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ebb7afb9c9sm1491261eaf.46.2024.10.22.14.20.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2024 14:20:16 -0700 (PDT)
Message-ID: <aea7f92b-3d12-4ced-b1c8-90bcf1d992d3@baylibre.com>
Date: Tue, 22 Oct 2024 16:20:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] iio: backend: add API for interface get
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, nuno.sa@analog.com,
 conor+dt@kernel.org, ukleinek@kernel.org, dragos.bogdan@analog.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241018104210.51659-1-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241018104210.51659-1-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/18/24 5:42 AM, Antoniu Miclaus wrote:
> Add backend support for obtaining the interface type used.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

...

>  /**
>   * iio_backend_extend_chan_spec - Extend an IIO channel
>   * @indio_dev: IIO device
> diff --git a/include/linux/iio/backend.h b/include/linux/iio/backend.h
> index 8099759d7242..ad9fa0ada9b2 100644
> --- a/include/linux/iio/backend.h
> +++ b/include/linux/iio/backend.h
> @@ -63,6 +63,14 @@ enum iio_backend_sample_trigger {
>  	IIO_BACKEND_SAMPLE_TRIGGER_MAX
>  };
>  
> +enum iio_backend_interface_type {
> +	IIO_BACKEND_INTERFACE_LVDS,
> +	IIO_BACKEND_INTERFACE_CMOS,

I think IIO_BACKEND_INTERFACE_LVDS and IIO_BACKEND_INTERFACE_CMOS should
be removed. They are ambiguous and overlap with the SERIAL_ versions.

> +	IIO_BACKEND_INTERFACE_SERIAL_LVDS,
> +	IIO_BACKEND_INTERFACE_SERIAL_CMOS,
> +	IIO_BACKEND_INTERFACE_MAX
> +};
> +	 struct iio_chan_spec *chan);


