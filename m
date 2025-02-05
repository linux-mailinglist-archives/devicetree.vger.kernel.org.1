Return-Path: <devicetree+bounces-143209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B28A287C5
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CC1E3A8383
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AADD22ACF1;
	Wed,  5 Feb 2025 10:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="k4VLtuWS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333F622ACEF
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738750745; cv=none; b=lfkuuPYNXLVwYSczmE+e9APexTBw1ZVzYHWyxSsodla3Zf3G3gqTd6l7cTCQGsyJuZNpJPcwu+SRfMD7t3pNuUMdZM1ktUl+Fptf1SdLr2Ri9jSh6xYaf/gI5/MrE82sOlEnBKbUOPTZsKK/VJMd+wds7iJIdPje5maTjIl2/Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738750745; c=relaxed/simple;
	bh=KH5IH78p9vo/PXm3xnmdcXmgu0/0wfHUy9rjQhzDvlE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BBh8LRc0wQWK8Gbw9yQhAL5zY1Vupo0ucQYIW2xufx9XvQFldnX+nSrN62hNfC2ye9WwL2lD/zM452/q0dvbexjM3mEkIyZTKyKOMphBg2lfnhkDR96eCPAYKXkM6STcBpG0wDJCH6pgEfr5fN+835ynMfTZ8UG15zsllGeRLuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=k4VLtuWS; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 92CF93F592
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738750739;
	bh=qdkmBfYX7XaFvkbF82y8TuYeK5Pl9Wtpk+6BoGjJ8iE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=k4VLtuWSQRs/8uYBGxLp+arP3XPQprBigvNxph6xLBgIitDLIAzWJnyNmLsN+P2D3
	 cpmJDALZ9WDZlpARZc15NTdP0n7pkDVEhWssJi1CC7Q5osLDHvIdzWNEhq6EAV84sh
	 nEsCp9dfM1OZDLvWjRzV6ydQ0Suu41BZrbOgYqsr84gZO2iPPje21WnjaC9JpvT1mM
	 tIvBWpJknA2mbNb3aG1W7bw0dAG57FtdylYxkQPXalH1sZHp9XFqg6d5p4FzHKOLyw
	 yfUvBHCcb6So7F09L3RoxNlGeu7opik10qU5T5Q6oNClouijf3O58AW7m5T7LtJoBs
	 Gu1JyxvScLZow==
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-2ad8e353167so4222472fac.2
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 02:18:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738750738; x=1739355538;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qdkmBfYX7XaFvkbF82y8TuYeK5Pl9Wtpk+6BoGjJ8iE=;
        b=hIF5PsokqrlgzDjaF5M6ba3qwKf/9KAeR2Q2Bmg7bV6BzjLuAh9gfUvKKv9Qk8tcuo
         UEAO9x364FQiukPNISgPOR0myY6pr8hZ49iHDam2XYBPV5o46LtnWvRLE66tb0HZPx0u
         eGAwWjyR8EqmKUT7LQ39nOLKvj4iWEpBOahBmiQzS589VkHU+qGdsJVUNrEHM1JJiPET
         q0YI9gVAH3DwTk8iKGU9FJdo4i45t/LJ2GTaq+x25vZnnofCtLXsgp2PBrmdLeSiKMuz
         Y85HE/I2gvibYUnWk5Q4BIigxkyE7xZ3Az1c6rj5cxuIU1K3JytbNcmc3TxFKFIAceYM
         gYxA==
X-Forwarded-Encrypted: i=1; AJvYcCU3dg9ozfuxQEK8iA2Z40v5rXnvCOAv7eR9ZCk0IyONBuwp8fRAtT2C8ryS7IVnhdoV5kSBK80aCJ6c@vger.kernel.org
X-Gm-Message-State: AOJu0YworNyDrVs1Z/KWJCLoF1PwP9TtgbuurEHkxwszLwDx09kZ2Jpg
	3xbnXd+ufJ+OUzJc9awpraBNcYQ0WPqsJ/35hSkt62OlJmjS0z+QgHHRl65T6lzx2zFPMnUogQ7
	4t6Z5AfX6mro3u8d/bqtxAv+z02Kumyye7Erlrwwor8RVXc7sxOsAPj/rLCmYG9oFP5xhjGVnJz
	DIx9UkuBsQH5GYcLlXPAiVXjLiq0Mi6nog6hxP261MKdlQNMX1PA==
X-Gm-Gg: ASbGncuTDplIBRoOE3oHAZHhKkaklIsGoGUWjOV1QX0E/kSn63nWQ2bOkhpaWUF8tIx
	yxh1FyNgVUtLzAAnNDaB7uJhjS0sYrSJ35hQb4sdwW+GjGGA7KviUkFYDKzrhaM+Sp4+LXpCV/h
	GwqKrQI5JSIu28gWw=
X-Received: by 2002:a05:6871:e084:b0:297:285e:f9f4 with SMTP id 586e51a60fabf-2b8051adca4mr1499632fac.34.1738750738564;
        Wed, 05 Feb 2025 02:18:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8qpmyypodVkKYUm5sF+zKulTYncfI/CugaO758DUSia69BHhLRf7V5DXO6RaNISNiLy1Da5yWB2DzQ0HOlGA=
X-Received: by 2002:a05:6871:e084:b0:297:285e:f9f4 with SMTP id
 586e51a60fabf-2b8051adca4mr1499615fac.34.1738750738324; Wed, 05 Feb 2025
 02:18:58 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:18:57 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:18:57 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250203013730.269558-3-e@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de> <20250203013730.269558-3-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 5 Feb 2025 02:18:57 -0800
X-Gm-Features: AWEUYZlXlKzbHypA-jASfEJOP33KWqL31P4KBU9ridEeOOm8C_Po6yFU92yHqVE
Message-ID: <CAJM55Z9s4FMCmGaGPGBdcJWxoTNO1gupMLAq2a1fExiho5W1jw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] riscv: dts: starfive: jh7110-common: qspi flash
 setting read-delay 2 cycles max 100MHz
To: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Hal Feng <hal.feng@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Sync qspi flash setting to read-delay=2 and spi-max-frequency 100MHz for
> better compatibility with operating system and downstream boot loader SPL
> secondary program loader.

Here you should be explaining why these values better describe the hardware. To
me this just reads as "u-boot does this, so let's do the same" whith doesn't
really explain anything.

/Emil

>
> Signed-off-by: E Shattow <e@freeshell.de>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index a5661b677687..8a59c3001339 100644
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
> 2.47.2
>

