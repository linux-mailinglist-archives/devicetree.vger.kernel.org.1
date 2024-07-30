Return-Path: <devicetree+bounces-89345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 704BA940D39
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 11:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D2E0281146
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 09:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABAC194ACC;
	Tue, 30 Jul 2024 09:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="dpzWUWB0"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6AB4167DB9
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 09:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722331121; cv=none; b=M/cAM1hVS47LVhsv8BdHrzrL03b/XaUPvZa5jFZ+Lx+n99tqE0h5Pxsv/lVS3ifJu+bG1hAME1A0ed49d6ZJi35I2izf6SPKiERAhEYRKWJFgXgwDe/Ob1U5pNq/CJqsuZiHKqkv+Jssln27jcOO2Ygm3vFEdPeM7GMXUg7AjbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722331121; c=relaxed/simple;
	bh=bRrg7Zj5ARTM5DtHDvFZ1E+jt/2odIow37L7E+ZvNxo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aS6DV9+6FFkGsjCxkg4JTZ9oFxuXeYALuMsarFiA5YAqpIeysxe5toF9jS6Jy71SAxDjRER0toUth2C7FOKEfOUgwTAohsjd6oFOkpdfBImqTnmGe5szZhzu131KEkEfXM4gDHt9L1I5XgYzcJA2LgYtpOkA4+Sq1W7CYtp24Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=dpzWUWB0; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722331118;
	bh=bRrg7Zj5ARTM5DtHDvFZ1E+jt/2odIow37L7E+ZvNxo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dpzWUWB0Mo7i84mSMauFhlUizzmQqdiICv7yWlYyEdxYmc5dHwKzab/hpGZ2agxed
	 w4hMwrL2+e0IZD6Ucf/YQkjnfgjHHwar2b+k/CFhmp/TGJp9WlfrpS8YOtRQh7XPmb
	 ZihzaPg2KZtHQABEdD5U0BrLGOL6IIJjLKZyFOMjpjcqCo/ScCDalWAjBzPCC/jWYy
	 i4Gqdn0usWoMvWs6kyAU9VrIiiuAetpn6xXXxhkZkeGldJoHWx6wcrhl066TqDm9kb
	 SBnFzC0JIA+vxfz8TuFNliwfvmX7ZjTdaWZebdqzBnYiqCKEvzWkXo3mKxLs6dF4gY
	 HoXgg701PFY9Q==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 59D013780521;
	Tue, 30 Jul 2024 09:18:37 +0000 (UTC)
Message-ID: <d43dc76a-2933-476a-806c-2fbf018dc68d@collabora.com>
Date: Tue, 30 Jul 2024 11:18:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: mediatek: mt7986: fix the switch reset
 line on BPI-R3
To: Leith Bade <leith@bade.nz>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, frank-w@public-files.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, didi.debian@cknow.org
References: <20240627075856.2314804-1-leith@bade.nz>
 <20240627075856.2314804-2-leith@bade.nz>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240627075856.2314804-2-leith@bade.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 27/06/24 09:58, Leith Bade ha scritto:
> The current GPIO definition for the MT7531 switch reset line incorrectly
> specifies a pin GPIO_0 (GPIO5) that is connected to the boot mode
> selection DIP switch (SW1).
> 
> In the public schematic for the BPI-R3 (titled "BPI-R3-MT7986A",
> revision "V1.1", sheet 4), the SPI1_CS (GPIO32) pin of the MT7986 (U1E)
> is connected to the GbE_RESET net.
> 
> Frank Wunderlich has told me, via the Banana Pi forum, that this GbE_RESET
> net connects to the MT7531 reset line in the private part of the shematic
> he has a copy of.
> 

This commit needs a Fixes tag. After which,

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> Signed-off-by: Leith Bade <leith@bade.nz>
> ---
>   arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> index ed79ad1ae871..951612ea1e66 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> @@ -206,7 +206,7 @@ switch: switch@31 {
>   		interrupt-controller;
>   		#interrupt-cells = <1>;
>   		interrupts-extended = <&pio 66 IRQ_TYPE_LEVEL_HIGH>;
> -		reset-gpios = <&pio 5 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&pio 32 GPIO_ACTIVE_HIGH>;
>   	};
>   };
>   



