Return-Path: <devicetree+bounces-78482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E1991269C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 15:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3BFCB2606C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD40F156221;
	Fri, 21 Jun 2024 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="bjtyj2p4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C50B1552F8
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 13:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718976233; cv=none; b=oUzLt/7wvVnogv8Gx/dp5vBVhWP1Ajwr2oYKF2TsmNb4hCRYrmuqiltzRE/jDfGu62C8lWSx822Te6FhJZYzgrd5aA6wyjpo6OiQ8jyXtcwlbCGtNQC4EGs7X9LZP3V4LgVCoNf10P9uMm6hQIHmJSToFJIzSOAsouKaswTa2Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718976233; c=relaxed/simple;
	bh=wQtusHT7PTHfNhISON3c4fk/0f68+/Mcm3emwcz0W2Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=im1NuolE5boMgBd3lvqLb4bNAtNdn3NS3MIpcHZAr+Nk4BtdhMQWghBKKkVrLawd6Wblq9U6xiaKvzYJ5/5DOUxmiJDVkoWyFZ4Z3EuwPRxzCuO87cwTkYpmLDqu/wAD8Mdbp524lKdN3L4qmXObbu29fCZTnStiypG45CC0YFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=bjtyj2p4; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52bc335e49aso2333532e87.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 06:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718976229; x=1719581029; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lh6DHy5f3eoMV1E961uZI87Rq1n/gY0n/fr9bCAQrdo=;
        b=bjtyj2p4U32GeMDYPSUWmtE2chTbi1v+y5UfIGQC9LEUpC/OkUlilX5eOFlWPjKkF2
         qGe2Q+8jPSNTYIRSXG62GOsDi+9yNmRjVL1O4136JvCl8YCVbSJmMiDn0iyE48QF+noj
         pNXmYpbCubSyKA/c8TV0D4sg1tw2fB1XAG0PChFXO1DR863DYtqrGl/uIFqlLVSpw2XD
         7wFFJ7AJdLdvFSUYayx5g+q8kYUwqmnSx6u+f8T3NdMv42+yEaRWhWiWs0NZcPQwrJ9z
         0gunHamNuRjqeEvfoiC00FK96wfDMMJUaAV0APR2FVMtD2VMV69wLgtapdkgfAKz6Ry2
         jacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718976229; x=1719581029;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lh6DHy5f3eoMV1E961uZI87Rq1n/gY0n/fr9bCAQrdo=;
        b=IFRMtyN3wj4/Z8fCfIWNa0dfqPsH/IHAK3MXohWyuSmwl8AqrWS/iSnKIlBrjyWxlG
         eQryQPTndHN1cagYJq0+43XrIDPIDhk8fyYdrjvMXpmhJmreRhucxgkWqmzeOJHDAk79
         DBlaBOEz6bQLZYpesRD37EuSnYM/di5S4Mt7+iIjeSw9ImXbkPQhqWGBZKxnzqPXtdfo
         GRCtWqdssLbo4qcXOYUXU3TuCBeGOyqsax4wF9zKIKBlWs2P3+GPFF91YPz5yQ/ql3zp
         tnqoyL6c/lA4e8BYH2bpkJKlvx59ms58SQDfB92DM2wJ8sEhF+/ZgAcwG0uU1hJYEy5p
         Khrw==
X-Forwarded-Encrypted: i=1; AJvYcCUY1IbNrIBTfiUlq1ohmut616xHoKHz6b0N8+pzJLUjvmpfiMQXXm4jvnGh10XCl1meAoGkpYd21xJtKQDRhHMEGNSrjAnj1dNrZw==
X-Gm-Message-State: AOJu0YyhvTGQ3neejqOxlwhbRF5CNXGvgHjFF3NUh0fSxTcwpDBj2LLo
	SLHquyoG/Q1AZCYHyHgqpYVQfZ7DFEbzx5LMf55GO7hnWOlNEry/P7xsEq1w51KdHI/30j1x5v8
	5QYP7dkcazC9k/47c9CJH76i8XoQoNM0E8TzLIg==
X-Google-Smtp-Source: AGHT+IG5Y1gn2ekPnM1m7JqqJu9Ttsj5bBzwQpCQM5QC3ClAcEetDkpxMFp8GreL0i+Q2R/FLHudf9Yf2q2tQ+uH6IQ=
X-Received: by 2002:ac2:5e91:0:b0:52c:b199:940b with SMTP id
 2adb3069b0e04-52ccaa62a3emr5131441e87.32.1718976228569; Fri, 21 Jun 2024
 06:23:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605123850.24857-1-brgl@bgdev.pl> <171889385036.4585.6482250630135606154.git-patchwork-notify@kernel.org>
 <0b144517-4cc5-4c23-be57-d6f5323690ec@163.com> <CAMRc=Mf2C4ywa+wQ6pcq5RtehQD00dDhzvS6sDcD8tAn=UypUA@mail.gmail.com>
 <33c7587b-83a4-4be7-b00a-d30874df8c22@163.com>
In-Reply-To: <33c7587b-83a4-4be7-b00a-d30874df8c22@163.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 21 Jun 2024 15:23:37 +0200
Message-ID: <CAMRc=Me8h-L6mbmOfHce9FF8Koh4_fp=cWAeWrQAj-ukxBOL2g@mail.gmail.com>
Subject: Re: [PATCH v9 0/2] pwrseq: introduce the subsystem and first driver
To: Lk Sii <lk_sii@163.com>, marcel@holtmann.org, luiz.dentz@gmail.com
Cc: patchwork-bot+bluetooth@kernel.org, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kvalo@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, lgirdwood@gmail.com, 
	broonie@kernel.org, catalin.marinas@arm.com, will@kernel.org, 
	bhelgaas@google.com, saravanak@google.com, geert+renesas@glider.be, 
	arnd@arndb.de, neil.armstrong@linaro.org, m.szyprowski@samsung.com, 
	elder@linaro.org, srinivas.kandagatla@linaro.org, gregkh@linuxfoundation.org, 
	abel.vesa@linaro.org, mani@kernel.org, lukas@wunner.de, 
	dmitry.baryshkov@linaro.org, amit.pundir@linaro.org, wuxilin123@gmail.com, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-pm@vger.kernel.org, bartosz.golaszewski@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 11:04=E2=80=AFAM Lk Sii <lk_sii@163.com> wrote:
>
> On 2024/6/21 14:36, Bartosz Golaszewski wrote:
> > On Fri, Jun 21, 2024 at 3:14=E2=80=AFAM Lk Sii <lk_sii@163.com> wrote:
> >>
> >>
> >>
> >> On 2024/6/20 22:30, patchwork-bot+bluetooth@kernel.org wrote:
> >>> Hello:
> >>>
> >>> This series was applied to bluetooth/bluetooth-next.git (master)
> >>> by Bartosz Golaszewski <bartosz.golaszewski@linaro.org>:
> >>>
> >> Hi luiz,
> >>
> >> i am curious why Bartosz is able to merge his changes into bluetooth
> >> development tree bluetooth-next directly.
> >>
> >
> > This conversation is getting progressively worse...
> >
> >> 1)
> >> his changes should belong to *POWER* scope instead of *Bluetooth*
> >> obviously, however, there are *NOT* any SOB tag from either power and
> >> bluetooth maintainer. these changes currently only have below Acked-by
> >> and Signed-off-by tags:
> >>
> >> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> >> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>
> >
> > It's a new subsystem that has been discussed and reviewed for months
> > and thoroughly tested. Please refer to the cover letter under v8
> > linked in this thread. It's not related to power-management or
> > power-supply, it's its own thing but IMO the best place to put it is
> > under drivers/power/. And I will maintain it.
> >
> >> 2)
> >> his changes have not merged into linus mainline tree yet.
> >>
> >
> > This is why they are in next! They are scheduled to go in during the
> > upcoming merge window. But since changes belong in multiple trees, we
> > need a cross-tree merge.
> >
> >> 3)
> >> perhaps, it is safer to pull his changes from linus mainline tree when
> >> merged than to merge into bluetooth-next firstly.
> >>
> >
> > It's not safer at all, why would spending less time in next be safer?
> >
> it seems this patch serial(new subsystem) does not depend on bluetooth
> and also does not belong to bluetooth subsystem, but have been contained
> by tip of bluetooth tree.
>

It's the other way around: bluetooth changes (namely the hci_qca
driver) depend on the power sequencing changes.

> why not follow below merging produce?
> 1) you send this patch serials to Linus to merge within linus mainline tr=
ee
> 2) luiz then pull your changes from linus mainline tree.
>

I explained this in my previous email. Why would you want these
changes to needlessly wait for another release cycle? It makes no
sense. It's just a regular cross-tree merge like hundreds that are
performed every release.

> >>> On Wed,  5 Jun 2024 14:38:48 +0200 you wrote:
> >>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>>>
> >>>> Hi!
> >>>>
> >>>> These are the power sequencing patches sent separately after some
> >>>> improvements suggested by Bjorn Helgaas. I intend to pick them up in=
to a
> >>>> new branch and maintain the subsystem from now on. I then plan to
> >>>> provide an immutable tag to the Bluetooth and PCI subsystems so that=
 the
> >>>> rest of the C changes can be applied. This new branch will then be
> >>>> directly sent to Linus Torvalds for the next merge window.
> >>>>
> >>>> [...]
> >>>
> >>> Here is the summary with links:
> >>>   - [v9,1/2] power: sequencing: implement the pwrseq core
> >>>     https://git.kernel.org/bluetooth/bluetooth-next/c/249ebf3f65f8
> >>>   - [v9,2/2] power: pwrseq: add a driver for the PMU module on the QC=
om WCN chipsets
> >>>     https://git.kernel.org/bluetooth/bluetooth-next/c/2f1630f437df
> >>>
> >>> You are awesome, thank you!
> >>
> >
> > Why are you top-posting anyway?
> >
> it is caused by my bad mail client settings. thanks for reminder.
> > Bart
>

Luiz, Marcel: Am I wasting my time with this person? Is this another
Markus Elfring and I unknowingly got pulled into a nonsensical
argument?

Bart

