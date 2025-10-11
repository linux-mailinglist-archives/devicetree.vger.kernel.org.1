Return-Path: <devicetree+bounces-225554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 555D1BCEE5B
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 03:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51E2619A0D8F
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4065014F121;
	Sat, 11 Oct 2025 01:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nNP0Is1L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85B486340
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147834; cv=none; b=IQrQV9omNOAJauaox8vfLzHSu8G3hq9azTRCUMK4IxcyRJclulFXDLWpHBsoEGjv9hXylEpBvKLk3ZGgL7jdxz1Ibw56BOiviOPf+awR6Q/+iEQ3Oj7rzOKZbtHFpizJjMuLb2gYNy3SYUeEoTfb+m6tpOVSPIVoDgMrrSRXOWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147834; c=relaxed/simple;
	bh=+vf+3RHZibMMj/tI8fb1sI6RM2pGdspNkZYG6G7Lqmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ted5hCWXBnJo9iWwhLGhLlxujOWy0RIuzN8gjJMs1+uAfh1vXSB2DlGLr/iujwxJ0mpDsJaFP5m0R0b8JskgHC0zz5IaPHSsuQcgGn6QGg5sLuquc8kt7xNBqLGW3cK4nlG6+yXXMXnG4tzPO3zACWgpIFDrvF6b8B/kutR+skQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nNP0Is1L; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b5579235200so1716971a12.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760147831; x=1760752631; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eHTSJHwY1yibK3NZWh/Q68kzDMLrWU3aH+eDUXwCRpA=;
        b=nNP0Is1LwERCy420V28l04T4YsxTQe+n7D/9RXxh5jkgAVILPKBkJNjB1cBmoDDeuV
         eyiww7eNpAy2sUUPmDcNxDzuwQD3RoQ7SeZkmStihhhFZccTIWDREzhxBc8qjGDjq7FO
         v7vJIRx05KwNv7IZWry6icWwgkzCshC1fh3KjmPB2D8a0EjDM5VHJPLYjJPxoY++/xSu
         0LEcCPofWL0Gkd7f1CAtg2M7hQhc2HM5aLq2lWwP96rVGkMtU1mUUPW6e3tWhN5KIoJ9
         q3aiXSQGHGfEfDXyRmaC8O1Qorv+4thbOvjOzOwW21PNWYXWraMiGpOnc0Mq1LKeObl2
         KnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760147831; x=1760752631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eHTSJHwY1yibK3NZWh/Q68kzDMLrWU3aH+eDUXwCRpA=;
        b=m0LIXTryiSlj9/+t8fm3XtLyF8fKDwxiJBTTV98yXjtZNPYenbA/YD3q7VVNezBELy
         9jSX/bCk7L6FDkRCeADToqkycKjxFbROtQIyV4W01x/dylzhgYjw/5ePj0ufdmKGnr8e
         zmp2ixm7RKJgobZT/nnI8ubZfVJxOO7Oz2UR2wb23hVPvofn+3/SbyNZMkqORxwE9Zns
         Mqo1ZZ6UvyfjJ6M3PkBAcNrkIECoErhUba71o9EI8kJepuVHJj2VKVJvwIuCRBfT9+uo
         1Pa5tFaiifNaWibhL9nMSc1B0l6epDG40RGbdFIQuS3Tzp3H8dWpsZHkMRIFVwd7YgKG
         erLA==
X-Gm-Message-State: AOJu0YzAnMJMTVswjKSW3SXQq3ARnmTbT3vrBphWE/tzNPAsPUPslURl
	VBylOscWLNXbxjcdp74mT70m73yLywci3cx7iM8gPUjUnI0FJ+k+JWIU
X-Gm-Gg: ASbGncvsAWWp8dc8FCiuGttwU2epMsjgEukCuUBkSKRzvQBwB8y49SgVbu2lpMKWu4s
	FSsjLYY2pmcuBzmClWrxhmdHLNG94iH/tORPVBvDu+yLZd009sqxa/iFLJy/nZZjO3T2c23x9yp
	080dqoDYruURN8yg6XfbAhdA/tbqc+AZcajK0oGQsCx04bB/vLIWR7cVlSIvOisJ6oeXm2nWZ1v
	CU6QXuUKSmdIYME6mwmJzSi+T6yNUa9LRGzQFWLdr6L+KLilkuxsBgyicHfzkF0QlU0SnVR28bR
	2R2hiZpHQmnRhZcFzfFhoebEJhbhZJLNKAEv0hFpr2FI9Zw80leOD0fu4ilpu9gkhrKbDNbScyC
	xtD8jMOxC/4Bt77HZpEhQQIUOuyfSAiSeAZI1Mk/Q
X-Google-Smtp-Source: AGHT+IFc5FAAft1OfRzVanzQWGtZ/tg/QAdN+bH6b1aigX28GF4mdggE7OEsu26WE+5GHtCW7IZH5w==
X-Received: by 2002:a17:902:fc4c:b0:282:ee0e:5991 with SMTP id d9443c01a7336-290272b54abmr170693615ad.30.1760147830782;
        Fri, 10 Oct 2025 18:57:10 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-29034f56c04sm69598565ad.110.2025.10.10.18.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 18:57:10 -0700 (PDT)
Date: Sat, 11 Oct 2025 09:56:28 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Joshua Milas <josh.milas@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com, 
	inochiama@gmail.com, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, alexander.sverdlin@gmail.com, 
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com, chao.wei@sophgo.com, 
	liujingqi@lanxincomputing.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <hkdnjyldwr4watvizsju4qcvpvkb3mtt5rathaooembpceyufx@ega5xrqj6v3y>
References: <20251011014811.28521-1-josh.milas@gmail.com>
 <20251011014811.28521-3-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251011014811.28521-3-josh.milas@gmail.com>

On Fri, Oct 10, 2025 at 09:48:10PM -0400, Joshua Milas wrote:
> This adds initial arm64 support for the Milk-V Duo S board
> [1] making it possible to boot Linux to the command line.
> 
> Link: https://milkv.io/duo-s [1]
> 
> Signed-off-by: Joshua Milas <josh.milas@gmail.com>
> ---
>  arch/arm64/boot/dts/sophgo/Makefile           |   1 +
>  .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 110 ++++++++++++++++++
>  2 files changed, 111 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> 
> diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
> index 94f52cd7d994..68aace728223 100644
> --- a/arch/arm64/boot/dts/sophgo/Makefile
> +++ b/arch/arm64/boot/dts/sophgo/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
> +dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-s.dtb
> diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> new file mode 100644
> index 000000000000..e9afad6fd106
> --- /dev/null
> +++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> @@ -0,0 +1,110 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> +#include "sg2000.dtsi"
> +
> +/ {
> +	model = "Milk-V Duo S";
> +	compatible = "milkv,duo-s", "sophgo,sg2000";
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

Only enable device that can be accessed directly. These devices share
some pins and only one of them can be used. I suggest enabling devices
that are accessed by default (which means it is compatible with the
vendor kernel).

This advice also applys to the riscv dts.

Regards,
Inochi

