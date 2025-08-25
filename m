Return-Path: <devicetree+bounces-208874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B35B337B6
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 09:22:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCCEC2013FF
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 07:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34AC628851F;
	Mon, 25 Aug 2025 07:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b5B+1YtX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D302882BD
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 07:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756106514; cv=none; b=j2E28cEs7U4zMqxSJjy1lKyGHZGDhGbstcNhvo30IoHVLn75cTOagivBMAPUfYiVE1t4sZUa82Cf46NglB7Idb+eQl/Go2NFtyhE0Bg/ZfkK17a/8aXm2zfN2h2Emv2nYHSk/ukH4GhyBOYvgErpvChgTioKTHH7AStyDE2OjLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756106514; c=relaxed/simple;
	bh=T3tR3MsRvYG/Mfp23/DZI4N+SKEPd3CGYAiv1eUDVCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UuEksdM5JRmaUOGzoijgL6Mp1K4ryum67BsCeTWG8dBw0ceAQLVzy7XkyJYYdDg2aLwEVvpKLYpemuaz53qVuFWuUJcYXwLB6anq9icBlZy+5ooFbsnHYlQuw+AFSaEGXtA5WPJIB/pSt6xw6+vxkiCjNmzKHwFCA8Ya9RiJ41E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b5B+1YtX; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-61c266e81caso2648740a12.3
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 00:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756106509; x=1756711309; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c338oe4D3IXQr7k2LQ7ucjYxcOVnL88ce6NV0J74fN0=;
        b=b5B+1YtXxe9Bn/+U4lnjlUYJbN4zVrqhNaJhFDczDfl31mVULj4nkMUJ1q0gxTi6oC
         /t7Aezkwc1NMjIHE+gfy0j50az+WnjTMiTf/YDy9nMe5SdyeAmcIf887vhyueShhCf2U
         nbzREnjS/Mq3icqynOmiUi009CNTZ0nXuI9s5KxKZnqOZo+LZfnaxZK/KzFASWoTb2Iq
         3LQACWXY4ekO9qd3PZY0abW21CSb0AubD/GO0jhi4SofqGqRycss94eAiEHIgGliNZLl
         yvstIBJEDcSXmQ7jH6HazDOlEzTwO0WI38RxxfzhcqkmBBwuaWyPR9xuQELW8Kqc2//4
         jxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756106509; x=1756711309;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c338oe4D3IXQr7k2LQ7ucjYxcOVnL88ce6NV0J74fN0=;
        b=EkLBEcDhUwwuelCOHO3rZap6Wx7nbxMUDanDN9kLgvIitZk+hlA4ei0K85zvIMN+3V
         XdUvep7ZJERxfsdrA+f1PZBQMYGIdXbwiFohFMjWo7fczmxZ/aNn4PnLz2XOqOQB4bh4
         W+n6RQ7RayHuAiRVO5B9meAjEkD4YHoi7vu21XnV5PEd+2+Pqv+Gy9ULwypu9oz3wMq3
         ePWhLcnLnLabhQiSGzI3ou6JjT5mdcSD6NpOYk6lYdsSxlBSGnW1qrkmBSOajYbrBBa4
         aJ0VJcxuvofr4Fsp1tAPO9SASB9NY9a7XtYDST4ISYSMNCHssLqj4UgYZceiylc2NK3N
         3PFw==
X-Forwarded-Encrypted: i=1; AJvYcCUtdgjt8x14n+Z9MVwmeq7BGrqiPi9cSx5tz0s1gy1V9XQdzPblbKuMaffIpDNMFynnfCL0lfqFBzqD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3K5r2abvq3J6GLIsMn4scXkUHaTlSrWRBv4p3rMQ0GfzpPMwU
	bgiu4eInr3B4+zJVTjCfk0mGJt8zBH1aYvymGprlHiIyehAznKzVVaanP8nPNBYfBLkegsqpBw8
	dRmtFiCCXYE9rHJt3WamDF7xDGI3FMclBFZ0u3VE=
X-Gm-Gg: ASbGncsoE176ZOLaWUhXQVa810YGeBZPP7Xx/FO+o+LUqW9JA9ijZ1TPLuFCUibFtH2
	LtR2fLgynDxpXnMh8PzstmI6d9PVCKFuBe42ogSqU4IkzaFftWuS6e/8nWGyt65MS4ReZ4nK4lt
	mjHeJ8TWgE1VhSPeaLNqdHJcuAc+4jjmG1IMAOun7gNiOl5MP8Kepa4sT+hhr7T/HRkStkbtTHZ
	s8vUJkFnQ==
X-Google-Smtp-Source: AGHT+IFsZg/rfT8jBEVfO/j2TfkK77hlaw2k7PC6PtcovowbwFBbXWg5GD34jM5rh3lVFQ90FKR+JiQSdFX7OUYNbNo=
X-Received: by 2002:a05:6402:4310:b0:61c:7efd:acc7 with SMTP id
 4fb4d7f45d1cf-61c7efdb44emr109859a12.3.1756106508858; Mon, 25 Aug 2025
 00:21:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1755757841.git.zhoubinbin@loongson.cn> <589b4dfab9c1edd95fa05cba80ec58ea9ca099da.1755757841.git.zhoubinbin@loongson.cn>
 <87ms7olp0a.fsf@bootlin.com>
In-Reply-To: <87ms7olp0a.fsf@bootlin.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 25 Aug 2025 15:21:37 +0800
X-Gm-Features: Ac12FXzBj1tENuJWAe4kCtn9EXiaBxggZJaitpY5iMifdSsbaHz2HsF1buuz4Us
Message-ID: <CAMpQs4Lmswk8zmH-g54ey79shY5C0Da4e5gL4t5N5CzqMOL=pQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] mtd: rawnand: loongson: Add Loongson-2K0500 NAND
 controller support
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Miquel:

Thanks for your review.

On Sun, Aug 24, 2025 at 11:26=E2=80=AFPM Miquel Raynal
<miquel.raynal@bootlin.com> wrote:
>
> Hi Binbin,
>
> > +#define LOONGSON_NAND_64BIT_DMA              BIT(0)
> > +
> >  #define BITS_PER_WORD                        (4 * BITS_PER_BYTE)
> >
> >  struct loongson_nand_host;
> > @@ -83,6 +104,7 @@ struct loongson_nand_data {
> >       unsigned int hold_cycle;
> >       unsigned int wait_cycle;
> >       unsigned int nand_cs;
> > +     unsigned int flags;
>
> Can we turn this into a boolean instead and give it a DMA related name?
> I'm not sure the list of flags will extend rapidly...

Keguang has a different opinion on this part [1]. Since his reply
email and my V3 patchset email were sent at about the same time, I
plan to address these comments in the V4 patchset.

He found that the Loongson-1 series NAND controller also needs
dma_set_mask_and_coherent(), so we still need to explicitly set the
value of dma_bits.

Specifically:
The flags variable will be split into:
```
unsigned int dma_bits;
int (*dma_config)(struct device *dev);
```

[1]: https://lore.kernel.org/all/CAJhJPsW3KGL=3DFH5ZVqvRr-RD+ih09mFNuk7wGXe=
pGVSw7bTaiw@mail.gmail.com/
>
> >       void (*set_addr)(struct loongson_nand_host *host, struct loongson=
_nand_op *op);
> >  };
> >
> > @@ -745,7 +767,7 @@ static int loongson_nand_controller_init(struct loo=
ngson_nand_host *host)
> >       struct device *dev =3D host->dev;
> >       struct dma_chan *chan;
> >       struct dma_slave_config cfg =3D {};
> > -     int ret;
> > +     int ret, val;
> >
> >       host->regmap =3D devm_regmap_init_mmio(dev, host->reg_base, &loon=
gson_nand_regmap_config);
> >       if (IS_ERR(host->regmap))
> > @@ -755,6 +777,9 @@ static int loongson_nand_controller_init(struct loo=
ngson_nand_host *host)
> >               regmap_update_bits(host->regmap, LOONGSON_NAND_PARAM, hos=
t->data->id_cycle_field,
> >                                  host->data->max_id_cycle << __ffs(host=
->data->id_cycle_field));
> >
> > +     if (host->data->flags & LOONGSON_NAND_64BIT_DMA)
> > +             dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> > +
> >       chan =3D dma_request_chan(dev, "rxtx");
> >       if (IS_ERR(chan))
> >               return dev_err_probe(dev, PTR_ERR(chan), "failed to reque=
st DMA channel\n");
> > @@ -770,7 +795,14 @@ static int loongson_nand_controller_init(struct lo=
ongson_nand_host *host)
> >
> >       init_completion(&host->dma_complete);
> >
> > -     return 0;
> > +     val =3D FIELD_PREP(LOONGSON_NAND_MAP_CS1_SEL, LOONGSON_NAND_CS_SE=
L1)
> > +         | FIELD_PREP(LOONGSON_NAND_MAP_RDY1_SEL, LOONGSON_NAND_CS_RDY=
1)
> > +         | FIELD_PREP(LOONGSON_NAND_MAP_CS2_SEL, LOONGSON_NAND_CS_SEL2=
)
> > +         | FIELD_PREP(LOONGSON_NAND_MAP_RDY2_SEL, LOONGSON_NAND_CS_RDY=
2)
> > +         | FIELD_PREP(LOONGSON_NAND_MAP_CS3_SEL, LOONGSON_NAND_CS_SEL3=
)
> > +         | FIELD_PREP(LOONGSON_NAND_MAP_RDY3_SEL, LOONGSON_NAND_CS_RDY=
3);
>
> Just a nit about the style, '|' should be last character on the previous
> line.

OK. I will do it.
>
> Otherwise the rest lgtm.
>
> Thanks,
> Miqu=C3=A8l

--=20
Thanks.
Binbin

