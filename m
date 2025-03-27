Return-Path: <devicetree+bounces-161163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01336A72BE6
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 09:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC3143BC0BA
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 08:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5F9220B217;
	Thu, 27 Mar 2025 08:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f9EIa3z+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1D420B1E5
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743065807; cv=none; b=C/r4HCMLzF7Ft15klJtP2hrivz3vukxBZ5chX4O1ZnpxovSPBrQS3GptpGuQqtNgtCxVHBREhXhdsdvsPGkFtn6fpkBlFdMedf/IoBUgQWlBvEosdEGM+iwjgzQM+a3V1nrsuyok0FSuhKfnZoMywjNDpUlpI7ASb+wBGqR561g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743065807; c=relaxed/simple;
	bh=FIYwhtEw1euleTwTcbZCNX9K84qUUjXQZZcm3DuTqE0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CCTO9zG0hsNPtEMd/g5N38yys/oNMMvvZcvszCnoNqwrhtiEMGFlHth7Qf6aAk2EtpyOa17OWjKzjz+wK8ZrUpUvzMEam7y3EeohZEXp3j0JtfX1TmhKqC+t4VsFuBm/zuNGDXP0oI9v33q0S+LJtjZy18e+/1CarT7m/lohajE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f9EIa3z+; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso537429f8f.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 01:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743065804; x=1743670604; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FIYwhtEw1euleTwTcbZCNX9K84qUUjXQZZcm3DuTqE0=;
        b=f9EIa3z+WG3ihErGNo5scvrjbc3TWVbr1yXum03sHB5O1vlZwZJ2LWsWhi9c/Erpyz
         pDHBJrhhg/kl1JYkoUW2DvVwv5zXmNrBIpnoGDK7t3r0LErmLGK4mt+b9oDq6dR/ACbT
         h3yO8ewgkhjzo0ULTYzEeX8AMKfEHWN7uiMOQO2OBcBuoNEPW537c7kP9L0EFehXJC+w
         W6mFwVOxXIgUVd8FY1GafWAdg+kfCix8vS7Uk9nkAh/cjjiBIfLxT1r/4JL0eE02Uf9R
         pWb9MJag9OwNf9ymAFuL7xvWnOhlwPATHgmw4mihphDFXarzPumdjSnZ4nnOVPSwxr1s
         xpTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743065804; x=1743670604;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FIYwhtEw1euleTwTcbZCNX9K84qUUjXQZZcm3DuTqE0=;
        b=vTn5JmhjV3Aoe+sG2VfyDrHfzKYH4kOm3S3m9Hkkprx38HljuuSkezYYri2kds4NAp
         cGEfQGZQGMiPtlHePRZnRyRfABdcp17WNi3NAEgb3hIHd8ENAn3rrlSlo9tTIawbNcqf
         /13BnPqxY2CIVnRhxt/SAo33+MoVC+rPE+ORWvLtbAjW5heHnpqI7zVNF4ZcJ0Q7vW1Q
         w2zAALy+4l3s9+YE2sG7jyUKxR2QLg7xBBxsxLtto+8qBZXCkHnkzDZLgDnzeIZ2D3SK
         qbvrCuWZzQM2cF5Qvf0X8zmHlsHXCiLRjdPK8n9vbM1Gns3m0LtEngvlH/u/JTfSvj6g
         BYbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOVOmPYOWDdxI61mXuHp/jdy0nlACJwg6B0DDosQ2kXKgclH/JytyQvHvg9dnC+uWOKJf6WZhM1/89@vger.kernel.org
X-Gm-Message-State: AOJu0YzHL4N/wXPL5tc4b2SSfZpN2riSlwrMFcvsxqIdG9d7HgGof8db
	E5Zak22CiGJSQdxyVC95lMb2j01Ld5+F58FUO43IC8UERywQyabmK09DE4VT1/Q=
X-Gm-Gg: ASbGnctsZsfz1ByBnlmcsHjR0J1Gw+H4M1d5eFgDgM2bk3VWBSh1yCjvtawgzqkA74o
	fzaIOjSS37GKfRfqUiimy0HApdGJWcWZ81bRAZ5ItiafIuPiIxYQ7Fzm45B10Luf+Jt7ZwX4pF4
	zYY5FMG4cDzIkw0iVgjnGO34080UfyD7QrndqIFtkW70M/RiCYBjhU74+OS5SljFx79U5F2RiyC
	dW3zi5SbB8l1cSAjTz1uOoP0+mKPbX8rB0hyUcb1enInrYN/RU1BgC/86Tfupni7zmQabvI3uQf
	e6AR8HQ8ngp3OTjbZ4lciRUL/VVMOT97CtID43tqZy4oOAtPNg==
X-Google-Smtp-Source: AGHT+IFYnqDl6ib4NKqjPWss5rPeynt8Vendp/W2yLiXx4uK7gmEAWHDdxKjvkNq1tkjNGSpWl64yQ==
X-Received: by 2002:a5d:59a7:0:b0:38d:eb33:79c2 with SMTP id ffacd0b85a97d-39ad174e4famr1984580f8f.32.1743065803956;
        Thu, 27 Mar 2025 01:56:43 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82f1bb80sm30629875e9.28.2025.03.27.01.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 01:56:43 -0700 (PDT)
Message-ID: <62bf00c37566964d6be794ed12a34cd057d9bb1d.camel@linaro.org>
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
Date: Thu, 27 Mar 2025 08:56:41 +0000
In-Reply-To: <b733eff2-171e-4ab6-8546-565d87d5ba84@kernel.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
	 <20250323-s2mpg10-v1-11-d08943702707@linaro.org>
	 <b733eff2-171e-4ab6-8546-565d87d5ba84@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-03-26 at 08:16 +0100, Krzysztof Kozlowski wrote:
> On 23/03/2025 23:39, Andr=C3=A9 Draszik wrote:
> > We are adding support for Samsung PMICs that aren't using I2C and
> > therefore had to rename the Kconfig symbol.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0arch/arm/configs/exynos_defconfig=C2=A0=C2=A0 | 2 +-
> > =C2=A0arch/arm/configs/multi_v7_defconfig | 2 +-
> > =C2=A0arch/arm/configs/pxa_defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 2 =
+-
> > =C2=A0arch/arm64/configs/defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 2 +-
> > =C2=A04 files changed, 4 insertions(+), 4 deletions(-)
> defconfigs go separate tree, so this must not be in the middle of the
> patchset. Bisectability, as for defconfig, is anyway broken in previous
> change, so no benefit of putting this in the middle anyway.

OK. Should it still be part of this series, e.g. at the start, after
the binding changes, or a completely separate stand-alone patch with
a reference to this series?

Cheers,
Andre'


