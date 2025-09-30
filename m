Return-Path: <devicetree+bounces-222788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C834BACDA5
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:35:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0762F16ABEC
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E702DF71E;
	Tue, 30 Sep 2025 12:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RrPEP5IF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4F92D3237
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759235721; cv=none; b=I8EH+uNRWAH9SvPPkN6isuyHTFv/MxH7kkpmgFkywp7YPI4WOYSgUW0NvDBSb/ZyeWKfvU+ZIBb5DyfxmkZIXw9zACd1E7UHECsr+SLTuBZofeB/dYHbaEdgf0t/DJPmOWkIs3U1xVi+nv/rFhL7HvrJSpwSZfkYM+oQ+YhJZL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759235721; c=relaxed/simple;
	bh=OLaaAtsGKrDmRCk1hZRgZKq1NLE41t7p401pA47PGFc=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YhmViJXdAnPktsJyISV1kM5zA84rbtcel3TkLmWoWgs0W+ptkABYcnd+KNh9b2zbkCG0bxb8mn6HTO91lDkOC4NS7aPSeURw1YQvbMnTsKJp7QUcQUO29GJy2O1/b6mzk7qjBUrBjxWXuU5pygdntUJ9dQIRjfUD/DfRocBqJT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RrPEP5IF; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e2c3b6d4cso43982055e9.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759235718; x=1759840518; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBIyAliecesuj9+oIEMmhe2lazP4PYGUOdW+EV4Vomg=;
        b=RrPEP5IFP29cUrTMSO87KSi5yQiPup+0NjOnxOUS4ayj2nIRoK8GslpuVJZHuqW+BJ
         lDlNd2za15fedIBfrhFaX7LGh3Xc9iybF7SG49pqmEwMjl4qvKZnLIowh8G5/X3CJuAx
         nvNOoUkmUem5EURbX80lw1vE6i29nXPEuFN0V8HaBxWCVKXPAm+va4k6I9b9q46X8ir5
         fmCP2g1D+YwSusnaZ2jONKQwarh1L5aRghDyo3JilEpJ6uHWF0IecCX/nFnWd2SjjFN2
         37pa2pkduK8VsduRuDgiS5XnQnEeqWB7wwIdYdgVPCqHkrq5NLgJ0xk8OFiEoXAZqd0O
         IzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759235718; x=1759840518;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NBIyAliecesuj9+oIEMmhe2lazP4PYGUOdW+EV4Vomg=;
        b=WGWRg+dgBgeaQq/i+jvEaJlvW4KeSZM/PpcvXlJgttAVE87AVIhTDjYeSoLmHhWnP3
         jHjJUaf24Il8lCj6cdpV7ucAKKEQexPEKuTA4aG9ShQQb0V6csv9jRlpdPb8o5hF0Ozx
         9ozUGi2zEpWLgaH1iSw65X+quBlPZGca2xR4yiVLrVg8/oRGIKpIbltkiGCtLZlmE+A3
         7oD3VzyTGRv0e2xfjrPhMVNtiluVw2r/dBLyJZ+H9eun95HNPYWrKYYem3kwTPgjEFZ8
         oFNPp/Y4Y1RcX3CdPCE4xvsRkZ0jWT/8PAAWzV+DDQwsuy+Fu5/P1iZ13TBbc0Dnhn8t
         wZJA==
X-Forwarded-Encrypted: i=1; AJvYcCXtDe1AnP0DTnGdTQJoiuQWQPIVwkQU7f9pU5oG/j4L9B6OrGeBBl2xD+nKFivyJIrT5yQVXBg7OTSd@vger.kernel.org
X-Gm-Message-State: AOJu0YyclSmHZ/0PJcf+pRQwpYENjJsjkK4znDk5jNO7qjqS5HnVSNhM
	gTm2rJygX/jZAuvwEqTWXtTC3OUv415GsjzS6oEmav6Um7ldRZZ52aAK9x6aFF6A
X-Gm-Gg: ASbGnct55/3DcnPZkEkGAQXXISS2k5NnzlDe/qGoiKurPOHzT0Cffa8f9pSsrjFiMct
	J+Dv0Rmq3j9q7aMScCtVctH9a57h2LVbm5n8K29+4WEQJcw7OpmTYmKWXSE0Zcj5hLgGha0aIce
	7BiKgEu9SwJBfCM+4KlqEqy7DPuzhZIZbSGY3c3myHbRHH0TgyTYw4NWmaQQlMRiHJF/6y+TCKU
	VWSMOFVECQqQwN9yIZM40stu2o17e/1AV5xbmx0FnjVtmaCh0vG4QEf6A83Qh97Hx8LDhVg3D/k
	okfqjhvj/hItJ1GWTDs5n2WELEEEpl6YOH/ibvPAePkNF8AzwzD58JDPgHethCY0Kuq+WoiLP8G
	xRXAkIdVVCFqzj8ghCo2EflybnYjqc7NqkDRm6Nb+oxqev+04pEehK5Crg8NI9HjVNA==
X-Google-Smtp-Source: AGHT+IGRWpX/HQdAmTKxVyk3t2itUZYUi+he02ZFj0UFND6bEyolg1KIKdz4mv07nGqyDg6HmApvcg==
X-Received: by 2002:a05:600c:4192:b0:468:4350:c84d with SMTP id 5b1f17b1804b1-46e329ab0bamr122521485e9.7.1759235718087;
        Tue, 30 Sep 2025 05:35:18 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5b577c87sm14230425e9.0.2025.09.30.05.35.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 05:35:17 -0700 (PDT)
Message-ID: <3c959b42a01d3af75fdf536fc3e3289a076953c3.camel@gmail.com>
Subject: Re: [PATCH v2 1/6] iio: adc: ad4080: fix chip identification
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 30 Sep 2025 13:35:46 +0100
In-Reply-To: <20250930103229.28696-1-antoniu.miclaus@analog.com>
References: <20250930103229.28696-1-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Antoniu,

I think that for a series like this you should include a cover letter...

On Tue, 2025-09-30 at 10:32 +0000, Antoniu Miclaus wrote:
> Fix AD4080 chip identification by using the correct 16-bit product ID
> (0x0050) instead of GENMASK(2, 0). Update the chip reading logic to
> use regmap_bulk_read to read both PRODUCT_ID_L and PRODUCT_ID_H
> registers and combine them into a 16-bit value.
>=20
> The original implementation was incorrectly reading only 3 bits,
> which would not correctly identify the AD4080 chip.
>=20
> Fixes: 6b31ba1811b6 ("iio: adc: ad4080: add driver support")
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v2:
> =C2=A0- add the chip id handling into a separate commit.
> =C2=A0- use regmap_bulk_read.
> =C2=A0drivers/iio/adc/ad4080.c | 5 +++--
> =C2=A01 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/iio/adc/ad4080.c b/drivers/iio/adc/ad4080.c
> index 6e61787ed321..b80560aebe2d 100644
> --- a/drivers/iio/adc/ad4080.c
> +++ b/drivers/iio/adc/ad4080.c
> @@ -125,7 +125,7 @@
> =C2=A0
> =C2=A0/* Miscellaneous Definitions */
> =C2=A0#define
> AD4080_SPI_READ						BIT(7)
> -#define AD4080_CHIP_ID						GENMASK(2, 0)
> +#define AD4080_CHIP_ID						0x0050
> =C2=A0
> =C2=A0#define AD4080_LVDS_CNV_CLK_CNT_MAX				7
> =C2=A0
> @@ -458,10 +458,11 @@ static int ad4080_setup(struct iio_dev *indio_dev)
> =C2=A0	if (ret)
> =C2=A0		return ret;
> =C2=A0
> -	ret =3D regmap_read(st->regmap, AD4080_REG_CHIP_TYPE, &id);
> +	ret =3D regmap_bulk_read(st->regmap, AD4080_REG_PRODUCT_ID_L, &id, 2);
> =C2=A0	if (ret)
> =C2=A0		return ret;
> =C2=A0
> +	id =3D get_unaligned_le16(&id);

Being id an 'unsigned int' I'm not really sure the above will work on big e=
ndian
machines as we should only populate the 2 MSB, right? But independent of th=
at,
id is only being used in here so I would use proper __le16 (and u16) and
le16_to_cpu().

- Nuno S=C3=A1

> =C2=A0	if (id !=3D AD4080_CHIP_ID)
> =C2=A0		dev_info(dev, "Unrecognized CHIP_ID 0x%X\n", id);
> =C2=A0

