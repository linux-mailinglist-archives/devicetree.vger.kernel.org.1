Return-Path: <devicetree+bounces-184696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD16AD4EF7
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 10:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F51B189FF83
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73BE22417F9;
	Wed, 11 Jun 2025 08:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MwDyGr3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE732405E4
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 08:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632241; cv=none; b=ocFznPREXs+QGlC4byfJn/TcyfpaPr+9dZX5QIkT08fBuDhIY1o61q+C2vaLGLcvvxRjmaAdLDXId0sZkhWUt1icPuFBlGbmMzFag9GS2B8Zt2VDtYg3N3Cq0hM3gohxWfIjletOn2UcBi0TUy4DGPKkFSfFrkIG889ixvyw3FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632241; c=relaxed/simple;
	bh=BOiBGegJRIsJAwhdaPg0kbdMQr6Mw/a7D38ClN94RqQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=clRkzV3vhJ5N0uiiAu50VtQtYa8eMSG6s9mxZmbS9/XebR5CwdfUAxjSaso9GfD8xK7IsoMnll8aJ1xILIqKQAyz/R9O/+Rhnp2YQ+LUPxOLg9cjfwVkQDYRCql+/f2xWnROlbwLn1lbjjVl4uEfiAAnR4/jC8ITwk0FUffAowM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MwDyGr3A; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4e45ebe7ac1so1502592137.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 01:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749632238; x=1750237038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DV9t5sYiI13RU+dfHyim24Ym/TfwiK76Thbl9i9KKag=;
        b=MwDyGr3A2nzkrw0WRJBKyig3h5TX3soXhdOkju01GdrOlq89cqp7EZF7bwvhW3zHQn
         f8fh+TyYQblpZem3RFnmCOML5n4EeSnNN5mqEEAFrhEFX2SC5dxbjUvdB/WnSavbbUkP
         tVc/5VWCkpC2mx1k3DeBpIprw4aerWs3TJ4uxnFIYL4ZPiBis/Ju2eTYSkVggtXLr2vW
         fX4khsooHai2GyWiKNDAkOiPxUE2wXBYQCJsdmq3zedEQAzzuMZ1NzFbpARyLTSCAx4c
         CKewgbuyR3u7MIzmwrnZh4Roz7oCgTIzS7HwKmdFwuG9WgqJq50ow+otdbtHtBJm4vqz
         qNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749632238; x=1750237038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DV9t5sYiI13RU+dfHyim24Ym/TfwiK76Thbl9i9KKag=;
        b=eeIz8xv2uV2MHKt2bnZxnYbJv6ybRRsLazFGZv5cBMnhO8Ta9Cu34Yeo3J4sKbj4m5
         EkdGxkmTGUx7yvqOKZz1HYiidnaj/xoqcUZLLNaOHE6vMvHXziWr/8r7vwUMrdW7k3Ul
         8y4kXK6zU8b6xD5lF8NaR4DqzcN/rYQxkaEmwkOnLOMJPtGHpNyJl9nhYksGGEorGhlR
         zX20MOwaMsmJ0JmLlXlsh+y/gF8inoIKrGi5zxlUlX8A3a4Hb1+5UJVEJVLWWjjUDnc/
         +5D1Fbdu/pLvzjZSBmWpmMNed19eI8LHH7dGvB6iCX2tgblKIsH+QmCqmOzajCsk4fi+
         KSpg==
X-Forwarded-Encrypted: i=1; AJvYcCV/Nv4c1jEkugSRbLCm8Jd6qZ18TzJso9I67kemH3TWDDl63boAU5nA27yJsZNgW7f3YOOQl7e5eQBx@vger.kernel.org
X-Gm-Message-State: AOJu0YxAKkLsSaPBR5YLjqbtr8v8yD00a5toJc+1Jm/DnNW8ox7Fwz0k
	JKAiGoj/GwofqJ9me9u7NxxizRYm4VGeaZSALkqHml6XuWh6Asb1WWQLWQWPjpeJ5Qoii/8nb/z
	waOyCJGuoYCPnxfVbmQf+iOHAHCtVoUg63qfkRdUCcQ==
X-Gm-Gg: ASbGncuO8lAlW3ZIcdLEbHlCP4+7CKQzV0alie2UCSNVwQO+gGrvCMvwtaBd/FRGavW
	Tzc+TGbt4/6jE/LYR5p+GOGKhLVU7+Qbh6D57m398RBNPOEHs67hrrkf6DJfU5clqbmioGp15rF
	WAHSouXrUFU03hgQoVpg89jyPQhH0Q3VcygWPISuv6Q9Kqfb/q2OhhdZ2ubEbRjNrGc/+Ucm/KZ
	SUP
X-Google-Smtp-Source: AGHT+IFQXF+sKGFKqYzvIWVQbzE1S3LEQpj/qr+Mjs6PmUNCe9qyp66456X1HYoQ3EeWcUwMf1iYDwClQBMee+auP2M=
X-Received: by 2002:a05:6102:2b8b:b0:4e5:a2bf:4fd6 with SMTP id
 ada2fe7eead31-4e7bba95fc7mr1734093137.8.1749632238461; Wed, 11 Jun 2025
 01:57:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CA+G9fYuppX5LeRjOAZWsYRCs76PVbnv-TN_RrszhDsk=KregyA@mail.gmail.com>
 <15979303.uLZWGnKmhe@diego> <CADYN=9L+Gao0w_CThNd96-yYbZDMZnwY7RvagCOdzUC4rKc-Ug@mail.gmail.com>
In-Reply-To: <CADYN=9L+Gao0w_CThNd96-yYbZDMZnwY7RvagCOdzUC4rKc-Ug@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 11 Jun 2025 14:27:06 +0530
X-Gm-Features: AX0GCFuVYEyn4auVNPUyj-VnDVcIp7H9e0QdsmhpYhaxmLWCVhksJEW8y_9TvVE
Message-ID: <CA+G9fYvk7kBqDqPSxndxG2CxxVxhNrf4Easp-aYrR=UeTS1=eQ@mail.gmail.com>
Subject: Re: next-20250610: arm64 No rule to make target rockchip rk3399-rockpro64-screen.dtso
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Regressions <regressions@lists.linux.dev>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Peter Robinson <pbrobinson@gmail.com>, krzk+dt@kernel.org, 
	Dan Carpenter <dan.carpenter@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 10 Jun 2025 at 17:07, Anders Roxell <anders.roxell@linaro.org> wrot=
e:
>
> On Tue, 10 Jun 2025 at 13:22, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
> >
> > Hi Naresh,
>
> Hi Heiko,
>
> >
> > Am Dienstag, 10. Juni 2025, 12:25:31 Mitteleurop=C3=A4ische Sommerzeit =
schrieb Naresh Kamboju:
> > > Regression while building arm64 with the Linux next-20250610
>
> [...]
>
> > > https://storage.tuxsuite.com/public/linaro/lkft/builds/2yJ4IOQa1XxMqD=
gmzjEl7VszYE9/build.log
> > > * Build link:  https://storage.tuxsuite.com/public/linaro/lkft/builds=
/2yJ4IOQa1XxMqDgmzjEl7VszYE9/
> > > * Kernel config:
> > > https://storage.tuxsuite.com/public/linaro/lkft/builds/2yJ4IOQa1XxMqD=
gmzjEl7VszYE9/config
> >
> > thanks a lot for this notification.
> >
> > I'm surprised that overlay build at all when I built it yesterday.
> > But yeah, the dtbs_install target really broke with that change.
> >
> > I've amended the commit now [0]
>
> Thank you for the quick fix.
> I applied your patch and built it, it worked fine for me.
>
> I built it like this:
> tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
> --kconfig defconfig dtbs
>
> Tested-by: Anders Roxell <anders.roxell@linaro.org>

Thank you for providing the fix patch.
I confirm that the reported build regression is no longer present in
today=E2=80=99s Linux next-20250611 tag.

- Naresh

>
>
> Cheers,
> Anders
>
> >, to change dtso to dtbo and ran the
> > dtbs_install target sucessfully with that change.
> >
> > So on the next linux-next creation, this should hopefully be gone.
> >
> >
> > Heiko
> >
> > [0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchi=
p.git/commit/?h=3Dv6.17-armsoc/dts64&id=3De14491aaa6ff598bbe9d462e44c01ac65=
754f445
> >
> >
> >
> > >
> > > ## Steps to reproduce
> > >  - tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
> > > --kconfig defconfig
> > >
> > > --
> > > Linaro LKFT
> > > https://lkft.linaro.org
> > >
> >
> >
> >
> >

