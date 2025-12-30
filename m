Return-Path: <devicetree+bounces-250332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8907FCE8780
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38A14301637A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 01:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42E42DEA87;
	Tue, 30 Dec 2025 01:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zl1hjz9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5D02DAFA5
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 01:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767057216; cv=none; b=gNa6hxtnkse/ZM+aqqr9jgu6yEbpVaCkDfpnUGE62lGXMgyOgyrWvU5m5nj2OUBh0kBsDN14UjROLeN+Xl6AjXXj83Ht7jySUH8ntoR9xR0WdRGDGW7wdn/kc2yalcnWfFG9HfajBo5KOineuYNvJugJN3XKy1ZsyX2yjXs5/fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767057216; c=relaxed/simple;
	bh=wt7UDoKY81UPq/wlsT699pMW1pwS4sLyKYlX2Q+XjXY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AQQF69tvhKtGaVmRKVGKhQWECTPutIp+FvwoxLbryI9re8QIwt9BdOAy0sS3OuQ5K+isxTxKM7Jm2uTbdgu7Qy04++69wn6ETeIwQ9EVFmbzlzTw+SCX0SGXCjaI0W6ZvO7/i7guyxOoJEioI2828ijCMgeWwNxuVGGc1FSNt8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zl1hjz9j; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-559a4d6b511so987234e0c.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 17:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767057212; x=1767662012; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=74jYKa9+OupKCj+T37gNUTTsdOJyf+ySCP+SjAOd7eQ=;
        b=Zl1hjz9jKalmhh3xFs5HDzNovsI6txoBxiH3vDc6w0gDyX1Ca2x3gJZl4PknJUUI/J
         VwoaPWBOgxDCiT0j2DlDu7dbsD3RD7bxjI/qKj0GgdoAHtdDRHi1WUTh4PNJZb9jkzAu
         uNmRQYBZ6hMtjbLt385flSY0ts2IoNf7SqLElHt1sZi4Zkf+uwFqj5Cv4tIzy3NRxUBo
         wmRf4VxRcx9xmZbKuuiM09ew0pIv6n2E7ITRavHHBf5fxzkSG4unz//fNXAyTw0Th2wT
         BLkEnact34UEW6TFwe+IyvRf3r7iSsrk9mPx5PL+fUrsqkTGaeNtWblJaho87Yu3BJZe
         YAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767057212; x=1767662012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=74jYKa9+OupKCj+T37gNUTTsdOJyf+ySCP+SjAOd7eQ=;
        b=lRu0V1US1VmFSza173HrARMfAMsBma+rD+9Or+eMH4VyIy99aC3VsQ8IS3BKmZaXl3
         cMZBJOxgaYxr9J/sZhdKeywwKLWgytMQyejMzNWeYsz78mwWEWQ8bi51IfYdF65nJILk
         8ntAQXdti5gGEf7UXavPy5TCDTNFaIJ+FOwpdkL80bszkMfL+TG/fJFsOmmibvhbggX6
         1yYen5srB86/K/lYLR+rO3O1x8RUVMb8yOUtS1Da/Sjuy6LHEc2SzITMoQlbvlTecOh3
         06ruHR7WGlGQTQvMr9lv8Z5N83A+lEHP5w7KFW5buj+s6vwXaiuaPyxOsFrjj2n9/MzV
         55GQ==
X-Forwarded-Encrypted: i=1; AJvYcCVT13+KDodcjirDleCiTAHAIstoXumUVznetJgVBbHwYq684778nJ+YDpUMQNTRGQU6MSJUabs5KogZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxU4T+u95KaQtIvfQUUMwwfnnw7gDuDQul+UK3/Xv0EEYQc690w
	If+RcY7iFqSkdlvPCp/4Grtkdcz+GiTHrWcjwWGVzEsUWvfvfyACQEd0QMoLdHd6IVBiWWScJrd
	DsaIZOPTh84J+qVqpkscOPJID48ITgZk=
X-Gm-Gg: AY/fxX5vB2CPWZrTN3D6aCOROvHe/hmEXtnx1fVBPm3SEzzGdk1dWeb/YCNWDIbP6PZ
	t9NAZA9yohaG1NxyCWXJJM3IXNr/0/YvMBsD1eOIxX6BBWykRacoALe5OVNCznwvLo4dT8VCvVS
	DyJ0IFwE9oA03Z6d04QJvOv/00qMWEWMLePu1TfCBZDAIlpoRYqSu9hk8cYXUFpoNY0GSFges1U
	GZ/scflIk0WibC99QcIotQ7WEFRzNwwvH/XIlB96wFyMmPLcA6TvrhsRRPKk+gsAExM7p0d
X-Google-Smtp-Source: AGHT+IEo9vxlydYJ4UDGmaiDCnzBqdGUATcD2xzIk1Jy+AqG8YjBq51DC2k8WPzmeI+vqaYGF6acNP+EaD+sr557lIY=
X-Received: by 2002:a05:6122:32c7:b0:559:6d45:9a1c with SMTP id
 71dfb90a1353d-5615bcdadbcmr10197743e0c.3.1767057212557; Mon, 29 Dec 2025
 17:13:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224-add_ltc2305_driver-v2-0-061f78cf45a3@gmail.com>
 <20251224-add_ltc2305_driver-v2-2-061f78cf45a3@gmail.com> <20251227181808.3dbe5b0a@jic23-huawei>
In-Reply-To: <20251227181808.3dbe5b0a@jic23-huawei>
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Tue, 30 Dec 2025 09:13:20 +0800
X-Gm-Features: AQt7F2ob2iwt40n30LG6yvsqVQ7RHejvs_MQprdo67ifEsy8DuDGnIoEi8qIWXk
Message-ID: <CAF7HswMKGCt_HWMQWxm2G0hxqk6-2GHRDCfYF+vow5srmFQvPw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: ltc2309: add support for ltc2305
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Beguin <liambeguin@gmail.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 28, 2025 at 2:18=E2=80=AFAM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Wed, 24 Dec 2025 13:37:15 +0800
> Kyle Hsieh <kylehsieh1995@gmail.com> wrote:
>
> > Add support for the 2-channel LTC2305 ADC in the existing LTC2309 drive=
r.
> > The LTC2305 and LTC2309 share similar features: both are 12-bit,
> > low-noise, low-power SAR ADCs with an I2C interface.
> > The main difference is the number of channels: LTC2305 has 2 channels,
> > while LTC2309 has 8 channels.
> >
> > Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
> Hi Kyle
>
> This is a fairly small patch, so don't bother doing it this time, but
> for future reference, if you are doing a refactor to enable something new
> split it into a refactor patch (which makes no operational changes) and
> a new stuff patch. Here first of those patches would introduce the chip_i=
nfo
> structure but only for existing supported devices.  That can be reviewed
> easily to make sure there are not functional changes.  The second patch t=
hen
> adds the entries for the new device (which can be checked against the dat=
asheet).
>
> When it is very small, in the interests of expediency we sometimes don't
> worry too much about the ideal formation of patches.
>
> In line I mention that the ltc2301 would be very easy to add as well if y=
ou
> want to do so.  Otherwise looks good to me. I'll leave it on list a littl=
e
> while though before applying.
Hi Jonathan,

Thanks for the review and feedback.
I appreciate the suggestions regarding patch splitting for future submissio=
ns,
and the tip about LTC2301 support.
I will  keep that in mind for future work.

Best regards,
Kyle
>
> > ---
> >  drivers/iio/adc/ltc2309.c | 51 +++++++++++++++++++++++++++++++++++++++=
+++-----
> >  1 file changed, 46 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/iio/adc/ltc2309.c b/drivers/iio/adc/ltc2309.c
> > index 5f0d947d0615..0cf9bcae36c8 100644
> > --- a/drivers/iio/adc/ltc2309.c
> > +++ b/drivers/iio/adc/ltc2309.c
> > @@ -1,8 +1,10 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  /*
> > + * The LTC2305 is a  2-Channel, 12-Bit SAR ADC with an I2C Interface.
> >   * The LTC2309 is an 8-Channel, 12-Bit SAR ADC with an I2C Interface.
> >   *
> >   * Datasheet:
> > + * https://www.analog.com/media/en/technical-documentation/data-sheets=
/23015fb.pdf
>
> If you wanted to, it should be trivial to also support the 2301 (I looked=
 given the
> odd datasheet file name!)  For families of parts it is common to add supp=
ort based
> on only have access to a small subset.
>
>
> >   * https://www.analog.com/media/en/technical-documentation/data-sheets=
/2309fd.pdf

