Return-Path: <devicetree+bounces-224223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0FCBC1C61
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 96F6E4E1846
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994772E03FB;
	Tue,  7 Oct 2025 14:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P7UhM/7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84C32E03E8
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759848035; cv=none; b=Zl710nCN24gAC3+x/T6VKcXn2c4NsiCU/3gBVA4jeOkvEKNzvB/rlbdXCAZxFzFNB2NQiQx+m81TQkvdbvbe1UDc3oj74amB7T1h1sX8z3NWUBKHiguacWdytcTh6aWHY9gH1ErYHBgyzqSnG1lQ94dctKbOhxZ6mANyglooFa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759848035; c=relaxed/simple;
	bh=B2OUx2sfHgzN2CS0iQzkheQkEWVCuNBoUZhIh5+IVkw=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YhwEAsRFiCoAfCs/Pub38XfHNqpwwp8/DxYohZmc1jHkcqhRFhsOs58tTy6UFv+TBHBAJ8GDYQx4y/myNDYmFJs8Mjo7AZRUjfHs8q0q6Casm4gHOoyFyfIpLGGVuhMQwTPZy1KkbEIrLaNQtFMdfj+l6e29r6/UXOcaH9omFMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P7UhM/7x; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e504975dbso38749065e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759848032; x=1760452832; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l8GdmpbvP1MhVUerSbA0JGFH2sH85K9L2vfKUXIpVfI=;
        b=P7UhM/7xJ1ScRif92wpbmiRoKKlA1z4fEDBXJsVTRNaSNCv3L5dn4zw6MLZ5GnOoNm
         HBpkWb4f5yrvQQ2RmeG0klHZsSycheuJx6eRnCXrrx41QZdfXxbPDvBkgm0ZOwyfiyGo
         ifbZZns/DYoB2+ES/Z6Lpixk3R4oW0xg/ZY3Y6pYyJuFahaz9FLKJ9sMhqdUdTLift0e
         Xdc6K9OS0Mlu+bzInJwd3eNZ/7gr+017SmLXr8b9MKMgN071ULSqYULIFWsWJPYXrq/V
         /kzIqEqWek2ODqa1t7QBycOHA3hwjIc3I4758KJP6R1IbRsJmpIklIhS7HMYRckuUdUr
         MVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759848032; x=1760452832;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l8GdmpbvP1MhVUerSbA0JGFH2sH85K9L2vfKUXIpVfI=;
        b=UL9p237XpBLyccKMbTLR9Sv4/1EYbEaxxFqxa/odYV8fvdZnpEap4DlRdnLDJzpzew
         PLcod9uqdY0Ju7WE/5OsY0DZw8E2oiipcxvHkMqMw2bLH8oTXdlGoxPbuZQTLQU8ATyC
         UA1kB4wkxDPxsPB7fn5MCD6Ckp7c4ZXmJJNyUauCKN3tWMhJYBYUl0xRv1jJh7UopELR
         W6dtceTqGGbHHFncBSsiwU/oJPq9D4DUoxsyjlKNNP+92FT40q9USm1cAbe0ymnRXts3
         5YGm/WmerOa3O3aYhuZBP8Uqn/rbWVTsY5Iof+xrmyXWJYdnlAxGqtOIRWC91h5aLrDu
         T0Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXA+mSHLBb2sPtCJAmbmGJISFLvoj9Cna9CdlN3VxUWPUE0KsvX8rP63fcVsC9KFqBcvsBTUObL20bO@vger.kernel.org
X-Gm-Message-State: AOJu0YxA6NWIqMI+c2eBYzi+fmHniyYqw80SuX+nK5A250QZZGuYvFW8
	/o/vkeIvKNffs/MDxv6D+2x4j4F/MKEKibtV144TihgsP//G/nQeju8ZUaUbkQ==
X-Gm-Gg: ASbGncsYMrYgqIUlhiArPp/psLMsuWHJ2cCgU6N9WpoYeM7iY+9NJpNq2zuf3SgewdT
	TBKwvwqiDLULq/fuo92kyIsSo2CfSciRFaD0DOqfFVliFEwHlzzGpX1mvzNXiCcEid0wgHoQgc4
	IWbiGRSaKph7bBaYfOi7QBTfyURfmvUiiNQLnWq3rmsLXxPh9bp1RsL/pcE+aaD8dbbGQMTSpJa
	X5xoidWQjhdPiPqHTplmnKW6CuhLlD/Nxzkh4e3Es+yXaVUYyMlRmmTxSgeKp85MAklp1odpMtb
	YyU2L3pySX2a2VzpJUur1eZqEYE5TL3/BW5/L9r2iMCikdD4X16L+Gxu9HXreFLqO5sw09JxYln
	roESi3oUmRoq1qUPgd6/ZPgZP0xS5MzFRAUNWHqz11Q/JRYZ1jRJjPCY=
X-Google-Smtp-Source: AGHT+IGtQbtZIKWaF78VmDZ+vdI7XKAwSNPKSmE7sO1oNtpdiRZFYTkgS4jotFOn1ND7BATYei37hg==
X-Received: by 2002:a05:600c:6092:b0:46e:48fd:a1a9 with SMTP id 5b1f17b1804b1-46e7117258cmr118051405e9.33.1759848031966;
        Tue, 07 Oct 2025 07:40:31 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fa3a234d5sm18420825e9.5.2025.10.07.07.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:40:31 -0700 (PDT)
Message-ID: <ba68afe4fbe5c895de8a2ce506a69e0c0884eb4e.camel@gmail.com>
Subject: Re: [PATCH v3 1/6] iio: adc: ad4080: fix chip identification
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 07 Oct 2025 15:41:02 +0100
In-Reply-To: <20251007111525.25711-2-antoniu.miclaus@analog.com>
References: <20251007111525.25711-1-antoniu.miclaus@analog.com>
	 <20251007111525.25711-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-10-07 at 11:15 +0000, Antoniu Miclaus wrote:
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

Small nitpick below that Jonathan might tweak if he thinks it's worth it.
Anyways,

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> changes in v3:
> =C2=A0- use le16_to_cpu to convert the read little-endian value to CPU en=
dianness
> =C2=A0drivers/iio/adc/ad4080.c | 8 +++++---
> =C2=A01 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/iio/adc/ad4080.c b/drivers/iio/adc/ad4080.c
> index 6e61787ed321..ae5a975a47a5 100644
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
> @@ -445,7 +445,8 @@ static int ad4080_setup(struct iio_dev *indio_dev)
> =C2=A0{
> =C2=A0	struct ad4080_state *st =3D iio_priv(indio_dev);
> =C2=A0	struct device *dev =3D regmap_get_device(st->regmap);
> -	unsigned int id;
> +	__le16 id_le;
> +	u16 id;
> =C2=A0	int ret;
> =C2=A0
> =C2=A0	ret =3D regmap_write(st->regmap, AD4080_REG_INTERFACE_CONFIG_A,
> @@ -458,10 +459,11 @@ static int ad4080_setup(struct iio_dev *indio_dev)
> =C2=A0	if (ret)
> =C2=A0		return ret;
> =C2=A0
> -	ret =3D regmap_read(st->regmap, AD4080_REG_CHIP_TYPE, &id);
> +	ret =3D regmap_bulk_read(st->regmap, AD4080_REG_PRODUCT_ID_L, &id_le,
> 2);

sizeof(id_le)

> =C2=A0	if (ret)
> =C2=A0		return ret;
> =C2=A0
> +	id =3D le16_to_cpu(id_le);
> =C2=A0	if (id !=3D AD4080_CHIP_ID)
> =C2=A0		dev_info(dev, "Unrecognized CHIP_ID 0x%X\n", id);
> =C2=A0

