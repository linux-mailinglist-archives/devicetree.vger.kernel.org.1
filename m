Return-Path: <devicetree+bounces-105525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B76986F9B
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 11:08:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 226EB1F207C6
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 09:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4EA01A76D9;
	Thu, 26 Sep 2024 09:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bYJTUxda"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2EC14E2ED
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 09:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727341707; cv=none; b=iVlSufREqVnc/B1TKZ7+Z2OzuuOXI84lyOKxlBEk+85sunypGFXkkTMEBhUBFvxDT0cv+FYMoAWHsSq6biEMNi9t4HMIThMvjV0s349dnrkmolUzgkFQNA9K9uW4qh6KRRDg6Oui1EPgVhLYkSLNr29UCwBm7cC9WnGSzmcKhGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727341707; c=relaxed/simple;
	bh=UDD7c+60d/x4LSF/bI49Q3vwjLdswX4izkx5F3al+Kw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YfjDISDfkv5Br0ld/mjlnk7KoyI+IreoM+HxGBsho9WsghR6ppQblNcj14snPdUuMjtJM8m0dTdgi7FyE0el2wZU7j3KyuTDCa4OnPE3dlZylXl21J7fchw6rSG+2uW0vI1ZdSCOlUpxJSNcnWXqSWTIgCaSnUojaEZL6qdVPN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bYJTUxda; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f78b28ddb6so7755961fa.0
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 02:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727341703; x=1727946503; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdCiSwoz4k7IHuXkIY2rm57+Gv2jN/M//vYnELmrN7Q=;
        b=bYJTUxdajm0eXd0fsg5IG8AeGKe2JHPdPKt0inlqYyBwHU5BpjoIs4bexUBTOxyPEq
         L+PMbW2pK5Qz1tz2WIFBxP33cDwA2suHn0o2UJK/YukttogNUicN17xdiUsYygdPy4Ax
         Q85SYrbQLbcW2Xcnw6X+CEgCfRK6n8vlSz3j4QdrZXGsUT/SD2XVqwscOuqHODH98706
         OFy0KLFkBQlPHRp9iMzX+Xb7EfnbAY2zvLV7AzoFipKcSgVrU95WLRODE3vHvcgJYmuN
         lsJSQ5mz6h0mQOQ2QxZ3NKEHP9KIwuDs5OSfOconppiXyBJDd+LOOgnksnFecKhUHK1x
         B3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727341703; x=1727946503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mdCiSwoz4k7IHuXkIY2rm57+Gv2jN/M//vYnELmrN7Q=;
        b=RSgFiAJHP16k1wI+xom9qB3C5J6zBDk5uB3ARKwhSOd8EYMNN0NPduBq406HecNPiH
         VCe1bFg3dfMi0IPkkaEwxe7UeAJnzr6L3m3/Vn3/o4yQbTUJ+aQKA6qmGDsVvF3urMDb
         gAHOoZOMpNP2zYnA59lrbhNcOr/5pqTv0udJAeBOOSCHFC9n26uwDm2HwRcGqJuTDPA0
         mA2qmkSDJMHNolqM/kYX+jn1mkjQL33MSVDLEMy9X6MbwON12jFZRHlfVP7m5LOKfdGx
         ahYVDIXfCGjMvv1zJHuLjEUlFO7JFv25Vo5wq36BmGelokHTCeZuwevjpYJQ0cMifV03
         CCSA==
X-Forwarded-Encrypted: i=1; AJvYcCU38ef0FufGqMWJNK1V1gl5vlAcQDqH7ELpMLisVEyf3H8FZ5IMV7BmC9Z48EOzUIXm7Ew/u806HKcS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtz0BAmwdW6iUGwZRAU3bt4oU1MNZ8MkKzLUGoB9anwJfozDb7
	NM0FmzegDTusWQPdA5bOZ6aJsqLiO8YaHTsejSiLNgb8z0p9TEJC94HC8WvJjZLIpPCRJSNirUc
	ml5rFc8I35qO3CALCkmS2xH6V/6IWO+LDVj8Grw==
X-Google-Smtp-Source: AGHT+IG0dRe8YYhT24xSBIDSKQXywhfKYuXcilT0ZNNeF6MY7TQQMhP+YyE15XOg3UGIwcbAnhpfEKYe0BvG7AjGzP8=
X-Received: by 2002:a05:651c:1549:b0:2f9:cc40:6afe with SMTP id
 38308e7fff4ca-2f9cc406bf0mr3398971fa.14.1727341703093; Thu, 26 Sep 2024
 02:08:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240923101206.3753-1-antoniu.miclaus@analog.com> <20240923101206.3753-5-antoniu.miclaus@analog.com>
In-Reply-To: <20240923101206.3753-5-antoniu.miclaus@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 26 Sep 2024 11:08:12 +0200
Message-ID: <CAMknhBFu+bD7BDsqtCqt9NoT=z5o9v5+3Zh9RHW=ui=3kFPR0g@mail.gmail.com>
Subject: Re: [PATCH 4/7] iio: adc: adi-axi-adc: set data format
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
	Olivier Moysan <olivier.moysan@foss.st.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Andy Shevchenko <andy@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>, 
	Dumitru Ceclan <mitrutzceclan@gmail.com>, 
	=?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Alisa-Dariana Roman <alisadariana@gmail.com>, Marius Cristea <marius.cristea@microchip.com>, 
	Mike Looijmans <mike.looijmans@topic.nl>, Sergiu Cuciurean <sergiu.cuciurean@analog.com>, 
	Dragos Bogdan <dragos.bogdan@analog.com>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 23, 2024 at 12:16=E2=80=AFPM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:
>
> Add support for selecting the data format within the AXI ADC ip.
>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  drivers/iio/adc/adi-axi-adc.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.=
c
> index ff48f26e02a3..926a8902c621 100644
> --- a/drivers/iio/adc/adi-axi-adc.c
> +++ b/drivers/iio/adc/adi-axi-adc.c
> @@ -45,6 +45,8 @@
>  #define ADI_AXI_ADC_REG_CTRL                   0x0044
>  #define    ADI_AXI_ADC_CTRL_DDR_EDGESEL_MASK   BIT(1)
>
> +#define ADI_AXI_ADC_REG_CNTRL_3                        0x004c
> +
>  #define ADI_AXI_ADC_REG_DRP_STATUS             0x0074
>  #define   ADI_AXI_ADC_DRP_LOCKED               BIT(17)
>
> @@ -271,6 +273,24 @@ static int axi_adc_interface_type_get(struct iio_bac=
kend *back,
>         return 0;
>  }
>
> +static int axi_adc_data_size_set(struct iio_backend *back,
> +                                ssize_t size)
> +{
> +       struct adi_axi_adc_state *st =3D iio_backend_get_priv(back);
> +       unsigned int val;
> +
> +       if (size <=3D 20)
> +               val =3D 0;
> +       else if (size <=3D 24)
> +               val =3D 1;
> +       else if (size <=3D 32)
> +               val =3D 3;
> +       else
> +               return -EINVAL;
> +
> +       return regmap_write(st->regmap, ADI_AXI_ADC_REG_CNTRL_3, val);

http://analogdevicesinc.github.io/hdl/library/axi_ad485x/index.html
says that bit 8 of this register is CRC_EN and bits 7 to 0 are
CUSTOM_CONTROL so we likely need a mask and regmap_write_bits() here.

Also, since the value being written here is CUSTOM_CONTROL, it makes
me wonder if this callback really belongs to adi_axi_adc_generic or if
we need a copy of that specific to the axi_ad485x project to handle
the custom meaning of this value for this family of chips. The
description of CUSTOM_CONTROL in the link is "Select output format
decode mode.(for ADAQ8092: bit 0 - enables digital output randomizer
decode , bit 1 - enables alternate bit polarity decode)." which
doesn't look like what is being done in the function above.

> +}
> +
>  static struct iio_buffer *axi_adc_request_buffer(struct iio_backend *bac=
k,
>                                                  struct iio_dev *indio_de=
v)
>  {
> @@ -308,6 +328,7 @@ static const struct iio_backend_ops adi_axi_adc_gener=
ic =3D {
>         .test_pattern_set =3D axi_adc_test_pattern_set,
>         .chan_status =3D axi_adc_chan_status,
>         .interface_type_get =3D axi_adc_interface_type_get,
> +       .data_size_set =3D axi_adc_data_size_set,
>  };
>
>  static int adi_axi_adc_probe(struct platform_device *pdev)
> --
> 2.46.0
>

