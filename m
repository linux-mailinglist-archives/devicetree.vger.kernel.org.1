Return-Path: <devicetree+bounces-75066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFD2905582
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 16:45:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 321FC1C20C23
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 14:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0AA817E91E;
	Wed, 12 Jun 2024 14:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="BFkNjERn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB9C16C84E
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 14:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718203520; cv=none; b=LoK1ebuPud/yCh49+9vzRpGxjUA1IFuhMVa/9N8u3zpE8aqgcypoxGW5J96Fijfguj7ctq8CwlfLk182/uQQw70rPn+qqe3ixn2brKGiomCP54shmh+goSmEMCw6Stn9JMj0Pi9oDcrQkSa6EJeFhq5YWZQnx0L+QX4Y2JcoWf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718203520; c=relaxed/simple;
	bh=qVdlFFQS2BaD19Ey3z5GzCfufx3y6Uc5zexcAynm7dI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bjt6F0Uu4UnwHG4AxUsB+lGXhDF5BdLK5iRX1+arFKWLfe5ZTxH88t94w21d0H0SVdORIX89v4G6qPakv+k1+4yV/TlaqUqywsdXFOI8JNiIuUL9B/p3mTQYOOLjUAY4pqXVh+W4AD7KepE4IzH3Yjn+9jnb2udnA05hsYh8kdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=BFkNjERn; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52c4b92c09bso3234852e87.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 07:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718203516; x=1718808316; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZGiVxEk9JL6HUStWFO8Kiy7Xb2NHM+BULfQDsP8xQM=;
        b=BFkNjERnFutPWo95JDBzibOaDPA4rQBvA07M9oAaVmjN14s4hiTaROU4q6/rXR4FH+
         vlokAOBRGx5HeM+pA5WI58w164PUlaQ1TBb1OAOpVsBBSpdqLnyRm81pIJu/kr1QpwZ3
         /Nm++lpSuD/O1wJu5WMQJ3JSodVU5RJCIn94KFe1tKME168zdPfFyTe6GXHaki8ViLwT
         aAZTSpnxQkG76oMK/Fy9hznPxv9yJ/hkRAvui3n/L95yh1HUV31Vg2crTDJ/pMQ8C8lX
         Usm5jaKKvK3FD3FAelTtzHjlMEqrcjFmqUBDHu0wyy/UDfZRU+zCIIH9bwiDoxyL/I/e
         ug+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718203516; x=1718808316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ZGiVxEk9JL6HUStWFO8Kiy7Xb2NHM+BULfQDsP8xQM=;
        b=k3fGnv87PqRAQF+8fIGCSFW3Or/7yX+iT4ztuPz5SvT4cqyZ1FFi7Z+IPU+5a3YxRy
         /VDkspggblvTUpxcnqeUjHxEYqzd2ywKTc6ZrX7xB3BI8YGldYL5iAQIDTbu3zamx47d
         plGayCl439J+rylS6HdNeyidzAAZUqVXNlCXmbQakNp8a85aonpu3KMHbH+kjxn4mRtS
         W+YucqwtD03DEcCqoe866eBGeK7UmG7GfTfL7ZCQEk3P7BoWtUrC4wcevIbQ794vyctK
         DrhrZYo0ZNchmKDYZTDYgTQmnN+qep0aACvPDuxykAZiJ0xZ9ZArk2UEHDhRBooKYnVX
         Z0SQ==
X-Forwarded-Encrypted: i=1; AJvYcCXo+oPSIuckVhSSPwPotTDgm5qkQ+lrrU/LK4pRJcxv51yIl9AqaRPM0zOWsHa5k6VJs38143v2oAprHa1G3NbWkvoTKsyyBcLHcQ==
X-Gm-Message-State: AOJu0Ywx2svhMKba7ZV7dIMswJv3lIesuq8ORxFG2PSlWL+WJmUosjRE
	ucgowfcV2pAzxIkrUdk+GAYOoFLxjW19doEMZMkrNrcFBQH8pSTGwnodUL4yXj0vC554bZpDnwX
	vz9E/1+85tlRdxDq/dJ6h5fZd3n3NU4A1bGvAeg==
X-Google-Smtp-Source: AGHT+IGLoD4ZK6Ea3OM+RvbI9JUOdTSphxAsJQxHWBLFOiret5zmrEpZ3CodzZyt+vtlk7/Vth56ExSTCgGhWUVeXHA=
X-Received: by 2002:a05:6512:3ba6:b0:52c:82bd:bc6f with SMTP id
 2adb3069b0e04-52c9a3b8e5amr1852584e87.11.1718203515861; Wed, 12 Jun 2024
 07:45:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240612075829.18241-1-brgl@bgdev.pl> <CABBYNZLrwgj848w97GP+ijybt-yU8yMNnW5UWhb2y5Zq6b5H9A@mail.gmail.com>
In-Reply-To: <CABBYNZLrwgj848w97GP+ijybt-yU8yMNnW5UWhb2y5Zq6b5H9A@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 12 Jun 2024 16:45:04 +0200
Message-ID: <CAMRc=Mdb31YGUUXRWACnx55JawayFaRjEPYSdjOCMrYr5xDYag@mail.gmail.com>
Subject: Re: [GIT PULL] Immutable tag between the Bluetooth and pwrseq
 branches for v6.11-rc1
To: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2024 at 4:43=E2=80=AFPM Luiz Augusto von Dentz
<luiz.dentz@gmail.com> wrote:
>
> Hi Bartosz,
>
> On Wed, Jun 12, 2024 at 3:59=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.p=
l> wrote:
> >
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Hi Marcel, Luiz,
> >
> > Please pull the following power sequencing changes into the Bluetooth t=
ree
> > before applying the hci_qca patches I sent separately.
> >
> > Link: https://lore.kernel.org/linux-kernel/20240605174713.GA767261@bhel=
gaas/T/
> >
> > The following changes since commit 83a7eefedc9b56fe7bfeff13b6c7356688ff=
a670:
> >
> >   Linux 6.10-rc3 (2024-06-09 14:19:43 -0700)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux.git tags/pwr=
seq-initial-for-v6.11
> >
> > for you to fetch changes up to 2f1630f437dff20d02e4b3f07e836f42869128dd=
:
> >
> >   power: pwrseq: add a driver for the PMU module on the QCom WCN chipse=
ts (2024-06-12 09:20:13 +0200)
> >
> > ----------------------------------------------------------------
> > Initial implementation of the power sequencing subsystem for linux v6.1=
1
> >
> > ----------------------------------------------------------------
> > Bartosz Golaszewski (2):
> >       power: sequencing: implement the pwrseq core
> >       power: pwrseq: add a driver for the PMU module on the QCom WCN ch=
ipsets
>
> Is this intended to go via bluetooth-next or it is just because it is
> a dependency of another set? You could perhaps send another set
> including these changes to avoid having CI failing to compile.
>

No, the pwrseq stuff is intended to go through its own pwrseq tree
hence the PR. We cannot have these commits in next twice.

Bart

