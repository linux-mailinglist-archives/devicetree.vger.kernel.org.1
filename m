Return-Path: <devicetree+bounces-221135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5803B9D6E1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E9764A4FA1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 05:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D85A22E7BDF;
	Thu, 25 Sep 2025 05:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="nU28CeLp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EDB2E7621
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758777133; cv=none; b=jnfSEiIDRBlNTauN0DxRf+Aj67pd15rIn1ui6Q3PX+GHOcprPq7Hzyhzfj/tznQ96kFGIsZzH3CFyWfDhkQ3GEHQqeSvnmdIjSxTkDvCIeeX3wgHQ87HhFQz34l350O/C2BaXlSlplSull7ze2iabUr6HiM4UiyQ7qGSfTpSfC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758777133; c=relaxed/simple;
	bh=Avqr8HnGdjNpI0VeVV6+KaR/c1MaFhWxGMGichT1BEM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xp2bI2LdZ2IstCeHcxcdQZA8kxB/n8e/g3J3cQ9W5UTApD/jacaowSkEUuNTfmfiwQQQ6l7hgjwOqB1DxhD3foDU+HGlv7FMct/L8JmiuSKxNO2BgUoUfae1S/lNi/epu81wnwdUH051eQgorc01bl0JA3JM5Z5VFT/bvkyuHOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=nU28CeLp; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-57a960fe78fso523419e87.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1758777130; x=1759381930; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PI+7onH5XvxEzfPDOfe7phWFijmEPWLyir8RpU4z3xc=;
        b=nU28CeLpV3eJrARL1sawqaEIluYSWQ0NXR0cCY7/n8a+90o5RN82iRg7A1MJv3RKiu
         G8bpugV25Q83uZrBHPWxe2q3Ew2vznwKOcozMTBXm5I+YbmmVvFQVPxmv6jVwsimMyfT
         gTtZpgKKL4aYGEyNYAeKcMhddawCYR0mVtj1JJ4AZ3vuB5VdM6HCODnHLN3mG27ws5u8
         1qPLR6fDl8EEruiKZF8SGdJChraqOrYt2smQnUMAImM1CjJaknrrt9Gv+2MSt0li4WBk
         3iR7N6jdyeoJO9gSudiPUAFgiCW8O22c9BwlROZtCdiDQeNef8WgZczd34ciNPfDp0/H
         G0mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758777130; x=1759381930;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PI+7onH5XvxEzfPDOfe7phWFijmEPWLyir8RpU4z3xc=;
        b=c/v9pDIdJwdXdgqhr+d9CemLZnMMqDl6EI4WIPd2I7zDIaAFL4Mtm1N1ku2h0PNcO4
         8vVtidvMgpH0YWBdkPzFlY67eNVdqRXJnDzXmOhfBMOqo2IGBqx8ti+FRwWPOxzz9Lku
         kqwzshuoV1LJwmq0rGRsBBK5/Kn9RFeVA2IVmPWNZG0maK10QHoPU+nSfsvvIN5t3cxA
         QrD/LhQ9ZSIccL3teZcyrWieVYK1jKnoEle7NqmvLKjuWYJDPzGumAdeHh6h/KteCFxl
         RdhonDL8LLhxQE5OtnzBDBcm6ZPMWrIDxxJ5u3fCQim0z3gXHMkqFp0wmwm/HxXUW1Dw
         i3ew==
X-Forwarded-Encrypted: i=1; AJvYcCWA58vB7vo1DNNKqPguWSJyxMVCZqSL+J02dgJvCOQQbJVA2GdIAOti6UG3unsm8GsaO/cnXd6AN8am@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa+LDOc45p2ingDCeTOP76DAZrZD7jvUUTOyU8Lk7CDEIIIWeS
	xrW7/jZFOWeHvhsIxyF3JiZNV0pHl8GYm0rVuNJsEoM0W72UQtCQrQH292cV+4aJ/UxjRPokTOK
	LJludIMHFEtEKcN7UDs9Dr0KCI55N1GGsFTMT5HQqbA==
X-Gm-Gg: ASbGncvNimvVRDGMfm1W2fn3FfbyfpdMlbBaHYYfTo5Z/CmWdFvLNQFgrlJbzFHL26V
	QnSiWzJd2z8Svcj/oHfjUUBKYbOOniOwjvZQXU1U3XrC7Z4BrmB0HXixjlcdQ6vXjgxKS+1zbDL
	lO7MtfKwq1O0iPsT6l0/gGrGI4QQzusCwSysXq1mrq2LWz9nlNNMXEwVQvUpenbrYvTTPjlp90w
	JK3n78P
X-Google-Smtp-Source: AGHT+IEktZxYjboDWNx3pIVxQ7MOelyp8TNGnFov7A2S6wtkwb7jZL+tldrXK8Tjm4TA2xHmbLoncH4PXr9GUwjTepk=
X-Received: by 2002:a05:6512:2c08:b0:579:f4b3:bd2d with SMTP id
 2adb3069b0e04-582d406c4f6mr540270e87.57.1758777129874; Wed, 24 Sep 2025
 22:12:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250818040920.272664-1-apatel@ventanamicro.com>
 <20250818040920.272664-8-apatel@ventanamicro.com> <405a78ce-de03-382b-cab9-bb086e28505b@kernel.org>
In-Reply-To: <405a78ce-de03-382b-cab9-bb086e28505b@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 25 Sep 2025 10:41:58 +0530
X-Gm-Features: AS18NWCrNThCby3qXMZJBv9AykyLw-ADGqc2ECmLSjZN6XRRbEa6InFMj8l_zYI
Message-ID: <CAK9=C2Vr4rgj8wfT+Ogow1H-7Lu=6XdWA2Qe++6523P76pMZzQ@mail.gmail.com>
Subject: Re: [PATCH v10 07/24] mailbox: Add RISC-V SBI message proxy (MPXY)
 based mailbox driver
To: Paul Walmsley <pjw@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	devicetree@vger.kernel.org, Andrew Jones <ajones@ventanamicro.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Atish Patra <atish.patra@linux.dev>, 
	Leyfoon Tan <leyfoon.tan@starfivetech.com>, Anup Patel <anup@brainfault.org>, 
	linux-kernel@vger.kernel.org, Samuel Holland <samuel.holland@sifive.com>, 
	linux-acpi@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org, 
	Len Brown <lenb@kernel.org>, linux-clk@vger.kernel.org, 
	Rahul Pathak <rpathak@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Thu, Sep 25, 2025 at 5:57=E2=80=AFAM Paul Walmsley <pjw@kernel.org> wrot=
e:
>
> On Mon, 18 Aug 2025, Anup Patel wrote:
>
> > Add a mailbox controller driver for the new SBI message proxy extension
> > which is part of the SBI v3.0 specification.
> > ---
> >  drivers/mailbox/Kconfig               |  11 +
> >  drivers/mailbox/Makefile              |   2 +
> >  drivers/mailbox/riscv-sbi-mpxy-mbox.c | 994 ++++++++++++++++++++++++++
> >  3 files changed, 1007 insertions(+)
> >  create mode 100644 drivers/mailbox/riscv-sbi-mpxy-mbox.c
> >
> > diff --git a/drivers/mailbox/riscv-sbi-mpxy-mbox.c b/drivers/mailbox/ri=
scv-sbi-mpxy-mbox.c
> > new file mode 100644
> > index 000000000000..21404baa6df0
> > --- /dev/null
> > +++ b/drivers/mailbox/riscv-sbi-mpxy-mbox.c
>
> [ ... ]
>
> > +
> > +static int mpxy_mbox_populate_channels(struct mpxy_mbox *mbox)
> > +{
> > +     u32 i, *channel_ids __free(kfree) =3D NULL;
> > +     struct mpxy_mbox_channel *mchan;
> > +     int rc;
> > +
> > +     /* Find-out of number of channels */
> > +     rc =3D mpxy_get_channel_count(&mbox->channel_count);
> > +     if (rc)
> > +             return dev_err_probe(mbox->dev, rc, "failed to get number=
 of MPXY channels\n");
> > +     if (!mbox->channel_count)
> > +             return dev_err_probe(mbox->dev, -ENODEV, "no MPXY channel=
s available\n");
> > +
> > +     /* Allocate and fetch all channel IDs */
> > +     channel_ids =3D kcalloc(mbox->channel_count, sizeof(*channel_ids)=
, GFP_KERNEL);
>
> Should this be devm_kcalloc() ?
>

The usage of channel_ids array is limited only to this function
(mpxy_mbox_populate_channels()) hence we are using scoped
kcalloc() so that channel_ids will be automatically freed when
mpxy_mbox_populate_channels() returns.
(Refer, "__free(kfree)" attribute in the channel_ids declaration)

The scope of memory allocated using devm_kcalloc() is the entire
lifespan of the device which is not needed for channel_ids.

Regards,
Anup

