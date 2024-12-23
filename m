Return-Path: <devicetree+bounces-133525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8189FAD96
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:17:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C569F7A19C8
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4909F192B9D;
	Mon, 23 Dec 2024 11:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="IMYmZYDA"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58ED318A6C5;
	Mon, 23 Dec 2024 11:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734952623; cv=none; b=LarJ4pmdzDjADspwPrMhywozjb771okC56OBYSt0Y/AQI7eCoCAOuiH8I493KmNum6VxFpU6uDrzZQF/Jjtt7t7gJl7dKUCRh0BQKu49/boPzUs51BIsOjYTvtY8dWDjqvMUPgEkfuUPqfn9lYvIQHqqg0xBePuJ1To2d4lSyis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734952623; c=relaxed/simple;
	bh=laqXqjbXNVCN2aQXhhrcWZLKyRwelKrUGgDpruG3Mug=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jpiFaD0Pkh6AzRiaZNsOPVNUnTyvXTmIpZhYE4R7kWw5UEuB11IDN2vIaciRKEaXbu5TLUyZyuGaeb1gDakqGMuKMSC2+BZf2cvvSLK6Z3HMvoYKNeIQTaKMn5hHOPa8hfAcZvmji5PovGtpLX73iFLSFotvD7esCw7qlkXoZo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=IMYmZYDA; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734952619;
	bh=laqXqjbXNVCN2aQXhhrcWZLKyRwelKrUGgDpruG3Mug=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IMYmZYDADmwJ+IUTzPIfuWh6evkdZFVcNVEAaygIH1+BXFhBoNjyt5VMvJK9a7kb4
	 LUx1bdJUN5J3Qm6steLrVxgFECnHFblqF0Ninx6V5QEODkBk1MWUEfEhszOeLCKQUD
	 IVUrEk+wJgfUGITaPWpnKOpGNG4qkxSTsjHNeUaUPiqQc9CHJNDABPKQWBn4ZZlU8G
	 pbLtGz9y8wZBVa7WRd1s6acHsIkM1ZojrMFwm/SG3xZ5t69TVFfflr+fv2Kp7yZjeb
	 JDSvPGQ+E5mNsC4XUopkuO2A3h+09QNAv7/unNFUH+cRTOW1tx4KN69SkBjsNzRGDy
	 6rQBhBLS1qOoQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 09D4517E362C;
	Mon, 23 Dec 2024 12:16:58 +0100 (CET)
Message-ID: <06377562-15f6-46c9-8a87-27cbfaa146b6@collabora.com>
Date: Mon, 23 Dec 2024 12:16:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: Set ethernet alias for mt8365-evk
To: Sjoerd Simons <sjoerd@collabora.com>, linux-mediatek@lists.infradead.org
Cc: kernel@collabora.com, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241220095522.2026002-1-sjoerd@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241220095522.2026002-1-sjoerd@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 20/12/24 10:55, Sjoerd Simons ha scritto:
> Configure an the ethernet alias to match the ethernet controller (even
> if it's off by default). This allows e.g. u-boot to configure the mac
> address on boot properly
> 
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>

Please update the commit title to read

arm64: dts: mediatek: mt8365-evk: Set ethernet alias

after which,
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Cheers,
Angelo

> ---
> 
>   arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> index 7d90112a7e27..44c61094c4d5 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> @@ -21,6 +21,7 @@ / {
>   
>   	aliases {
>   		serial0 = &uart0;
> +		ethernet = &ethernet;
>   	};
>   
>   	chosen {



