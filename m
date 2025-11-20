Return-Path: <devicetree+bounces-240694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E1DC74222
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 2C7682ACB9
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A369F33BBAC;
	Thu, 20 Nov 2025 13:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="hJAe7CO0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49206.qiye.163.com (mail-m49206.qiye.163.com [45.254.49.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA634340A51;
	Thu, 20 Nov 2025 13:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763644487; cv=none; b=jFE6eqpITE9p/KemexL2+rD/xWnZNn5bdTrPGU1WZf7HSpfGhZem8CtZ82bWYJHOqA9J/axD0g8MoBoiz843Xip7u/Qo1yJ9JnJh0WNfSA67eGe5m2wKsMzkm+6q0nih+0xL9tKKPVlyF7x121YyJXuqH0MSZK2CtvCvSUvA/OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763644487; c=relaxed/simple;
	bh=iyvD7Y5NnKtzJG+oNgavxBNfA6eAWgbxWoeJBXCTN3U=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=pTQxj9VI5PGyUy5S3H09Krdfw49wXvy54IKHiRzxmH9mMKYpcaWwafwgvryAd9VZEcjluwIIxc+3wUlfUVvwrVeU/umXAk87wJyLqZ7zCIBblwVpGE4B9t7hR3XPNLBJBPqOqlI63uPGqycr+ChcIDAISsPmEM55v1ZviwVzryo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=hJAe7CO0; arc=none smtp.client-ip=45.254.49.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a4ca15e8;
	Thu, 20 Nov 2025 20:59:17 +0800 (GMT+08:00)
Message-ID: <a73ea843-6896-4153-9a2b-668a91adba5d@rock-chips.com>
Date: Thu, 20 Nov 2025 20:59:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/5] arm64: dts: rockchip: remove mmc max-frequency for
 100ASK DshanPi A1
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
References: <20251120120011.279104-1-amadeus@jmu.edu.cn>
 <20251120120011.279104-2-amadeus@jmu.edu.cn>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251120120011.279104-2-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9aa15906e609cckunmccfeb5ed18445b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUkdSFZLSRoeSxlJGU8dGkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hJAe7CO0ZSEZNO0KDe8CoVAiS/i+TOEMzk+xlDPP7dtwU5rI7mHgSjXkcIRlCwszrhOqlBh/KGk9OQFCia3hnH2R24GEGQzsr6qmmrtSC7uzRukV27Iz/XsZ21GsCOegP4VASBnS06u5jtjeCgwobC/MqGPBeyn+I0auIKIaVJM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=47n9smvsUtbRtdfwye4aUg0o9m4HmyLtFLAnv1nbXP4=;
	h=date:mime-version:subject:message-id:from;

在 2025/11/20 星期四 20:00, Chukun Pan 写道:
> The max-frequency property is already defined in the mmc
> node of rk3576.dtsi. Remove the redundant definition.
> 

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>   arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
> index cb04ab96d1e8..f9dc4fa39167 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
> @@ -689,7 +689,6 @@ &sai6 {
>   &sdhci {
>   	bus-width = <8>;
>   	full-pwr-cycle-in-suspend;
> -	max-frequency = <200000000>;
>   	mmc-hs400-1_8v;
>   	mmc-hs400-enhanced-strobe;
>   	no-sdio;
> @@ -703,7 +702,6 @@ &sdmmc {
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
>   	disable-wp;
> -	max-frequency = <200000000>;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc_3v3_s0>;
>   	vqmmc-supply = <&vccio_sd_s0>;


