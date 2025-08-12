Return-Path: <devicetree+bounces-203507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F836B21A62
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 03:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA49A466181
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 01:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A292F2248A0;
	Tue, 12 Aug 2025 01:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xfj/hVMj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B0A2D97BD
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754963183; cv=none; b=VymUmLSXPgfZb5w6e8Bj9eRcpqHnPFQmWWqLClUfOtY+OIvqW2KnT2IiD2HcD7atyhTaZ/2Ig8Li3pBHsmFw4gErueVXJBPIR0OauOyBcmh+EcCRvywvR5MNJphOLwzQUBqEW5xmjVHv3XF7NtmNP4AiHkQ47vg36Qq7hQP4fdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754963183; c=relaxed/simple;
	bh=NgumnPkAJTRAFscuaIVCaroO0OwDgnOyT2oZmvnvPqM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LpT9XMyajxFkEtUmJvaoOqj+lCDkCjkgGd6+SUmRi37Zt0PrQGoc/gUk4X6bChqiZgI9X+0PrVh9Eo/LWMzRBCW+6EY2SkCU1cSopQMUqUWafGReSKbiw/p5mj8HqEc8T/uFMlZyciV7SMNuiy8HPUf0V6AqB/aNfON1A+1jUq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xfj/hVMj; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-617b36cc489so9710494a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 18:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754963180; x=1755567980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYaz1/uT9oyZjCyu9oVfjnYhAs3G+DnESiLkCTuz8Uc=;
        b=Xfj/hVMjzSxKKmnpIGDZOkhXdTXn3mhG6QuRbE2f5/8l6ZLlSxlkp96blwl3rqfZXk
         cd7ehZvh6K8FICgPj2dCUrHAOLyTiAOS1hTPDCcP0UH7fedCE+80DgOTZX2ZI0pLUOFT
         52K+QQ5rQn3blHTXoSin8pXh5ciDatiVTnfBfmpyPafUkX5r/95rLKGlz2yjOUePnH9X
         hWOirnvlNdh8tHOnnbkNtVhQv+Dy2yyyZAxVTLtQ62u7Ap2BQjMcl0Ogj1jrng5rh/9A
         t/BFST5FaK8eojLnFb3ScIiYSEkxRRF8If0wzxgHkX935wlF8uOio6VjUJfppD/69Byj
         cFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754963180; x=1755567980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WYaz1/uT9oyZjCyu9oVfjnYhAs3G+DnESiLkCTuz8Uc=;
        b=rfCWBuecrmNXKpBRXtaVlSTBQtaBwyROdzblkzD9FX7oDziiP+3rKDkuPmfMzypEBR
         wd6K4ri2AcBdox85r6uV1ysjbppPWrYgDN2lFRILzCkhpsakJppTjrysoq7oHnzfTpj/
         A9dHo4K6A2JBkr/BZYcKcFHs5cUj5i9R7qXUZjKm/cdINSmmaoBlK5tf8gRyOAc/nO8p
         /9Z5e7n0pdqtv2bkKCuFbTyWOAyZxU+cUo+9qNDCa/j+Q6S14Ooa9nHkLGsCMDixxUbU
         2WZv3hKsqi+tbG/o9XIzEwXrPwF7r4X4/67UjblT7STA6NNisxPbPjZ3w+wd5TU+7jwy
         vnmg==
X-Forwarded-Encrypted: i=1; AJvYcCWLVNlmJFtnkkIV3sQa6rSuL8ucFMMbYXfyrrILFPuIzk27385ss1fKiaj5RTDUR4mXuPhtTbIPZpTO@vger.kernel.org
X-Gm-Message-State: AOJu0YwKjWk9MsTOsPemaxkuRpLIKpb3mpuOo43WEVz8AAfAVmN9ZnKe
	MNbiZyOX40u818aWWL+HJ/Oy+Jo3r4LbkqfAkmuLPYdo4NrB4J0k/0qUTpo9H8Gx0b50pY/EHwN
	F91PNse0h8wa37h/X8tExNkIBpLSEc0vLWCojZhE=
X-Gm-Gg: ASbGnct6iN6ZzeNTcCbwmVQI83BJ2jQQhdx5FiFDMnLbr+1xxNe7evkZ7VnwofDMEHK
	HHE2NYlLOP6vXdNF5F3IyQr3FUEBaPd2A6WmnhaBKx+Eu3Are45jVxqEMmC/j6QR8ROjbPJ1xrJ
	IJNTKxCH3Hhy5oNat8ca/ACYLjmLUWnKx4h1Cks+YkHBY+AGx4s4A2ZnJ64ikRKUnBTDY/LM1bT
	fN6shA=
X-Google-Smtp-Source: AGHT+IGgBsPd0ik++HxOLBsaEV8zW5o8TFHwtEZ/G5uBZxwRtTAQ1Zhq97IMhlh4+r1CKAUkXGwVqxKI7eSRs6med2s=
X-Received: by 2002:a17:907:72c5:b0:ace:d710:a8d1 with SMTP id
 a640c23a62f3a-afa1e087ebdmr143285266b.24.1754963179717; Mon, 11 Aug 2025
 18:46:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <89732d64415077ecd9f74c5853c542e62c0dfe26.1754890670.git.zhoubinbin@loongson.cn>
 <aJox6R9eCZ5vSc7H@pie>
In-Reply-To: <aJox6R9eCZ5vSc7H@pie>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 12 Aug 2025 09:46:07 +0800
X-Gm-Features: Ac12FXz0ARLdniv0c7AvZGZa7aD_nYfFRofkgvyicNZC2-pOKF37F5dYWwU43vI
Message-ID: <CAMpQs4+3iAYWkDKf67=+0wXSgZmg+fC7p5kFst0fushpWscuaA@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] mtd: rawnand: loongson: Add Loongson-2K0500 NAND
 controller support
To: Yao Zi <ziyao@disroot.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Yao:

Thanks for your reply.

On Tue, Aug 12, 2025 at 2:09=E2=80=AFAM Yao Zi <ziyao@disroot.org> wrote:
>
> On Mon, Aug 11, 2025 at 02:03:13PM +0800, Binbin Zhou wrote:
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
> >       tristate "Loongson NAND controller"
> > -     depends on LOONGSON1_APB_DMA || COMPILE_TEST
> > +     depends on LOONGSON1_APB_DMA || LOONGSON2_APB_DMA || COMPILE_TEST
>
> Why is this dependency necessary? I think the DMA operations are done
> through DMAengine API, and thus the consumer decouples with the DMA
> provider. If so, I think the depends line should be removed, instead of
> extended.

This is an existing execution dependency. Although there is no
guarantee that it will work with other DMA engines in the future, only
this combination has been tested and proven to be correct at present.
Therefore, I would still like to retain this dependency.
>
> Regards,
> Yao Zi
>
> >       select REGMAP_MMIO
> >       help
> >         Enables support for NAND controller on Loongson family chips.


--=20
Thanks.
Binbin

