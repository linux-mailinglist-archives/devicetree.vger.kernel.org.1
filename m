Return-Path: <devicetree+bounces-222542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 496EABAA415
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 20:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 288851C20E6
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 18:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1465822A4DB;
	Mon, 29 Sep 2025 18:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i+n3Pcle"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0B5227EA8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 18:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759169414; cv=none; b=KCavdEoYzYJMyKG/46Lj9H4eHiOShVvXAOjazi2YPD63DNspt0W8p4/4qXMORjsl01Dzdl9d9bk6E512NbdhC1mB5ujtjDI+Q6iiBYeH1Xgwh/0MCIf5v9LcEghsdCau7QjPllfYaMxS64B12YY3gbo9H/PaPowz5WhB+Zg0LQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759169414; c=relaxed/simple;
	bh=OWPZ6GuPzz6dEvJ2ADm8A2qwhMU3YOecigkUlxGn4Fg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s7417RplBkBYOkyxHopG33BHic8wAWUIjV5RAuQ/v0BPSnDf9kmuo38slFYYe6D0lomWbBw7xoMNDFs7I2iXvUxEHM7mwq2vNwQaYS9/s9DpS6SMPAtPEO7bOyaINolm0C06UB6UFsanUbAMd/IqZ9bWNNbAuhhw9+6b3fkcYIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i+n3Pcle; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-7f7835f4478so31485356d6.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759169410; x=1759774210; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjmGfI+aM9Ga1Ig2g2mvuKGLXAvr/Dgn4bzVg8VMK/M=;
        b=i+n3PcleqJUJ9T8cyjlfa2JXqNtBocQaPV06Qa4/jHfVzbq5zh/44A/iNO+h/lSTrd
         7fjjendAlCwrkVwDKRbmjW/Vzoe7c2dFOo4akfglDyON94BPlyBYjzgNI29FfrIDjSRc
         oGBJg3TuwxjQTXSSPw4K8avrfpYRufLHM8Tu3bvfdR3n+iiB4fqbaqao7scNqJOlTUps
         MjQeTOLoB/xq71TX6jqGe4wDGezQZUC//NsBUJj9SkFy33dMmnWnAFEpFkZ9BuAqoLE1
         TA1vofufedSNVD68FuaWe6sXqyu0M33cvpQVeMx5h8Z2DBaIHxMHiSWyHnb2On65fm1v
         QxcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759169410; x=1759774210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjmGfI+aM9Ga1Ig2g2mvuKGLXAvr/Dgn4bzVg8VMK/M=;
        b=SQtox3i43cmFNhzgIQ3F82teIDPwhVdRAO+ivSBARr3eibwEWQd+7L6sZTCaNL+GL4
         PVFIMXlCXlZJ7jti7ZWYlrsjYwk2G/ldpfQk0LBxECwEtFQpAdmjXBwJ2wTjzVybTVPl
         QcOyaHLxAsni7LpsvUwJixQOOsup0zUVL+fzCgDQ7pl8IsdrvhaoS70zhLUFa/HjkhV4
         q4F8fqAk9CFwCcaUimshE4LTBh4GEZt05Fj/E+fERJ8eCxv4RSIsFz6QA2iGbxff1J34
         GN1G8s2lLLrQxF9NJYfiwDZNMmgpSPIH4sDMpABcRym906aWisAllYRdR/ulm7dZf9cr
         gYKA==
X-Forwarded-Encrypted: i=1; AJvYcCUqYARvAy4aRvLTa3w9dWVMKw+lPugZk84NwdZnCuMIGCf1v4ki1SmwvD33Wdo+NjFsvCyd8BfcSIQ1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo6hBFMwGjv617PdSqWxvhCS86E+H+Csgo8zFxGfHdxCJmlFA5
	gSBiAIR9dX3I/P1ESEemyGZZxaLUIC4wE/P0bGjQ5M1hQyMic0EHVS4vWzAMtZqbKx6IqBbGW4g
	koCnzaQQGld2qwT9rCjnY66PDPRjyR0k=
X-Gm-Gg: ASbGnctcCkLDmgzlu6cXVt1A7rwt9wdKIMV+w8rIjEPGNvbnT8guhjE9rvJdEkxNcrI
	v/H7NytyBHVbC/RfoXbkgPNDSsbOithvVUYAVtmdYlngbnBgcncQ0G+YCpvjQC/Y8iI7PdTOnkH
	XMPVmbvtB/rMtCabOCMoZ2f/j6eijtoJz0TTCJlJLzim9dxOxIUxHhbn16fdEc3h9ENmhqtvXqY
	4gX8U4H
X-Google-Smtp-Source: AGHT+IGsvBr58f8GtOgfL+nnwH2k9AWpbMH6XL9pshnNTk2Mp1zqCHalJ+sXa0/EQOqNTHncEJ0efp7KH1rOEknc4fQ=
X-Received: by 2002:a05:6214:27e6:b0:786:2d5e:fdf1 with SMTP id
 6a1803df08f44-7fc28076dc7mr264116426d6.2.1759169410033; Mon, 29 Sep 2025
 11:10:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
In-Reply-To: <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
From: jjm2473 <jjm2473@gmail.com>
Date: Tue, 30 Sep 2025 02:09:58 +0800
X-Gm-Features: AS18NWBq9CGmQ4er962r1cmMIH84RDNYTi26gLQ7NR29ewoVtK32nqAJCIuNoXA
Message-ID: <CAP_9mL6+uoeG7LX8YCcUFjoU13De1CdPFqxNNfoJvOdsOrYo5Q@mail.gmail.com>
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

I will fix that in v4.

I just forget to add `Acked-by` after `git format-patch`.
I will re-patch my local tree, add `Acked-by` to commit message,
then `git format-patch`.

I have another question. If there are reviewers or co-authors later,
do I need to add it to the commit message and send it again?
Or should the reviewer or co-author add the message and
continue to deliver the patch?

Thanks!
  Liangbin

Diederik de Haas <didi.debian@cknow.org> =E4=BA=8E2025=E5=B9=B49=E6=9C=8829=
=E6=97=A5=E5=91=A8=E4=B8=80 18:20=E5=86=99=E9=81=93=EF=BC=9A
>
> On Mon Sep 29, 2025 at 8:57 AM CEST, Liangbin Lian wrote:
> > LinkEase EasePi R1 [1] is a high-performance mini router.
> > ...
> > [1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html
> >
> > Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
> > ---
> >
> > Changes in v2:
> > - Change deprecated "rockchip,system-power-controller" to "system-power=
-controller"
> > - Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@=
gmail.com/
>
> You received an Acked-by on patch 1 and 2 in v1 of this patch set.
> You're supposed to add that to the next/new version(s) or explain why
> you choose not to do that (bc f.e. there was a major change, but that
> does not seem applicable to those patches).
>
> Cheers,
>   Diederik
>
> > Changes in v3:
> > - Fix typo ('status =3D "disable"' -> 'status =3D "disabled"') found by=
 kernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp@in=
tel.com/
> > - Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm2473@=
gmail.com/
> >
> > ---
> >
> > Liangbin Lian (3):
> >   dt-bindings: vendor-prefixes: Document LinkEase
> >   dt-bindings: arm: rockchip: Add LinkEase EasePi R1
> >   arm64: dts: rockchip: add LinkEase EasePi R1
> >
> >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> >  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 ++++++++++++++++++
> >  4 files changed, 700 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts
> >
> >
> > base-commit: d0ca0df179c4b21e2a6c4a4fb637aa8fa14575cb
>

