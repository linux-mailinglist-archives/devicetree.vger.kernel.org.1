Return-Path: <devicetree+bounces-84859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAD992E007
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 08:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DEB5DB20CC3
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 06:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD60824AD;
	Thu, 11 Jul 2024 06:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ/PdIkG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775CE1C14
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 06:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720679088; cv=none; b=m9xB+ygry9XYkJVDsyNaoVuP74L9tCJXfmXHucX05j8EAV+Ihtc2V8xIiNHxY+xArYVilDaBFNtryhSsTrAEGasuHrU4nb7Tx4cN3Wd5n9zkMHijdzB9hqx7ri8nNqfrV7dvRC+qRMBfl5sB8Stxi5nGSP49FnB+GIkx0lxsL9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720679088; c=relaxed/simple;
	bh=xC7e13IMhj6Dg+z216j2wygrK73xGHrHm7xc0ccM8ok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qeYCnReDqzAeeMB5CnENp84wtXFhxj+mVOlhXPVvBy5RhXMGBVO3er3hJfRv+E1KAWqlX1mdasHggEM0emGXvc2jMNaGEgEVwqZXKzT6rYK/SzfPL9VlHXPc9BHqfjd4DSGmTJZYAnCPz15uM88BWViDnFuOF7AtAIQiYIVm8Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ/PdIkG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FC74C116B1;
	Thu, 11 Jul 2024 06:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720679088;
	bh=xC7e13IMhj6Dg+z216j2wygrK73xGHrHm7xc0ccM8ok=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tZ/PdIkGxEzFAXGtiRGXWSvWjSEVJYBd/XH/XQVvML+cExmehevfbEy7Al+DjYu88
	 QwwSFE8uCs4txTPWTj0NE2xCLP8cjiYL8amBbda8gN3tR3ow90ckhTmDBEhb7vpXEa
	 7zasEkiOpPZpzj4nJKNRyk2jnUOY+a95q98oNuU1NnvSkwLN6mI5+sVfXavyvb0Qap
	 I3drgotRXQ0jEBfYD4FisXA9IliZ82FOBiymZ3pAcsQWp/K6KlFldZiWuGndf1QWiL
	 zvc7cURc84qoaLinkWva+DVUItq0UyZNnfCIyCajS6tUtWwEJko/YJTsSx4wBxEsrd
	 7ELXKRbzoMALQ==
Message-ID: <1fece7cc-fa01-4bea-ac73-a975e042c669@kernel.org>
Date: Thu, 11 Jul 2024 08:24:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: change product name for Radxa
 ZERO 2 (Pro)
To: FUKAUMI Naoki <naoki@radxa.com>, neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20240711034035.3921122-1-naoki@radxa.com>
 <20240711034035.3921122-2-naoki@radxa.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240711034035.3921122-2-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/07/2024 05:40, FUKAUMI Naoki wrote:
> a while ago, we changed product name (hardware is same),
> 
> from: Radxa ZERO2
>   to: Radxa ZERO 2 Pro
> 
> this patch reflect the change in dts.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile                        | 2 +-
>  ...-g12b-radxa-zero2.dts => meson-g12b-radxa-zero-2pro.dts} | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
>  rename arch/arm64/boot/dts/amlogic/{meson-g12b-radxa-zero2.dts => meson-g12b-radxa-zero-2pro.dts} (98%)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index 29417f04f886..5694ad0edcde 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -31,7 +31,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-go-ultra.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2l.dtb
> -dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero2.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero-2pro.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-bananapi-m2s.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-ugoos-am6.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
> similarity index 98%
> rename from arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> rename to arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
> index 8445701100d0..5514ca9a62fb 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
> @@ -16,8 +16,8 @@
>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>  
>  / {
> -	compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
> -	model = "Radxa Zero2";
> +	compatible = "radxa,zero-2pro", "amlogic,a311d", "amlogic,g12b";

Keep old compatible.


Best regards,
Krzysztof


