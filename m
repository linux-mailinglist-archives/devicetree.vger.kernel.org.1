Return-Path: <devicetree+bounces-1475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8F67A6829
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C9B72815B9
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93462339A8;
	Tue, 19 Sep 2023 15:33:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BAC220B25
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 15:33:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BEB6C433C8;
	Tue, 19 Sep 2023 15:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695137617;
	bh=yOR7LqcC6UnVhoCsLDoSMz+eMVTQCK/pdNaacI/x5Bo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZAIUBNC/0qwXAq6gm6nKiIr3sLLP03cF8m49gRipwAlqyc3n2vpJ8GuW969o3W9YH
	 /yGlMc0NF46oZejYW5fztUuvKUhX90Mod5vTRGIAcEYxpjQ+O04Aojzx2S2s7GLrga
	 +pfqh4jMLapazvEqviIzEXhCQFMNLJkmFt6DdXxJV2waXIXL171197UXR2VdTEmTgq
	 QE3l64QSGv/LvihIGFWEs7QYtzxXrInypDUgESDo9gH05jFUSY4FfPpgIgmMBhx7tt
	 eTKTScynJZ3in0zD/9ynzm3IBLknxAhSo83FOTySFP+VchPr3zGfmKyhXDZPb0lHJi
	 Eaj+0VfHzcYNQ==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50336768615so885797e87.0;
        Tue, 19 Sep 2023 08:33:37 -0700 (PDT)
X-Gm-Message-State: AOJu0YzpHDa+0TU8wcvoMcW/M8DziGXQvuZdeXfY4zOJPygMOBeRFcAI
	uqwZCDZuGfcIvuDG2hS/sD6AuFQuZ6877PwFbg==
X-Google-Smtp-Source: AGHT+IG4NemizbroTHabZqJmVRYbfzQj/Z71eTpMw47wZmTM8LxdOwDVEuRVse/8BE4YHVprFzwItJWQTZKQPAmGY7o=
X-Received: by 2002:a05:6512:10d1:b0:4ff:9a75:211e with SMTP id
 k17-20020a05651210d100b004ff9a75211emr29911lfg.42.1695137615334; Tue, 19 Sep
 2023 08:33:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230911214623.2201324-1-robh@kernel.org> <CAMuHMdXAW6MNEdo+vuTPkpGPXa0ebfG3Ec_=i0UhEtt6YfSQeQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXAW6MNEdo+vuTPkpGPXa0ebfG3Ec_=i0UhEtt6YfSQeQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 19 Sep 2023 10:33:22 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+kj8Sui1eQJNdqm34ENQoPCk5Q1NDYg2gag9akBoLmDw@mail.gmail.com>
Message-ID: <CAL_Jsq+kj8Sui1eQJNdqm34ENQoPCk5Q1NDYg2gag9akBoLmDw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Apply overlays to base dtbs
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 7:08=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Rob,
>
> On Mon, Sep 11, 2023 at 11:47=E2=80=AFPM Rob Herring <robh@kernel.org> wr=
ote:
> > DT overlays in tree need to be applied to a base DTB to validate they
> > apply, to run schema checks on them, and to catch any errors at compile
> > time.
> >
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Thanks for your patch!
>
> > Looks like some of these apply to multiple base DTs. I've only added th=
em
> > to 1 base.
>
> Indeed:
>   - draak-ebisu-panel-aa104xd12.dtbo applies to r8a77990-ebisu.dtb, too,
>   - salvator-panel-aa104xd12.dtbo applies to all salvator-x(s) variants.
>
> So should they be added to all bases they apply to?

I'll leave that to you. All depends what combinations you want to
validate. I just don't want overlays in the kernel that don't have a
base in the kernel.

> Or, if you intend none of the composite DTBs to be consumed as-is, but
> only intend them to be created for validation, perhaps the additional
> rules should be grouped together at the bottom of the Makefile?

Folks may want the composite DTBs if their bootloader can't apply them
or they don't want to mess with it in the bootloader.

> > --- a/arch/arm64/boot/dts/renesas/Makefile
> > +++ b/arch/arm64/boot/dts/renesas/Makefile
> > @@ -64,6 +65,8 @@ dtb-$(CONFIG_ARCH_R8A779F0) +=3D r8a779f0-spider.dtb
> >
> >  dtb-$(CONFIG_ARCH_R8A779G0) +=3D r8a779g0-white-hawk.dtb
> >  dtb-$(CONFIG_ARCH_R8A779G0) +=3D r8a779g0-white-hawk-ard-audio-da7212.=
dtbo
>
> Do you still need the individual *.dtbo rules? Perhaps you are
> afraid that make will auto-delete them as they are only used as
> intermediaries?

Yes you need them if you want to install the .dtbo's. I'm not sure
offhand if it matters for cleaning.

Rob

