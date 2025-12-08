Return-Path: <devicetree+bounces-245076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF76CAC00B
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 05:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6984A3011010
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 04:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504C92F618B;
	Mon,  8 Dec 2025 04:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MaFEPsJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9841B19E99F
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 04:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765166782; cv=none; b=mjCpJV3CbKUVfDhf8y+leLqZ28PkGww4Zy79vHMZQnogb6ay6WVFEZbKXf+7+qC0t/fqDNLQpQJEmGG1KY0wJojYSKPhIpz1vTn9qiRNGwxNUTBzZCcRJ+2vt8YF8Y98pYST0dGfzug3MDzX2kEvhSsE1ZzD/l6iURJnu1kXWLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765166782; c=relaxed/simple;
	bh=Cg3O14RZqFhxWcKbyPiVdpzPznuXJP5VxRY5dmxr8T4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=eKjVesW6UcorzlMY6sYVOmdrm+KOvkJKfZvmYgPa89W4KXp+kLnfo88lBSwPukrx/rGDOIvtoZJe+27dmeQPy7A9HYX8acmoCjVcw7FcewWMOxdzOcVLyGddLVhSNg0dTI1nNmPVINLJ438w/yq0CvSau2wK4wrjl4qLPBU7kO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MaFEPsJD; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93f1fb6b16bso480617241.3
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 20:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765166779; x=1765771579; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E53VWanBq7C0ad9JYnFx/4KyaxhwyXlh9fa1cFCAwMY=;
        b=MaFEPsJDUjLRNIaNifN27qx7f7awsmIKG1gt+pS1f4CU9Iuw2BSfj50MFm9/ZobZ0F
         eALacqxjj2T5t5AfS+i5fre2XvqEryqxl2EZ7iB0U/B3FREJPDCJgHNmrMJuEQDGSb5H
         Vekaucp4PaFFGGMFhSQa53WaxZfiCyqK9yZxGdkqUBepCkNHuyUwhSrPcnC89mezmuna
         qZyqROOxkiLsi734N9LN0oQhGBC/kkjK0jQmLtSQFzd7AGoRIf4t/pztewLXldrZcRMT
         780AgbB3EEi2Y4Ijju3mHSMAntGhxB2zleSEpdJiA5M6XPBz2kkGC4VCCZcDEa+XtG9T
         v6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765166779; x=1765771579;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E53VWanBq7C0ad9JYnFx/4KyaxhwyXlh9fa1cFCAwMY=;
        b=J0Gbf2OHUWx8Cum4RkxSJESc4Mnh0etlPlZpvuN+S2lmRxCUMsDiGrKMwotn3T+i0+
         O/DdQixkW5cF5G4WqnG8Ft1ZnheqEkF+E+x79XCcIeKpmsx/4I7F8iN4wt/9Chv1PN2u
         GYpWBxAnY3HtELIMUQoITITeWYTsLaQzG4cLiljci0l7p6v04tzYl+SEXgLDoSaQMJvM
         mfDkq6hjRqyYMFyi24gwQgtkpUm5Tnl4U6OWyYKxTTxcL9rOZE781gmWGtm0Vmw0wosC
         klq6zIOGrMxa2EO5VK06IEMxgXLepwL+LfrEceLfdh2IbFgGidtRXNbJv+V6QAp8cAjS
         s13g==
X-Forwarded-Encrypted: i=1; AJvYcCUDoiw4KNdcBjU2NffmVsrNtMtK53/oXROzkRpSeqYlYvjCd9PwBtJJUyURvGXn0Qsc8KsuUiNZVpay@vger.kernel.org
X-Gm-Message-State: AOJu0Yya5TPiX/dfG7kpku+Z8NZfx5zYC1Q4/PB4FQVDsjLS6GoqRM3r
	8czhetYBBBiEOBaD4UWxgEaKVBuAD8H3dWVba7pTq0dtgDmlu8CVRnmaSCZW7Q==
X-Gm-Gg: ASbGncvlEti/Rmj+qte3AK5192CSEuEFnZuw20lUiDSlmR+03PxDuBb+OdH6cUIk+2Y
	90hcEpHRDKor4RI6UHZDCiN/3YZr5Y4nUcgGdoOcc+YS0czjS6PD1l+hQlkUnJIiG1B54b2yl4j
	48ZB1znCsfqH5hdFfD5dPPkVyhNp3C1arrQiQJDFv8/E3HVWLm7gnqdbSTVIM31FGRRLUAT/GI4
	QQLamX7lAUj3sftdfoFP4NIe7mtD8MLB1tdCBKJRucvOuIjJkK3jIIExLmQiVub2e35HuLJxaI6
	Dx+pUdWucN4bSYo6Q40C9Ut9rsu2HoYSJMq6FwaKKdHHgDAERuiyMS3T50Os7njkmN2sYOz24WX
	hjOLSYMEywDETBhrQs3nHN4mGI6LLc9Zsqx2KDprCM+H1/dRB78CIJdrOfQxN0ta9p5p//AN7o5
	Y948BIuxxDwxlwPA==
X-Google-Smtp-Source: AGHT+IFkG6wTmJKV6r4B4PaWJF+KZZckC93kEOsrxdUIRhu9Qxfb93WkQhL0UFnJwzDt/T8xEOrpiQ==
X-Received: by 2002:a05:6102:5110:b0:5df:ab05:d855 with SMTP id ada2fe7eead31-5e52cc20a2fmr2052607137.36.1765166779389;
        Sun, 07 Dec 2025 20:06:19 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e5107e701asm5025752137.4.2025.12.07.20.06.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Dec 2025 20:06:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 07 Dec 2025 23:06:16 -0500
Message-Id: <DESJEELPCGK3.3H15VL3YAC0RT@gmail.com>
Cc: "Kurt Borja" <kuurtb@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Tobias Sperling" <tobias.sperling@softing.com>,
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v6 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Jonathan Cameron" <jic23@kernel.org>, "David Lechner"
 <dlechner@baylibre.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251204-ads1x18-v6-0-2ae4a2f8e90c@gmail.com>
 <20251204-ads1x18-v6-2-2ae4a2f8e90c@gmail.com>
 <20251206200721.5e683a83@jic23-huawei>
 <DES3ZWAKXXEB.2LQPMDZN4JFCB@gmail.com>
 <5b843df0-138e-4e2e-a70d-beb8a39ed85f@baylibre.com>
 <20251207195613.0e222b3a@jic23-huawei>
In-Reply-To: <20251207195613.0e222b3a@jic23-huawei>

On Sun Dec 7, 2025 at 2:56 PM -05, Jonathan Cameron wrote:
> On Sun, 7 Dec 2025 11:12:51 -0600
> David Lechner <dlechner@baylibre.com> wrote:
>
>> On 12/7/25 10:02 AM, Kurt Borja wrote:
>> > On Sat Dec 6, 2025 at 3:07 PM -05, Jonathan Cameron wrote: =20
>> >> On Thu, 04 Dec 2025 13:01:28 -0500
>> >> Kurt Borja <kuurtb@gmail.com> wrote:
>> >> =20
>> >>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>> >>> analog-to-digital converters.
>> >>>
>> >>> These chips' MOSI pin is shared with a data-ready interrupt. Definin=
g
>> >>> this interrupt in devicetree is optional, therefore we only create a=
n
>> >>> IIO trigger if one is found.
>> >>>
>> >>> Handling this interrupt requires some considerations. When enabling =
the
>> >>> trigger the CS line is tied low (active), thus we need to hold
>> >>> spi_bus_lock() too, to avoid state corruption. This is done inside t=
he
>> >>> set_trigger_state() callback, to let users use other triggers withou=
t
>> >>> wasting a bus lock.
>> >>>
>> >>> Signed-off-by: Kurt Borja <kuurtb@gmail.com> =20
>> >=20
>> > ...
>> >  =20
>> >>> +#define ADS1018_VOLT_CHAN(_index, _chan, _realbits) {				\
>> >>> +	.type =3D IIO_VOLTAGE,							\
>> >>> +	.channel =3D _chan,							\
>> >>> +	.scan_index =3D _index,							\
>> >>> +	.scan_type =3D {								\
>> >>> +		.sign =3D 's',							\
>> >>> +		.realbits =3D _realbits,						\
>> >>> +		.storagebits =3D 16,						\
>> >>> +		.shift =3D 16 - _realbits,					\
>> >>> +		.endianness =3D IIO_BE,						\
>> >>> +	},									\
>> >>> +	.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW) |				\
>> >>> +			      BIT(IIO_CHAN_INFO_SCALE) |			\
>> >>> +			      BIT(IIO_CHAN_INFO_SAMP_FREQ),			\ =20
>> >>
>> >> What motivates per channel sampling frequency?
>> >>
>> >> Given you have to write it each time you configure I guess it doesn't=
 matter much
>> >> either way. =20
>> >=20
>> > I guess making it shared by all is simpler too, so I'll go with that.
>> >  =20
>> Just keep in mind that if there is ever some use case we don't know
>> about that would require a different rate per channel, we can't change
>> it without breaking usespace. Once the decision is made, we are
>> locked in. Keeping it per-channel seems more future-proof to me.
>
> Only way I can think of that might cause that to matter would be
> if the complex dance to avoid the onehot buffer restriction is added.
> Given you gave this response I went looking and that might make
> sense as an enhancement as the SPI protocol would allow a crafted message
> sequence to do this efficiently.  Extension of figure 15 where first mess=
age
> sets config and after that they read out channel and set config for next =
one.

This is possible, yes. But would the timestamp even make sense in this
case? Even in the fastest sampling rate, we would have to wait at least
1 ms for each channel and the timestamp would become stale.

That was my reasoning for using the onehot restriction.

Is that acceptable? Or maybe we would need to disallow the timestamp
channel if more than one channel is selected?

>
> Given that is sane, I agree with you that we should probably keep these s=
eparate.
> I doubt anyone will use different sampling frequencies even if possible b=
ut you
> never know.

I'll leave it as is then.

>
> Jonathan
>
>>=20


--=20
 ~ Kurt


