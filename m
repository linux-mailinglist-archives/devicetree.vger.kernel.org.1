Return-Path: <devicetree+bounces-195362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF75FB01538
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 09:52:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 608C97A4396
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 07:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D32341F4CA1;
	Fri, 11 Jul 2025 07:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="xTERj0jb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9821F4C8A
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 07:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752220365; cv=none; b=jRkHFpxzbh54zkxlXVSenEDz6sHUtTpt4i7qB1jrjHafEZv8tX4sXB4lvrWZRnVJwMJfNufAkx8Ie/MDaY+x9X9S0CTJRiehQcKkwZezPd3Z0wPPG3tjbltIAB0TjEnZCJ2LJV+NEpZ5hWE5vWXkXEhTqByqnn+HW92VL5S0E/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752220365; c=relaxed/simple;
	bh=88clJWMTGmjqJ9BXiN1KTtldoVSFmnjIjDiwiXd3dew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TosJDwWKsx3tg6pGK7Iws5uBqmupSm11qDbMuNemUks9qvF9rHFuqch2iKF2ChMvnkxHGkl3nTyQZLBamGikKETUOtXj2xyU3/SC7KwJIRFwDm47REawdNdaAPol0vovy0lVsKVgn5JmDjyezOkmAHaH/FasEKBQgYSV/XYWXyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=xTERj0jb; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5561ab55c4dso1885110e87.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 00:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752220361; x=1752825161; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4yjU8KLlsfOgD84pvhzgohiFicyXio8p2w/NrIenWZQ=;
        b=xTERj0jbyEBY1ou9oHAhnP8s8HVgQ8puUPoYhAdVmHv2xNx6G++ZUmjIDGJqS0N0nd
         ISBBvPVqTKgmz1tpILfwPqGq9KOt1QA9ixW/yQuZ4QDTxaAWA2Nu8wtrPdWHrhGBqqlQ
         Tk1zXW7tFDNpJgZdIsKWHx+t5VcfI0y6AM9z21vHzTFK2a9ofmsuCRaCFDFfzI8Qxjmq
         GFBaftBLjAXgAs/tW2wvuW3hv0eCWEinPU3fTJ/KlAJNFC3SJzJ/oRXim4T028bxxdxJ
         GDBIkbrDm8zJJBtEkAhc/kJhi++YUGFYhLhf1dJp6Cs3FwryaF7iVlU0jDZPBNTa4I7q
         +g5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752220361; x=1752825161;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4yjU8KLlsfOgD84pvhzgohiFicyXio8p2w/NrIenWZQ=;
        b=OsxchtkHi2UMx9MSbR/8V5zTQf/LT+WmQ9ZvlUMDtrCgvSyoDYVn8cG+wZjSdM9Q4P
         AiSVDQ+zXWd238XeL0w3Ar3aXs1purYonp8CZbFGeHhgpjBt8V/pr1yI/uNCNZCw6pip
         azIGyBK73HIQnYuUxwW4FayPmmJxSwyn3oK5OROUlF9/epXE3EToRaVJg4PkraRFQ64Y
         vfYE1NcTOCmNnpOhQ1rCmHCBhYGysDGE39AA01D8MHWeFuMytQB0Z2LHxAaUVeOh0dU6
         Ee+FVJAd8I/aCDD3Ngljc2/OzlsfXLhfKmKjb1PFiv1YV4NnGdMrBmp9uDwCQN/J2sPu
         GVlA==
X-Forwarded-Encrypted: i=1; AJvYcCVuBlvvCxULh4+ZATevxCyRgPsByYiZZsr715gVRqhjrFnFECyDxV4zVr239CTBgEzQyF6fRIIKHNC3@vger.kernel.org
X-Gm-Message-State: AOJu0YziPMJU5UUsWYaa6O8NQuKLLX9Nll8OmhQyIU7Qsl5wVSCVQ5rq
	Aiouhk4guqOVlmdaQtYC+0k09g2y1zbxXgncaj43MyVm4Sl4PGQC5myVJLL3S8jrlSDPT0kGWXd
	fcNycTTigF3mRpWqPOrRmZc27p354bHJWFZh1yWFofQ==
X-Gm-Gg: ASbGncvRAoNNsW03JgK0wo2JWWLBxw7TOqQMLj53X8ASi3JiUnZU4tbTJrx+nV8+m3C
	1orApSYlNzscV2ZNCvPbnKXK9ggngJiZvgFZ+7NMmkbJRiyQPcr0rJAmayiT14+RjbNmzQ8PGC5
	Ap2koTdEU3QeOCJsOEGYVJwz1wqkU29XcHEVSYlx+a8hAnpW4c6D3qbRjP3ZDd9yIjqOivYxotW
	Qw0uUx129CLwUVtejK10HWEBtb0qI6mIvbLjg==
X-Google-Smtp-Source: AGHT+IFnZKQzO8SQsEPR4+bbnrAqa1B4u0Jro/T92Yroa1+POHLtNiQWfQd6cdNN76m9sgUP6bGZdURAsrGpoIwSBow=
X-Received: by 2002:a05:6512:3ca6:b0:553:2bf2:e303 with SMTP id
 2adb3069b0e04-55a0463bafamr620336e87.30.1752220361177; Fri, 11 Jul 2025
 00:52:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
 <242d353e-99a1-4ce8-9435-8b2addcf1276@oss.qualcomm.com>
In-Reply-To: <242d353e-99a1-4ce8-9435-8b2addcf1276@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 11 Jul 2025 09:52:29 +0200
X-Gm-Features: Ac12FXxcX5qRn9gdh-ZC7VHsr37pXFF-mMITmlqtVTHjrCNkvSZ0ELEV4kvVi_I
Message-ID: <CAMRc=Mf6o0XNGTEbKih1vNNk119i5uSAqdOT219Fqk214cWoOQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: fix GPIO lookup flags for i2c-gpio
 SDA and SCL pins
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 1, 2025 at 1:11=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
>
>
> On 01-Jul-25 11:01, Bartosz Golaszewski wrote:
> > There are three platforms in the QCom DTS tree that are missing the
> > open-drain lookup flag in their DT nodes associated with the i2c-gpio
> > device whose driver enforces open-drain outputs. This causes the GPIO
> > core to emit warnings such as:
> >
> > [    5.153550] gpio-528 (sda): enforced open drain please flag it prope=
rly in DT/ACPI DSDT/board file
> > [    5.166373] gpio-529 (scl): enforced open drain please flag it prope=
rly in DT/ACPI DSDT/board file
> >
> > Silence the warnings by adding appriopriate flags.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
>
> For the series:
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>

We're late into rc5 so gentle ping, any chance we could get this
queued for v6.17?

Bartosz

