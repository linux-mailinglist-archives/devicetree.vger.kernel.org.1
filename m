Return-Path: <devicetree+bounces-225555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BED7CBCEE5E
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 03:58:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 461353457BC
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D9E1474CC;
	Sat, 11 Oct 2025 01:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cnUNBZ3z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0313EC2FB
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147892; cv=none; b=AhOtWdKv1nZlWZDd8hMAh6H+tHMda97TGEXltTBTgcIRqWriTCw9wiQrJL/7lo8eV4itlLVKv4+gHn7ZKZmvBgSKxiNF4z6jNRMfAJpe+9Ax1UgxCkk87Pt6tKXhWVMFGQ45EZNPCBlk5cl4ek8QBSGCLoq//QjHvsijZn4zxwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147892; c=relaxed/simple;
	bh=xEjenCizW/1lsmBfGOz71idCIRTTM8vnk5qmRJwsKxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hpxjYoRilOCq5bFsELDREDCVN/anpYVPF6A/BL6aOoKWOFPOrMEGmZfepqf7YVdZUK76VDtr2kOjztV4HTYk2hKC34rCAL9F7pbvzEnj+FL8Kl2yK+O8pL+2/rzX9M0BTvLkjszKtNVwXwanTuwLoY/9Tnsdc61Ahn+LEvuRIyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cnUNBZ3z; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-32eb76b9039so3461887a91.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760147889; x=1760752689; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d6HW8g44DEIQGTTdP8+kouoeqn7L/RqaKDm2Xldyjzc=;
        b=cnUNBZ3zuChNaxl310P3UgpYB4oBVyokZIp0mO1oeF9OK5J5o3HX/uGCwgFWiUeJli
         rhJFItI9aKAWXuAkV7ZX7diofftdmEteKRcOtD2R4S7quWc3sABJCSItDjMcUPqUWJxZ
         AMffhhCSeuH0BrditzCl06jjWyIXwb7RbXmGS2kGgY/fqIftLxO71GzX8s3FCvHIJnK2
         wMbkujsbrWa1HX/OBys1mW2n0NQoT78LETA3sEZ3FLUN0xxHilnmXl+Nr9FY+243iYZw
         0tT+87KkP4QBXYrUzq7y01xcrLHAVZMcGEP/BiknLhjq61QfQr5UyEYt6lPe4z+3/2Q0
         YE3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760147889; x=1760752689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d6HW8g44DEIQGTTdP8+kouoeqn7L/RqaKDm2Xldyjzc=;
        b=Ibm8r3+mZkaSoNjF1MBD7lHPHE5Bz40k3lJOLWNOf5JMqtMqymg5JjA4DvfBSS4h8s
         OjdKGo8Go5uE0CWz9Tj77Mpx55SQwUZ6caOgJE5ArYxQMShr2WWkR/Xez0g2uTBzFoaA
         I6OxY2vRyngE5k0Z8neFxtp5DubY0kiqYEhlykszDQF7N4Cat8qhDT88Y2xv2eBTX2NS
         G5VyMeTTJg1UM5NZSz1Jn+e6nXGOIDNt4vtM3uoArKqh6xaQG/8piCyjxLIx2yZx5sOE
         scxIKs6q7F09UZI8AT6jkB7aZQ2ScPU3FJjkFRQEM64EnrVPOEeLn1iBITAA1eXLPQ1C
         Jgkg==
X-Gm-Message-State: AOJu0Yx517nUm++2fWYSu67/1jXfe6u0fwDogyxiNHvbG+4EBgvJH0We
	q6S+R/C3/ya+JTHNtOODVfAkfvb0y+cJST5I7v/pVzq43+ORIH2YYdNU
X-Gm-Gg: ASbGncuQts2ejusi+j0CJ8zC4QlFhaAz9+A+9XygAdMR73fNh6U0BZpzMDukrghsfvI
	+wJv4LJrhJG3Hs0JQQDVPiUZyjzCoQdmR/4wTLxh+J2SF3K6k7mwT6pebbg205jJ7nra/Q1ldtl
	bDzA5qoBiLZRYwnZndhyNis6NV8di8fPX4NuXuginadRghfYcvIv6vGSuK1ahQaNt8gnLqOSJMm
	GefykpbhceIathzj1YdYaGf64V5DEl1mX+kLddmljiXbzpTu8o1/l4ajmJpMrBnQ34F9a4iNBwy
	o/T1mt9gyatlfdRBsdGT7gFGEmcc0uSfeFlvVPov5z4esSVhx67uqHA+Vw1wx4rEEmSxziQHG7V
	7uEdpR+ehqy5WK03G6sA6Zd3MvgGAcoejdXUWoBpM8lKgtka3xTU=
X-Google-Smtp-Source: AGHT+IFJ8EMUE7lChv4D1+KCffDibjFkTRRBWFD6F1X6h5F7fXOSWuNLu7wYFFrVDYNpkYrbaVyViQ==
X-Received: by 2002:a17:902:ccc4:b0:24c:e6fa:2a38 with SMTP id d9443c01a7336-2902739ad2emr176670255ad.25.1760147889100;
        Fri, 10 Oct 2025 18:58:09 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-29034de6c88sm70267895ad.17.2025.10.10.18.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 18:58:08 -0700 (PDT)
Date: Sat, 11 Oct 2025 09:57:26 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Joshua Milas <josh.milas@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com, 
	inochiama@gmail.com, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, alexander.sverdlin@gmail.com, 
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com, chao.wei@sophgo.com, 
	liujingqi@lanxincomputing.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 3/3] riscv64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <jpqvq6vr7ffibgshnqjxxfchdny5f2o4alyzqjort37ogo355j@n3pybh3hj565>
References: <20251011014811.28521-1-josh.milas@gmail.com>
 <20251011014811.28521-4-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251011014811.28521-4-josh.milas@gmail.com>

On Fri, Oct 10, 2025 at 09:48:11PM -0400, Joshua Milas wrote:
> This adds initial riscv support for the Milk-V Duo S board
> [1] making it possible to boot Linux to the command line.
> 
> Link: https://milkv.io/duo-s [1]
> 
> Signed-off-by: Joshua Milas <josh.milas@gmail.com>
> ---
>  arch/riscv/boot/dts/sophgo/Makefile           |   1 +
>  .../boot/dts/sophgo/cv1812h-milkv-duo-s.dts   | 110 ++++++++++++++++++
>  2 files changed, 111 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts
> 
> diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/sophgo/Makefile
> index 6f65526d4193..49d6ae4724ea 100644
> --- a/arch/riscv/boot/dts/sophgo/Makefile
> +++ b/arch/riscv/boot/dts/sophgo/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_SOPHGO) += cv1800b-milkv-duo.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) += cv1812h-huashan-pi.dtb
> +dtb-$(CONFIG_ARCH_SOPHGO) += cv1812h-milkv-duo-s.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) += sg2002-licheerv-nano-b.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-milkv-pioneer.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-evb-v1.dtb
> diff --git a/arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts b/arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts
> new file mode 100644
> index 000000000000..2ab46ec1fc0e
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts
> @@ -0,0 +1,110 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/pinctrl/pinctrl-cv1812h.h>

> +#include "cv1812h.dtsi"

SG2000 is different with CV1812H, add a new sg2000.dtsi instead.

Regards,
Inochi

> +
> +/ {
> +	model = "Milk-V Duo S";
> +	compatible = "milkv,duo-s", "sophgo,cv1812h";
> +
> +	aliases {
> +		mmc0 = &sdhci0;
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&osc {
> +	clock-frequency = <25000000>;
> +};
> +
> +&dmac {
> +	status = "okay";
> +};
> +
> +&emmc {
> +	bus-width = <4>;
> +	no-1-8-v;
> +	cap-mmc-hw-reset;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&gmac0 {
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	status = "okay";
> +};
> +
> +&mdio {
> +	status = "okay";
> +};
> +
> +&saradc {
> +	status = "okay";
> +};
> +
> +&sdhci0 {
> +	bus-width = <4>;
> +	no-1-8-v;
> +	disable-wp;
> +	status = "okay";
> +};
> +
> +&sdhci1 {
> +	bus-width = <4>;
> +	cap-sdio-irq;
> +	no-mmc;
> +	no-sd;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	status = "okay";
> +};
> +
> +&spi3 {
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	status = "okay";
> +};
> +
> -- 
> 2.51.0
> 

