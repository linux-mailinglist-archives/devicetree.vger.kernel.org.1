Return-Path: <devicetree+bounces-244088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4593ACA018B
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 17:47:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16DF1301586C
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 16:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414D0359713;
	Wed,  3 Dec 2025 16:21:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1D0D359709;
	Wed,  3 Dec 2025 16:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764778894; cv=none; b=AAc17mHZmevMkJ3O0TKHBB3Gd2Yl3TJkyqzEfn2QTSNJBYwTfdTP96OleOHNsamDbMMzx12TWUGFMjDdy2SvptvXxbSQLOtBra7/wul4GZmwUaKlEJrMXkBSzh3zLRYFhRcF3JbcmPC6mdr68CN8ZGnEr0XCRfFfMveujq++lXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764778894; c=relaxed/simple;
	bh=0Eeq3RFb6k22dsSQIqo1bKkrUZeUGljVBzPXtpwb8rY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sERHOE5A+mWnUawNzpqunexKE1B9zkrE/OVf7mw7/jFVvQdobyz+FKAHIsXRLsms5ahJ+YMZio6OrpCqcv5gcpxX1Z1ArEsyp1X64U5E6ty0TpYM4XllUmBiiYuY+W4rePsZsQMM185JACRSGK5wE63n/7XNUEkcBMK2JyyOJRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76FBF339;
	Wed,  3 Dec 2025 08:21:24 -0800 (PST)
Received: from [10.57.45.67] (unknown [10.57.45.67])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5CB43F66E;
	Wed,  3 Dec 2025 08:21:29 -0800 (PST)
Message-ID: <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
Date: Wed, 3 Dec 2025 16:21:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250828164300.3829488-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

[ Just noticed this... ]

On 2025-08-28 5:43 pm, Christian Hewitt wrote:
> From: Alex Bee <knaerzche@gmail.com>
> 
> Add the required nodes to enable SPDIF audio output on
> the Beelink A1 set-top-box.

But the A1 doesn't have S/PDIF? Only HDMI plus a 3.5mm jack connected to 
the analog audio codec (and possibly the composite TV out) :/

Thanks,
Robin.

> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 23 ++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index f7c4578865c5..b276a29bdd85 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -58,6 +58,24 @@ ir-receiver {
>   		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
>   		linux,rc-map-name = "rc-beelink-gs1";
>   	};
> +
> +	spdif_sound: spdif-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SPDIF";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&spdif>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&spdif_dit>;
> +		};
> +	};
> +
> +	spdif_dit: spdif-dit {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +	};
>   };
>   
>   &analog_sound {
> @@ -325,6 +343,11 @@ &sdmmc {
>   	status = "okay";
>   };
>   
> +&spdif {
> +	pinctrl-0 = <&spdifm0_tx>;
> +	status = "okay";
> +};
> +
>   &tsadc {
>   	rockchip,hw-tshut-mode = <0>;
>   	rockchip,hw-tshut-polarity = <0>;

