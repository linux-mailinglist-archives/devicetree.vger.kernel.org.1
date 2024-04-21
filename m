Return-Path: <devicetree+bounces-61170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B13378ABE31
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA3B21C209CE
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2134205E2C;
	Sun, 21 Apr 2024 01:07:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CC1F33D5
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661669; cv=none; b=s8ZPfRUsmVY9kUiSNQ2jOH9s6dgDOOnXrX13isFBOrLGk242pyV/LazivbapIqUXvPKMGu9oThXNn6RoityOJIHUU/nSWrIibC5VeQmnRHn/DboSVBKeeG/Hqcx4RCLT6d8L97GSA1C63iMFfAJyBWehaD12HlPAZ/v6HzX14R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661669; c=relaxed/simple;
	bh=jjqLhNNRUaC/b6NxvcHjlTCLqg4oYOIyjtr+HW9GZtE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SeavorWh0cbGGuvFjiYEVGAErj/poG1dHnUYiKiPnulLl6/KoiWmI4dPdi4Tw6fHxEBWEOnX39ubh+mL9WdyeRpFr/150cOJ+GbqNB5g2ob76c+sf3YQ+8Z9FVT78hncXDwHNKarCu+nBWKsO+rPF6m/cgEc94yuZQJY0N30ChE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A89D2143D;
	Sat, 20 Apr 2024 18:08:16 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 616293F792;
	Sat, 20 Apr 2024 18:07:46 -0700 (PDT)
Date: Sun, 21 Apr 2024 02:07:34 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Chris Morgan <macromorgan@hotmail.com>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 5/5] arm64: dts: allwinner: h700: Add RG35XX DTBs to
 Makefile
Message-ID: <20240421020734.48444d78@minigeek.lan>
In-Reply-To: <20240420104354.334947-11-ryan@testtoast.com>
References: <20240420104354.334947-5-ryan@testtoast.com>
	<20240420104354.334947-11-ryan@testtoast.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 20 Apr 2024 22:43:59 +1200
Ryan Walklin <ryan@testtoast.com> wrote:

Hi,

it looks unusual to have this as a separate patch. Please squash the
respective line into the patch that introduces each file.

Cheers,
Andre

> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 21149b346a60..c2c871d8b71e 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -47,3 +47,6 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-longanpi-3h.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb


