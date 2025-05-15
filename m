Return-Path: <devicetree+bounces-177742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AD0AB8D43
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 19:10:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB75F3AD449
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8602925394A;
	Thu, 15 May 2025 17:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="PrSxcuOV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8E9253F20
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747328980; cv=none; b=PA4qMxHM9j7PoupWvjEnHXH4poqNAtUsuFi2jvd3B8RgcrDzCQt23gVW1zNI0Itfx7GLIORiDYG9rMOW1IVy4zEv8UlnEA7vFAlXpVNQucvM8VZdX3ENi8VLVIytRJyOeqOzQ96cLmZX/7Miluywu3lAzvePKWhhN3DeM7KWHYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747328980; c=relaxed/simple;
	bh=TJ6zr0f5oCOxxHarsKCrGAUL8GqdgcCiFPdWFb4Wpw4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lFF3BvKM+f/FurQntB7qjGQ/XrFRwLVSvsSExS4zETYVkd7Hh/JNGRgXws7EDEkYKHzSqP+AyXrfTPakmORPH+qDcvOhq+P8zgdCM24y/nwICfjZPwIuMcI4QNJ9Zd9PxquSiz4YkIZesLQy3SpjE7C0uR84IHYmE2lLAUfihUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=PrSxcuOV; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 56926497A5
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1747328976;
	bh=UaIbzEI3BxG1QqMP2g2eV2vg414lhcb+S7oh2OMWjZQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=PrSxcuOVKB2xfAwg5FSRejVJbyQpm2AdAo1DU3Kpt82ki+ZHz9aX7d5BGZPIib/rb
	 pP9Csyc0YdzViQp4sYM/DTLWPKR0hcYXlOuIyT3GTyb9YkAQlw3iYj3QHAFnc816jL
	 f3gWgFHsRlADBE26o7yzWJcv8j7C/XfrBgoWTDUsLCutNPX4bxggWXbT9op0Mbqlzq
	 E0iGtn0d8KBXjwBMX/LwAWz66Dd+7XLUafAjSjw4kXWhvEP4C6HSMPTHiV5KjrYuMf
	 rfiVZH84ffMCjhWBBrqtm2VDsYFz5he2V4pJOO2ENcDG9tn4x4FrQV/V7WQpOAm/KG
	 nyYjZqM9gt3OQ==
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-6021ab9731dso1338489eaf.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 10:09:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747328975; x=1747933775;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UaIbzEI3BxG1QqMP2g2eV2vg414lhcb+S7oh2OMWjZQ=;
        b=dfkRO8bCtWswFomTGaDM/LYX8bt+VUs3RLY4YgNM6cMU7Nf6lzYxoZf3BDi943E154
         +EzSBTUXgWYgPlpvJDAXBnVbWQKym/dTjrorwVgMUKV/XOPRMn0XgIHxkee79k68m4S7
         lqNO4UiaBBTyGHgY2zgJTHBY7YUOMrrAyYLBKYtAKhHbCMe9sQyfDPWHdJoWUdy4pl4U
         9dj+aAmaBNcltipDlodrWpkYrEm3cFME+/XbYRc8PiPFmOZDoWXrZjGZhUTS9D8Ig4rA
         1/AdRxvQ+1gipwV2y5uRzBWWAd5I5JCutV/hTgMSupDIjCZ5ysRXMb3mLOENFMpOV1MS
         4ixw==
X-Forwarded-Encrypted: i=1; AJvYcCUrWsumdCq2d2NXErmUqMbUvqtI9hK+j+uPq8rilogUtanYTG8WnNgFLZodAtjW+db0fHbmZucoQqPt@vger.kernel.org
X-Gm-Message-State: AOJu0YxLcnBXs8rmw18Kjs1PdQSsTRiwjDoQBF3LKxPA2DY3dj6Pl5vn
	VUrbtFHNz+F/sFGi/pflivuc059j4B3yTRTgGjUzT6JF30xBRkvAE0dwgF+po6ENlXAEZnQNZzT
	nj0RUa2O2fO0IAcyslzdcP2/lg6X/0NW6fbwflQ8YeZYhG4XDpAWN5lrF/hA/Ra92l+e1th16DC
	EqC8Ddqc2DIsD529+Tjd5QUJPv7mS08vPuOdOBpHhHVD/UNVG53lxSLg==
X-Gm-Gg: ASbGncsD4rQIzq/i/Cd/MMG1j9EKVlpyraCfL5qQPE5SSLprS8nQwTrUMOiqNP8Vgrl
	OGW3hNbSUS4RSF/fIyvBCBzd+WZPpE0kxmItWLHKH+3Je4HdDRWW+usqcR8BnxPHap/gvLA==
X-Received: by 2002:a05:6820:988:b0:600:5673:69ef with SMTP id 006d021491bc7-609f37cd90cmr76666eaf.1.1747328975213;
        Thu, 15 May 2025 10:09:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLutELQZn16DHflkUI5wwt/XutX3gwxVSCFyJcK6PHHXgJubotxdGaczJ6DOqIwaSUHGtaxo4SC0sf9J0GSBY=
X-Received: by 2002:a05:6820:988:b0:600:5673:69ef with SMTP id
 006d021491bc7-609f37cd90cmr76650eaf.1.1747328974888; Thu, 15 May 2025
 10:09:34 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:09:34 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:09:34 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250502103101.957016-3-e@freeshell.de>
References: <20250502103101.957016-1-e@freeshell.de> <20250502103101.957016-3-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 15 May 2025 10:09:34 -0700
X-Gm-Features: AX0GCFtbB_vNvAHLPwksxwineqOYhEEn3iOraJm-aHuirOkyFfVbsN4SakWjbrc
Message-ID: <CAJM55Z-TMEn2oukQ_5XvyoQ4U-BVjt5dekVv2T3=vsQWL4CCuA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] riscv: dts: starfive: jh7110-common: qspi flash
 setting read-delay 2 cycles max 100MHz
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Hal Feng <hal.feng@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Use qspi flash read-delay and spi-max-frequency settings compatible with
> U-Boot bootloader.
>
> Observations from testing on Pine64 Star64 hardware within U-Boot bootloader
> and read-delay=2 are spi-max-frequency less than 49.8MHz fails to write,
> corrupt data writes at 25MHz to 49.799999MHz, and valid data writes at
> 49.8MHz to 100MHz (not tested above 100MHz). No valid spi-max-frequency
> was found for 1<read-delay<=3 and corrupt data with read-delay=3.
>
> Looking around the Linux codebase it is common to see read-delay 2 cycles
> with spi-max-frequency 100MHz and testing confirms this to work in both
> U-Boot and Linux.
>
> Signed-off-by: E Shattow <e@freeshell.de>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>

Thanks!

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index f1489e9bb83e..5c525686c043 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -317,8 +317,8 @@ &qspi {
>  	nor_flash: flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		cdns,read-delay = <5>;
> -		spi-max-frequency = <12000000>;
> +		cdns,read-delay = <2>;
> +		spi-max-frequency = <100000000>;
>  		cdns,tshsl-ns = <1>;
>  		cdns,tsd2d-ns = <1>;
>  		cdns,tchsh-ns = <1>;
> --
> 2.49.0
>

