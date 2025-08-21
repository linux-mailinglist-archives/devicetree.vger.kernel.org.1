Return-Path: <devicetree+bounces-207228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52936B2EE8A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CAACA076E5
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAD227B339;
	Thu, 21 Aug 2025 06:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FgXXdnbI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB3827A12C
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755758790; cv=none; b=VNuDhb9EhZaQqsc8vBX/ErM2qIwBDFv9DXIJ48W8qRNZK6dTZaZkb7uMd050FZjEeelmbclj4CY0QgbLWkAAgrJBRmMxCWhCU0bKonsKfhmTm0jbCXwN28blmra/eqYvsVIHnbW0oWbthv8cNe/v8cdOFSBrMOf78TUVLpBn9XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755758790; c=relaxed/simple;
	bh=esEYAxrAJ5xtsje+9V5Y+/0tDjttOECQ/FdjnNxmY0k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KDZZJDtE8HHZkfUrPC94vhfHVr8+yCrzvKk+txvODoEgsg/Q45LfNrbbRHeC7AobYOtshYHM0j05i/4ywsEd2JyVYvy2KClv+wyVnYbM+BpxicynUwy8ZqandGIG+m/lzc+UamD4uPVJHVlxZlriyjn0jCQOr/RQvOCF104/gnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FgXXdnbI; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55ce522c7a3so649512e87.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 23:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755758787; x=1756363587; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qRyT61e1WUYEl9NHF1Uk/Zuo/sT4PFrgnPFcHdrhsgU=;
        b=FgXXdnbI23lxeAIbuKHYnWtxNRRdiyf8jOe1V9Fm/EC1LiM9D1wfN9A+Caoi1oyX2Z
         iPxVp+kLKIRY3XGk2/N9v6XXoFJw0OKGlKabFHaOeXm6xosQn64PwUm8rorT8pMfw3Ml
         YuOKJFm8P26YI5783lTWFaU/4dadYyVaak8nkP20bcVgk8LJjWByDT4zQ67Ny6ZlO4QJ
         vpejBVy0aO6bsj6QYuasBT4Q7k99iTZuDUZtVWBnDJtxiMKde9DvYmDyxUO+p7JYh/9V
         zFBw0g0Rbj0nkPEmJiVxWJuK5OgU3NssqR7MtK+32SuexwBK3FalV+J2SkM5TQ5RaHSy
         /bNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755758787; x=1756363587;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qRyT61e1WUYEl9NHF1Uk/Zuo/sT4PFrgnPFcHdrhsgU=;
        b=NWrUPUn12/Y3CAl+e5G1pWZWgnJd5COIYqfdJqgByZkdgTuCK3OQXSh15xPMo6E4ql
         hu7tIcCFoGyORrwTCMzr6VFJh1Q2Jpq2LC3HdXBPAh6Bo29bmd4LO4oF6wdUvT3gXBYk
         iCsIWsLZvG2S9uF0J0TtA9bVySE+F4sIizmz0s4PpBsYPhVgWu5AM0L0a/AvlAlRfhxh
         twUCDndPTLSkcczIoW/frTA5E1Muzep4NSSP5VSyg1iDY7jMdIFFaEN2Xo/tc9Ha5AQt
         8/DUgbKktZBWP+rf6ZnbLVqcjvlyVuAw+ZLQMwpzKXRcNRylsSGLCfFOn467zBjkNgUj
         OCUw==
X-Forwarded-Encrypted: i=1; AJvYcCWmmf6wL76oWB80H4T2ZA5cnHLijxYaycTWdTI6DGUlZYaxLave9VfloFx4+CekaB0KFd05wqm2kK81@vger.kernel.org
X-Gm-Message-State: AOJu0YxW+HtoOhyZm4NA2TS5luBEEovx3VeBnAzRbXx/3XZaPcnBYIwa
	FL+WEyexCxdN/oAU4R26gSfd5ClL08fP2+S+t3Om1+j1uqOxBJW8Kek7YemO3UUGtfgbNFwVMTj
	kzMs1WU7j5sINq8YPoSUWljXrxBnceaI=
X-Gm-Gg: ASbGncsE/KnUas8ZZ1svYM6z2uU09y7fC1L8rqe1m4XIsnkhFP/vZWbUfbo9DOR6Edh
	BzPSXFWVNEwFW61Oa9aAg1/uPXCJVvX78yruSQ55x22bLu37l8aYZviJeYkfLwyzEcBTA2zfIcX
	mvKmvoCctzfn4rWPqX5AvaSeGUMA5u9Ve7F+QTbElfrrIuII+S7xlUhAFVuHWyZwSomwjzz2rc+
	QnAqz+PaPnYCoGkK/I=
X-Google-Smtp-Source: AGHT+IHirWqapTfh+EM+TJH6W5s+p3sDKFtH9F9Vb3GELh9r3v7phKfRDXcpvrffcDzKu1JlRcdEzPYRi72teRHlz6M=
X-Received: by 2002:ac2:4bd1:0:b0:55b:8e2e:8cc7 with SMTP id
 2adb3069b0e04-55e0d550330mr417317e87.42.1755758786572; Wed, 20 Aug 2025
 23:46:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <89732d64415077ecd9f74c5853c542e62c0dfe26.1754890670.git.zhoubinbin@loongson.cn>
In-Reply-To: <89732d64415077ecd9f74c5853c542e62c0dfe26.1754890670.git.zhoubinbin@loongson.cn>
From: Keguang Zhang <keguang.zhang@gmail.com>
Date: Thu, 21 Aug 2025 14:45:49 +0800
X-Gm-Features: Ac12FXyLsYW7dgKCwRMYRQteslNoHXA0nlBHr7BLldraWtOmRhrZhYSAi96QR1g
Message-ID: <CAJhJPsW3KGL=FH5ZVqvRr-RD+ih09mFNuk7wGXepGVSw7bTaiw@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] mtd: rawnand: loongson: Add Loongson-2K0500 NAND
 controller support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 11, 2025 at 2:03=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> The Loongson-2K0500 NAND controller is similar to the Loongson-1C.
>
> It supports a maximum capacity of 16GB FLASH per chip with a maximum
> page size of 8KB, and it supports up to 4 chip selects and 4 RDY
> signals.
>
> Its DMA controller is defaulted to APBDMA0.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  drivers/mtd/nand/raw/Kconfig                  |  2 +-
>  .../mtd/nand/raw/loongson-nand-controller.c   | 55 ++++++++++++++++++-
>  2 files changed, 54 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
> index d9e3f13666ac..7b0c5d06aa95 100644
> --- a/drivers/mtd/nand/raw/Kconfig
> +++ b/drivers/mtd/nand/raw/Kconfig
> @@ -464,7 +464,7 @@ config MTD_NAND_NUVOTON_MA35
>
>  config MTD_NAND_LOONGSON
>         tristate "Loongson NAND controller"
> -       depends on LOONGSON1_APB_DMA || COMPILE_TEST
> +       depends on LOONGSON1_APB_DMA || LOONGSON2_APB_DMA || COMPILE_TEST
>         select REGMAP_MMIO
>         help
>           Enables support for NAND controller on Loongson family chips.
> diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/mt=
d/nand/raw/loongson-nand-controller.c
> index 5a51c7d299cc..7a15df3fcd31 100644
> --- a/drivers/mtd/nand/raw/loongson-nand-controller.c
> +++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
> @@ -3,6 +3,7 @@
>   * NAND Controller Driver for Loongson family chips
>   *
>   * Copyright (C) 2015-2025 Keguang Zhang <keguang.zhang@gmail.com>
> + * Copyright (C) 2025 Binbin Zhou <zhoubinbin@loongson.cn>
>   */
>
>  #include <linux/kernel.h>
> @@ -26,6 +27,7 @@
>  #define LOONGSON_NAND_IDH_STATUS       0x14
>  #define LOONGSON_NAND_PARAM            0x18
>  #define LOONGSON_NAND_OP_NUM           0x1c
> +#define LOONGSON_NAND_CS_RDY_MAP       0x20
>
>  /* Bitfields of nand command register */
>  #define LOONGSON_NAND_CMD_OP_DONE      BIT(10)
> @@ -40,6 +42,23 @@
>  #define LOONGSON_NAND_CMD_READ         BIT(1)
>  #define LOONGSON_NAND_CMD_VALID                BIT(0)
>
> +/* Bitfields of nand cs/rdy map register */
> +#define LOONGSON_NAND_MAP_CS1_SEL      GENMASK(11, 8)
> +#define LOONGSON_NAND_MAP_RDY1_SEL     GENMASK(15, 12)
> +#define LOONGSON_NAND_MAP_CS2_SEL      GENMASK(19, 16)
> +#define LOONGSON_NAND_MAP_RDY2_SEL     GENMASK(23, 20)
> +#define LOONGSON_NAND_MAP_CS3_SEL      GENMASK(27, 24)
> +#define LOONGSON_NAND_MAP_RDY3_SEL     GENMASK(31, 28)
> +
> +#define LOONGSON_NAND_CS_SEL0  BIT(0)
> +#define LOONGSON_NAND_CS_SEL1  BIT(1)
> +#define LOONGSON_NAND_CS_SEL2  BIT(2)
> +#define LOONGSON_NAND_CS_SEL3  BIT(3)
> +#define LOONGSON_NAND_CS_RDY0  BIT(0)
> +#define LOONGSON_NAND_CS_RDY1  BIT(1)
> +#define LOONGSON_NAND_CS_RDY2  BIT(2)
> +#define LOONGSON_NAND_CS_RDY3  BIT(3)
> +
>  /* Bitfields of nand timing register */
>  #define LOONGSON_NAND_WAIT_CYCLE_MASK  GENMASK(7, 0)
>  #define LOONGSON_NAND_HOLD_CYCLE_MASK  GENMASK(15, 8)
> @@ -53,6 +72,8 @@
>  #define LOONGSON_NAND_READ_ID_SLEEP_US         1000
>  #define LOONGSON_NAND_READ_ID_TIMEOUT_US       5000
>
> +#define LOONGSON_NAND_64BIT_DMA                BIT(0)

It's strongly suggested to replace this flag with a dma_bits field in
loongson_nand_host.
Please see the comments below.

> +
>  #define BITS_PER_WORD                  (4 * BITS_PER_BYTE)
>
>  struct loongson_nand_host;
> @@ -83,6 +104,7 @@ struct loongson_nand_data {
>         unsigned int hold_cycle;
>         unsigned int wait_cycle;
>         unsigned int nand_cs;

Add unsigned int dma_bits;

> +       unsigned int flags;
>         void (*set_addr)(struct loongson_nand_host *host, struct loongson=
_nand_op *op);
>  };
>
> @@ -751,7 +773,7 @@ static int loongson_nand_controller_init(struct loong=
son_nand_host *host)
>         struct device *dev =3D host->dev;
>         struct dma_chan *chan;
>         struct dma_slave_config cfg =3D {};
> -       int ret;
> +       int ret, val;
>
>         host->regmap =3D devm_regmap_init_mmio(dev, host->reg_base, &loon=
gson_nand_regmap_config);
>         if (IS_ERR(host->regmap))
> @@ -761,6 +783,9 @@ static int loongson_nand_controller_init(struct loong=
son_nand_host *host)
>                 regmap_update_bits(host->regmap, LOONGSON_NAND_PARAM, hos=
t->data->id_cycle_field,
>                                    host->data->max_id_cycle << __ffs(host=
->data->id_cycle_field));
>
> +       if (host->data->flags & LOONGSON_NAND_64BIT_DMA)
> +               dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> +

Sorry, all platforms should call dma_set_mask_and_coherent(),
including Loongson-1, which I missed earlier.
       ret =3D dma_set_mask_and_coherent(dev,
DMA_BIT_MASK(host->data->dma_bits));
       if (ret)
               return dev_err_probe(dev, ret, "failed to set DMA mask\n");

>         chan =3D dma_request_chan(dev, "rxtx");
>         if (IS_ERR(chan))
>                 return dev_err_probe(dev, PTR_ERR(chan), "failed to reque=
st DMA channel\n");
> @@ -776,7 +801,14 @@ static int loongson_nand_controller_init(struct loon=
gson_nand_host *host)
>
>         init_completion(&host->dma_complete);
>
> -       return 0;
> +       val =3D FIELD_PREP(LOONGSON_NAND_MAP_CS1_SEL, LOONGSON_NAND_CS_SE=
L1)
> +           | FIELD_PREP(LOONGSON_NAND_MAP_RDY1_SEL, LOONGSON_NAND_CS_RDY=
1)
> +           | FIELD_PREP(LOONGSON_NAND_MAP_CS2_SEL, LOONGSON_NAND_CS_SEL2=
)
> +           | FIELD_PREP(LOONGSON_NAND_MAP_RDY2_SEL, LOONGSON_NAND_CS_RDY=
2)
> +           | FIELD_PREP(LOONGSON_NAND_MAP_CS3_SEL, LOONGSON_NAND_CS_SEL3=
)
> +           | FIELD_PREP(LOONGSON_NAND_MAP_RDY3_SEL, LOONGSON_NAND_CS_RDY=
3);
> +
> +       return regmap_write(host->regmap, LOONGSON_NAND_CS_RDY_MAP, val);

Chip selects should be set before requesting the DMA channel.

>  }
>
>  static int loongson_nand_chip_init(struct loongson_nand_host *host)
> @@ -890,6 +922,7 @@ static const struct loongson_nand_data ls1b_nand_data=
 =3D {
>         .hold_cycle =3D 0x2,
>         .wait_cycle =3D 0xc,
>         .nand_cs =3D 0x0,

Add .dma_bits =3D 32,

> +       .flags =3D 0,

The assignment `.flags =3D 0x0` is redundant and can be removed.

>         .set_addr =3D ls1b_nand_set_addr,
>  };
>
> @@ -901,6 +934,19 @@ static const struct loongson_nand_data ls1c_nand_dat=
a =3D {
>         .hold_cycle =3D 0x2,
>         .wait_cycle =3D 0xc,
>         .nand_cs =3D 0x0,

Add .dma_bits =3D 32,

> +       .flags =3D 0,

Ditto.

> +       .set_addr =3D ls1c_nand_set_addr,
> +};
> +
> +static const struct loongson_nand_data ls2k0500_nand_data =3D {
> +       .max_id_cycle =3D 6,
> +       .id_cycle_field =3D GENMASK(14, 12),
> +       .status_field =3D GENMASK(23, 16),
> +       .op_scope_field =3D GENMASK(29, 16),
> +       .hold_cycle =3D 0x4,
> +       .wait_cycle =3D 0x12,
> +       .nand_cs =3D 0x0,
> +       .flags =3D LOONGSON_NAND_64BIT_DMA,

Replace LOONGSON_NAND_64BIT_DMA with .dma_bits =3D 64,

>         .set_addr =3D ls1c_nand_set_addr,
>  };
>
> @@ -913,6 +959,10 @@ static const struct of_device_id loongson_nand_match=
[] =3D {
>                 .compatible =3D "loongson,ls1c-nand-controller",
>                 .data =3D &ls1c_nand_data,
>         },
> +       {
> +               .compatible =3D "loongson,ls2k0500-nand-controller",
> +               .data =3D &ls2k0500_nand_data,
> +       },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, loongson_nand_match);
> @@ -929,5 +979,6 @@ static struct platform_driver loongson_nand_driver =
=3D {
>  module_platform_driver(loongson_nand_driver);
>
>  MODULE_AUTHOR("Keguang Zhang <keguang.zhang@gmail.com>");
> +MODULE_AUTHOR("Binbin Zhou <zhoubinbin@loongson.cn>");
>  MODULE_DESCRIPTION("Loongson NAND Controller Driver");
>  MODULE_LICENSE("GPL");
> --
> 2.47.3
>


--
Best regards,

Keguang Zhang

