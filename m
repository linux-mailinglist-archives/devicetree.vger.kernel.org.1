Return-Path: <devicetree+bounces-207240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EFED7B2EF2F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE8CE16B45F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F285257851;
	Thu, 21 Aug 2025 07:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DFvo8JWs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFDD27C154
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760455; cv=none; b=D940zqikMGXatvPmaG/kUSanrLdY8IO9dj/Ylh2hQqccHOUdiboI5PL+aBdEZD9l20JPYreOCQDUsnxH0W1Ee1tFQQjyxuRxEi/dH3kiDrYDinveOJQWpr2KP9DqP/XGE41auG53koXA9bXU0DfQqczLwF74KrdBCYBjumfkQ0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760455; c=relaxed/simple;
	bh=n1Y2BGuH7iKG2GvW4qBG7ldoRWZvuNsMPhdicKLieQk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gMCt2UDTcjVMc319pL4wXVpSnoooVBDxD8PANk0FWYKnIneo+D0fKXo5yJJnsJ7yMv3ccLAhuafJOjXpcDJNYWP9ZkVUNRRUT277qnA4XjNJw7c8xQ1RutXGmrtpKNJ7jklDDeq/4a6WU/E8PUJ0d0cWnTxAAoiXuVw4rzCatuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DFvo8JWs; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb7ae31caso130556666b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755760451; x=1756365251; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d72kV5AqQ71r4FWlV/x/IF1vyWIU5hmO/NIRIMsWbyA=;
        b=DFvo8JWs5k1Lnmda23X0zokXQLSm910kVbvYKMoNsxvpvM/X5qqz2ZjUwqf76cd0po
         nFM57yQQmFNPsw31QTlSkV/qiQMQ9fJ/8skWW9XPfyol977u1ccnesGOgomfXdmkBUSf
         12O+SM4vyKFuOLEg2vfLvA/XLbYqxMIvkQENVrALvKesv8RqwKfjsHDqKwDc9RLGLwN2
         o3Wiq6XyhvLqcTPb1CwnUQZIwzJl9hnNsIDHsb+dPemXBaAZ9Gjs3s6Z6iyyvDqBJtiw
         8OjhsFpqzypmi1bK2DaZljACxaBARY/EJnxCp74/csPhK60djL+ffmE74TqQ/XfFRLNi
         tYcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760451; x=1756365251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d72kV5AqQ71r4FWlV/x/IF1vyWIU5hmO/NIRIMsWbyA=;
        b=NsBRB/6FTTIgCQeq6sg7HAfwcPv+phLytTHzL9kQp5wwN43Ufm3jLzG8SIatku7nHb
         3CCjxT/9d8PHtuJmo3qSehsrjz2ZyEMi/8YDpMH4jZx1UT7hJUUoW8JyDwixmaj1Ip1X
         Ev991CBvf/L/BJviCfzVqAuR546QrjUWu3GXBZNX/v5y//efKxVE1kcOcs1eFPH5bg0H
         UqSeEQgTTbs5+OZnCH5qjr/6Wq5WRZBri+yQUKUtdS7W51BEx20fuf+rl5ZO46AxDxuh
         2xr3unh3//VHN+F1KObpk8fyocJXHNIYsp3F9fviCFLLH8bg+msUlQ2ACMz3ttlgS24v
         QANA==
X-Forwarded-Encrypted: i=1; AJvYcCXFYGbC48EfXKNTBBx4hiYRk8n+W93qOkBQIp47RsL51ZYnE6Egafc5SPKvsGA0GdAgFwb05nPRNqxi@vger.kernel.org
X-Gm-Message-State: AOJu0YwCXhYtOfrUGoJbmE0PWPBHq7VZZ/96lEK0munOzob/p5JQ27qP
	qRyp+PrxuwBFe2jWhYVaJVz4BP58NNAAHfy+Ag1ywEBSrW5CjITETpXsaVkHomst6tPf1524EUE
	SSRZyCsSx38KtDEiFsUlo0p2sDpt5NaiQ6e10Pe8Ejw==
X-Gm-Gg: ASbGnctsC1QJbCLq4Yu46ZQEANzXDcX4PZREbeu6IggcqvnZpFWWZIybj4zn6m9njWK
	bugG9Dws2lgC0bsW773qEMi7bmRK4jxQV+IQo6aVRTU+56IELv7tblqrlSpFMY+j9rdt9f0qh32
	iaWhBpZN9EiZ/LXvS6bVqkVQAptfQ4t5fjChY4QBOrtK/I5ipwXske9xirTUQDXeDu/b0uHR3K7
	RyvlHW9gA==
X-Google-Smtp-Source: AGHT+IF/gzSFnR8QEoExjxqmg99tfrdz12dCDe5b2qQ6U8hREAVE8SbvqbihBKEL2quYQG/vK0hoMW1ZY+G2bfY/7K4=
X-Received: by 2002:a17:907:9484:b0:af9:b4e9:8638 with SMTP id
 a640c23a62f3a-afe0745289amr140607166b.0.1755760450874; Thu, 21 Aug 2025
 00:14:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <89732d64415077ecd9f74c5853c542e62c0dfe26.1754890670.git.zhoubinbin@loongson.cn>
 <CAJhJPsW3KGL=FH5ZVqvRr-RD+ih09mFNuk7wGXepGVSw7bTaiw@mail.gmail.com>
In-Reply-To: <CAJhJPsW3KGL=FH5ZVqvRr-RD+ih09mFNuk7wGXepGVSw7bTaiw@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 21 Aug 2025 15:13:58 +0800
X-Gm-Features: Ac12FXwlluWwN2EL5-pW7xP4YIsIoV3SOA07dCKLtV974jNddA8n9MGvt4ISBvE
Message-ID: <CAMpQs4JyDTm_b0G-msqVO0nkxHHTOGoBDuUjYm+8+hpQKLZLyA@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] mtd: rawnand: loongson: Add Loongson-2K0500 NAND
 controller support
To: Keguang Zhang <keguang.zhang@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Keguang:

Thanks for your reply.

On Thu, Aug 21, 2025 at 2:46=E2=80=AFPM Keguang Zhang <keguang.zhang@gmail.=
com> wrote:
>
> On Mon, Aug 11, 2025 at 2:03=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.=
cn> wrote:
> >
> > The Loongson-2K0500 NAND controller is similar to the Loongson-1C.
> >
> > It supports a maximum capacity of 16GB FLASH per chip with a maximum
> > page size of 8KB, and it supports up to 4 chip selects and 4 RDY
> > signals.
> >
> > Its DMA controller is defaulted to APBDMA0.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  drivers/mtd/nand/raw/Kconfig                  |  2 +-
> >  .../mtd/nand/raw/loongson-nand-controller.c   | 55 ++++++++++++++++++-
> >  2 files changed, 54 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfi=
g
> > index d9e3f13666ac..7b0c5d06aa95 100644
> > --- a/drivers/mtd/nand/raw/Kconfig
> > +++ b/drivers/mtd/nand/raw/Kconfig
> > @@ -464,7 +464,7 @@ config MTD_NAND_NUVOTON_MA35
> >
> >  config MTD_NAND_LOONGSON
> >         tristate "Loongson NAND controller"
> > -       depends on LOONGSON1_APB_DMA || COMPILE_TEST
> > +       depends on LOONGSON1_APB_DMA || LOONGSON2_APB_DMA || COMPILE_TE=
ST
> >         select REGMAP_MMIO
> >         help
> >           Enables support for NAND controller on Loongson family chips.
> > diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/=
mtd/nand/raw/loongson-nand-controller.c
> > index 5a51c7d299cc..7a15df3fcd31 100644
> > --- a/drivers/mtd/nand/raw/loongson-nand-controller.c
> > +++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
> > @@ -3,6 +3,7 @@
> >   * NAND Controller Driver for Loongson family chips
> >   *
> >   * Copyright (C) 2015-2025 Keguang Zhang <keguang.zhang@gmail.com>
> > + * Copyright (C) 2025 Binbin Zhou <zhoubinbin@loongson.cn>
> >   */
> >
> >  #include <linux/kernel.h>
> > @@ -26,6 +27,7 @@
> >  #define LOONGSON_NAND_IDH_STATUS       0x14
> >  #define LOONGSON_NAND_PARAM            0x18
> >  #define LOONGSON_NAND_OP_NUM           0x1c
> > +#define LOONGSON_NAND_CS_RDY_MAP       0x20
> >
> >  /* Bitfields of nand command register */
> >  #define LOONGSON_NAND_CMD_OP_DONE      BIT(10)
> > @@ -40,6 +42,23 @@
> >  #define LOONGSON_NAND_CMD_READ         BIT(1)
> >  #define LOONGSON_NAND_CMD_VALID                BIT(0)
> >
> > +/* Bitfields of nand cs/rdy map register */
> > +#define LOONGSON_NAND_MAP_CS1_SEL      GENMASK(11, 8)
> > +#define LOONGSON_NAND_MAP_RDY1_SEL     GENMASK(15, 12)
> > +#define LOONGSON_NAND_MAP_CS2_SEL      GENMASK(19, 16)
> > +#define LOONGSON_NAND_MAP_RDY2_SEL     GENMASK(23, 20)
> > +#define LOONGSON_NAND_MAP_CS3_SEL      GENMASK(27, 24)
> > +#define LOONGSON_NAND_MAP_RDY3_SEL     GENMASK(31, 28)
> > +
> > +#define LOONGSON_NAND_CS_SEL0  BIT(0)
> > +#define LOONGSON_NAND_CS_SEL1  BIT(1)
> > +#define LOONGSON_NAND_CS_SEL2  BIT(2)
> > +#define LOONGSON_NAND_CS_SEL3  BIT(3)
> > +#define LOONGSON_NAND_CS_RDY0  BIT(0)
> > +#define LOONGSON_NAND_CS_RDY1  BIT(1)
> > +#define LOONGSON_NAND_CS_RDY2  BIT(2)
> > +#define LOONGSON_NAND_CS_RDY3  BIT(3)
> > +
> >  /* Bitfields of nand timing register */
> >  #define LOONGSON_NAND_WAIT_CYCLE_MASK  GENMASK(7, 0)
> >  #define LOONGSON_NAND_HOLD_CYCLE_MASK  GENMASK(15, 8)
> > @@ -53,6 +72,8 @@
> >  #define LOONGSON_NAND_READ_ID_SLEEP_US         1000
> >  #define LOONGSON_NAND_READ_ID_TIMEOUT_US       5000
> >
> > +#define LOONGSON_NAND_64BIT_DMA                BIT(0)
>
> It's strongly suggested to replace this flag with a dma_bits field in
> loongson_nand_host.
> Please see the comments below.
>
> > +
> >  #define BITS_PER_WORD                  (4 * BITS_PER_BYTE)
> >
> >  struct loongson_nand_host;
> > @@ -83,6 +104,7 @@ struct loongson_nand_data {
> >         unsigned int hold_cycle;
> >         unsigned int wait_cycle;
> >         unsigned int nand_cs;
>
> Add unsigned int dma_bits;
>
> > +       unsigned int flags;
> >         void (*set_addr)(struct loongson_nand_host *host, struct loongs=
on_nand_op *op);
> >  };
> >
> > @@ -751,7 +773,7 @@ static int loongson_nand_controller_init(struct loo=
ngson_nand_host *host)
> >         struct device *dev =3D host->dev;
> >         struct dma_chan *chan;
> >         struct dma_slave_config cfg =3D {};
> > -       int ret;
> > +       int ret, val;
> >
> >         host->regmap =3D devm_regmap_init_mmio(dev, host->reg_base, &lo=
ongson_nand_regmap_config);
> >         if (IS_ERR(host->regmap))
> > @@ -761,6 +783,9 @@ static int loongson_nand_controller_init(struct loo=
ngson_nand_host *host)
> >                 regmap_update_bits(host->regmap, LOONGSON_NAND_PARAM, h=
ost->data->id_cycle_field,
> >                                    host->data->max_id_cycle << __ffs(ho=
st->data->id_cycle_field));
> >
> > +       if (host->data->flags & LOONGSON_NAND_64BIT_DMA)
> > +               dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> > +
>
> Sorry, all platforms should call dma_set_mask_and_coherent(),
> including Loongson-1, which I missed earlier.
>        ret =3D dma_set_mask_and_coherent(dev,
> DMA_BIT_MASK(host->data->dma_bits));
>        if (ret)
>                return dev_err_probe(dev, ret, "failed to set DMA mask\n")=
;
>

OK, if it is also required by Loongson-1, I will refactor this part.
In addition, I will address all of the following comments in the V4
patchset, as the V3 patchset[1] has already been submitted.

[1]: https://lore.kernel.org/all/cover.1755757841.git.zhoubinbin@loongson.c=
n/

You are welcome to continue to comment on that patchset as well.
> >         chan =3D dma_request_chan(dev, "rxtx");
> >         if (IS_ERR(chan))
> >                 return dev_err_probe(dev, PTR_ERR(chan), "failed to req=
uest DMA channel\n");
> > @@ -776,7 +801,14 @@ static int loongson_nand_controller_init(struct lo=
ongson_nand_host *host)
> >
> >         init_completion(&host->dma_complete);
> >
> > -       return 0;
> > +       val =3D FIELD_PREP(LOONGSON_NAND_MAP_CS1_SEL, LOONGSON_NAND_CS_=
SEL1)
> > +           | FIELD_PREP(LOONGSON_NAND_MAP_RDY1_SEL, LOONGSON_NAND_CS_R=
DY1)
> > +           | FIELD_PREP(LOONGSON_NAND_MAP_CS2_SEL, LOONGSON_NAND_CS_SE=
L2)
> > +           | FIELD_PREP(LOONGSON_NAND_MAP_RDY2_SEL, LOONGSON_NAND_CS_R=
DY2)
> > +           | FIELD_PREP(LOONGSON_NAND_MAP_CS3_SEL, LOONGSON_NAND_CS_SE=
L3)
> > +           | FIELD_PREP(LOONGSON_NAND_MAP_RDY3_SEL, LOONGSON_NAND_CS_R=
DY3);
> > +
> > +       return regmap_write(host->regmap, LOONGSON_NAND_CS_RDY_MAP, val=
);
>
> Chip selects should be set before requesting the DMA channel.
>
> >  }
> >
> >  static int loongson_nand_chip_init(struct loongson_nand_host *host)
> > @@ -890,6 +922,7 @@ static const struct loongson_nand_data ls1b_nand_da=
ta =3D {
> >         .hold_cycle =3D 0x2,
> >         .wait_cycle =3D 0xc,
> >         .nand_cs =3D 0x0,
>
> Add .dma_bits =3D 32,
>
> > +       .flags =3D 0,
>
> The assignment `.flags =3D 0x0` is redundant and can be removed.
>
> >         .set_addr =3D ls1b_nand_set_addr,
> >  };
> >
> > @@ -901,6 +934,19 @@ static const struct loongson_nand_data ls1c_nand_d=
ata =3D {
> >         .hold_cycle =3D 0x2,
> >         .wait_cycle =3D 0xc,
> >         .nand_cs =3D 0x0,
>
> Add .dma_bits =3D 32,
>
> > +       .flags =3D 0,
>
> Ditto.
>
> > +       .set_addr =3D ls1c_nand_set_addr,
> > +};
> > +
> > +static const struct loongson_nand_data ls2k0500_nand_data =3D {
> > +       .max_id_cycle =3D 6,
> > +       .id_cycle_field =3D GENMASK(14, 12),
> > +       .status_field =3D GENMASK(23, 16),
> > +       .op_scope_field =3D GENMASK(29, 16),
> > +       .hold_cycle =3D 0x4,
> > +       .wait_cycle =3D 0x12,
> > +       .nand_cs =3D 0x0,
> > +       .flags =3D LOONGSON_NAND_64BIT_DMA,
>
> Replace LOONGSON_NAND_64BIT_DMA with .dma_bits =3D 64,
>
> >         .set_addr =3D ls1c_nand_set_addr,
> >  };
> >
> > @@ -913,6 +959,10 @@ static const struct of_device_id loongson_nand_mat=
ch[] =3D {
> >                 .compatible =3D "loongson,ls1c-nand-controller",
> >                 .data =3D &ls1c_nand_data,
> >         },
> > +       {
> > +               .compatible =3D "loongson,ls2k0500-nand-controller",
> > +               .data =3D &ls2k0500_nand_data,
> > +       },
> >         { /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, loongson_nand_match);
> > @@ -929,5 +979,6 @@ static struct platform_driver loongson_nand_driver =
=3D {
> >  module_platform_driver(loongson_nand_driver);
> >
> >  MODULE_AUTHOR("Keguang Zhang <keguang.zhang@gmail.com>");
> > +MODULE_AUTHOR("Binbin Zhou <zhoubinbin@loongson.cn>");
> >  MODULE_DESCRIPTION("Loongson NAND Controller Driver");
> >  MODULE_LICENSE("GPL");
> > --
> > 2.47.3
> >
>
>
> --
> Best regards,
>
> Keguang Zhang

--=20
Thanks.
Binbin

