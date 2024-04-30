Return-Path: <devicetree+bounces-63956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 070B58B749F
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 13:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 997C31F226B7
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD40E12DD83;
	Tue, 30 Apr 2024 11:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="HGaqpM8+"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5318E12D76A
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 11:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714477082; cv=none; b=lYd6yamtgy1oXNIgkcDsDEpWduF1cypE7mBbbA82u2asT2qx4gz0k29CY7MHzi3533+iZjonnkHi63DM5zedIh3mtW6EWrgmgC+Xa6dWM8dNI9ybd35CDj4I14ELVcDM/sFwiShPpflatEaf/njvkBHg95ewgeG5xegVrhvGlcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714477082; c=relaxed/simple;
	bh=bA1WxVrJk25c+e9bSKCDAL9FCffjUV+I91lWTDNHdl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I2CXv7Vvd9VCVVeZD2uwAfxiQCm5NteswYGhqt2lqOkKgv4U1gLT1dmQtygFbnAhnMrjqWG5JqGnHsVAJlne4UBea+vPyDt5KAw6Uqq9wPAHkkg8n+6MekxGmKIVKVq0IJRQcq+O+I0f0uMtD1ixwy8vgr94m6Iwku6VwVrZ8mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HGaqpM8+; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1714477079;
	bh=bA1WxVrJk25c+e9bSKCDAL9FCffjUV+I91lWTDNHdl8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HGaqpM8+UgVOyyq+djiiTAPm50lD41UxG07NSSdJy9ZqrNbIN82CCDf5gCz5+Tk8q
	 VkUvY2ePspF/u0gqirTQDlHgosnXB0Xbaqo0CFzLG4gMMRchSllVbImKZzHATdA2Qr
	 0GzISpc1hvhSZWye+liF3Ni71UIKRj74VVOeYJ/2JSOEt1FaXiccNmwa/9dhK3gydH
	 FXubUujbEq30BAAs+7mO//bI8ofSJF8kihagNi4WlXvLDaNxb6hBD+f+oS2Nu+/UTR
	 9/goMLxCI4gPgX8q1qB1YAPU31lxrEIvrH9AVpzlXCGaGdd3Zy5i8Oxk/gqlv1D37A
	 fLaH1+ySFvKZw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E31E637813C4;
	Tue, 30 Apr 2024 11:37:58 +0000 (UTC)
Message-ID: <9471af68-b210-4112-a82f-1a9570feeb40@collabora.com>
Date: Tue, 30 Apr 2024 13:37:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7981: add efuse block
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240430112932.20475-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240430112932.20475-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 30/04/24 13:29, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> MT7981 (Filogic 820) is a low cost version of MT7986 (Filogic 830) and
> has efuse compatible with the later one.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>   arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
> index 2d7f91196e64..a5ea168c8fa7 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
> @@ -133,6 +133,13 @@ pio: pinctrl@11d00000 {
>   			#interrupt-cells = <2>;
>   		};
>   
> +		efuse@11f20000 {
> +			compatible = "mediatek,mt7986-efuse", "mediatek,efuse";

I'll be honest here - I've been tempted to do "that" way too many times... :-P

..but no, you have to add a "mediatek,mt7981-efuse" compatible to the binding and
use that instead of the 7986 one (and I'm sure you understand the reasons too...)

Cheers,
Angelo

> +			reg = <0 0x11f20000 0 0x1000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};
> +
>   		clock-controller@15000000 {
>   			compatible = "mediatek,mt7981-ethsys", "syscon";
>   			reg = <0 0x15000000 0 0x1000>;



