Return-Path: <devicetree+bounces-222840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC85BAE3EF
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:53:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C6F77A835D
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 17:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5129D2472A8;
	Tue, 30 Sep 2025 17:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XrRNK0FK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F901E868
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 17:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759254789; cv=none; b=Q5vTGxCpmv1Qc3MrcdrZ6d3Anbee+gL8PuUVeSBPu4UOcvTTEazx/bJjOBD4nc7iXIv+vPRqvlcHVyb1Ijq6qWPu1hj+9RLFWkK45kensK2dF6uXHzyJdU5SCAMMeeoFgWmyCbe5zmvxhNR9LD066adExU3M9lYRSVZbCZ2QZrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759254789; c=relaxed/simple;
	bh=x35P6LuCj3LWW8JZjFg8yDqZofOTIZQjUJtY8jfPBJg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XOYZvnvY8fFvGZzUXVqiTwAz260A+40dGNsTRjIEsGPKljpr/O/Zixq2EIpjHkZDm7rLy3+TArlbh/kSVYXyX38XmCs/xE5IhXXFvt39FHrXNUCenFwXIC8DjvYu1jWdVoFBBFYEAoGkgUvJwWUOVNi1gMntrBlXMUFAkZe9Ovs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XrRNK0FK; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-81fdd5d7b59so47314146d6.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759254785; x=1759859585; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BCBIbBYTop5A6jYeRu7ELO0tniBU6tTB+IOx31qQ3MI=;
        b=XrRNK0FK1w4SC6BZMX3kiWeSxv7JE9V1sAstO6BHw8+NXRqYly/9fVKcs8jIi9Czmj
         XYkDyJIy79m3D92KxoubmJr0lYkCn5GdJKkBoQkGl6bDhxAPa84JYxMa28FAY71fblg0
         Ngwtk3Jnn5phnERAx6CjlMrsFJm8Vic2ZOlg9eQQwK3A/a0V+69VjBHDRH3qsUw/kUhS
         P2KUSuTVm0dtUtazKoI4/kZoq3cAHPsJdoy+YsxdLeQNXIzmi0+3fcWzMTuPBHoaKn0m
         t3BDLxksMUfmVsGBjZnBVnBRJ5QwFFNityFCSjhikPdDcU4LAgo4hv21/XZCuT4NdKkL
         s13g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759254785; x=1759859585;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCBIbBYTop5A6jYeRu7ELO0tniBU6tTB+IOx31qQ3MI=;
        b=A/ZgD3ZfzSNBjoTG2A+JA9tl9DZSNKtJcUGiOWCZ4n1OTvqRtw901Yo6S2uHQrf2yj
         JEO2jkYr23Vcv1p8VM27oFur0vsWS83IFynYGg1jdXcVKOX05bEbieKexbV3IuZAbT+t
         bVmsIMRckgc/UJfe/HGdq4SrZm0BBin2S4GNsBUDouZxTE64tI154Xrrn2HE1jOhHo0t
         qp3pxJKkXy/L8jFqUAmYNeF1U0mhaFXNAeEf+SBj565AonAaKvvZtGEr1B0Fok8KzeSC
         AaDgPXHQByLGbap9KgkCe+Xdv7dl2ZiaXptPeAoMtG1325aLRHw6U5NH+dUJPyeYCP4a
         1/aQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZ8sjdnWoSUCCOlPTkZq60ae2MqEzsT3ffZSCZnH6WUhUU6vApIsfo6CErB4mBkLmB8HquSo7T/G1N@vger.kernel.org
X-Gm-Message-State: AOJu0YxN74iDafg6ZRF/Htj8kxaFpa6vRxeajNcXZKVJkfwRHiSf+h45
	wl0wB41Y+459xjmYfG9mxI89Ov3x/+ZQStx24yoXR1OYLNTbALQChtmKNtOy/xHs7GdbSFeASUT
	JM5MZWxF0N47JD+Nm7wY1c+bTMdJu6nE=
X-Gm-Gg: ASbGncsQZsw3dF1pJHzTTZlIUs5E1EpryU5sZhsuWv9POT3dOg4PxogJzq1iveuqtpz
	2llFzzlGKdiCEw4v49BxQm9coTRdmNj79zift7rP2n4sepr/7IXcRaq+mJcGzxAlyqOgY5OO+zu
	vhbsKHHllXFoKbfs/g8rmiixMVWUsHVi86Nr+3u7y25Mdl0rYcX5Lekzn29V1APPlorqL/rIAG0
	Edn2HVBLdkG+NSoR7LEvGy9VJI51Vnq
X-Google-Smtp-Source: AGHT+IH3LG1eaMCJQrs7hRvNNQFjTHAdF3HnSynbQVUv0PZozyh21VEl+N59P07/3LqK4vgOsVNfabWZJIcEr41/YrI=
X-Received: by 2002:a05:6214:2686:b0:78e:c5c7:1209 with SMTP id
 6a1803df08f44-873a6a8cdb1mr8752126d6.56.1759254785247; Tue, 30 Sep 2025
 10:53:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
 <CAP_9mL6+uoeG7LX8YCcUFjoU13De1CdPFqxNNfoJvOdsOrYo5Q@mail.gmail.com> <DD63EEOKPWNV.3IK12D6CFPTQZ@cknow.org>
In-Reply-To: <DD63EEOKPWNV.3IK12D6CFPTQZ@cknow.org>
From: jjm2473 <jjm2473@gmail.com>
Date: Wed, 1 Oct 2025 01:52:53 +0800
X-Gm-Features: AS18NWBqxahGz4XH6x393wNkZ6fur-x0rbKIBXXIMh5nx8Rk_7tlCv4UZyCM6zo
Message-ID: <CAP_9mL4CtH1n9RoYNif7bPZ0Lm72zAFyUZzO9xzMUVkrU8n8VA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
To: Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, jbx6244@gmail.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your explanation! I got it.
  Liangbin

Diederik de Haas <didi.debian@cknow.org> =E4=BA=8E2025=E5=B9=B49=E6=9C=8830=
=E6=97=A5=E5=91=A8=E4=BA=8C 19:19=E5=86=99=E9=81=93=EF=BC=9A
>
> On Mon Sep 29, 2025 at 8:09 PM CEST, jjm2473 wrote:
> > I have another question. If there are reviewers or co-authors later,
> > do I need to add it to the commit message and send it again?
> > Or should the reviewer or co-author add the message and
> > continue to deliver the patch?
>
> When you get a Reviewed-by tag, you should add that tag too to a new
> version. But there's no need to send a new version to just add those
> tags, the tooling used by maintainers picks those up themselves.
>
> If you 'just' get review comments, then you'd usually just
> improve the patch and you could reference it in a changelog item (to
> indicate you addressed it, ttboyk).
> If you think a reviewer helped you 'significantly', you could choose to
> add an Helped-by tag, but whether you think someone deserves some
> credits that way, is up to you(r judgement).
>
> (Co-)authors are usually known upon first submission. If you later find
> out that that list was incorrect/incomplete, then you would add
> Co-developed-by + Signed-off-by tags on a new version.
>
> HTH,
>   Diederik
>
> > Diederik de Haas <didi.debian@cknow.org> =E4=BA=8E2025=E5=B9=B49=E6=9C=
=8829=E6=97=A5=E5=91=A8=E4=B8=80 18:20=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> On Mon Sep 29, 2025 at 8:57 AM CEST, Liangbin Lian wrote:
> >> > LinkEase EasePi R1 [1] is a high-performance mini router.
> >> > ...
> >> > [1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html
> >> >
> >> > Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
> >> > ---
> >> >
> >> > Changes in v2:
> >> > - Change deprecated "rockchip,system-power-controller" to "system-po=
wer-controller"
> >> > - Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm24=
73@gmail.com/
> >>
> >> You received an Acked-by on patch 1 and 2 in v1 of this patch set.
> >> You're supposed to add that to the next/new version(s) or explain why
> >> you choose not to do that (bc f.e. there was a major change, but that
> >> does not seem applicable to those patches).
> >>
> >> Cheers,
> >>   Diederik
> >>
> >> > Changes in v3:
> >> > - Fix typo ('status =3D "disable"' -> 'status =3D "disabled"') found=
 by kernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp=
@intel.com/
> >> > - Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm24=
73@gmail.com/
> >> >
> >> > ---
> >> >
> >> > Liangbin Lian (3):
> >> >   dt-bindings: vendor-prefixes: Document LinkEase
> >> >   dt-bindings: arm: rockchip: Add LinkEase EasePi R1
> >> >   arm64: dts: rockchip: add LinkEase EasePi R1
> >> >
> >> >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> >> >  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
> >> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >> >  .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 +++++++++++++++=
+++
> >> >  4 files changed, 700 insertions(+)
> >> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dt=
s
> >> >
> >> >
> >> > base-commit: d0ca0df179c4b21e2a6c4a4fb637aa8fa14575cb
> >>
>

