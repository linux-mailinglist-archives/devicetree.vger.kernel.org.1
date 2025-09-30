Return-Path: <devicetree+bounces-222790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC74BACDE1
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:37:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDC223A70C4
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180132D7805;
	Tue, 30 Sep 2025 12:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LIuJDBGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60640262FF3
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759235845; cv=none; b=U6EAodAOvY+inwocqrS62eAgs+JCYNRQfQSJ5ORZBjH8sgsT8quIu36rPPSO8kiuW5a2v9TEUH/xRMvQWdSVpelTTBFsdC2dDKbgtJ7jx0+G+z/s4lL1EUVxMAj9ZATaOyFUIohnc/F7087LwdZllhbpVBqilq0nlitXU8ldIS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759235845; c=relaxed/simple;
	bh=hU/KzLVkEmlUuRTcag5YTyK28/UdejOheaoxAd30pqg=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TUNs0pU1pEtnuQO6JzSulI7zxFNqmi/OZMHxH7zM/M+Gc0HlBoTwJHeOwzBK9d8Tddn8yseSZ7br/RLA7jNJLdRutVoO3zAeFDWuZz5nMl9Q1BVNmCaEt4W04qJvtRF+jn0XCOmq/CAP6PopWv0VtS+La5zwThh4MODg3moOnRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LIuJDBGy; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8582a34639aso391201585a.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759235842; x=1759840642; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sqpa9GlvBUx0ux5OfJqrlwK23CiJE3UVGxxZzcBLZIk=;
        b=LIuJDBGyysP96YjMyImAD40n0QC6nnNPTwueJjydjP3hSraXg7U7kZg40OBicjitCa
         w2fOKKh90VpgTZhIrYAqwfb15F+2owhfi8nHKP6K+dTcV7VTtbTIheP8YDqsw8SIAQLT
         UZYEER+e7GcKFqUEcDHYU91167pXRcu5nBlkqTFbZlhvBOLiWeUMxTfWcL/lIQgw14xu
         3zO40majQ7yMO4jCoLZLp4scsSSTybX6sKu39Sm6LpJmtWlS9t8/I4gHHkBba7CwjJyr
         kTk1R/8RhyiYNlZUaWb+mkXajWHS2U1JsJAHpvpj45ll7U4VOILdxZ4pJ/rP3iVhvY4I
         HY6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759235842; x=1759840642;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sqpa9GlvBUx0ux5OfJqrlwK23CiJE3UVGxxZzcBLZIk=;
        b=jCcaAdjR0J8uuXi8O2o9hzL/pDqIEzOxjYwNnUn65dSuTVBQJ+nMpHcPYfQT09DK0Q
         KAYYfQnZ5SPJV2qztIwL8wXGPFzqYxVsgF4xrMKys4Isu0IY4tenQpkJEdMLBlSPTpJt
         /4uk2I8Cj2OkNjgnEallxuJcz2s0Dgr4PsvWUaAdGovwMN/X8vaOuVR7VfL+6/jYVqOm
         3JOeOyILkmhZmOS58S6BbjN2JHw0kGBBTFah9z4bp0rNHC1u2aTnZd/UJqlIRd6mJhlk
         RlCEZmh+oKDKheTbNlkYOV0CPH2EX7iTVm+y8Ww6ATDvYryjHsmQIjluHKIxPqCIZRmU
         pk1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUf4njkE98L4YSkbZ6gFPMQdIe6JyfcCT+4oIlK+Ox68A8WUUuRXeTVS2v86CBCdgI6zAJ6jnBoyVpU@vger.kernel.org
X-Gm-Message-State: AOJu0YyleiQHop0ZRtTKd/32xWfJDcDJy4jsol7wDsGgWQ6p8gRgPknA
	eQYhsihMF5Bdgj2MzaA13foM3TtBJIWDvGRtefekyGh0TKoN/y24SIotrMbVY42X
X-Gm-Gg: ASbGncv2eiAV83QLSwER+yPtjX0wiPq0iFHU7yMIqS/5t4KiKCpsNGM4ORfamBrwNWP
	ERqQajYm0VMHdeVYd6JZO9IpAD5d5CIoxy3PXHBEnNhlekgHqxn0kRrvsqrCaKeK1iyWZyA9LmX
	ufCTVKlxNnp8E8tGzqdStYQglDYSF5Bypn+xvetuikEQUpC9iW3KT8gFlax56U+0rQfLbz6kBex
	YJOZy3qS+7bdVMXp89eEBTmfV12NTs+LzK84mximxj1JWCAUt16zliqKBsg3rs47smrhIDLEZ/j
	okCyMrnK7DRPR0evDW+jPkyauLCGIdtTDenXLOCvPVp1pOujBULBhjaCkLWOjD3latcUZk8PSxI
	Y4qIrWRohrb04PkxJDs4uxKLccFUA6etTDidnCMar8/LGbg7hmrZ0AIF7znUxrxtwcQ==
X-Google-Smtp-Source: AGHT+IFf8Ujmddz9wnW3knoT77L/BwOAbC4cJJ4thEw7Ws2bZ/MuIegRBffbh8umm4/lPsVvwVM8Dw==
X-Received: by 2002:a05:6214:2aaa:b0:784:4f84:22f8 with SMTP id 6a1803df08f44-7fc2d330151mr308896346d6.21.1759235842055;
        Tue, 30 Sep 2025 05:37:22 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-80136c84338sm93345146d6.10.2025.09.30.05.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 05:37:21 -0700 (PDT)
Message-ID: <22eb04cd1337f155c8c373db81d4e1a03380f395.camel@gmail.com>
Subject: Re: [PATCH v2 4/6] iio: adc: ad4080: add support for AD4084
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 30 Sep 2025 13:37:48 +0100
In-Reply-To: <20250930103229.28696-4-antoniu.miclaus@analog.com>
References: <20250930103229.28696-1-antoniu.miclaus@analog.com>
	 <20250930103229.28696-4-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-09-30 at 10:32 +0000, Antoniu Miclaus wrote:
> Add support for AD4084 16-bit SAR ADC. The AD4084 differs from
> AD4080 in resolution (16-bit vs 20-bit) and LVDS CNV clock count
> maximum (2 vs 7).
>=20
> Changes:
> - Add AD4084_CHIP_ID definition (0x0054)
> - Create ad4084_channel with 16-bit resolution and storage
> - Add ad4084_chip_info with appropriate configuration
> - Register AD4084 in device ID and OF match tables
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> no changes in v2.
> =C2=A0drivers/iio/adc/ad4080.c | 15 +++++++++++++++
> =C2=A01 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/iio/adc/ad4080.c b/drivers/iio/adc/ad4080.c
> index fa15b8f63b8a..a68d7fa9f977 100644
> --- a/drivers/iio/adc/ad4080.c
> +++ b/drivers/iio/adc/ad4080.c
> @@ -126,6 +126,7 @@
> =C2=A0/* Miscellaneous Definitions */
> =C2=A0#define
> AD4080_SPI_READ						BIT(7)
> =C2=A0#define AD4080_CHIP_ID						0x0050
> +#define AD4084_CHIP_ID						0x0054
> =C2=A0
> =C2=A0#define AD4080_LVDS_CNV_CLK_CNT_MAX				7
> =C2=A0
> @@ -435,6 +436,8 @@ static struct iio_chan_spec_ext_info ad4080_ext_info[=
] =3D {
> =C2=A0
> =C2=A0static const struct iio_chan_spec ad4080_channel =3D AD4080_CHANNEL=
_DEFINE(20,
> 32);
> =C2=A0
> +static const struct iio_chan_spec ad4084_channel =3D AD4080_CHANNEL_DEFI=
NE(16,
> 16);
> +
> =C2=A0static const struct ad4080_chip_info ad4080_chip_info =3D {
> =C2=A0	.name =3D "ad4080",
> =C2=A0	.product_id =3D AD4080_CHIP_ID,
> @@ -445,6 +448,16 @@ static const struct ad4080_chip_info ad4080_chip_inf=
o =3D {
> =C2=A0	.lvds_cnv_clk_cnt_max =3D AD4080_LVDS_CNV_CLK_CNT_MAX,
> =C2=A0};
> =C2=A0
> +static const struct ad4080_chip_info ad4084_chip_info =3D {
> +	.name =3D "ad4084",
> +	.product_id =3D AD4084_CHIP_ID,
> +	.scale_table =3D ad4080_scale_table,
> +	.num_scales =3D ARRAY_SIZE(ad4080_scale_table),
> +	.num_channels =3D 1,
> +	.channels =3D &ad4084_channel,
> +	.lvds_cnv_clk_cnt_max =3D 2,
> +};
> +
> =C2=A0static int ad4080_setup(struct iio_dev *indio_dev)
> =C2=A0{
> =C2=A0	struct ad4080_state *st =3D iio_priv(indio_dev);
> @@ -598,12 +611,14 @@ static int ad4080_probe(struct spi_device *spi)
> =C2=A0
> =C2=A0static const struct spi_device_id ad4080_id[] =3D {
> =C2=A0	{ "ad4080", (kernel_ulong_t)&ad4080_chip_info },
> +	{ "ad4084", (kernel_ulong_t)&ad4084_chip_info },
> =C2=A0	{ }
> =C2=A0};
> =C2=A0MODULE_DEVICE_TABLE(spi, ad4080_id);
> =C2=A0
> =C2=A0static const struct of_device_id ad4080_of_match[] =3D {
> =C2=A0	{ .compatible =3D "adi,ad4080", &ad4080_chip_info },
> +	{ .compatible =3D "adi,ad4084", &ad4084_chip_info },
> =C2=A0	{ }
> =C2=A0};
> =C2=A0MODULE_DEVICE_TABLE(of, ad4080_of_match);

