Return-Path: <devicetree+bounces-219650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8ACB8D51C
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:01:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C123189C53D
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 05:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51476298CA3;
	Sun, 21 Sep 2025 05:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WROfXvwM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9943B219A8E
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 05:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758430873; cv=none; b=F0BrcjC3iLT5QSzWO4YAfSXzqeRbXVvPsBOpI7rfxx+T9J43TQ3jIUSkrsRj0jlgClpZRZMeJlrMdUwEhie8ea8y2IgEUEYrefh9twA9cdmbFWP4FE2edoKK/6cO466/FoZL6PCDi107tv9N70s5C4n/vJ71T6b+TYosBrlZ3so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758430873; c=relaxed/simple;
	bh=TFopHDySdmwff+2h+lbg0QewUPQXDyFQxFVBz2g2PD8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JWbsRXgg5sRuwcAghw4ti0kGJlaMvhGNodKAJno7kU6b2KvGaxd604AxC+TxTzw5NSSXLJIndhyCzf368A4jVD/qzXsmHe1AYqLRoPITJC2IcOFDwkF+5Hi0JjnI8c6wbz5E5KKpgsCfhKIv+gAYNRRoKmMGp2d00I/oNnzQYHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WROfXvwM; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-30ccec928f6so1432040fac.3
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 22:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758430871; x=1759035671; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IjfAWdx3qllN2H0M+sW0dm7oGyFJwrK43aFNVvYCDkE=;
        b=WROfXvwM/Hc3IHkJACyQqmaUujIazDLvuv3RCYj2hW9FPYhKumADdws1gT15iolC/M
         kKUJikst65yitt08vOqbsAm3FiNJCyn3L1u2pVp77jhW2OoGH1Fpt4bjRy4AI6upBYYB
         iL3pAjGe1DuDdgSeBf7W/0kFvfaJnZjhfCaC/BUNY9CwSkhfrMcEtm0edd+Hrh3OZyjk
         p4wkTap73LGzP3+8sUUHNYKl06Y6az3wNYSND58sZsj4fZTAGag6hLAEwVDoaZeOdoz9
         IUy24sGVOcJPvZQfdPsceqMYTZpOHFUVQH2RWkRDGea18oo/Ya5x3DHQiM6pYF+mQibP
         LmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758430871; x=1759035671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IjfAWdx3qllN2H0M+sW0dm7oGyFJwrK43aFNVvYCDkE=;
        b=kUFFvougOPVJfsrHFzhHP5DY+GAohkyo1uM+SRMAYXyrf8dbymzr6oWE3BsCsZ6jGi
         dVbpH6HnK76TdXGEhEFjmwaC71H2nY7Mg+Srma/CK4SPxXz5Nd1uAIzOkhuXx0BJSdR8
         M80EqSON3TkhsLVGquL+AiivDxWgiWI1tMVzV62VurIYmrxTVkRb1jnAunFefls+TvTD
         YCH9dHF0pK6BuUhIIOwXX2ZxtmxmnXTE66QGG07M6IE4yVuVYqDrwagse4rcqJArAG8c
         GoXjbPPrC3O0O2YY82ifiSAl6gEeKgQedzZkdI5AAEVygeOs7ZB7EmpIaSGhGyIMK9Tq
         DT2A==
X-Forwarded-Encrypted: i=1; AJvYcCWa06OqreBwyUrPINl+9+bUHqRrS4xcqjFBAdbEW/+N7SXEITq4gRg1UAEzY702uPU5l5/hQBvZgcdy@vger.kernel.org
X-Gm-Message-State: AOJu0YwNVzdkngBwrx+2MCnVhftKkFpGGn6S4g69IE63Yko4r7TGFuAR
	uShrhVCa4xMbP1I2cvZGIE5NfUJiDK+sr81iIHQTnYBgXKvOpgu4ce+R+yFkUMNNrY7lYA959yL
	q7PqohqoTS4djBeKV0/vXEFXEu/15P/c=
X-Gm-Gg: ASbGncsLL5drPo3Zw/QcKomLroHRPGCXBUID4YUJqNQr68Wgl6IgMXfTeftlIvnogSE
	iHl4Zf3bQkmJxpKyk07dWcp98i3lHoIRZg77zuf/v2x8HuB99MEljSP0Zo9UbFhtflH5Q7xd+wb
	TRXJ62MEg2vnS8jg4NOqa85iofwC6PW9h83XtPqGoNWpaz8dPR02EwBk91K2OLGH/ZjEyo6t+0D
	kgVvNo3
X-Google-Smtp-Source: AGHT+IFKpKCb+G5+tP41Jly7b1/38Uvws70S97XKQpr/S5rzy7zAFBiiLMjEcsLoKodvfvth4fS5Yj3OP9ZLUPhO44s=
X-Received: by 2002:a05:6870:6e83:b0:31d:718f:a09d with SMTP id
 586e51a60fabf-33bb5c80cf2mr4292754fac.25.1758430870653; Sat, 20 Sep 2025
 22:01:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917-mt8196-gpufreq-v3-0-c4ede4b4399e@collabora.com> <20250917-mt8196-gpufreq-v3-5-c4ede4b4399e@collabora.com>
In-Reply-To: <20250917-mt8196-gpufreq-v3-5-c4ede4b4399e@collabora.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 21 Sep 2025 00:00:59 -0500
X-Gm-Features: AS18NWDK9SEswNrgx0QIzUV1feO9ul79WZJVBOk2Mw-YsP45swDD7fxXXq-LHKs
Message-ID: <CABb+yY0_TZC0Dd3Rue=6Am4=Urs8hdkaa6RE=42t58SYUsLV0w@mail.gmail.com>
Subject: Re: [PATCH v3 05/10] mailbox: add MediaTek GPUEB IPI mailbox
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Chia-I Wu <olvaffe@gmail.com>, 
	Chen-Yu Tsai <wenst@chromium.org>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-pm@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 17, 2025 at 7:23=E2=80=AFAM Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
....

> +#define MBOX_CTL_TX_STS                0x0000
> +#define MBOX_CTL_IRQ_SET       0x0004
> +#define MBOX_CTL_IRQ_CLR       0x0074
> +#define MBOX_CTL_RX_STS                0x0078
> +
1) Please don't pollute the global namespace. Make these something
like MBOX_MTK_GPUEB_xxx. Here and elsewhere.
2) You don't write short values, so maybe just 0x04, 0x04 0x74 and 0x78.


> +#define MBOX_FULL              BIT(0) /* i.e. we've received data */
> +#define MBOX_CLOGGED           BIT(1) /* i.e. the channel is shutdown */
> +
This is confusing. CLOGGED usually means malfunction, but it seems you
want to call it STOPPED or UNINIT?


> +#define MBOX_MAX_RX_SIZE       32 /* in bytes */
> +
> +struct mtk_gpueb_mbox {
> +       struct device *dev;
> +       struct clk *clk;
> +       void __iomem *mbox_mmio;
> +       void __iomem *mbox_ctl;
> +       struct mbox_controller mbox;
> +       struct mtk_gpueb_mbox_chan *ch;
> +       int irq;
> +       const struct mtk_gpueb_mbox_variant *v;
> +};
Other structures have kernel-doc, so why not here too?
...

> +
> +static int mtk_gpueb_mbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +       struct mtk_gpueb_mbox_chan *ch =3D chan->con_priv;
> +       int i;
> +       u32 *values =3D data;
> +
maybe order in decreasing lengths ?


> +
> +       /*
> +        * We don't want any fancy nonsense, just write the 32-bit values=
 in
> +        * order. memcpy_toio/__iowrite32_copy don't work here, because f=
ancy.
> +        */
>
Please make the comment technical. Currently it just expresses your
distaste for fancy :)

> +       for (i =3D 0; i < ch->c->tx_len; i +=3D 4)
> +               writel(values[i / 4], ch->ebm->mbox_mmio + ch->c->tx_offs=
et + i);
> +

...
> +
> +static struct mbox_chan *
> +mtk_gpueb_mbox_of_xlate(struct mbox_controller *mbox,
> +                       const struct of_phandle_args *sp)
> +{
> +       struct mtk_gpueb_mbox *ebm =3D dev_get_drvdata(mbox->dev);
> +
> +       if (!sp->args_count)
> +               return ERR_PTR(-EINVAL);
> +
> +       if (sp->args[0] >=3D ebm->v->num_channels)
> +               return ERR_PTR(-ECHRNG);
> +
> +       return &mbox->chans[sp->args[0]];
> +}
>
Just use the default of_mbox_index_xlate()

....
> +
> +       for (i =3D 0; i < ebm->v->num_channels; i++) {

You make this block a bit cleaner by using a temporary variable
        echan =3D &ebm->ch[i];
and using echan instead of ebm->ch[i] a dozen times below.

> +               ebm->ch[i].c =3D &ebm->v->channels[i];
> +               if (ebm->ch[i].c->rx_len > MBOX_MAX_RX_SIZE) {
> +                       dev_err(ebm->dev, "Channel %s RX size (%d) too la=
rge\n",
> +                               ebm->ch[i].c->name, ebm->ch[i].c->rx_len)=
;
> +                       return -EINVAL;
> +               }
> +               ebm->ch[i].full_name =3D devm_kasprintf(ebm->dev, GFP_KER=
NEL, "%s:%s",
> +                                                     dev_name(ebm->dev),=
 ebm->ch[i].c->name);
> +               if (!ebm->ch[i].full_name)
> +                       return -ENOMEM;
> +
> +               ebm->ch[i].ebm =3D ebm;
> +               ebm->ch[i].num =3D i;
> +               spin_lock_init(&ebm->mbox.chans[i].lock);
> +               ebm->mbox.chans[i].con_priv =3D &ebm->ch[i];
> +               atomic_set(&ebm->ch[i].rx_status, MBOX_CLOGGED);
> +       }
> +


-j

