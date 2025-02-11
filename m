Return-Path: <devicetree+bounces-145398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BF8A3137E
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 18:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45C2D166F6B
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 17:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E38D31E22E6;
	Tue, 11 Feb 2025 17:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="oIvF4uh7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C3B1E04BD
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 17:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739296277; cv=none; b=VJgJOUiiJ87BJHBUSodfOrxzVeV/Rvfw631LrIMKK8v/c7SoxLMAmLuYTHvSyA+PoHws9ofBTA6n/Mhf25+7DbkodQlhJ23pFbQvREUqUg1Tn4Od0zicfKrCYXhWgSj3Gx9tCN4ZUv+zri3mmVwyCyLUmiV7yFxEQ4XYHqCWa/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739296277; c=relaxed/simple;
	bh=fR0zgTi+/ud4V0inKPnP2XF/d+aFxcaqhBAv1SrgoSk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hQieyFkr2gxfRcI9plIzvYccz51i9TvjdhFQ66L7pox+aoGsDwh8ieuuGnSytaeEn66AK+YugdGJ/3p+OlQaWHjv/tvdp51BzFwdwUYULkOXYjRS+fCxn42UaBKjg7I2gyrZ8IaLscCOUUB7fFDQhBKzRRah5Gt24/l34K3UTHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=oIvF4uh7; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-543cc81ddebso6536095e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 09:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739296274; x=1739901074; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTSaH7qKhx86rkiYP1YP/HrBPskf3k4Y0bn254nyOfM=;
        b=oIvF4uh7ahZVS8MjPXvL6KGnk7rWI8Slh5ELZzJiOOcDV0BAUoGxbhaUVxBXH+r9Sn
         MP4gkG1t0XN7ppzPSE9k401R9MYG7X+bGCWz7UtI5BQqPIUJ4DMcPO4LwiFjxIjdx42W
         zS5rkN1itYKz/jiXyl/VRl9yFqSmzOmLwnYNF3Cxlp4jHLbYFwRyhomo1XjWR2kBayjj
         3uhLnJlz8V7HGzNlapUaNZu4d/pAntb0Uyn4eDWID7wDB5tyu8Eqbk4ZZ4frAnYJ8aKN
         iDbLrpMr08amnPp+ox2F8MQ11AzviS5DFQPqNvoidaeTl5H2xKe2mmkH37H3Gqa8PtR/
         Q8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739296274; x=1739901074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UTSaH7qKhx86rkiYP1YP/HrBPskf3k4Y0bn254nyOfM=;
        b=M2yuwZbnmmvvMfUsXYnOrpUqijv3lkaBsttZK+HQdIeb/Uyl+KDuuQBTVRFfljlUaJ
         WjRJCu0V9yS9udjVcXVSRBg4X40Q6G3DbIKDAGwbuibA453213mt+6EWgz/J5zSonOia
         p2/RY0zBo7CFl9u30wgXVAxpiiLMeDyysV5qSKUhqfDyemfNh19Yl7Qg/ekpA6rJydfB
         oILoLTSu41X6YHvaUCQaIgizfcCrHYb5LWYetBSKNqY5Lv+EGXvgM8VTDuPcNbn9JRkB
         c5iQMkCHGYfYhymWSewiE4tFvGvHK8RBZkyykeK78NOMvoFApSN15GSWJYC2bZ8H6O0W
         uarQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKqYnlUJS0Nqk+ppWpxHCRrpv2g8mGdpnHdu5089nQ85M6dJBcq55RF3bvWZfqrcWWhvG557cYNMjk@vger.kernel.org
X-Gm-Message-State: AOJu0YzoIFuWAVto/epYVYl/MrKUYNrn/zftRzMO/zL+NbCx0+QjKijD
	127v+LQwWjaVcdZsLn5bWcH043dag2L+swvyU/D9XLg+aJH6PJU9HT+Zc8Tvr/wmiuFw8L2WRQk
	MLJ466tdfIzrTPW+gABll+6rLin4zZfZVWbviVQ==
X-Gm-Gg: ASbGnctokDj27+35xWZBytW/JqqT6Prs/JCm00NICBblaTsqj+G/Boheq56t3faAT1o
	Q+1ZKh9K33Mw9Th26o+7WjmB4WIbYgXqtgZemYbq7B9Jon9SSci3SdFO54cX0ni3Wd6QzlHF2jh
	dDGd64ClqtsQjwvy8JkE86Ml9pZlk=
X-Google-Smtp-Source: AGHT+IHM10prpSU2tEYh3WXNcE4h+ufYvzwXjCvUf1TyTFGoPwbaxIAAya9aVjOyVTzIcIXr9fV5w15MZabbxVNEptw=
X-Received: by 2002:ac2:5687:0:b0:545:8c8:30e7 with SMTP id
 2adb3069b0e04-54508c833f0mr3052476e87.21.1739296273868; Tue, 11 Feb 2025
 09:51:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250211-x1e80100-pwrseq-qcp-v2-1-c4349ca974ab@linaro.org> <Z6txevdftVNww0wD@hovoldconsulting.com>
In-Reply-To: <Z6txevdftVNww0wD@hovoldconsulting.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 11 Feb 2025 18:51:02 +0100
X-Gm-Features: AWEUYZn_IQJJyFSf_EuE1HkQzGtRktRzq6jGfk2KkE1OYhjsgpGCzUlpPOVGM9A
Message-ID: <CAMRc=McApxN7TKKKAL2OmfkosKYA9gCYZXQZXFAE_A9a5qykmw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
To: Johan Hovold <johan@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2025 at 4:49=E2=80=AFPM Johan Hovold <johan@kernel.org> wro=
te:
>
> On Tue, Feb 11, 2025 at 04:01:56PM +0100, Stephan Gerhold wrote:
> > Add the WiFi/BT nodes for QCP and describe the regulators for the WCN78=
50
> > combo chip using the new power sequencing bindings. All voltages are
> > derived from chained fixed regulators controlled using a single GPIO.
> >
> > The same setup also works for CRD (and likely most of the other X1E8010=
0
> > laptops). However, unlike the QCP they use soldered or removable M.2 ca=
rds
> > supplied by a single 3.3V fixed regulator. The other necessary voltages=
 are
> > then derived inside the M.2 card. Describing this properly requires
> > new bindings, so this commit only adds QCP for now.
> >
> > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > ---
> > Changes in v2:
> > - Rebase on qcom for-next, patch 1-2 were applied already
> > - Mention dummy regulator warning
> > - Link to v1: https://lore.kernel.org/r/20241007-x1e80100-pwrseq-qcp-v1=
-0-f7166510ab17@linaro.org
> > ---
> > The Linux driver currently warns about a missing regulator supply:
> >
> >   pwrseq-qcom_wcn wcn7850-pmu: supply vddio1p2 not found, using dummy r=
egulator
> >
> > This supply exists on the WCN7850 chip, but nothing is connected there =
on
> > the QCP. Discussion is still open how to hide this warning in the drive=
r,
> > but since the DT is correct and the same setup is already used on SM855=
0
> > upstream, this shouldn't block this patch.
>
> I thought Bartosz was gonna fix his driver...
>

This is not the same issue. The one you're thinking about[1] was fixed
by commit ad783b9f8e78 ("PCI/pwrctl: Abandon QCom WCN probe on
pre-pwrseq device-trees").

This warning comes from the PMU driver, not the PCI pwrctrl one for
the WLAN module. One solution would be to make this supply optional in
bindings and use regulator_get_optional for the ones we know may be
unconnected. Does it sound correct?

Bartosz

[1] https://lore.kernel.org/all/Zv565olMDDGHyYVt@hovoldconsulting.com/

