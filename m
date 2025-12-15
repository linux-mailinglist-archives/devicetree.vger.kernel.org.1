Return-Path: <devicetree+bounces-246719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A40CBF0D1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:54:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C00230164E3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94153491DE;
	Mon, 15 Dec 2025 16:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BTLmcUVy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0822C3491D5
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765817660; cv=none; b=hSBj+vrpAMHa/Da3rGp24t9xO1SQ03Q+u+QmtWVwPpZA+MkRXA4o9Dp/2rkvHf2RSfWOjAyaaTR9dUi+VfpyjsWuCS5xLv5If+W4++MpbHF0YschOlEpOMb21NOwtVoPvDIGoKSU96kj2XGz/k4fNr495VNBxahCoOPLIzZ/zJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765817660; c=relaxed/simple;
	bh=rnO5Sdw9CmVSx/Z5NmJjTrrElPXvm9DyjfkPt5SbLq4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=aZtWPAyjuypDWdja3QiS6oRafNvVes4lagFCSPu1PUz0A7jiGBg0EwBvhRG91IIzp06zshSI0lse+xlMVRbBl8xBRn0DyushNy5l5HX3KmNctEu/rRXGMvLNjM55C/a4MBkOuh5GfDoZgAVQ399HKkw/dSUQWaBBG8x5VzH5wpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BTLmcUVy; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5dfd2148bf3so1318510137.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765817658; x=1766422458; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSRhsoBal2wN7jYjEUi6QPuFghZh1OrtK4e8inDJt7w=;
        b=BTLmcUVyTDxNjEKor51GKikIFzvN9hw42PYavTJXQUJElOmmInrScdi+iU3PCGQb0T
         xohu8I+tbWeRo7OMcMwGgDTS4SEd+eW503QhPMXZNPL7VCS8QLm58I5TPKDodF9DhkHj
         HrzcW8qBaC+9fmVkzhwdzxvO4CUmKRke4D+urFzHcR3cu9sRjDu+MtWvJgxUoxwvu0ic
         jKax2oBtngpVYjEjPt8PFp8bfGaN8tzEmfz5VVIGDUmXU8pbwPfaTDZzK3qcYHYFrpmQ
         iT5Z7AqcLcWF227KmIaY21MUQxn0419RDd5WZ3Shrj/w/TUIwPV4nAEHHod1SiL7hpVI
         pvNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765817658; x=1766422458;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mSRhsoBal2wN7jYjEUi6QPuFghZh1OrtK4e8inDJt7w=;
        b=fqPsIz/MdapFz+WGcl+AIGOMGRExfALjU3ECFIwGD+vdaCVjdS3V30uVcsDoLmccUj
         lMc7Pq4zJ7M5iB65M54y+9A7AazWXyEsQfxlmX1racaIoZZXqgSGT/nvbd74mDuC1x7K
         iA7obi37GnCZU/qaS8AK4R+krT0NZdDnxTC9A7gWqbTK3xEqTxALltwkJVYnuC995MFN
         TchvYhnzLW1oXUrgZKJRJF2iR6hjKlVlUIqoRB204CXztcH3udDjswLe3+bP/AgoNLcA
         AlkFl7fM3z+3It26U96WNSw7mgG5JAyBE5AWC3KY8+qD4FQdgDGv7jSe1f+3IHTPzdhx
         DDCA==
X-Forwarded-Encrypted: i=1; AJvYcCXAX5qQIVr5TgO6TZMILZn2MBDZQKRYJvs+zDRdXeLdqWLMGwKxAmwOB/OhMeHQW3ScGkra1agDngZH@vger.kernel.org
X-Gm-Message-State: AOJu0YzLlw2lFryv/YcIY/hDQ4DxYJCUz2i5LMkXEjk/BzpCHQ5Wy5F1
	FW60tMZvO8kmKvOiMmAmJooM0pS5L/qgCQ2E18d09Zv6svBZSSwfqW4a
X-Gm-Gg: AY/fxX5Px2kYlQID1sSNTtsf6sYS2qGl35FfaHywrULZh9Q9QOMLsY7XmyWvM7rBqrx
	zIyfa6Nr0YQLA5g+qIGuBZhT5N6hWqdtDg1TNMJ7YKkUVoG7m0tMMBjyzMuxP2QzhY+1SlVINTz
	jpTgyVUhTB4xgaMauCQSGh8otjW0+xMO4p3Ogyb64WqhWZbXA3Uuk34FZLj4YaIzDKylK8utR46
	nepEEheR7AGSiyGxgn4IzA4Ciub28jYICKTqxfHTx4APyqs1r1+oFI+LgBEGOBr+lSkKhP76TI/
	bBmGc5+/2BVyCezU8qHQRT+PBF8PKq3aIcYlNmSsODO/HEqIPNatYOJ5Mz+XaOrpbKvqosClPzJ
	c8qSAUJTylR46cIabLJUyYQ+yyG15ylWBcdzuRjk=
X-Google-Smtp-Source: AGHT+IHs/QkmSIt7YE/0e2oN1zB3O/b1MenolN8mPEpk3FecyzQ1b8IYT8tOSQ58dgTHsOxXLlTnOg==
X-Received: by 2002:a05:6102:41ac:b0:5dd:b2a1:a5a4 with SMTP id ada2fe7eead31-5e82748b438mr3654429137.5.1765817655638;
        Mon, 15 Dec 2025 08:54:15 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e7db24c1dfsm6551404137.10.2025.12.15.08.54.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 08:54:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 15 Dec 2025 11:54:13 -0500
Message-Id: <DEYY46ZUJQ35.YBNYWLGZMRYA@gmail.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v8 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Tobias Sperling"
 <tobias.sperling@softing.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
 <20251211-ads1x18-v8-2-5cd12ac556da@gmail.com>
 <064e059b-5c86-4c41-8de8-b6a728361fd3@baylibre.com>
In-Reply-To: <064e059b-5c86-4c41-8de8-b6a728361fd3@baylibre.com>

On Mon Dec 15, 2025 at 10:55 AM -05, David Lechner wrote:
> On 12/11/25 10:25 PM, Kurt Borja wrote:
>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>> analog-to-digital converters.
>>=20
>
> ...
>
>> +/**
>> + * ads1018_spi_read_exclusive - Reads a conversion value from the devic=
e
>> + * @ads1018: Device data
>> + * @cnv: ADC Conversion value (optional)
>> + * @hold_cs: Keep CS line asserted after the SPI transfer
>> + *
>> + * Reads the most recent ADC conversion value, without updating the
>> + * device's configuration.
>> + *
>> + * Context: Expects iio_device_claim_buffer_mode() is held and SPI bus
>> + *	    *exclusive* use.
>
> I guess "exclusive" is supposed to mean that the SPI bus lock is held?
> Would have been more clear to just say "SPI bus lock is held".

I went with "exclusive" because we are not holding the lock on the same
thread, so that could be misleading.

...

>> +static int ads1018_buffer_postdisable(struct iio_dev *indio_dev)
>> +{
>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> +	u16 cfg;
>> +
>> +	cfg =3D ADS1018_CFG_VALID;
>> +	cfg |=3D FIELD_PREP(ADS1018_CFG_MODE_MASK, ADS1018_MODE_ONESHOT);
>> +
>> +	ads1018->tx_buf[0] =3D cpu_to_be16(cfg);
>> +	ads1018->tx_buf[1] =3D 0;
>> +
>> +	return spi_write(ads1018->spi, ads1018->tx_buf, sizeof(ads1018->tx_buf=
));
>> +}
>> +
>> +static const struct iio_buffer_setup_ops ads1018_buffer_ops =3D {
>> +	.preenable =3D ads1018_buffer_preenable,
>> +	.postdisable =3D ads1018_buffer_postdisable,
>> +	.validate_scan_mask =3D iio_validate_scan_mask_onehot,
>
> Why do we only allow one channel to be selected at a time?
> I guess we can remove that restriction later. I just didn't
> notice this in previous reviews.

I chose this restriction because of the timestamp discussion a few
versions ago.

I will remove it later and implement multichannel buffers as Jonathan
suggested.

...

>> +static irqreturn_t ads1018_trigger_handler(int irq, void *p)
>> +{
>> +	struct iio_poll_func *pf =3D p;
>> +	struct iio_dev *indio_dev =3D pf->indio_dev;
>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> +	struct {
>> +		__be16 conv;
>> +		aligned_s64 ts;
>> +	} scan =3D {};
>> +	int ret;
>> +
>
>
>> +	if (iio_device_claim_buffer_mode(indio_dev))
>> +		goto out_notify_done;
>
> This should not be needed. It should not be possible to
> exit buffer mode without triggers being stopped first.
> (No other driver is doing this.)

Previously I had my own lock here because ads1018_spi_read_exclusive()
needs locking. I dropped it per your suggestion in v1 I believe, but
given the discussion in the cleanup.h series I was thinking in bringing
it back.

But yes, the scope can be adjusted too.

--=20
Thanks,
 ~ Kurt

