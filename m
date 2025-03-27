Return-Path: <devicetree+bounces-161387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F10E8A73E43
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCF671897148
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7F41A705C;
	Thu, 27 Mar 2025 19:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HX11PO3n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E484218027
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 19:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743102032; cv=none; b=ZyY2WfHrz54qE4SOxu+viMjyTLjRGau+WDl1drDVkLyEqJCw8iPaIcgofVLGbCfn0aKRQ8WAoUpHXIHpxoUZQ+glUzWYNmmKslnzwO5vbMQTDbeSWsSx9PgI4JA0rf6a0zw5RghWAY74S4WIgxqAH3vH6Lm40W7pj4CWO9xUxU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743102032; c=relaxed/simple;
	bh=zd5BXmlZnu1j0K9/QsEF8vrUJXh1mHUAcZQsH3zURHw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZcBJILxBoX8LId2JmdZ21U9ZkDSYvEwcPBZikhoRA6MRwM0piavJsaZ18KBS3QYTDC5a4bkS/KGZ+ETxTllP0eoh/KMT4iZbNZ1BAjtXhexXsJq5uxbX/YZdS1Anxt9H4duYVXGEReL88A9VmyPdKmyyyVADEG83zHVqvFwLgMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HX11PO3n; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43948f77f1aso10657135e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743102028; x=1743706828; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zd5BXmlZnu1j0K9/QsEF8vrUJXh1mHUAcZQsH3zURHw=;
        b=HX11PO3nBQGawmXvWlXH9KES6J7ZEfMsIf+vF+unJugBaXButx3DhLwINLQOV8kOkv
         a15PTjnqY99hr/nKMxXTMZorz1g6cpr/+WSP3U2CIkUJlIZbwJSg56if0q9YhGSn3oI3
         8Aw0F8YsD7tX9GdMZIr1IUoqgtxfLHOeVENDa7y5Afbpg1FGlOTxe6NvXYhzrG/37b/g
         mDsOVDr/3HpGMUsSM67RgLsimM4CfCUqa6D2+EFnZxyPI7GgPoVqiDKxGURJIbWPtcPy
         yOgqrrwS7TLp+6qxP3wtenR7mTl2Lmlmh8Z1rUMsRtIAB/qRo319FmgaMDF35zTAnHCz
         alUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743102028; x=1743706828;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zd5BXmlZnu1j0K9/QsEF8vrUJXh1mHUAcZQsH3zURHw=;
        b=vIvj+LBkZANsZqZOVNSXIKjpZGx3PyJw69l5vj2z1cw/NDE37ypnAbx2ADCIl+tim9
         t6kyi433KA2M5JcGxdPKZYq64lng2sNx5ctLC4gXNFsCWL2Gb4Fk8rq2J6ZDGm8YbOOW
         erzLgotLuNzph44Nl2YWB3fCQhypQ2RSJFOcKcCmQkjnhsNSfdLilP8LmLXOA8m0uhDN
         qHlIK7UXTkaysGnOVW3nY95HwLDY3AYwf7y6TaSazkHZGmEvFinqymT/z0D6Q/xazVOs
         a0IoJAqUhFPfb4Rn9anBeDh0lWajzMUQtfLUnJyovEHVXaB8AD8Vu4WJLtQgmPu3iyQw
         MENw==
X-Forwarded-Encrypted: i=1; AJvYcCW5AkEcrzimmsbvsQIoRjJQwhcwlFBlHe/xbaquvBu4wCoUwp54SLIsX7knYHhrL/s6TQA7bNyUSS4C@vger.kernel.org
X-Gm-Message-State: AOJu0Yzja1OZ4t/aT0YiOVqhM+BYry2Nb7rsRphNT0pYfyfy+v7BxAFw
	6tpyYznTWqUdaZa/Qv+K0+FfvHTNcQu6thQVGp9qULIyV+HaLPG5UEAAU4kze4E=
X-Gm-Gg: ASbGncsEkld/PwcY8CcaqMVbdLNDShCpYGPdDDkB3P4VR9bU7bBsONjhM6U1l25xJYK
	NTwUtxByZ8aYojDeV4fwNjbUOlcFc9h5CHVdYIyFVuXk/3onQPG2dO7wKoH8VgdWzlWn4+exOgu
	hX1f1lqNXFccim6SFCkqprciItuq8jvEEt8/crcQqYzd2ncy27hsD8s5sYjGGNfOB/x/F3a5uZs
	yZGgHsQ7yq5YJ1D9wpWBgfByhznRpiYSyeSEPgxwUGXxPBeO5QKX9F67avTPT3KzP08KY/BQcls
	0FoJKkgPaBd9oErNqYtd8oKYNyeyPIg4rxI/R/gkTtwy/dC1bw==
X-Google-Smtp-Source: AGHT+IGnQpe3KSpRW8OcMy9ZOhvZKg6FTDTo/56rh7+F2u2OEQyun5MJVX1ptbNmngH24DTaiRQADw==
X-Received: by 2002:a5d:47a4:0:b0:390:e853:85bd with SMTP id ffacd0b85a97d-39ad178a45amr4737166f8f.48.1743102028193;
        Thu, 27 Mar 2025 12:00:28 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d8f404ac3sm4134315e9.0.2025.03.27.12.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 12:00:27 -0700 (PDT)
Message-ID: <c7169df63dfad34ecbda3554ec51631e5cc6a2ee.camel@linaro.org>
Subject: Re: [PATCH 11/34] defconfigs: rename CONFIG_MFD_SEC_CORE to
 CONFIG_MFD_SEC_I2C
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sylwester
 Nawrocki	 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar	 <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas	 <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Alexandre Belloni	 <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org
Date: Thu, 27 Mar 2025 19:00:26 +0000
In-Reply-To: <fdb8ef9b-3053-4dbd-b3f0-e2fd512de770@kernel.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
	 <20250323-s2mpg10-v1-11-d08943702707@linaro.org>
	 <b733eff2-171e-4ab6-8546-565d87d5ba84@kernel.org>
	 <62bf00c37566964d6be794ed12a34cd057d9bb1d.camel@linaro.org>
	 <fdb8ef9b-3053-4dbd-b3f0-e2fd512de770@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-03-27 at 17:57 +0100, Krzysztof Kozlowski wrote:
> On 27/03/2025 09:56, Andr=C3=A9 Draszik wrote:
> > On Wed, 2025-03-26 at 08:16 +0100, Krzysztof Kozlowski wrote:
> > > On 23/03/2025 23:39, Andr=C3=A9 Draszik wrote:
> > > > We are adding support for Samsung PMICs that aren't using I2C and
> > > > therefore had to rename the Kconfig symbol.
> > > >=20
> > > > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > > > ---
> > > > =C2=A0arch/arm/configs/exynos_defconfig=C2=A0=C2=A0 | 2 +-
> > > > =C2=A0arch/arm/configs/multi_v7_defconfig | 2 +-
> > > > =C2=A0arch/arm/configs/pxa_defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
| 2 +-
> > > > =C2=A0arch/arm64/configs/defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 2 +-
> > > > =C2=A04 files changed, 4 insertions(+), 4 deletions(-)
> > > defconfigs go separate tree, so this must not be in the middle of the
> > > patchset. Bisectability, as for defconfig, is anyway broken in previo=
us
> > > change, so no benefit of putting this in the middle anyway.
> >=20
> > OK. Should it still be part of this series, e.g. at the start, after
> > the binding changes, or a completely separate stand-alone patch with
> > a reference to this series?
> Hm, now as I am thinking, maybe we should just squash it with previous
> patch and take everything via MFD? defconfig could be mixed with the
> drivers, it's a kernel thing, not like DTS.

Happy to do that, and it would also ensure bisectability :-)

Cheers,
Andre'


