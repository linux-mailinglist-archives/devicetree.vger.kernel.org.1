Return-Path: <devicetree+bounces-244555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD65CA65C2
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 08:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A23D302106A
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 07:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF642F530E;
	Fri,  5 Dec 2025 07:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EiCc+cBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642332F361C
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 07:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764918923; cv=none; b=Zh9UzdXy0yzUlirEYjZwv6XaFHJA4uTyP8Gj3F2ChgW1hiZmxYTTSqrJBYbmLFlpOLzKJkN89ygZ7IvZ9wel5QhGluXwX0anHwtiQtb/pVjiG8bdw5OeQPNFeOsFHAeZ9DmokLKsTuHm2AN+kRc6OZY0fLp7EKAhWVNE1rYDBCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764918923; c=relaxed/simple;
	bh=Y87s2aEVnLW/6Tev1yAD8aRSx5zYQtZ+xk/cGnKy0GM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YqyLYqYbCltjdjWBkwsDQrRFmF6D2x0lLn7cZxJpGBSkfLDSifqhcejvoab1WZwa1R8xWmXdxQjqSvQbk6EoUOTcx1pZjU5xbHnHYxgkKZ5XhHPBUSsSUf5+3vhxHMThmamWyH5pR4UoseHU5tOEcZqh4rLEqJ0kDp/AVIKGPg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EiCc+cBs; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-bc8ceb76c04so1189047a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 23:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764918917; x=1765523717; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1wtL3yYldnmdNDWFJpGyyGoQVux0laNIvubZCakEWnc=;
        b=EiCc+cBseyNCaA96GV8FVIVg5+Ae7rKXe5LDG3ULZw4/RkIOpuQWg2RLNGjjzXGwKI
         jzwYXG4zcNP/vC1nPVBhi6awu7HTa8GA6rwKMdisam2O5Od5u3DAVnurAqpSTOGp+KdW
         n+O5xEwAU/Klnvap5nHTwbiy2Gu3exUpEYqEzELe77E7WBJ+BJ+4jL8XTY3yEyd2bsrM
         MsbH3tozOpEeI2E3Laa6LmuVlqcMU3gFxInrWr4pWYYlu+CPpwOv+S24AThmEHp5hsIL
         crTLDp2meHNbiLBx/T5Eb0WfmbjJdFMfOPZCS0EeQikV3fMfhLU70VXCe+z0Gjf5jbZY
         WuCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764918917; x=1765523717;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1wtL3yYldnmdNDWFJpGyyGoQVux0laNIvubZCakEWnc=;
        b=THasHi88PLojIXHwBunz/HNFXW1FQ+i0uuwTqs6vK7CWcCxY7S+vdBjdtwFXm74Lmg
         oZbDYyNKHMvBnTO36R+4dR/oJcYj+Gq5SANUCu+oa9w4ge5gDWY7ogynXGU/CAB5TZRf
         /bfNKlTkRtG3Q7TA3UtalsDnDZPcgp6EalpHHdBgIQfvLX262Yt+iE1kZNeIaT22P2AQ
         bVOVvc8UB3dLmEfd7u8MWwvOuoG1T1GS9WG4CaDboeq7grASY0PvK77uZN36/26a39IK
         mOaucm9Km99od8QWBr33RnEhxYJkxcbf4HOHwGkzoixyf84W7fLkdrYAgjJjrf1F7Zwc
         u5Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUMDLsPmF7S2Tm2QzTeoKGQeNTjFC/N/PYCVAmfwMj7epkn3p2cAThkkwdO0TpNpqE2eMbeKA7S56G/@vger.kernel.org
X-Gm-Message-State: AOJu0YykYIpDWRWQUaAawHl4/JjnpssNvfUsf7IVlrSGAC6MRdznV4XO
	c7P15VpSwT5CG6pt5hNmNrBz0nh8u4MQZAJjOTcOYvIpWR8VSYvFhUreQ1k4UZEPuC8Ud7/t54A
	Ye/GjfL/AHApPMFncBPIj1PdiAa83KjAogMWaPgm3
X-Gm-Gg: ASbGncuemi/JF/G7itnDkK3UC0JBfrS0yLbt2fW0riRkrHjXjK1gYqbWubOpPiv7H89
	9U+vLEJabrJxpHFqw6aX09v+M+XNy5E/szW4MQC3B2TTGp7QOqdQqm2RPLNXiOEmd5HL+/wuJtQ
	SVSWlNUzhj7xB1MOJ+spb43FL8a8CKRk4Xhr8DSvYXznes6M+8U5kHvECPZR4MEs1cIcXDid5gr
	HcErg7Fcqe6aNkaRmFcfcf4/P6F3Bq7twWkmKHIkuXXuhxygsPaZnK4Jo+RuvFvyMcvs/qdd6nZ
	6S+7Bs0N1icYzBbGXauX0T3nAH0=
X-Google-Smtp-Source: AGHT+IGT6K0BHHyK+7ApfhiR4AaLaZPBjcT+DuZDOJN2iRJE4JKw2dSIgc9ERTNi77a15Duy+EoIn1JYySe0GVV8zUc=
X-Received: by 2002:a05:7300:5a0d:b0:2a4:3593:c7df with SMTP id
 5a478bee46e88-2ab92ee610bmr5224431eec.31.1764918916332; Thu, 04 Dec 2025
 23:15:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205-controller-v9-0-9f158b18f979@google.com>
 <20251205-controller-v9-2-9f158b18f979@google.com> <2025120553-suffrage-divisive-5890@gregkh>
In-Reply-To: <2025120553-suffrage-divisive-5890@gregkh>
From: Roy Luo <royluo@google.com>
Date: Thu, 4 Dec 2025 23:14:39 -0800
X-Gm-Features: AWmQ_bkT_bQr6GsRLXiYEii_iEy6B48Me29L8TfZAdXfRwHS8tmUgcF8diylx2U
Message-ID: <CA+zupgzL7v5MZDpxKDQQCqAZaqTdHbiG9-xTr+8RnigMFZJ_7Q@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 4, 2025 at 10:05=E2=80=AFPM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Dec 05, 2025 at 02:26:38AM +0000, Roy Luo wrote:
> > +config USB_DWC3_GOOGLE
> > +     tristate "Google Platform"
> > +     depends on ARCH_GOOGLE || COMPILE_TEST
>
> There is no ARCH_GOOGLE in the tree now, so how is this supposed to
> work?  Shouldn't tools that check for "invalid config options" trigger
> on this?
>
> thanks,
>
> greg k-h

Hi Greg,

The menuconfig looks like the following and it doesn't complain:
| Symbol: ARCH_GOOGLE [=3DARCH_GOOGLE]
| Type  : unknown
|
| Symbol: PHY_GOOGLE_USB [=3Dy]
| Type  : tristate
| Defined at drivers/phy/Kconfig:104
|     Prompt: Google Tensor SoC USB PHY driver
|     Depends on: ARCH_GOOGLE || COMPILE_TEST [=3Dy]

According to Kconfig documentation [1], the unknown symbol
would simply be evaluated as an "n", which is what we want.
"Convert the symbol into an expression. Boolean and tristate
symbols are simply converted into the respective expression
values. All other symbol types result in =E2=80=98n=E2=80=99."

In a different Kconfig documentation, an environment variable
"KCONFIG_WARN_UNKNOWN_SYMBOLS" is there to detect
undefined symbols in the "config input", but I can't find one that
catches undefined symbols in the Kconfig tree itself.

That is, the tool seems to allow this.
However, if this turns out to be a major problem. I think we
can either:
- Remove ARCH_GOOGLE and leave COMPILE_TEST as
  the only dependency. Then add ARCH_GOOGLE back
  later once it's in the tree.
- Defer the whole patch series until ARCH_GOOGLE is
  present (I hope not).

[1] https://docs.kernel.org/kbuild/kconfig-language.html#menu-dependencies
[2] https://www.kernel.org/doc/Documentation/kbuild/kconfig.rst

Regards,
Roy Luo

