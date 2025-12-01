Return-Path: <devicetree+bounces-243226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BFBC95940
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 03:25:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CAC3C4E0592
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 02:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29E88176FB1;
	Mon,  1 Dec 2025 02:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CJvtvl5a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755A413959D
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 02:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764555928; cv=none; b=SuUlCEjl9Samz4di4BziUlJ6JHvP/FB02NSakeJCOMNpqYp6HRS4iIbew41+R59KUFOrSCNC4xJGorYHd990HSCzoXUTZmg1JyAIfwyo+vxF29RtXgDNKbkQBOsNGk8illsn4Gsq9fbEUA+QvXKp38k2ucyQ5hBXtzq4YsjN/Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764555928; c=relaxed/simple;
	bh=om49OYvgDAfSrmmC6qejgj5k+MoC43n1qX8G7M9zkB8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N7gkgiyTvxqmHyyyibNJ+iWpRALy213VWD/8+gD5tc/0/dFiCua4lkh6YbHaGdAQW7kdqg68/4C4mcxiV2Rg5A4Cg/0I1jrSUVc8PWa475UktwVq+P98uBRNXcqk/LaQppwFG+p9bbB0RHwZBGiiX9VDGla7lSxV6IK7ugP4cDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CJvtvl5a; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-789314f0920so27157467b3.1
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 18:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764555925; x=1765160725; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YbiDFDafiEp67ttSmcQHfLRRWo+MM5BzHhb0MRB/fnI=;
        b=CJvtvl5aewt1J4Dq26ZECCcCvfx8s/jpLUKMBJtzNFHFD38/90d2bEevNZYTqAc+Uy
         0uH6afKPBDH8cs7GH018fgmdVl6v7Frrw29oKAqZ0+HV5iCWUCfSGjH2qU1Fcf/9kyiQ
         BTWEsjTiKZNWKJ+sSkQ7vHAAgvwwLwqOVkGFdBIZ1/k01YIFEiQITKmKZ9ZCh9FmkXop
         mhffQP/IGt9lS4RqLKwAtY8UmZ2YRMQYnJR4n2JtGBir9sE2sl43vrDo1XqMS+bdbUpU
         gyq6KY8KIj4LhO/5hLo6AN7WuulRoYvfLieJm3ma+YOSJb+jF8qeT2pj8jcEKGp4eE2f
         iqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764555925; x=1765160725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YbiDFDafiEp67ttSmcQHfLRRWo+MM5BzHhb0MRB/fnI=;
        b=HRa18LJqdUhy0T04HWI1lew9DBYaCYcY3kC1aUCXknMKYetiUe7cUlgmNyP5RpnqFr
         6fNUBcPXYxH/aa58Z3t/fVUmnTCdvsU91fv7gyy0OpxNigIWwPmK+llQPzXvBuJEHJiI
         BNrWN8jEAsh7o7SMubytST5UbLkQbv314L1gtw07RH6ipxk6KeUWG3ySJb96ayb5ucd7
         +0yk3+GmSK/eMGUz2oXSGt5/OnPdyiOgiYQHKrImNKlevgYWrzTv+Nkd8AWgFdkHMpri
         VYF8/kP4T5paQS1ixxKY0kA7KrwY4XpJ2Htg7g6yERajMZcJRBr/ImDSBvXEt0+kWJaH
         5sOA==
X-Forwarded-Encrypted: i=1; AJvYcCXxLFZaCrWwELL0sUSATZHysJDf1YmupKbSV/emy6qRwSZ2xDmHB1ZnkXGqDWJIEt4zofJOB0NB4zs5@vger.kernel.org
X-Gm-Message-State: AOJu0YxtpvK6w0cQ6Lza5UzA58VQHPNH4gjymCpP7Ivg9auC9G/MHoYV
	uLeFOQXcJWgsle/yt2BnQ8SINrStPV9GVl6+5a8+njR4ZlDRIB2JI6EZa12F8LZbgu8EbwxOCcM
	lnx45lJoI7faKg73ys2k3mKRH9wGBTyU=
X-Gm-Gg: ASbGncvngQaeA4rvcRHow5eMB4So2G5Nm57pQzt49gUpMMmQ5rtNoP/arGlItaDOdi3
	4V33iIazRzaOM93kR/EnNdjmoinjgCJef63/NAGH4HRHq2YMuvJ0qoRoDRESZFjLrIjy+zrsGnP
	GLTotBrbp6WPU+u4Yyq2eNpK6vF1su7wboVWVhTTEZUKFGre5dy/BsK+nSuebUuzh2fQyaDz3eM
	XEa2p7GhZgJuDGuLkvXqjC6PuiZpQsF1eRxS1dWUrPWMY1/6WkMTf96VxnncxJN9sE/PPoa/DHX
	qgBmBmA=
X-Google-Smtp-Source: AGHT+IHNrdBTSsVZw1TVMN6aUclbLeTK9pfKC0PQSp7u6i4tFVERxY4MvuCzD/zi6W+3QTtsOjlisTpAKjTSyK6idr4=
X-Received: by 2002:a05:690c:260a:b0:787:cad1:bdbf with SMTP id
 00721157ae682-78ab6f7f310mr185477697b3.53.1764555925356; Sun, 30 Nov 2025
 18:25:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <35615ad4-5b86-577f-4695-c6cd85206334@marek.ca>
 <20251201001353.9852-1-threeway@gmail.com> <4e3c1c5d-fee9-d4d8-8b06-d33210c5819e@marek.ca>
In-Reply-To: <4e3c1c5d-fee9-d4d8-8b06-d33210c5819e@marek.ca>
From: Steev Klimaszewski <threeway@gmail.com>
Date: Sun, 30 Nov 2025 20:25:17 -0600
X-Gm-Features: AWmQ_bkIJ2Th3UmmrTX0Dkua98Xe2UIze9xOsU13YQ3ZW2NZe4Hpii3OtfGV0FU
Message-ID: <CAOvMTZhartq70YBCkGHbNNYd4MK1RqCjwoV3-WhrHoEqEtgLTA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Jonathan Marek <jonathan@marek.ca>
Cc: abel.vesa@linaro.org, andersson@kernel.org, christopher.obbard@linaro.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, konradybcio@kernel.org, 
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_rjendra@quicinc.com, robh@kernel.org, 
	sibi.sankar@oss.qualcomm.com, stephan.gerhold@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

On Sun, Nov 30, 2025 at 8:07=E2=80=AFPM Jonathan Marek <jonathan@marek.ca> =
wrote:
>
> I was curious about this so I tried booting EL1
> - 32GB CRD boots fine
> - 64GB T14S boots with CONFIG_ARM64_VA_BITS_39 (except display driver
> didn't probe, because it depends on adsp firmware, lol). without
> CONFIG_ARM64_VA_BITS_39 it resets

Weird, I definitely have CONFIG_ARM64_VA_BITS_39 set here.

>
> Anyway making things worse for "64GB+EL1+broken firmware" shouldn't
> block this patch, because "64GB+EL1+broken firmware" needs workarounds
> anyway and this change is needed to use 64GB without issues otherwise.

I'm not sure I follow this logic; most users when they first get the
system will be stuck in el1 until they get el2 set up, which also
requires workarounds in order to set up.  I don't at all disagree that
the fix is more correct, but I don't like users having broken things
just because the vendor hasn't fixed their firmware yet.
Additionally, distro kernels will default to BITS_52 for arm64
kernels, not 39 because most of them run more places than just
Qualcomm laptops.

>
> On 11/30/25 7:13 PM, Steev Klimaszewski wrote:
> > Hi All,
> >
> > On my Thinkpad T14S OLED with 64GB, with this patch applied, I am unabl=
e to boot
> > the laptop anymore.  It doesn't matter whether I have mem=3D30GB, nor i=
f I set
> > CONFIG_ARM64_VA_BITS_39, or not limiting the ram - shortly after loadin=
g the
> > device tree, the laptop just resets.
> >
> > I have tried over 20 boots with it applied, as well as trying both boot=
ing a
> > working kernel, and then rebooting as well as cold boots.
> >
> >
> > -- steev
> >
> .

