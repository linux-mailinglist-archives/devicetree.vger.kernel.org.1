Return-Path: <devicetree+bounces-7682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEEF7C5163
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C04F11C20BD8
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 008281DDD3;
	Wed, 11 Oct 2023 11:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QLLkr68r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BB3182A2
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:16:39 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CB6711B
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:16:31 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-59f4f80d084so81248247b3.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697022990; x=1697627790; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wNjnYLa58DgBOBpUQ3L499a3tSmXMWsGVLMLAmZzoFw=;
        b=QLLkr68rsLfoNDiwlTRjbOTniW4Z2N7GUQjpe1JAQJ79H3WNZGH9zp3vVtkzFg8+tm
         EERstpna9H1eJcdPMIReu96WRkGxY9Uuv3a2SDcNwokCuH2AINruDLULAdP1Hh3kIJt8
         XqUhlUGkSOYQbSDuNiitJA14Zq0WeJ8OyQQUCGK977KvhLRP6P40foZj2dnjF15yqeag
         ixnWdOA0bwK5TvnmiMwaJSXdBEVJbK6Yufc4keEajUwE/T/bg7U3GSSHFEvqE60jY7sb
         eoMLUN62dnOMLW7SXxDy3S92MBnQ/Wzy+NsvYjyp7vOvO3kP9QsAlJVNnlROnawsTIRl
         Tbzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697022990; x=1697627790;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wNjnYLa58DgBOBpUQ3L499a3tSmXMWsGVLMLAmZzoFw=;
        b=cIsDd9ym+oAAoV9nS44LmeiLZQ0TX6ht7DrvY5utsHOl8Ob6CbfKP4FJNUTcre+LKt
         O8v9cTlDM/9fJEp5CgdrfscFNqYYc5HCsEKVulWbc/YlbDiuSM7NYCRerYVPHQ9Ib7ZM
         yoXAw1HbFlu6/weTzaF0tuSivbHIFkS9plAJxamY3HyKXKzLAGVU0udIRX65yodBRw9X
         0HKCFg2GZJtOCyfbLlPBcAAUwgly4ElTRvFIsitdrYbGn5phIi5z1IaQqld+Oc2Die9H
         nz+3w6w9DUCd5rQZ8G4uDchebehOUP3b/bcodzLsGEXOFVpZ8pEvjFa8R4n9pog2XnRK
         OTAA==
X-Gm-Message-State: AOJu0YxDpmcrIMRIJWJ9fNEhBneaIjU0KbaPcnTuhSloBLA1jYAUyfIZ
	5BXmNDFjrW+7JhjD27I/7C7XPqcC9zbtKRrl9KE7ZQ==
X-Google-Smtp-Source: AGHT+IFOk3J6vBZTsJxg388MNQCJMjTcG8W+DH3dP6GL0deqCh8fFy9/EyNa6KL47kcSMuFWJadimLKiZWNtIiQzE1c=
X-Received: by 2002:a0d:d8d3:0:b0:583:d1fa:1fc4 with SMTP id
 a202-20020a0dd8d3000000b00583d1fa1fc4mr20089253ywe.26.1697022990611; Wed, 11
 Oct 2023 04:16:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231009172717.2695854-1-dmitry.baryshkov@linaro.org> <ZST_1ROGwLe4dZIm@gerhold.net>
In-Reply-To: <ZST_1ROGwLe4dZIm@gerhold.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 14:16:19 +0300
Message-ID: <CAA8EJprAFLZQASs8p-mBbygNdP0Fax8NZK1_DeT2=gktX-4O7A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: pad generated DTB files
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 10 Oct 2023 at 10:40, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Mon, Oct 09, 2023 at 08:27:17PM +0300, Dmitry Baryshkov wrote:
> > On Qualcomm platforms the bootloader populates device tree with some
> > extra nodes / properties (like memory size, boot time, etc). Usually
> > default padding is enough for the bootloader. But in some cases the
> > board will fail to boot if there is not enough padding space.
> >
> > Add `--pad 4096' to DTC_FLAGS so that all Qualcomm DTB files get this
> > extra padding space.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >
> > This is primarily necessary for SA8155P, but I have the feeling that it
> > might be better to be enabled on the global scale.
>
> By default there should not be any padding at all. This is because the
> bootloader is responsible to make room for new nodes by calling
> fdt_open_into() with an adjusted size. This will result in a simple
> memmove() that shifts the end of the DTB in memory so that the padding
> can be used for new nodes and properties.
>
> If the bootloader doesn't add enough padding then it is broken and
> should be fixed.

Several other platforms use --pad, see microblaze, openrisc and
powerpc. In some cases we just can not update the bootloader.

>
> Both LK [1] and ABL [2] do or have done this correctly at some point.
> If more space is needed for some weird new modifications the padding
> size there should be adjusted.
>
> [1]: https://git.codelinaro.org/clo/la/kernel/lk/-/blob/lk.lnx.1.0.r54-rel/platform/msm_shared/dev_tree.c#L2051-2057
> [2]: https://git.codelinaro.org/clo/la/abl/tianocore/edk2/-/blob/uefi.lnx.4.0.r40-rel/QcomModulePkg/Library/BootLib/UpdateDeviceTree.c#L1402-1414

In this case ABL fails to handle the situation:

Cmdline:  ignore_loglevel console=tty0 console=ttyMSM0,115200n8
earlycon root=PARTLABEL=rootfs rootwait adbd --
androidboot.verifiedbootstate
Error adding node
Error carving out UEFI memory: FFFFFFFF

Adding --pad 1024 is enough for this board to boot.

>
> By adding --pad 4096 globally we would waste pointless empty space for
> every single DTB, which ends up on all systems that use generic kernels
> with Qualcomm support included. With the ~230 DTBs we have at the moment
> this would already waste ~1 MiB (~16 MiB -> ~17 MiB total).
>
> So please:
>
>  - If you can, update the bootloader and fix the padding size there.
>
>  - If this is not possible: Add the padding only for the boards with
>    broken bootloaders with a clear comment that this should be the last
>    resort for devices that are locked down.

Yep, this sounds like the correct approach in this case. Thank you.

>
>  - Or maybe boot a less broken bootloader inbetween (like U-Boot). :)
>
> Thanks,
> Stephan
>
> >
> > ---
> >  arch/arm64/boot/dts/qcom/Makefile | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > index d6cb840b7050..8e9fa2539265 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -1,4 +1,8 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +
> > +# pad DT allowing bootloader to populate several extra nodes
> > +DTC_FLAGS += --pad 4096
> > +
> >  dtb-$(CONFIG_ARCH_QCOM)      += apq8016-sbc.dtb
> >
> >  apq8016-sbc-usb-host-dtbs    := apq8016-sbc.dtb apq8016-sbc-usb-host.dtbo
> > --
> > 2.39.2
> >



--
With best wishes
Dmitry

