Return-Path: <devicetree+bounces-90338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F818944FC0
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 17:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 201BD1F25321
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 15:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF0D1B3F2F;
	Thu,  1 Aug 2024 15:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Fvf/04Cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E29B1B3722
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 15:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722527867; cv=none; b=gDRwGGESysKrlFhTebA7ePpWvCmdQl8iHZx2k4Gb8/MZu7eIRtw7MDhGcmf4Pky3LuyYff7wR/0AvmcS8bGVqNJkoFSNYQay/i+u2vZDD14SNsPLNby7VN5hVrqQ78ubnCM8alBKqRmBRKaD5CVLG6Ft2yG5ML2IyOIkrceBQJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722527867; c=relaxed/simple;
	bh=Val1v/0+zIlxQWVpe2WCn6LToykSYu/HfcA8SyqTAsc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AvhvZVeorvOMHde+Dg2r5v2saMkHODl0livIncx7kW8h4NhfLlvPrJNkvEa8h8oJA/cNVq1w5GJ7jdhUiQFVUwstmfZugquU6hh0hkIoe28WhxG11zPCkAtGV2+LW/WkrUHHDvLnNIzEkWWcmR/CgckxTTSzlPIIhXbFkQu7Y8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Fvf/04Cg; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-4f527c0c959so2442024e0c.1
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 08:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722527865; x=1723132665; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=snX6qmvGXBlkj4qHxmnqzT8/9j0530F70W9IbEs0MBs=;
        b=Fvf/04CgWpLbzB/9MJu7Ro1J1ZZf5ZPP02V3aflehF9703FJneZILls8AkeNaC5vBv
         QVm5MKRpjNl+oe9xYW6UwVF84gDErS5y8Q0a1a+QpZ5vAwiiGRfRIHRgFCmqqD5tBMRl
         woswqaCTu9VP35qxI0BAbU9zcRhuFWSkfhayGR/jueBoMIWQ4l4nn/j7DfnuR9StU1SG
         gtzDLlnpxtDZaCpIp1pojJRZ3Xf+nfJTXr7MCMemLdYws9yKD5G70L23noGLjNykIqZa
         JfDlZ4cj5+X0GEd9fLcPFe/SOZX0L9+Sihs8vXA1Oih+MbxD/W33+6MMbKat7eqCN3kj
         czKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722527865; x=1723132665;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=snX6qmvGXBlkj4qHxmnqzT8/9j0530F70W9IbEs0MBs=;
        b=vepEvHuBd5JsvUnN4k8gLZ5fn296JLqXAEnreKCKGVLW8qBh/oYopTQzTM8+1MNPmW
         whyckRLAXT2z4T7xL+ttwwhhTsxCNTb+uLCjmGqCXGAvs921zrfndy9p214cTbgscwyq
         zGARXtu6hjRoE8yBHZTdwUd23Q7Hx3zrBk6Zkj+I/AwW1+ps1XwcVri7+ZNR0OGMbrGt
         Ej9VxdG15ijsJq8dt9Brfm9o6PFroSVyLjTmekeBIGOuzvJklN4CoV3iraUDEQYUoaZd
         6M8fabQ8EkuzVZL5eG2CMOXziDirKUdyh7o4vqX+NzLebk4u5p72cHgBb31Y01bsr4WC
         MsTg==
X-Forwarded-Encrypted: i=1; AJvYcCWl1pdwmnD8pvekRSHTnX7JX0QAKEWSbJApkjO+KHClVJn2nxC8T7zCME5kJiUBoJqp8aJocbYqS8AP+UPPYMDKN+IX+KqUbNCVTw==
X-Gm-Message-State: AOJu0YxmMPe8ls6mxlXZz7cADbtobeyJNOZqekXZJYICPQhcXKkMb3b9
	KU2tRbQmShDmWSBwX9pC4sniOP889IuNXkNTPfp0sDpIyAZJU8Lgj5SF1dXf6GL9s5AgSwFjYC4
	Faat8R/Svk3iovoG5wN9YRrJfJD1sOeRRrxXOJA==
X-Google-Smtp-Source: AGHT+IGgmhTnl/HxYppSXaq7VmYQRkFbvdmv2Ue6piokAXA8lXZkX+zswFabpVoI9oJENUYd4nOCoCEtPCB9vMYPqZM=
X-Received: by 2002:a05:6122:1d16:b0:4f2:f1f1:a9f2 with SMTP id
 71dfb90a1353d-4f89ff6c61dmr938235e0c.4.1722527864994; Thu, 01 Aug 2024
 08:57:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240730-k1-01-basic-dt-v5-0-98263aae83be@gentoo.org> <20240730-k1-01-basic-dt-v5-9-98263aae83be@gentoo.org>
In-Reply-To: <20240730-k1-01-basic-dt-v5-9-98263aae83be@gentoo.org>
From: Jesse Taube <jesse@rivosinc.com>
Date: Thu, 1 Aug 2024 11:57:34 -0400
Message-ID: <CALSpo=bUiwAr=Do6QxLT_vUzjuK4t6=nCtaWRLHzLW_qjKdicA@mail.gmail.com>
Subject: Re: [PATCH v5 09/10] riscv: dts: spacemit: add Banana Pi BPI-F3 board
 device tree
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Yangyu Chen <cyy@cyyself.name>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Samuel Holland <samuel.holland@sifive.com>, 
	Anup Patel <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-serial@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@spacemit.com>, Meng Zhang <kevin.z.m@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2024 at 8:29=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> From: Yangyu Chen <cyy@cyyself.name>
>
> Banana Pi BPI-F3 [1] is a industrial grade RISC-V development board, it
> design with SpacemiT K1 8 core RISC-V chip [2].
>
> Currently only support booting into console with only uart enabled,
> other features will be added soon later.
>
> Link: https://docs.banana-pi.org/en/BPI-F3/BananaPi_BPI-F3 [1]
> Link: https://www.spacemit.com/en/spacemit-key-stone-2/ [2]
> Signed-off-by: Yangyu Chen <cyy@cyyself.name>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
Acked-by: Jesse Taube <jesse@rivosinc.com>

> ---
>  arch/riscv/boot/dts/Makefile                    |  1 +
>  arch/riscv/boot/dts/spacemit/Makefile           |  2 ++
>  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 19 +++++++++++++++++++
>  3 files changed, 22 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index fdae05bbf5563..bff887d38abe4 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -5,6 +5,7 @@ subdir-y +=3D microchip
>  subdir-y +=3D renesas
>  subdir-y +=3D sifive
>  subdir-y +=3D sophgo
> +subdir-y +=3D spacemit
>  subdir-y +=3D starfive
>  subdir-y +=3D thead
>
> diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/=
spacemit/Makefile
> new file mode 100644
> index 0000000000000..ac617319a5742
> --- /dev/null
> +++ b/arch/riscv/boot/dts/spacemit/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-bananapi-f3.dtb
> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv=
/boot/dts/spacemit/k1-bananapi-f3.dts
> new file mode 100644
> index 0000000000000..023274189b492
> --- /dev/null
> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2024 Yangyu Chen <cyy@cyyself.name>
> + */
> +
> +#include "k1.dtsi"
> +
> +/ {
> +       model =3D "Banana Pi BPI-F3";
> +       compatible =3D "bananapi,bpi-f3", "spacemit,k1";
> +
> +       chosen {
> +               stdout-path =3D "serial0";
> +       };
> +};
> +
> +&uart0 {
> +       status =3D "okay";
> +};
>
> --
> 2.45.2
>

