Return-Path: <devicetree+bounces-127160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B5D9E4B5F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 01:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20987168A67
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 00:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 444791401B;
	Thu,  5 Dec 2024 00:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CgL5lU4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118F810A1F
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 00:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733359482; cv=none; b=GYtVN8kMJ8tar9NUUoFMrGHuGGRasHWPJEUi0JJrMfD3nisWUUz66XHuTUcDvYkA27275yqpeIOrnAoBrG/Lzx1P0nc+u+rI9USrpHzaZPdVzDy1qnkMRuGXSJG05Ejg6PKGhGrWoGQtnihtSQNHeVm27b6DQQSTzgfZa967CI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733359482; c=relaxed/simple;
	bh=RfWODQeCQ92PKzUdEskZeQY10PlkpbDGFWN1YWWpNow=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=O5PLP6nf+b1ccuiyPzNTJ7c+QBH+jow9TXM9vnB8wvmYGNFhnKd6pE2aDsTjyhp3WcO1vNCr1gCRzwLFuSgSVTp4rfdVAhldfq/qcrW5FjpvOscy761rjrIYm9w4xgiJONQvEIWwNthWUyKsRo+mdxbLKS9qyOYu2Qr5oESXEbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CgL5lU4P; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-71d4e043dd9so122759a34.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 16:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733359478; x=1733964278; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rZU+yuC4IUNNrcZsdQdOWRd6MVYrt80tZt42Hj7Odpo=;
        b=CgL5lU4PiFH3Zh26mHpXbCWV5ZZSDsnjORx5YEo+8k2N6k9OsjCNHSvqy1c1oONKNc
         jKW7Gur/n4/TqbytgUX7dJ5PTLUtIzI0GLYJWJkpTevZsz9X+01/+yeZesMkmiyf+Uph
         JXWXpQMzOabtoRCIQabrIXeT8DGG6uTJGZpLuwkFlCPzWiZb1yozEtAGg67efINQ/cUT
         fgIokJKF9jK8SZVDw/gIffl+0TaySIYZiGHQ3gZzAhGrNOAqd5WzwdrdcY5/Gk1vlFDP
         e+4SbMkopRQxKVNEdkfDjoWktt/hKfzNYW5LwGKnhcfG4HW0I2EU/mEXEQ+lFX9mLpMV
         zriA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733359478; x=1733964278;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rZU+yuC4IUNNrcZsdQdOWRd6MVYrt80tZt42Hj7Odpo=;
        b=mDwihf8t1AFNK9Nz3WhQ0aosDEANC6ezMKsIZl6z2B8RYRIwW3BjNiyyC4CMbpE+BI
         d8ISos7L3EBKT0pCZ1XDSO/h6xST7Jwi7ZVKDcB6nO3R07BV0EL90jQYAEe1u3Zm7KxO
         X186VD1iXSn5kecHoON4GwqzuFOX79XNlWfRvpPmH5ldxDKagHEPTt30VTuRiBEhKYhI
         olO2h8pFiX2Lbvuzf05+7fM+HzJAD9bSxK+HGh+UV739RFmWgbmpI2PH+D6FA1dR2Lr9
         WKsGRwimnNsVvr2lh/GojD2FO88X+fogDljyprOhoK00ODyHl90xnBVnAsvdrspDqFce
         DbPg==
X-Forwarded-Encrypted: i=1; AJvYcCUK5a9bz/X0hw3Hd0CSuZeMs3EsHmpMU0kB3OxCT0rDNKQQnAiWQUoMLFDr2HebCP4VOAOuAL8eqYz2@vger.kernel.org
X-Gm-Message-State: AOJu0YwZEP4L31XwUfkAPpGNBs63Tj7g3u25OM6bF0FA6y5j8rLXI5PT
	Ck5U/ggD1f9IySxGAFxbWahGsWuuWYRt6QY1ho3mtzYZ6IqEpzQY1E1JGU63I5c=
X-Gm-Gg: ASbGncsKWezzJuqkLLV+C8R39j7RmE6W4JVm/YmwV4mcEWl7gF0Ll4tBVggOhEL8yLB
	sP42imI+rVam2M9YX31KuRPVlHGSmPvCcPXRNUgBJDDANpRTrFadc1YnZ7FwQkNVQGmilbIDWa5
	qPK5W1hgYnGDe0JquMZNAoGub3tllaOxuIG3qFme1bszXjOrgagmODDvqRIiavPsx9Vkt5xcTj6
	1AfkEB6O1+2XKCi6UkQMTLd1pgd8vWijdQHIhxg8VI2q4FJf8G0Y5Rj0Mbex9kVFXu6hpB/YKlB
	7LS1EOXGUkc=
X-Google-Smtp-Source: AGHT+IHaFElNJBo9YhzTZTzxYaqVWuPDKa7rUFNx4+15yLQ0Bvjs2W04jhZERCIQ6ow85bmA48lGYg==
X-Received: by 2002:a05:6830:6516:b0:718:16c8:3c02 with SMTP id 46e09a7af769-71dad6f0756mr5814100a34.29.1733359478045;
        Wed, 04 Dec 2024 16:44:38 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-29f56945d20sm104623fac.35.2024.12.04.16.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 16:44:36 -0800 (PST)
Message-ID: <4795d5b2-2d6d-4d81-a57b-dc28d217aacf@baylibre.com>
Date: Wed, 4 Dec 2024 18:44:34 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/8] iio: backend: add API for oversampling
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20241129153546.63584-1-antoniu.miclaus@analog.com>
 <20241129153546.63584-4-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241129153546.63584-4-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/29/24 9:35 AM, Antoniu Miclaus wrote:
> Add backend support for enabling/disabling oversampling.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v7:
>  - implement 2 callbacks
> 	iio_backend_oversampling_enable()
> 	iio_backend_oversampling_disable()

I think Jonathan's suggestion from a previous review to pass the
oversampling ratio instead of enable/disable seems like a good idea
for making this more generic.

int iio_backend_set_oversampling_ratio(struct iio_backend *back, u32 ratio);

To answer Jonathan's question [1] about why does the backend need to
know if oversampling is enabled or not... In this case, it looks
like it changes some timing (the conversion quiet time) on the LVDS/CMOS
serial data lines depending on if oversampling is enabled or not.

[1]: https://lore.kernel.org/linux-iio/20241123160559.56c57fc7@jic23-huawei/


