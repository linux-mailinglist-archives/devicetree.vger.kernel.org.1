Return-Path: <devicetree+bounces-148480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F01AA3C1FA
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 15:23:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31FAC16D823
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE6B1EB1B8;
	Wed, 19 Feb 2025 14:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="mGuX916h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFD91EA7FE
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 14:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739974921; cv=none; b=MikSd9zThUoDogHGrPtZl6RMB54VP22DuPjCS+hsSog3z1ulN/6txkrG6Fq7vibvBriqoJVLnIrIRHM8nbXjHmDWZ9yymq0UyGkleVum2e8/lAsGbChtXYOfkq4JfZBh6ij67N+QDqxFMQ0/w9asEzctNsQrVrLF5umL0w4oGrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739974921; c=relaxed/simple;
	bh=qocFPkQyCPvV1h2KH38pPVOHg99R91NSuDTDGCCnb+4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nb0R0tdTKCecY2021rTMpsRIgzTd2KK9ZXwhdrcp9qk6OpJ3XObhyq+widRFT6y2LCGmZvgnjp8W4BrLVWDBNCmhideFX+NmWbOdYwfm6OwlIbGsPjGv9O6lBLbssgrOnbeNw48Ov/ZY+2wKkaZ4wFA9cX88HfqfH7u7I3XXGpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=mGuX916h; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 78F993F2C5
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 14:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1739974917;
	bh=TNFsSZbXf9eUik7wRM0fvibJQY2YnOZp+sKu7B0H7PU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=mGuX916hjaGA3c9vr8PYPR/LXlipIYN8B8NTcMo5Xu2E+qIBaCv+d1QoLzIyQyRQN
	 kt6d7wqwEpNKHfAEtVD6B8AS7SbmEpzvfzpmrLXe5Qe9Pz2DnS7R5YBcGis2j0P5v5
	 ZNKWJhQPVabT0eP7Nu8LzQ0oGSZQzMbDCo78cHVsBUUB9ndwuEonibVJgbzTeDbvOK
	 fs4bYQrNHy5cpTnIndZQTNRUk9wXzMgnY9uZHA3HWyW3c6+isc02dya1Ds1tVJzbYo
	 LtA4bTDBTGTAjaAB7LhFlSd/VUzB08VUDd7A7G/OU+RVfU4GR3qWdr2iwW8sSm+7vO
	 Te9g+YYvAlmtA==
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3f413404320so626945b6e.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 06:21:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739974916; x=1740579716;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TNFsSZbXf9eUik7wRM0fvibJQY2YnOZp+sKu7B0H7PU=;
        b=jJAOR/YkHQj3PZcQi91e+5LlAsxxjNfxS9pWjzVItIf5Q+1/3KZ1r6d7y2ansnt+il
         bfIzS8yt8qFfbQfz2Pi7CQexDAOCmB//bEzmrt0de3TGi/z2ZJoZzvLOMwReK9CW5S80
         bjU+YiN9hHsyHeoFAh8akoZdGSrM5mqe7v5I2m1r6YJ7WGFqYj3abdMvjNjjnsBObZTX
         cPl4QGZaGwGasMp+0vdSDnfHv1Esb8cCLC2fNUZsuSKbHHYs0btYTWI/vBiQfsNn8hiv
         QTX6pCT52L5ZZT+mACZ3VJSYP8SnwLmadbhwk95msipiPkCD9mTXD2ucLkJuQ3zKDzY1
         gb6w==
X-Forwarded-Encrypted: i=1; AJvYcCWSrm315jvt0WRqiWB85YjGffz6hwuGKegjLUBCEiR9RVfAq4zk6t/Pxo09k4ZJYa6Sqk1FFw7Wbn9R@vger.kernel.org
X-Gm-Message-State: AOJu0YxKX+RG70olqHCOOIrv7vn3dbGEA2bbJKgoxbCGj0rvpgJeu1cR
	sAvsRGn19tGwQ2C/SBHVgKT6/XbUEqJunqgl74iSSUgxMqk336l/CkYHz4ebide38su3xnMuI0g
	dkFYojTDnPoyvcPCQqHanUCXy7Q/eG0CPngQY+CjnNzpNfYwGAO4nlMHmyKT0b4nTvYCCZ+Ltis
	zOAqX+ec1itV5EBz+9x00au8JtcBsSPG59I2OZRMyyXjYOehBvfA==
X-Gm-Gg: ASbGncvXV0ayfvSRgHh2sImiTqPVBnquaisZSSK5t2sjvlnAsKKI1IBW2TTT97icKyv
	O6GPiGzl3PLOV0Y0EK9yeJ1k6AzRiOn11q5UI23/brrd6Y3u05D6e0b985zfQyz5tjJQD1RyJSl
	hhWBmF/bh2AV9j96s=
X-Received: by 2002:a05:6808:2009:b0:3f4:28:1cf9 with SMTP id 5614622812f47-3f40f24c70bmr3215800b6e.37.1739974916181;
        Wed, 19 Feb 2025 06:21:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEEKEwejCxHSGMNqBDr8UWGdz+HnH9g09SOIuN3EzxDyFqmETR+GIxaKnUFIYn1IRhg7V7hGhncJdXEh66k2zg=
X-Received: by 2002:a05:6808:2009:b0:3f4:28:1cf9 with SMTP id
 5614622812f47-3f40f24c70bmr3215763b6e.37.1739974915815; Wed, 19 Feb 2025
 06:21:55 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 06:21:55 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 06:21:55 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250215-fml13v01_emmc_speed-v1-1-e3bd224ae0e8@hotmail.com>
References: <20250215-fml13v01_emmc_speed-v1-1-e3bd224ae0e8@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 19 Feb 2025 06:21:55 -0800
X-Gm-Features: AWEUYZkshXOe8nO7q9Z2xgk8mlOteMmpUwpHHVMO_JGbLr-I9D65us9gjN0VrVM
Message-ID: <CAJM55Z9GJr3BtbQeFpNU2P=nomsOvQ6dsVYFX_s=tHznu75ptQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: fml13v01: increase eMMC bus speed
To: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Maud Spierings <maud_spierings@hotmail.com>
Content-Type: text/plain; charset="UTF-8"

Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
>
> The assigned clock speed of 50 MHz is and max-frequency of 100MHz are
> limitting this interface which is SDIO 5.0 capable. Sadly at 200MHz it
> fails to mount an eMMC drive, 150MHz (really 132 MHz) is the highest it
> was able to get.
>
> This improves the seq read/write performance by 2x~
>
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
> I put this in this specific dts instead of the common one as I cannot
> test if other boards are also able to handle these speeds.

Hi Maud,

Thanks for the patch!

These settings work on my Milk-V Mars board booting off eMMC, but I'm not sure
if that means we can just raise the frequency across all the JH7110 boards.
The eMMC on my Milk-V mars is a detachable module that identifies as

  mmcblk0: mmc0:0001 DG4016 14.7 GiB

I guess what works might depend on the module too. Is the eMMC on the framework
board soldered on?

Raising the max-frequency to 200MHz seems right for all boards since we're
already saying mmc0 supports HS200 mode.

Maybe we could begin by raising the max frequency to 200MHz for all boards,
but only assign the 150MHz rate on the framework board?

/Emil
>
> This patch depends on [1]
>
> [1]: https://lore.kernel.org/all/20250207093618.126636-1-sandie.cao@deepcomputing.io/
> ---
>  arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> index 8d9ce8b69a71be78ca57618ae842c9f415648450..1f4bac9f89463a6af844b8f1743bdfa659e612ab 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> @@ -11,6 +11,11 @@ / {
>  	compatible = "deepcomputing,fml13v01", "starfive,jh7110";
>  };
>
> +&mmc0 {
> +	max-frequency = <200000000>;
> +	assigned-clock-rates = <150000000>;
> +};
> +
>  &pcie1 {
>  	perst-gpios = <&sysgpio 21 GPIO_ACTIVE_LOW>;
>  	phys = <&pciephy1>;
>
> ---
> base-commit: 0bc08ec1ff5a32449d2b04704173dbf3ebd6b014
> change-id: 20250215-fml13v01_emmc_speed-67812bd9b404
>
> Best regards,
> --
> Maud Spierings <maud_spierings@hotmail.com>
>
>

