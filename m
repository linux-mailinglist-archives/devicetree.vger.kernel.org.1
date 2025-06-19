Return-Path: <devicetree+bounces-187358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DA0ADFB3E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 04:29:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1FB5189DBD1
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 02:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 641862253FC;
	Thu, 19 Jun 2025 02:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="HyPCgF1R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F3D1C174A
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 02:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750300170; cv=none; b=VlS09gHk2MjeEBo+Kq9GZ8Pj1FHPFeYdDI+buXfpGw5maYQ1Zh6vMlCfbZHglgBPEOGvSk/ZHP0CYTiX8UVaf56njgCJu5Lqv+U6U/5pZrYJrl8pYAfi+6vLJVEjtrlv3vRvpzy5lCUSCrhDDGoRHs3Ej9YkgLsPWT4kUuLmoHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750300170; c=relaxed/simple;
	bh=L2w4QtkDjTcxS3Jiw42nicI67aVG96GPyXoun25RMB4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XQnxUYYeKd6N+y4xuOVi6xTfrNgZQZkj2wCVqk65lWTSFYnWQ7m+LiE7H8Y5TEYDsa5JqNlPYX65szU235qb/KQEVCBW9LENZdkWO0nG4HK6yr73UepvW+2vJbowK0/Ka3a69xqfRA8w+Fkcweid3UNS/Ljjpe4pciE7bBGlkFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=HyPCgF1R; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-70e4b1acf41so2545697b3.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750300166; x=1750904966; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cDeHL9d8vuK42id4GVmvojG1LbxVd4OxULlS/3TaFoo=;
        b=HyPCgF1RyBNpndkOPPsNC8GhgjEKKSrkzQREGgxvK2MOjk/8YVnE+Lu8kZHhnuQAMF
         /7g0JoZjbl5FLQNiraieYZxQlBfABokjIHlH4C4QNAxTIY4xgP4xOwFpul1o+CtiOL9H
         mAnbJj/kSIPvuadDEiAfpd3P16N810BiZHqX14taSWi58YCR7JaiisLCxodghYl9OpNH
         LRnSGWBo+CmhcSVA7Fw7O1ooZpgPEP/DDJezDZtaZleODYOVEAS5j1jQqa0NOCXxGrK0
         1K75F1v/ngHtUJ2IdGXlA4mbV9LjkTSvPEpr/1x+dnGEIGh4ANf9mrIlxP5UTmmD+xnN
         HeiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750300166; x=1750904966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cDeHL9d8vuK42id4GVmvojG1LbxVd4OxULlS/3TaFoo=;
        b=YPghSL8Hov0gjd9RjiPYru/RaJrYU7iC8lEgbnxVNhLyoOELoMRhVAiqn1TIPHm1To
         fVVIhaFtYcC9PqCD2nSeUFLgtrCpjHKWEzx4ZaFtPCDl8ZEWICLg0H+kOPUoQr7Sl37W
         doHf0XUhCWu7zWsxzGyUyYQMwWuPjHLAEKLK+XW8EaGnCHleZ7xGEcZFLV+oMgDjN+Ee
         V6zRvBg0uAjto6ZzQl0s/zrFn0VwPr1kaDJbdQ0X3qzXoFk8nc3Lj6z0ZR9kk5b8i+3R
         mlR7zgoXSEbGP/wV+xT8RxyyAPZAXZIT81UxWAl00DpntWG//kkdOa1lPqNlfPd7gmQx
         WEEw==
X-Forwarded-Encrypted: i=1; AJvYcCXdzjUSVyeCK0fXX7dGs1Nm07NwqT9HtmlyJpAiwTtnWp9ZoEtomSIFcnpooqBm5hsff3qyumOMPVVJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxEmAu1p7Qccs3NPfufGt/RkpNNeHKgcZrZOldhkueCrmrIcqBY
	gVJdG9e9Hv7SClozN5OalYyblnGDFHyRgh5o0HqHbcKv0rSPApuVm9sWw2+RxgSh2bVUchFLpKV
	XVnYjPWmLV6ZCCva9czD9/f7s7YhOc1wUPJS1Cl3hQw==
X-Gm-Gg: ASbGncsiXALIz/EaBB3aI2WERnpOdOZx6ZYQKZPtRcOrJTS11kg5Q3JzM5emVxbG2G2
	FDp3S29K+qybKEfKwmdnw2nzS2wo/5OlVRTeLVk68rjUb5gT+pXXuQmiYTR/FEsqT1TKhJi00kn
	KvbwC8+QzwP9H5Yx2IgpPZGbZuvtxmyqrMQhagJGyY/g==
X-Google-Smtp-Source: AGHT+IGTWcMJ9e18SuuZAjhMb+1RhUC5KbFMVpAzHRzN1h0rYVrbKTgujtHTi15citzRIXK4WE/50371Bg3VPce6S3o=
X-Received: by 2002:a05:690c:4442:b0:70e:29af:844a with SMTP id
 00721157ae682-711755076b4mr289656047b3.18.1750300166249; Wed, 18 Jun 2025
 19:29:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611125723.181711-1-guodong@riscstar.com> <20250611125723.181711-3-guodong@riscstar.com>
 <aFEEhik8x2k5_myN@vaman>
In-Reply-To: <aFEEhik8x2k5_myN@vaman>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 19 Jun 2025 10:29:14 +0800
X-Gm-Features: AX0GCFsoo3SDAFCWa_VQKJiemtWkvUSERAjA5vBX4NjZ4H9AqhsVRRlcUwFSJ3A
Message-ID: <CAH1PCMaD1muAQWRUfDJNKZL+-y31MBbw=aeD8VgEGxJE3eATbA@mail.gmail.com>
Subject: Re: [PATCH 2/8] dma: mmp_pdma: Add optional clock support
To: Vinod Koul <vkoul@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, dlan@gentoo.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, p.zabel@pengutronix.de, drew@pdp7.com, 
	emil.renner.berthing@canonical.com, inochiama@gmail.com, 
	geert+renesas@glider.be, tglx@linutronix.de, hal.feng@starfivetech.com, 
	joel@jms.id.au, duje.mihanovic@skole.hr, elder@riscstar.com, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 17, 2025 at 2:00=E2=80=AFPM Vinod Koul <vkoul@kernel.org> wrote=
:
>
> On 11-06-25, 20:57, Guodong Xu wrote:
> > Add support for retrieving and enabling an optional clock using
> > devm_clk_get_optional_enabled() during mmp_pdma_probe().
>
> Its dmaengine, please tag them as such

Got it. I will do.

Thank you, Vinod.


>
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  drivers/dma/mmp_pdma.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/dma/mmp_pdma.c b/drivers/dma/mmp_pdma.c
> > index a95d31103d30..4a6dbf558237 100644
> > --- a/drivers/dma/mmp_pdma.c
> > +++ b/drivers/dma/mmp_pdma.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/device.h>
> >  #include <linux/platform_data/mmp_dma.h>
> >  #include <linux/dmapool.h>
> > +#include <linux/clk.h>
> >  #include <linux/of_dma.h>
> >  #include <linux/of.h>
> >
> > @@ -1019,6 +1020,7 @@ static int mmp_pdma_probe(struct platform_device =
*op)
> >  {
> >       struct mmp_pdma_device *pdev;
> >       struct mmp_dma_platdata *pdata =3D dev_get_platdata(&op->dev);
> > +     struct clk *clk;
> >       int i, ret, irq =3D 0;
> >       int dma_channels =3D 0, irq_num =3D 0;
> >       const enum dma_slave_buswidth widths =3D
> > @@ -1037,6 +1039,10 @@ static int mmp_pdma_probe(struct platform_device=
 *op)
> >       if (IS_ERR(pdev->base))
> >               return PTR_ERR(pdev->base);
> >
> > +     clk =3D devm_clk_get_optional_enabled(pdev->dev, NULL);
> > +     if (IS_ERR(clk))
> > +             return PTR_ERR(clk);
> > +
> >       if (pdev->dev->of_node) {
> >               /* Parse new and deprecated dma-channels properties */
> >               if (of_property_read_u32(pdev->dev->of_node, "dma-channel=
s",
> > --
> > 2.43.0
>
> --
> ~Vinod

