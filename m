Return-Path: <devicetree+bounces-206237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 470BFB2BCC6
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:15:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83410189314E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A90318121;
	Tue, 19 Aug 2025 09:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gBP1wKJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F761F76A8
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755594781; cv=none; b=rZzRPjaUNrDEImkRDx4cjbxtgwrUboxWPiR084iKiuQoY6ahQj88LOoy3KIVCcWkATGLgFti916kn3KpkfpJel41dJOcKaUKEYkoPkYkeQ41ArHH/yQDuQZ/6VXv6LO4px4igkmpxSHs+Xci66eVGeHRNQEuoNy0mmrSMZLiq5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755594781; c=relaxed/simple;
	bh=hX23j7dsulnQb3qwm/yyEwPtVm2ztW5gUNa134AftPw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hu10lp1s9mrcBdp9KCZZnjCUzgggu6iSddHm0WbHylf7NdO5irx3bmDWIY/mwvb2Uy/Wg73/5vXfynuCHGGj29qaE200Z3D1JVqAFPLM89J9HEAFhS1xUQV/w8zsC+PPlyT90zQPPr+LvxEcTjJP0AY0Tp2kY6yp2nourki+KPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gBP1wKJy; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-333f901b2d2so37728901fa.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755594777; x=1756199577; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=74yGB6r3oeNjA2oTCbBBDNzTu4wMGUZh+SF3lzw9h8M=;
        b=gBP1wKJyQgipRz1Wj2GNvirVLHg+UkoKVD8u17OjwjpPJHw0qso+R7HtaIPNhFn3w4
         ch7VkmjTHXTh3wVNoE+HP33FIBNchBpugLE/WxLmfactHSfhcoQHJBVYlGKXuz461Hu3
         Z5avkT/Gd18zCR/Hx5lLA2M3qHP8CAgV2wzcQ9UHpgPLOw1PQ+SzEfPzdR3sXD/ko/bA
         Ln37zFLEqxmVR67dT7UCv86dBYYHfxQtKqJxwn/gmBFdMiQHS8LPgzjm2l3K/oO8MJ60
         2WAwEkS1GuxJX6PiYr2arE5l/WOLf85tnzGkZCsyxMOaquH3RvcL67WFALQ8E7iHRqQh
         u69A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755594777; x=1756199577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=74yGB6r3oeNjA2oTCbBBDNzTu4wMGUZh+SF3lzw9h8M=;
        b=VIayBztlZHnKVkf5FK8C08mZTd2Ob5V1IJIEZAb7vcbT8sEraCRwLM3khRzHFaCPVH
         0fwnCneIC4yniD8aOK2PqfJR8Ewf2PYF03fkuZ0vvsjLDfIRenj1ziz0UjJf3MnbhC7i
         JC0aGTvQujxqFFGEsG6UHQfVJ/HTJhBNbOIDsrZkrwSMGG9KyenuHS/OqBl3ZWTrF7mu
         uYG+WT63zqFHZSIN5ZzDlNsKHbSLuXRaQdpQhctBJlc032y5NsUU3+fpb66tlTMVBJCL
         k//h0Z0wik8H/DrXLX8Dd9RXKFoLlvHJzL+bgRC0Z0SqLnQhm3UhEC6DtYPNcJ06OFde
         ODcw==
X-Forwarded-Encrypted: i=1; AJvYcCXUwIE4NFb1b4W+ahKtOy35klJDR4L2vKYhHD5ulmqLWUhp0YJA92UXvyxkHoM3yoOwCfBLvFxpZaja@vger.kernel.org
X-Gm-Message-State: AOJu0YxKARCe33oZ7C44OOHNePVLMFGzxiHaav5OSwjGVAcZCush/EIL
	BgU9rhtqW60flydrVkC7TLE8L8oMidxmwOwHpTqfzuzdkObCIdW6s8R7MGGOIAmN/hhlBTaU0CU
	ypUtMKaPQLJTZfYpo3427LTJdD2z/EmI=
X-Gm-Gg: ASbGncutaAyxd8W41MT2M0LmJSke+d/Ez6zXIDG6ATx5/7es8xg8N5VXOjrCxeuOt+Z
	/1bw+S8oD2WIY8Z7KRIQCjZGcNfY9QgBLyW1VsrN2+1cOs2YdN2yjs9cNTCz3QBetSCi7MSqTAW
	AnxsiQM7SOsSlx4+YZREtOSaAFfIutC17fQLS1srOfm1V4EIXcNfs3+2wMWV9XtWWIsxgrmrzpN
	FO6loulFABelq4LvHSWfcN25wHETQ==
X-Google-Smtp-Source: AGHT+IHnCuZwkUNL1S6jdDpuNsRm5DlUTzPVT+cua3tzwYB1PmVSOA+kfkXsI/P6mD4sLALRxJQB+xCbYxyTxrtWi78=
X-Received: by 2002:a2e:b8d6:0:b0:333:b6b0:e665 with SMTP id
 38308e7fff4ca-335307086d0mr5235541fa.30.1755594776962; Tue, 19 Aug 2025
 02:12:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <6b6ddac4728d3debcf2dbb7db82c6b69f9b4956f.1754890670.git.zhoubinbin@loongson.cn>
 <CAAhV-H49xGqd-Y+ffwwwVaES5ZGoCWp2dN_tSETFtBjsjgbC9A@mail.gmail.com>
In-Reply-To: <CAAhV-H49xGqd-Y+ffwwwVaES5ZGoCWp2dN_tSETFtBjsjgbC9A@mail.gmail.com>
From: Keguang Zhang <keguang.zhang@gmail.com>
Date: Tue, 19 Aug 2025 17:12:19 +0800
X-Gm-Features: Ac12FXy9EWtTLFIu2NHkn6-CTHcJ75AsCdxMDVkloBJBm5iSg6mvcqHHleFWEfw
Message-ID: <CAJhJPsWOgaKwfGPD9+BF9OtBpDwvOvr6-jX56Rh0PNRpWew3jw@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] mtd: rawnand: loongson: Add 6-byte NAND ID reading support
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 11, 2025 at 2:37=E2=80=AFPM Huacai Chen <chenhuacai@kernel.org>=
 wrote:
>
> Hi, Binbin,
>
> On Mon, Aug 11, 2025 at 2:02=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.=
cn> wrote:
> >
> > From: Keguang Zhang <keguang.zhang@gmail.com>
> >
> > Loongson-1C and Loongson-2K SoCs support NAND flash chips with 6-byte I=
D.
> > However, the current implementation only handles 5-byte ID which can le=
ad
> > to incorrect chip detection.
> >
> > Extend loongson_nand_read_id_type_exec() to support 6-byte NAND ID.
> >
> > Signed-off-by: Keguang Zhang <keguang.zhang@gmail.com>
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../mtd/nand/raw/loongson-nand-controller.c   | 29 +++++++++++++++----
> >  1 file changed, 23 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/=
mtd/nand/raw/loongson-nand-controller.c
> > index b5a7be0fcacc..97cd566420a8 100644
> > --- a/drivers/mtd/nand/raw/loongson-nand-controller.c
> > +++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
> > @@ -50,6 +50,9 @@
> >  #define LOONGSON_NAND_COL_ADDR_CYC     2U
> >  #define LOONGSON_NAND_MAX_ADDR_CYC     5U
> >
> > +#define LOONGSON_NAND_READ_ID_SLEEP_US         1000
> > +#define LOONGSON_NAND_READ_ID_TIMEOUT_US       5000
> > +
> >  #define BITS_PER_WORD                  (4 * BITS_PER_BYTE)
> >
> >  struct loongson_nand_host;
> > @@ -73,6 +76,8 @@ struct loongson_nand_op {
> >  };
> >
> >  struct loongson_nand_data {
> > +       unsigned int max_id_cycle;
> > +       unsigned int id_cycle_field;
> >         unsigned int status_field;
> >         unsigned int op_scope_field;
> >         unsigned int hold_cycle;
> > @@ -458,10 +463,10 @@ static int loongson_nand_read_id_type_exec(struct=
 nand_chip *chip, const struct
> >         struct loongson_nand_op op =3D {};
> >         int i, ret;
> >         union {
> > -               char ids[5];
> > +               char ids[6];
> >                 struct {
> >                         int idl;
> > -                       char idh;
> > +                       u16 idh;
> >                 };
> >         } nand_id;
> >
> > @@ -469,11 +474,16 @@ static int loongson_nand_read_id_type_exec(struct=
 nand_chip *chip, const struct
> >         if (ret)
> >                 return ret;
> >
> > -       nand_id.idl =3D readl(host->reg_base + LOONGSON_NAND_IDL);
> > -       nand_id.idh =3D readb(host->reg_base + LOONGSON_NAND_IDH_STATUS=
);
> > +       ret =3D regmap_read_poll_timeout(host->regmap, LOONGSON_NAND_ID=
L, nand_id.idl, nand_id.idl,
> > +                                      LOONGSON_NAND_READ_ID_SLEEP_US,
> > +                                      LOONGSON_NAND_READ_ID_TIMEOUT_US=
);
> The last two lines can be merged.
>
No, merging them would exceed 100 columns.

> Huacai
>
> > +       if (ret)
> > +               return ret;
> >
> > -       for (i =3D 0; i < min(sizeof(nand_id.ids), op.orig_len); i++)
> > -               op.buf[i] =3D nand_id.ids[sizeof(nand_id.ids) - 1 - i];
> > +       nand_id.idh =3D readw(host->reg_base + LOONGSON_NAND_IDH_STATUS=
);
> > +
> > +       for (i =3D 0; i < min(host->data->max_id_cycle, op.orig_len); i=
++)
> > +               op.buf[i] =3D nand_id.ids[host->data->max_id_cycle - 1 =
- i];
> >
> >         return ret;
> >  }
> > @@ -676,6 +686,10 @@ static int loongson_nand_controller_init(struct lo=
ongson_nand_host *host)
> >         if (IS_ERR(host->regmap))
> >                 return dev_err_probe(dev, PTR_ERR(host->regmap), "faile=
d to init regmap\n");
> >
> > +       if (host->data->id_cycle_field)
> > +               regmap_update_bits(host->regmap, LOONGSON_NAND_PARAM, h=
ost->data->id_cycle_field,
> > +                                  host->data->max_id_cycle << __ffs(ho=
st->data->id_cycle_field));
> > +
> >         chan =3D dma_request_chan(dev, "rxtx");
> >         if (IS_ERR(chan))
> >                 return dev_err_probe(dev, PTR_ERR(chan), "failed to req=
uest DMA channel\n");
> > @@ -800,6 +814,7 @@ static void loongson_nand_remove(struct platform_de=
vice *pdev)
> >  }
> >
> >  static const struct loongson_nand_data ls1b_nand_data =3D {
> > +       .max_id_cycle =3D 5,
> >         .status_field =3D GENMASK(15, 8),
> >         .hold_cycle =3D 0x2,
> >         .wait_cycle =3D 0xc,
> > @@ -807,6 +822,8 @@ static const struct loongson_nand_data ls1b_nand_da=
ta =3D {
> >  };
> >
> >  static const struct loongson_nand_data ls1c_nand_data =3D {
> > +       .max_id_cycle =3D 6,
> > +       .id_cycle_field =3D GENMASK(14, 12),
> >         .status_field =3D GENMASK(23, 16),
> >         .op_scope_field =3D GENMASK(29, 16),
> >         .hold_cycle =3D 0x2,
> > --
> > 2.47.3
> >



--=20
Best regards,

Keguang Zhang

