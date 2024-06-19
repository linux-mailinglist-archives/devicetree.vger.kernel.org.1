Return-Path: <devicetree+bounces-77349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 142B790E49F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 09:36:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37FA31C20ADA
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 07:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E3287710F;
	Wed, 19 Jun 2024 07:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="MxEF1spK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF177641D
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 07:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718782549; cv=none; b=WHOx3xuBj7aYdo79r4nakuXf9cKpJ5+W9r3D15pyBGBEJejtYqQ2PY7frpfApWiA29YRnbNvE19RN5ZDyji+Q7Vt9v87/Omjt4GFhZ4eANDEMzZ++64mg75ZYnQv0kM2w0SkIAs0uwOqei463rjFHoCiHNzaFQ4zt949kptTO74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718782549; c=relaxed/simple;
	bh=+S5Uv3HO+4mevHlHKh5Y+xeuc2VhQf6TXsTM9rXh0js=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QjAZc+VnUEARBv94qRiJuxnMHBAmvv9PHqfCbpTYFqxGLX6nlAestAqOJWa8vru2BV07SEpofZaM5vDdfuaBHIdF5tC0/hUvA1uCC0VrHdy7sL9k+0z622IDeE8u21SBbQ+tSVBTjCjrlI86LKQo/xI81bLtwyTvgGPXcJ9GC70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=MxEF1spK; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52b78ef397bso526236e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 00:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718782545; x=1719387345; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NAirk0f0PKTwzOziyA/BSlPSIpqsEtALcS+cg2LXns8=;
        b=MxEF1spKn7wqLKraUNzIKIXdzjGCH44lcL/5kKGAm723HiZD45aIY43SFf+bi1WtDn
         TqnVv4YeVPBMM3mq2TMhK7p8J7Ci749uGax12nigJ1wjv9YTC065zxoFYC+Ql+zGJmxk
         xCYJISE7lBRSzrrwomhJRt7ghW9Kyjmp5O4N8kQAtoe1GQlQ3iShfYR1zRhw7eoFtpBP
         208OywI7jS1WdEU3Ttyd5Qvlm65djZTIX76XqRFezX3//r7ZyhpD6zIMeB0An4uvs1Al
         iuFj8lV75NgJQ564yEU6uuvlwtR1WDWdG4QqmexokdF3qShGfy7+4WeKL54d+KDKh298
         HFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718782545; x=1719387345;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NAirk0f0PKTwzOziyA/BSlPSIpqsEtALcS+cg2LXns8=;
        b=uRbzVC5iXR+R5x8G3DqIDKCNA+MUU6PIAWkCTdkNPVyWLDn+UlNs+g3gV59dmwTmlC
         ZQ2ZJWWkQ8wITmSRoDzIEREPQBNKyH30dtmxRVMVU/ZwCOP/nbxhZovykNMILUoZMMhs
         QhuoDT77uz90prZQgW7sT1qwwdi3lX1SPX8sguS1VifXU38Xe6C8Nf2pbkLXYTxIsNR1
         kVQOqwV4RQyo4EF4QT9L6nhHSzPv64p5tM5RuJjIybPBbfa7sa4RlWFqq92NKSbQuE7Y
         PamSBreeirB40n0jXPjB7eyVZ0fKcWqW7tYW1NoZJ/VeAg3w0Cs7VAccOvMcjjVPZeXa
         rtzg==
X-Forwarded-Encrypted: i=1; AJvYcCUJPRDvh2OIliH/+FfPJ5n70uoeZTiEOtQxeFJ9JFN2fd+fKVN+y/pHiPyA7USpUVOw32xtgKyHdC0PI3xU/+P0CbM8nm2jPs0J5g==
X-Gm-Message-State: AOJu0YzaqPNmRyH0hej7xw3P7Y2pbYrBS6J7wAeA/+cGtvgetwbzyiBO
	dPTknZqLndV+y91vSXWjYf7Z9PDyutGFBtpEXCkyJ+mpJyNDaO5S/hVL6KeFymGlJctq6tXiaWb
	oAPLHTvys/OfYDaUeNdx0rriJBzhD9ss+DOhbBw==
X-Google-Smtp-Source: AGHT+IFSnKagBTz38/KAjI8t4GnDrMsPoKM/8j0e3wn2GQsI00XKi7Y1hebzFZ6x66wwp3aNl7M+IXmjhb/C18jBEp4=
X-Received: by 2002:a05:6512:3b89:b0:52c:80e6:60c7 with SMTP id
 2adb3069b0e04-52cca1bfa80mr623875e87.13.1718782544654; Wed, 19 Jun 2024
 00:35:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240612075829.18241-1-brgl@bgdev.pl> <CABBYNZLrwgj848w97GP+ijybt-yU8yMNnW5UWhb2y5Zq6b5H9A@mail.gmail.com>
 <CAMRc=Mdb31YGUUXRWACnx55JawayFaRjEPYSdjOCMrYr5xDYag@mail.gmail.com>
 <CABBYNZLPv3zk_UX67yPetQKWiQ-g+Dv9ZjZydhwG3jfaeV+48w@mail.gmail.com> <CAMRc=Mdsw5c_BDwUwP2Ss4Bogz-d+waZVd8LLaZ5oyc9dWS2Qg@mail.gmail.com>
In-Reply-To: <CAMRc=Mdsw5c_BDwUwP2Ss4Bogz-d+waZVd8LLaZ5oyc9dWS2Qg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 19 Jun 2024 09:35:33 +0200
Message-ID: <CAMRc=Mf2koxQH8Pw--6g5O3FTFn_qcyfwTVQjUqxwJ5qW1nzjw@mail.gmail.com>
Subject: Re: [GIT PULL] Immutable tag between the Bluetooth and pwrseq
 branches for v6.11-rc1
To: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2024 at 5:00=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> On Wed, Jun 12, 2024 at 4:54=E2=80=AFPM Luiz Augusto von Dentz
> <luiz.dentz@gmail.com> wrote:
> >
> > Hi Bartosz,
> >
> > On Wed, Jun 12, 2024 at 10:45=E2=80=AFAM Bartosz Golaszewski <brgl@bgde=
v.pl> wrote:
> > >
> > > On Wed, Jun 12, 2024 at 4:43=E2=80=AFPM Luiz Augusto von Dentz
> > > <luiz.dentz@gmail.com> wrote:
> > > >
> > > > Hi Bartosz,
> > > >
> > > > On Wed, Jun 12, 2024 at 3:59=E2=80=AFAM Bartosz Golaszewski <brgl@b=
gdev.pl> wrote:
> > > > >
> > > > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > > >
> > > > > Hi Marcel, Luiz,
> > > > >
> > > > > Please pull the following power sequencing changes into the Bluet=
ooth tree
> > > > > before applying the hci_qca patches I sent separately.
> > > > >
> > > > > Link: https://lore.kernel.org/linux-kernel/20240605174713.GA76726=
1@bhelgaas/T/
> > > > >
> > > > > The following changes since commit 83a7eefedc9b56fe7bfeff13b6c735=
6688ffa670:
> > > > >
> > > > >   Linux 6.10-rc3 (2024-06-09 14:19:43 -0700)
> > > > >
> > > > > are available in the Git repository at:
> > > > >
> > > > >   git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux.git ta=
gs/pwrseq-initial-for-v6.11
> > > > >
> > > > > for you to fetch changes up to 2f1630f437dff20d02e4b3f07e836f4286=
9128dd:
> > > > >
> > > > >   power: pwrseq: add a driver for the PMU module on the QCom WCN =
chipsets (2024-06-12 09:20:13 +0200)
> > > > >
> > > > > ----------------------------------------------------------------
> > > > > Initial implementation of the power sequencing subsystem for linu=
x v6.11
> > > > >
> > > > > ----------------------------------------------------------------
> > > > > Bartosz Golaszewski (2):
> > > > >       power: sequencing: implement the pwrseq core
> > > > >       power: pwrseq: add a driver for the PMU module on the QCom =
WCN chipsets
> > > >
> > > > Is this intended to go via bluetooth-next or it is just because it =
is
> > > > a dependency of another set? You could perhaps send another set
> > > > including these changes to avoid having CI failing to compile.
> > > >
> > >
> > > No, the pwrseq stuff is intended to go through its own pwrseq tree
> > > hence the PR. We cannot have these commits in next twice.
> >
> > Not following you here, why can't we have these commits on different
> > next trees? If that is the case how can we apply the bluetooth
> > specific ones without causing build regressions?
> >
>
> We can't have the same commits twice with different hashes in next
> because Stephen Rothwell will yell at us both.
>
> Just pull the tag I provided and then apply the Bluetooth specific
> changes I sent on top of it. When sending to Linus Torvalds/David
> Miller (not sure how your tree gets upstream) mention that you pulled
> in the pwrseq changes in your PR cover letter.
>
> Bart

Gentle ping.

Bart

