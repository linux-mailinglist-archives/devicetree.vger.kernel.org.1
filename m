Return-Path: <devicetree+bounces-139863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD00FA1737F
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 21:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5E7C3A4094
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 20:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E851EEA4A;
	Mon, 20 Jan 2025 20:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="YPYYnsKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83674188A0E;
	Mon, 20 Jan 2025 20:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737403969; cv=none; b=gnCOiXUxOOoYcmNYbbLlb4Bo7cpqrcqTSBIvWp3y/MFAdAcB26pazVIILyPR0iVqv18SK1lNiTjU24rE2hCe9CIFGvoqW115YIZFmcrft8t4vqt9FDiFOZrD1AWwS8HhlpBzAOytYkylIYzRJV0NvVAZLxZ5R8WRwe66UN2bpK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737403969; c=relaxed/simple;
	bh=OKAWdktHg7Od04NsHSrj4UbfLJIaSwQ1E7svvStdjsA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=ArHcGFHUfhYBIWFdq4AAqKbr/i2RULae7Gn0CHLZdgszwoQb7POqj5zY1gN5muZj825n3ozmOwMadmSSHW6H/c6RdDAGSL0L10ihc5mH35mG+0OV7SZc9A3t6BvL6Zuh3BQisP/XaGGWTRlmeUeLBdm4JM5Za/DYQM/9/KUB6X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=YPYYnsKA; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737403965;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xFmjfRIAfD/TWhtg9QJn1hbIzJmPBaW6wdlpqeT5TsY=;
	b=YPYYnsKAYboHxdwLOk4OYK2A1lONri4zXIFe27yH0muhHZKyomsxiVN72QkPutXZNwxeqi
	MsnPtRcV8cj7f0Nxgfle0fYAGWXSjUPzk7rCOfQMPUdq34vLRFJF0uJd1Kq03I+26zmdHp
	21Gjwx1wbE71sdEaHn6nY94gpjaW7ZAFL3/Gwlaz3A01anBBD7U7n6Y1yB2ZfvSfchjOeh
	CyQIG4LZMPJTqXjSPODuKwYN6bpDL3P07qbTggo3b1WaC0bb3gXZDlUGxiB9/AXyeCzBg4
	MrR8nLQfOkxN3oWMDSvsWal+wR9vlJ6a82cpSqgx4fzAvHtNmck6xg8Ie87fbA==
Date: Mon, 20 Jan 2025 21:12:45 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable automatic fan control on
 Radxa Rock 5C
In-Reply-To: <20250120-rock-5c-fan-v1-2-5fb8446c981b@gmail.com>
References: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
 <20250120-rock-5c-fan-v1-2-5fb8446c981b@gmail.com>
Message-ID: <e73f651566aeab85952a4abbe23d55b8@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alexey,

On 2025-01-20 20:22, Alexey Charkov wrote:
> Add the necessary cooling map to enable the kernel's thermal subsystem
> to manage the fan speed automatically depending on the overall SoC
> package temperature on Radxa Rock 5C
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 32 
> +++++++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index
> 1b66a69cf0f8795d7305852fa7fef3d0672ada7f..6e56d7704cbe0dc06242cb39df56b2fc9d6bc774
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -68,7 +68,7 @@ led-1 {
>  		};
>  	};
> 
> -	fan {
> +	fan: fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 24 44 64 128 192 255>;
> @@ -417,6 +417,36 @@ rgmii_phy1: ethernet-phy@1 {
>  	};
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan0: package-fan0 {
> +			temperature = <55000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +
> +		package_fan1: package-fan1 {
> +			temperature = <65000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			trip = <&package_fan0>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +
> +		map1 {
> +			trip = <&package_fan1>;
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
>  &pcie2x1l2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie20x1_2_perstn_m0>;

Thanks for the patch, it follows the usual approach for keeping
the fan noise down, and it's looking good to me.  Please, feel
free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

