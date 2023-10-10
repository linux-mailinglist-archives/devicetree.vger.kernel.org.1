Return-Path: <devicetree+bounces-7200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1557A7BFAD7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96531281BA7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2230A1945E;
	Tue, 10 Oct 2023 12:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Df3KmV6N"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B77E19460
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:09:45 +0000 (UTC)
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A0CA9
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:09:43 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-65b0c9fb673so29509546d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696939782; x=1697544582; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DgSEBJcUi7PZ5OXedvwInXaFNURNqtsaL0h7wFFXk5g=;
        b=Df3KmV6NzyoruKmJufGdyQeVIeM94xePXheDrzzm9/krPQ0jAEIvv5Ien2F0RrmPkc
         uKtla/0xPvuSxqAgH3p7HrD1gT5kWUMhkFfSaj2ib46V3FRNFcTfUaSMQCuPpFR8yOY3
         ixA9gJeTCoBtX65NfpE1VpxFHHWM1IdKP+fgDyZFX/UGcvBbWstNlDicBgxoYFenAWBj
         G+VdxULEkMAl7xmCRg6IDmZ1apVCjQz4IXjBbkj+kPs1eOuakvTCAqcIKrqoHV+PT5rb
         dhg1fPXp3J9LipxYR2CpFtPNfBMnW3oIB2gC/ElJ0ChXIvUEDMcqENyf/3GxkwMykgQM
         FIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696939782; x=1697544582;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DgSEBJcUi7PZ5OXedvwInXaFNURNqtsaL0h7wFFXk5g=;
        b=no2xRA/Xc46No730feu6qlnX/TayAsDyiinbh5WLppd0t3GkpoeULELp2Q0JUIlcRZ
         mkmetqFhNtOJ3C+nKKRuaO2p9uaBptuhuppBr63kJYspk2HhOv4bovBZORzTgA+Cy7K7
         uscOym+GDZ9tEqnzQmbzkRqgswp+7/GmIxQFFWljUoAAY627VO20xFU9AL3BlF46dt5X
         yt4ChN+WgaDECWr22p/V+WWMw8z+24B0JwN0l81ceMA2LsFUdGPz0ApROrDH5Ad3+onM
         YET23ZqPSbTWMfKOUAzIzVo1WK+j8uOixDvURxJayQgncb/GN/FaGhP9K02b6jMbFhUy
         Rbsw==
X-Gm-Message-State: AOJu0YxQ94OltyrRRGpxvkvdQpL3aB+6Fii1LPcmh7ODhscZzNzxRew0
	TL3PVlPJ/dYPCsPpVA69QlLKuzqsfGfELXCTNtXmDQ==
X-Google-Smtp-Source: AGHT+IEkobWfRAv+hk9GeXAgYbAsdwwHInRJB4q4A/k6gLUZyJCTapOQUejfM/de0SvYVTlXeCdNVMlVoHapdH1mpY8=
X-Received: by 2002:ad4:5cc7:0:b0:65d:dcc:9754 with SMTP id
 iu7-20020ad45cc7000000b0065d0dcc9754mr22900149qvb.30.1696939782310; Tue, 10
 Oct 2023 05:09:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-20-peter.griffin@linaro.org> <20231006205204.GA269353-robh@kernel.org>
In-Reply-To: <20231006205204.GA269353-robh@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 10 Oct 2023 13:09:31 +0100
Message-ID: <CADrjBPpEFo4gRTsWau+xGoBAr2j7srhbxYefJGDer+PRu9QxBg@mail.gmail.com>
Subject: Re: [PATCH 19/21] google/gs101: Add dt overlay for oriole board
To: Rob Herring <robh@kernel.org>
Cc: krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, 
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com, 
	s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org, 
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, 
	olof@lixom.net, cw00.choi@samsung.com, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, semen.protsenko@linaro.org, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

Thanks for your review!

On Fri, 6 Oct 2023 at 21:52, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Oct 05, 2023 at 04:56:16PM +0100, Peter Griffin wrote:
> > The LK bootloader on Pixel6 searches for a dt overlay in the
> > dtbo partition with a board_id and board_rev that matches
> > what is baked into the device. If this overlay is not present
> > then the phone will bootloop in fastboot and you can't boot
> > the upstream kernel.
> >
> > This commit adds a dtbo for the production oriole variant.
> > The other pre-production board overlays are not included
> > at this time.
> >
> > Adding the dtbo here allows for a better experience when
> > building/booting the upstream kernel on Pixel devices
> > as all the DT required to boot the device will be created
> > as part of the kernel build process. Rather than having to
> > fetch the dtbo from some other repo.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  arch/arm64/boot/dts/google/Makefile          |  1 +
> >  arch/arm64/boot/dts/google/gs101-oriole.dtso | 21 ++++++++++++++++++++
> >  2 files changed, 22 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/google/gs101-oriole.dtso
> >
> > diff --git a/arch/arm64/boot/dts/google/Makefile b/arch/arm64/boot/dts/google/Makefile
> > index 6d2026a767d4..3f1761f8daa9 100644
> > --- a/arch/arm64/boot/dts/google/Makefile
> > +++ b/arch/arm64/boot/dts/google/Makefile
> > @@ -2,5 +2,6 @@
> >
> >  dtb-$(CONFIG_ARCH_GOOGLE_TENSOR) += \
> >       gs101-oriole.dtb \
> > +     gs101-oriole.dtbo
>
> Overlays in the kernel must be able to be applied to a base DT in the
> kernel. Add a rule to apply this (hint: a '-dtbs' variable does this
> similar to -objs variables).

Ok will do, thanks for the hint

>
> > diff --git a/arch/arm64/boot/dts/google/gs101-oriole.dtso b/arch/arm64/boot/dts/google/gs101-oriole.dtso
> > new file mode 100644
> > index 000000000000..50832fd94204
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/google/gs101-oriole.dtso
> > @@ -0,0 +1,21 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Oriole DVT Device Tree
>
> Doesn't DVT mean pre-production?

Yes, DVT stands for Design Verification Testing. I can remove that
DVT suffix for v2.
I suppose that means there were no changes between DVT and production as this
is the overlay used by the production devices.

regards,

Peter

