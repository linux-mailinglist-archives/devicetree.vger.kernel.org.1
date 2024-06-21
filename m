Return-Path: <devicetree+bounces-78665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C9C913098
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 00:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE4CE1C212E6
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 22:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFC6616EC17;
	Fri, 21 Jun 2024 22:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qffyzywr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B42016DEC7
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 22:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719010561; cv=none; b=Ls2/eJBz3qYKwGZhAcVbpVS0O4Rjq+774idIFCYPMmy0uauwOSiiWbRDp5kHJHwIJ8nQos9qP9wQxRlZzuRWuV8YGgd/YUfqU2IZ8h9YP+XZOjZ2Ljqjt/D0/WoN+QbVlsXsaCh1BWppKHqWRAS9eGgON2gPMKvizab1yoHPPwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719010561; c=relaxed/simple;
	bh=/fGMQstslMAQ1sAwKBQnY3piKVTdf0FZ+sfr3d5+kQU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UIbQzVfS54YxsdpKMabx4PmAxdRXkz1/WR0D37xknlzxpuPpTuCAPegHoClnPJ7YLJtsUFTaYkewed4guypyAqrLVwlulYBCmyPkF2iCUwT9mqPM6Ihn4lhEltwbeLnT7qwX+m6rOz5b0EMAZazy5+F49CDfLR9Z8V61kf8DmDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qffyzywr; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-62a087c3a92so25214027b3.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 15:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719010559; x=1719615359; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/fGMQstslMAQ1sAwKBQnY3piKVTdf0FZ+sfr3d5+kQU=;
        b=QffyzywrIMiiOUDrInGm2s+cz3kMzPYkPPwCFB3j5KIOPr355fiTeqBYglaNXBe054
         kCKazQ5sK0diOLVl19gQcT7DWvlNfZAoPYqYtF3KWCYarWFh7qPu/1w7D6RED2aVQVw6
         /5FBs/KRahanQgxXCbMs1L+Xe8cvCYNl/hVQX9XCQT+qUY96wZMe4CDwce54IZCI/c7Y
         J0Op/PEeumJUez43jQjjkOZBNQlDFtM+rqLnVUgEq1WZovuULnjt74yEK8oZqSDI9s51
         ZWEGUfNCgPwD1v1By3ODqSe4Bm6NBA9Af9DAhECATRlAWH+nbIEG9hC8PlSCEXVnPKbv
         C1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719010559; x=1719615359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/fGMQstslMAQ1sAwKBQnY3piKVTdf0FZ+sfr3d5+kQU=;
        b=GVPAgN/I97rKt87YznKRefCVvyF5eLoiCM2Dvc8WU/8ZbZu/iX0X8izawAsu9dhkXf
         +dyuo1b6yjHVayGv3RjApJeSskz4KMa1AM6Ka494H3cXZVJYjLHVx1Ok2UvpnR+dV0Zi
         6urdys1Z/y0jlGBCyGKuAGr2bu1bSvTIk6i9Z0uM5o7xjWVmTvn9rb7p18P0hw4w9Ub+
         2bbMUOqYKMR+wDv7ybN0ilhQfjSg96SMbUqZUXCeHWIs/zwC8enQXsFO+PpBfZ6tASEp
         FFgQFIAsBSLbhrijtmZXEjWVvbUriCiuDXpJGxyNH7u5I89JPZHPjBu66GRJs76niA6V
         hV8A==
X-Forwarded-Encrypted: i=1; AJvYcCXaRzvI9ALKfvX+wgxxyASVp6DUGX7G5l7OXLrftyYiYkJHjS0xnFdOoiMILSu7uSSD6ptwsO3tFh80+fuCsS3ERV8alBbNLB+FFQ==
X-Gm-Message-State: AOJu0YyVXuDSOJzZ+V0135Gc164hWQLQ0TGFCclC8gxIVOqFtpzi4+l5
	7hcVn8Ha9sLW+K/x903Zg+ZDaTc+4/YMNJeQHM8WT6wAJr3dnWXwFom5wV3LxWaLC4aHdjJqgyb
	x5XneCffgUQuPENZBTySOWejrd5J/x4N7ittNwg==
X-Google-Smtp-Source: AGHT+IEADyU6jrow5QVvxIIaLO6aTLEpPe+v44mG82CDywhDOOxA21g7uo+yUCib/NcuqiEIGJo5wYXwLqozIVXQNcg=
X-Received: by 2002:a81:be12:0:b0:62f:23c3:1b68 with SMTP id
 00721157ae682-63a8f9fb0b9mr92774257b3.48.1719010559268; Fri, 21 Jun 2024
 15:55:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240621221113eucas1p25c2fbadceef48913c4a7b164e6d14890@eucas1p2.samsung.com>
 <CAPLW+4njmKxXSMqNazX6t6LS=fHNh6Pi8_icF1=aPw27G0J3PQ@mail.gmail.com> <oypijdcyoarlou.fsf%l.stelmach@samsung.com>
In-Reply-To: <oypijdcyoarlou.fsf%l.stelmach@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 21 Jun 2024 17:55:48 -0500
Message-ID: <CAPLW+4nQa_hnqg=UxgZ7EZ1z26HX+Y0Y-fV8rtHb4Sb7NQ47CQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] hwrng: exynos: Add SMC based TRNG operation
To: Lukasz Stelmach <l.stelmach@samsung.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Anand Moon <linux.amoon@gmail.com>, 
	Olivia Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 5:11=E2=80=AFPM Lukasz Stelmach <l.stelmach@samsung=
.com> wrote:

[snip]

> >> This is good, thank you for adding it. It can be even better though, i=
f
> >> you don't skimp on message length (-; I mean, I know what BL is, I can
> >> fingure what LDFW is because you have explained to me and I can see th=
e
> >> source code, but somewone who sees it for the first time will be only
> >> slightly less surprised than with v2 error message only. Come on, you
> >> can make this message twice as long and it will still fit in 80 charac=
ters (-;
> >>
> >
> > Guess my OCD got in the way and I just didn't want to break the line
> > :) But yeah, LDFW =3D Loadable Firmware, and BL =3D bootloader. There i=
s
> > an "ldfw" partition on eMMC, and I noticed Samsung usually uses LDFW
> > term, so I figured it was not a big deal to throw that abbreviation at
> > the user. But I totally agree on BL part, it might be confusing. I
> > don't have any strong opinion on this one. If you are going to apply
> > v3, can I kindly ask you to change that message the way you want it to
> > be?
>
> I guess Olivia or Herbert will be applying it. Let me try=E2=80=A6 How ab=
out:
>
> "Check if your bootloader loads the firmware (SMC) part of the driver."
>

Much better. Thanks, Lukasz!

> >> Don't change it if v3 is the last. If not, please, make it more verbos=
e.
> >>

