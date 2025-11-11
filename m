Return-Path: <devicetree+bounces-237206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0502C4E209
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AAFE3ADB5C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 118A333ADB8;
	Tue, 11 Nov 2025 13:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="ih6ybhPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54191331229
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762868006; cv=none; b=eKAUwwx7si6c+r05IGx8ekbtTdPcUexWIgIwus04FSShAInmteQwX7eHwcXXY0QgSmhMapiRCfDo4HtmgrkVSeXCW4SvKzElexXRe8OZFNo4F3LFMtWkZctSE/TNeU8DK9PMoNHvzWOnT3bY7mAaHzccXPA4hXPEW4OLyqePiy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762868006; c=relaxed/simple;
	bh=m/IDcbUYaTlqaJOcWar+0Jl6b6b2/gJXupbjxTarers=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BXBNLoe2weaqC3CRpScLdqdlxpG6+jGJttMPGwWrNbJvFBDzSLGx5WgdD168tvgHeBYfGH7epyHHB3QvFq6cybs4Nt506/CZSYFCsLRcIRA+g8VF0lFGxth5olegHxzdbNmuNR4dCQzkrIA+yjmPLwzNvGedU3YFa1RI5pINYUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=ih6ybhPX; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-37a48fc491aso40840991fa.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1762868001; x=1763472801; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2lY3yD/lWkhxBE38j+dUGeqe89ypJFm7YKL/U6lIARs=;
        b=ih6ybhPXbqtT8us51h/YwWyVZ9wcl99rW3342DSYuZA6MsfWJX/+RTijmuAGgNOgr7
         ZCLbtKuYI2jn8B38r3aHofSHCteMAzdlkJVisOuiy7yxJXiPI+HXxjcMbwG4RwMcclqm
         bn1Wn7GNBYw9cX0I/OfJDZsoayVCsHR0qwVKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762868001; x=1763472801;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2lY3yD/lWkhxBE38j+dUGeqe89ypJFm7YKL/U6lIARs=;
        b=rishBgtDCHMBf2LlbVknGRu5a/GHgt5RuR3/hmXJRrScTdvv7ELS4DjEyiMhq8Wiy2
         zeE26NqIEHUXQN7zmX/VcmFCsbh7gxSYoCH6hNssTaAeDhnh8bOx7EpUBRhg/Pa/Ka3r
         rT+ssjn+1s3lBcGhWSMZRMzy7lb9iBa5rS2qZ8XI97fB+UCE125dMIrlBEv4EOU3Dhev
         jHuDJtnGNxrmJsGuCVIeFHGJNEl5e6f2uGMR0n6sYl6wE6S9u6KEaYD171DON2YABXm0
         x89WDCWjOO7hi/WqWGKmJXa4tXknGMcnVT1Nh9VgcLGP+XFOD8yEZkPbJ5nSki6Ql8WW
         bC7g==
X-Forwarded-Encrypted: i=1; AJvYcCUds8w2k/L4hyBKOvX9885EfP0jQ+0JHn/Hj2M4r6p6jNcso9i4u/AOh3BsGExVU3tUA8aPj10SnV/w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4I9QuZbruq21E3Zqu9/OYjlUDxRihoF//qxHUGSEg1YhN6cOj
	cKYA/ahBVCKxSUsGJ9fVr5i1JAcghd//n/21QhCIIVfaqJ6aGQOXj58N2C5X4x37PLEKLbVdYy/
	n7LyT4fTX8iw0LOcLRFpjHRD/MyztBjR+EQGKKXu0mw==
X-Gm-Gg: ASbGncv86mYSFKTij/EK1fMB+/nQlpDQV0irjLEvoVA5Mz/+hAqmTOzwbPMlf7/fV1s
	YJzqkWSAqcbY5xlDtZtqx1RjJJmjUf678xy+8HYOXKdFGO4BRi/vHI29bZMLe3CYAV4ZS+gTEvP
	uRN6s84yYrfsZwWZ879zBGoxx8qpc8HEi9nGNoreaYvNEoyl5hSdPzpmM+YUjfNpWetAfknk3aZ
	TMM5IiXq/ZfFr63tNV/VMhN9dyU0fpQ/3LuM17stgGFagTWOxixgdU+Yackvg==
X-Google-Smtp-Source: AGHT+IEa2+alpsV7yZo2MQ2zemGQSgaZflRIFnqWJ5eOZ/bg4aVTD1e/Z7u7RDia8HjsH2yeWCn923dhPxhZxjFLNYs=
X-Received: by 2002:a05:6512:61a1:b0:594:51ac:138 with SMTP id
 2adb3069b0e04-5945f165199mr3017960e87.2.1762868001402; Tue, 11 Nov 2025
 05:33:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106153119.266840-1-r.mereu@arduino.cc> <20251106153119.266840-3-r.mereu@arduino.cc>
 <84f0ed2f-bf51-4dd5-93f1-f26e077a2549@kernel.org>
In-Reply-To: <84f0ed2f-bf51-4dd5-93f1-f26e077a2549@kernel.org>
From: Riccardo Mereu Linux Kernel <r.mereu.kernel@arduino.cc>
Date: Tue, 11 Nov 2025 14:33:09 +0100
X-Gm-Features: AWmQ_bl9u7adnSSXNZGOLBBGiNfZ8y3mPpTDmoF7L_YWRx9FeA-avTcHCLCKRGM
Message-ID: <CAKA1JhYTC5p_7Zj9b7g1YKZhjH0=tnnJkdW1rWv39L-SF-SDoA@mail.gmail.com>
Subject: Re: [PATCH 2/5] drivers: spi: spidev: add compatible for arduino spi
 mcu interface
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org, 
	linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net, 
	naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com, 
	chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com, 
	farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-spi@vger.kernel.org, Riccardo Mereu <r.mereu@arduino.cc>, 
	Martino Facchin <m.facchin@arduino.cc>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 7, 2025 at 8:13=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> > ---
> >  drivers/spi/spidev.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/spi/spidev.c b/drivers/spi/spidev.c
> > index 5300c942a2a4..f0dd516c2083 100644
> > --- a/drivers/spi/spidev.c
> > +++ b/drivers/spi/spidev.c
> > @@ -704,6 +704,7 @@ static const struct class spidev_class =3D {
> >   */
> >  static const struct spi_device_id spidev_spi_ids[] =3D {
> >       { .name =3D /* abb */ "spi-sensor" },
> > +     { .name =3D /* arduino */ "mcu" },
> >       { .name =3D /* cisco */ "spi-petra" },
> >       { .name =3D /* dh */ "dhcom-board" },
> >       { .name =3D /* elgin */ "jg10309-01" },
> > @@ -737,6 +738,7 @@ static int spidev_of_check(struct device *dev)
> >
> >  static const struct of_device_id spidev_dt_ids[] =3D {
> >       { .compatible =3D "abb,spi-sensor", .data =3D &spidev_of_check },
> > +     { .compatible =3D "arduino,mcu", .data =3D &spidev_of_check },
>
> That's way too generic, IMO. First, I am not aware of Arduino boards
> mounted on top of regular development boards, so basically you are not
> describing actual hardware setup but what could be potentially plugged
> into box with Linux... and then it is like saying "you can plug
> anything" because MCU covers everything, like calling it "Raspberry
> Pi-clone".

This is used to describe one of the interfaces between the
microcontroller and the microprocessor on the Arduino UnoQ board.
Since this could be used in other layouts in the future, we thought to
keep it generic enough to reuse it.
If this isn't possible, do you have any suggestions?

>
> Best regards,
> Krzysztof

