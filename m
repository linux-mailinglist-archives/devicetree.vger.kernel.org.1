Return-Path: <devicetree+bounces-148423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EA3A3C026
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:40:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECD34175C93
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698021E284C;
	Wed, 19 Feb 2025 13:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="I4znsC4k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0BEE75809
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739972215; cv=none; b=VBdewr4UC65mQka54N/B0cudbJz2xm2SUtWiovPtHO+GsCd+Ut+azk4W24KmPuQvsUYdQ/EvfFbKM/bzzO6buYAwoGwGmBkF8oOpRMzKx5cK/k5Whbhqxl5k3kvDrCIbui3v0Q7KYGBB4/vsB8rp8of3oNW8Vy3iXOSHWxFqJHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739972215; c=relaxed/simple;
	bh=a5amTpCIxi1oHRkT9I7QqR+ljS6+mKJGpRiYNSmKfLo=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JcVzDxAyOtJwUbbE8tlEzmO7n0NMOq9ps3OH0yKby7kxxDwMo/4LLDd7FdM0zsOPuTQjG66aKRFIS+UxYpFoh0suulF0nYQCBFILZcsz81vWeZtZu83NUNdch42y+/MXvKzLqRBPfjV49CJqrGfoy1OzH+HseDLjDNjnlZgNq7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=I4znsC4k; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9F9AC3F27D
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1739972210;
	bh=oxEPsf6BXD6TadgvNAnbgKVAmCgtOTjj+4mMTP9U1dQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=I4znsC4k9jemo5zvo5E8Xgu9kjstO3YqvdC9bXhboLtiubU1tC+th/bncec2Onqg+
	 Bxht7qbFe0F32lSl3/TwLNcVOuloIyvfhpInZFusfJpHkr/SsxL2ACng+4hBnMCMGb
	 r+jQDi+F1K02rBdKK0nWCVRryj0Nwj2PyRDRhP4FJfZHJIaPDxM+AUGC3Z1BUyKe6a
	 eRk6TVNiGbiC3oQ5kCfmR74P1WI5QzoTENbrEQr6zDd+cjthpewySyMCiL/zCRPC1b
	 APKEJgRxRhxamNM505JCnTSyXmRZ4znqXe7c8cZ8qQ+UbQ5tw1G9gp02EUQVUguGhP
	 KbFSZ9NitsC7w==
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3f40efab7e9so348455b6e.0
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 05:36:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739972209; x=1740577009;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oxEPsf6BXD6TadgvNAnbgKVAmCgtOTjj+4mMTP9U1dQ=;
        b=C37dBXtPT5LoIxffiTFuGPDkDP2/CHYBcexkRHAyrAjmBhAF4ecUUNMNXDgMn+1GDk
         7Lo/FilkZosoGKrJ3N3OvZooNS6hjyC9qUw8hyaK6WY71u7404o2YDXj8mMTDtqg0QFJ
         PX5zzZizENgAxCTvhYU2bkzy0jzzevaKW6rivjZR3ZlSYvd9N74AkUdtxWzrD0RJe68s
         scJm8yUUE4M0p3/ZO7qsyCp3l2Xdkqb6RxhvNIV9MZW9KVfXZwZRUDpZjtbhkWn7+B40
         gNr/tYC3LjMGH7+381UCftQXbi25H5pcll5NHnS709U7vci7P1wTEgEb4nopsiWYCgiU
         qI7w==
X-Forwarded-Encrypted: i=1; AJvYcCXD5Qva/55+EUrfx+HuVW9tSK69adjqmItZh+B5VfaARYy65bFvkmXPXsTzkCsNeKXURn/2O8UEEDZT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa88XNeVQYXtIxBLFuaiauw1lisK5u2M1J8PrwrWDOH5Kx5FW6
	h4t+DPN8VBTxnuWMFE5/Xy/fKnDs89NU6J3LaJEwh3Ue2Cx0KVH24W7WxCIGq1hhRfM+81vcFjV
	uX2IRpZquxcIc5JBPfibFFj6KcR8z0qQ8DYmqXFtLyzJek/edxbek0P+r+2O2MCDqkkIhHWqV5b
	sTE+gkrjPNwz/N/FOTqRr3X3Sij7AWHuWGcMux0/lxWAJ5JCpEwg==
X-Gm-Gg: ASbGncsQoRbS0mNa0iaXjopVT1G1e2Q8ZwOLMFM0Ee26j2xkujYdJ88QUg9WZwVeMqj
	oHhycihQcCOtCJz88V2rnv+CYBk+V1uNduclrKXVLoVkYOROKI9oT6zSGuAy2TOef6gcPHCg/LJ
	Dz0Tro1qjh9+z8sTY=
X-Received: by 2002:a05:6808:13d3:b0:3f4:b14:8d8e with SMTP id 5614622812f47-3f40b148f5emr4687273b6e.39.1739972209579;
        Wed, 19 Feb 2025 05:36:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9hEEslwxSC5v+wHCnRCJJyBAh2kUK73RjgIFEWwcww6qhYK/ZqyM+mXPwcQZQKmE7ZuGDceV0yV4YigAzOhA=
X-Received: by 2002:a05:6808:13d3:b0:3f4:b14:8d8e with SMTP id
 5614622812f47-3f40b148f5emr4687243b6e.39.1739972209253; Wed, 19 Feb 2025
 05:36:49 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 05:36:47 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 05:36:47 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250213-tidy-dollop-cbfc8fc7dc91@spud>
References: <20250213-tidy-dollop-cbfc8fc7dc91@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 19 Feb 2025 05:36:47 -0800
X-Gm-Features: AWEUYZnRpiBceaWxcRC-Lan6TxlbntvEwYvjC2A02PkLG-UmOt5pf0O2VECu_Eg
Message-ID: <CAJM55Z9VDCymHezg8WGuJUnySzNFKBJO8g5ARJegb2zAmxeuOA@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: remove non-existent dac from jh7110
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> The jh7110 boards do not have a Rohm DAC on them as far as I
> can tell, and they certainly do not have a dh2228fv, as this device does
> not actually exist! Remove the dac nodes from the devicetrees as it is
> not acceptable to pretend to have a device on a board in order to bind
> the spidev driver in Linux.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Hmm.. I thought we already did this, but it must have been another board.
In any case

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Thanks!
/Emil

> ---
> CC: Emil Renner Berthing <kernel@esmil.dk>
> CC: Conor Dooley <conor@kernel.org>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: linux-riscv@lists.infradead.org
> CC: devicetree@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index dd2eefc295e5..c2f70f5e2918 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -350,12 +350,6 @@ &pwm {
>  &spi0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&spi0_pins>;
> -
> -	spi_dev0: spi@0 {
> -		compatible = "rohm,dh2228fv";
> -		reg = <0>;
> -		spi-max-frequency = <10000000>;
> -	};
>  };
>
>  &syscrg {
> --
> 2.45.2
>

