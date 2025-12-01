Return-Path: <devicetree+bounces-243528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CC73DC98E79
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 20:47:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EF6BD4E0F88
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 19:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 332E62459E7;
	Mon,  1 Dec 2025 19:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ej0KO8hP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E207239E9B
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 19:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764618428; cv=none; b=kCKuMqqHZYdjhlNAqmCI9+Z4rTbcbFJcB4QvtsmjTCF7+eKtpDZvEGJ9oODQEWBPGG2n0oG1740fP6rUuyP+QwndhUwB3JiBwa+RGYWjeBij3FQaYz2e00v4XfOk6UuLDeBS0jymA1r3yqwMs2tNxk6tenu0s4nHuolliHeX+CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764618428; c=relaxed/simple;
	bh=AkmPPwDEDqiDGbDd/c/qytly3OUEnrFljT7GLyvENCE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=LHEsiP2ntROtmPbiaY/De2YJIDSE0DHbXSWLKfMw1dYzc480DGLYrnwOXNfVRYBHitaYHWhgo7ayPzlBd4i/596YC60a8+sc8rck0yxCT1aJhDG0FUAK2LwisgyCpf42y99w9BsemEbdwKRxNsVaXJ5yDkQtowpjRIJe6EfzLhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ej0KO8hP; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-55b09d690dcso1370099e0c.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 11:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764618423; x=1765223223; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z2SwU7brTcuWQXz23QqjJKK8SJFGO+KNOCJ1yJZD+6A=;
        b=ej0KO8hPtkTqRH+ysDp7+saoFGDALE36QnooY0N8DaVCWO2u8adcPG7tfRGDrc6uwh
         ZX54wCvdEleBVE3y55E7edpG/AIP1+6rpwLwSb59Z+pJgQEKzoZo45+jlh+WXZJh+O1l
         IfpEPIegPQ4vzVd4/Obpy6QF7cyZAREui0FrZYjcaEXmd6lom71sMEZ7q9MRx8NYuhEE
         JoJnRCDcqUDCFrScaOGOimiF4CAs3Rfp7Dvx5b5x8XPuAb4N3FhN3ICQCNvjC2MTVZ+A
         9V+9kWRsxxxxGOLO6ZmyBky/OravGaNd0GrgZGAJCGPjgnthCo6ddQNKrFI8b78nnUL3
         Sv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764618423; x=1765223223;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z2SwU7brTcuWQXz23QqjJKK8SJFGO+KNOCJ1yJZD+6A=;
        b=n3O+DmB4uAOiHqnNOWvuS/w86NjNfjKhtLlCJoOE400YwAEzDnkEML8hytrgseHfcX
         V66lNzMxhGE7k1gJBDsbWIJdOdaqrdNnnQ7Z0VC/m1M3ntQudkV8IwG0sfqWMcXlJdq8
         kY3HELH2kGo44zS+EsMdJKf3qD2tpE/WAYU9EVdKfwVxxUkvZHhx6JKCHZwgULzztrUw
         4x9HqaDfnCJO4n1wvOYNFzGE+kt1sORzYpNs3SqWHk/H/TqqTxK7SJU1joH2d94T3aA2
         GyVI9C40ZE3v+2YXt8wxAoQT/6UFp+tLDkE5nIcIb+tRMSj+ZBQpQqUROaaeAA9EOIXZ
         UeFA==
X-Forwarded-Encrypted: i=1; AJvYcCV7sqPQEPGAQGfxtaVBZvcwmVCe6Y3XWMTvaihOP6PJBAXUEKOxIlaQWknUzUR7FWjlLCBKGwjryc6H@vger.kernel.org
X-Gm-Message-State: AOJu0YwwcW+RaqCBl+xXXPv+dE5oVzUKsxW5Iuugzu+z2GQkWe0WGym0
	UwhMtaRUpXkRfrP5wfY2HhYm1zgi0InOEDpufD9kRLHP2M1dfMxTHVc7
X-Gm-Gg: ASbGnctNuu9e583QTLJ9813Mm9azgPPWmFiaGTsKqrv2x43bnWt1Yu6fU/iYZHAA09w
	u2R0Bm+YVd31LCSqm9h6EuGSDOnInm5OeGpxcC94Yd7SK2T/zVU3gMHg5mnMiLj5i+HR+TXSGqi
	p4W3xATEUPkBGPRPSJXw9WGqjsa/j44XP8JINTWFn3/cT8MFBliSGaAkLF+HtM++6ASsxSDAzbu
	rDfC+kwzg/cgOQc7z3vdYEwdWXWXSonrwkPA/2JutpSdVFijNzRAQ88jnlg65yKRCU/FrRpdCkF
	wtN6VwxBjwz9KawQswwOIS0Q1AKOzK7RZQgs9T+/U4mdycu4whjMIqeAMUUY6GierlNrOZCnmmQ
	JwjXUgWzCSios3dlpAnq+kUvgzfSbNScBKf2GFJ/a6HBemSg/oFC8at1b2pZ75aljQPCM0SHesQ
	sToq+2svcu8tAMjLvG
X-Google-Smtp-Source: AGHT+IFtbwHx7ggOA0nfUhQeEEf9VEJmcC81IM6QKOuFmoRpxOaWAK4K1w+iiLeaHDL2epZXSr5uUw==
X-Received: by 2002:a05:6122:1796:b0:557:ddc4:dea4 with SMTP id 71dfb90a1353d-55cd764c2d1mr10337077e0c.5.1764618423379;
        Mon, 01 Dec 2025 11:47:03 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf5186d0csm5633068e0c.20.2025.12.01.11.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 11:47:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 01 Dec 2025 14:47:01 -0500
Message-Id: <DEN50VFOIB5O.1ENBKI6JQ0ZC@gmail.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Tobias Sperling" <tobias.sperling@softing.com>,
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v3 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Andy Shevchenko" <andriy.shevchenko@intel.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
 <20251128-ads1x18-v3-2-a6ebab815b2d@gmail.com>
 <aSsBdJZDWcadxEHC@smile.fi.intel.com>
 <DELPNLNPGQSM.1YDTB81AG0RAY@gmail.com>
 <18fbf486-c1cc-4cd2-af12-ffa093fa9ce7@baylibre.com>
In-Reply-To: <18fbf486-c1cc-4cd2-af12-ffa093fa9ce7@baylibre.com>

On Mon Dec 1, 2025 at 11:07 AM -05, David Lechner wrote:

...

>>>> +	if (iio_device_claim_buffer_mode(indio_dev))
>>>> +		goto out_notify_done;
>>>> +
>>>> +	if (iio_trigger_using_own(indio_dev)) {
>>>> +		disable_irq(ads1018->drdy_irq);
>>>> +		ret =3D ads1018_read_unlocked(ads1018, &scan.conv, true);
>>>> +		enable_irq(ads1018->drdy_irq);
>>>> +	} else {
>>>> +		ret =3D spi_read(ads1018->spi, ads1018->rx_buf, sizeof(ads1018->rx_=
buf));
>>>> +		scan.conv =3D ads1018->rx_buf[0];
>>>> +	}
>>>> +
>>>> +	iio_device_release_buffer_mode(indio_dev);
>>>> +
>>>> +	if (ret)
>>>> +		goto out_notify_done;
>>>> +
>>>> +	iio_push_to_buffers_with_ts(indio_dev, &scan, sizeof(scan), pf->time=
stamp);
>>>> +
>>>> +out_notify_done:
>>>> +	iio_trigger_notify_done(ads1018->indio_trig);
>>>
>>> Jonathan et al., maybe we need an ACQUIRE() class for this? It will sol=
ve
>>> the conditional scoped guard case, no?
>
> No, ACQUIRE() is not scoped, just conditional. I don't think it
> will improve anything here.

Maybe I'm not understanding the problem fully?

I interpreted "ACQUIRE() class" as a general GUARD class, i.e.
=09
	guard(iio_trigger_notify)(indio_dev->trig);

This way drivers may use other cleanup.h helpers cleaner, because of the
goto problem?

I do think it's a good idea, like a `defer` keyword. But it is a bit
unorthodox using guard for non locks.


--=20
 ~ Kurt


