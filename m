Return-Path: <devicetree+bounces-138406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90729A10437
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E663167A46
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DCFC22DC30;
	Tue, 14 Jan 2025 10:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UmOqlKPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F05A1ADC75;
	Tue, 14 Jan 2025 10:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736850750; cv=none; b=SQWKfrusYvfWjhx5rikI9XD3uw4q6lQX3UP8qAM1A2++aMJTtKiJO0D1jvswUfnPmN3O/h0yVBB0hWUE8IEDkReUPClyHxSblYcztju4urVSePRs0fk6MwgoS218k332Fdv1QGUkSKVzVrbzFdqnBLxO/sq1mFGoOuuake8Um0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736850750; c=relaxed/simple;
	bh=i6Mcj9q1p4UBYKeh3HAX0U/Icv+ABLJke6uy3OaX3bU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DQSbuqdLpnduS7HFJGdiYcwQqU5/Nw303c9AoTxGxDNotXQil4ZSmTji2EzaphmWZSEZSvcnEMKSbA6/3ZiFWLQCldozsnr2lEgKL4f3yg8jeJLkeYyA8HaBRWebiqkyevIQ8uQDTYmsO/MLiFURaOhLK9p//d14hKu9j4MYTyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=UmOqlKPQ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736850746;
	bh=i6Mcj9q1p4UBYKeh3HAX0U/Icv+ABLJke6uy3OaX3bU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UmOqlKPQY5VQH3N3NMxOVvfTRvi7mfYbt7tq74IQbWIe4kMQ9tT/m/XpHyuKmsBmH
	 p8iQwGuMn3UUennqZNuZxSJ+oGlEKjW+2x7PHzAB2L1F1m3AuM8dqErNp5a1GHEuxd
	 vzo7UC+fZJFZOHq9D02t6m/Nf6alrzXfXS7bhkr5QdybHxI8rewIbCsFusWntWkdYQ
	 QyOvxsskagcPCOrGXkrUAJph9EoEY438+Oxevg0fwbfCPdRU+DFU5JyxeCrojB94Bh
	 8F1GgtnxmE7OqZUdS8qrPX5k2+uyFNx6e+qapqeD8rg1vEz1EKIRTSb9JBQQotsdPF
	 bKCOMjyIavYOw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2057917E0DF3;
	Tue, 14 Jan 2025 11:32:26 +0100 (CET)
Message-ID: <c4000cde-e889-46ef-8b56-ffa18c9fe004@collabora.com>
Date: Tue, 14 Jan 2025 11:32:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: mediatek: add support for MT8370 SoC
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
 <20250114-dts_mt8370-genio-510-v1-2-8517ee0fdbe8@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250114-dts_mt8370-genio-510-v1-2-8517ee0fdbe8@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 14/01/25 08:38, Louis-Alexis Eyraud ha scritto:
> This commit add the support of the Mediatek MT8370 SoC.
> It is a less powerful variant of MT8390 SoC and their
> main differences are:
> - Arm Cortex-A55 cores number (4 vs 6)
> - Arm Cortex-A78 core speed (2.0 GHz vs 2.2 Ghz)
> - Arm Mali-G57 GPU core number (2 vs 3)

You're mentioning the number of GPU cores, but you're not adding any variation
in mt8370.dtsi: this is fine because the GPU is disabled by default, but please
either add it, or mention in the commit message that the override will be done
in a later commit.

> 
> Like MT8390, MT8370 hardware register maps are identical to MT8188.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>   arch/arm64/boot/dts/mediatek/mt8188.dtsi |  8 ++--
>   arch/arm64/boot/dts/mediatek/mt8370.dtsi | 64 ++++++++++++++++++++++++++++++++
>   2 files changed, 68 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> index 338120930b819645662465fa7b3c6be6491764ff..5d78f51c6183c15018986df2c76e6fdc1f9f43b4 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> @@ -492,7 +492,7 @@ cpu_little0_crit: trip-crit {
>   			};
>   
>   			cooling-maps {
> -				map0 {
> +				cpu_little0_cooling_map0: map0 {
>   					trip = <&cpu_little0_alert0>;
>   					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>   							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> @@ -530,7 +530,7 @@ cpu_little1_crit: trip-crit {
>   			};
>   
>   			cooling-maps {
> -				map0 {
> +				cpu_little1_cooling_map0: map0 {
>   					trip = <&cpu_little1_alert0>;
>   					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>   							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> @@ -568,7 +568,7 @@ cpu_little2_crit: trip-crit {
>   			};
>   
>   			cooling-maps {
> -				map0 {
> +				cpu_little2_cooling_map0: map0 {
>   					trip = <&cpu_little2_alert0>;
>   					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>   							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> @@ -606,7 +606,7 @@ cpu_little3_crit: trip-crit {
>   			};
>   
>   			cooling-maps {
> -				map0 {
> +				cpu_little3_cooling_map0: map0 {
>   					trip = <&cpu_little3_alert0>;
>   					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>   							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> diff --git a/arch/arm64/boot/dts/mediatek/mt8370.dtsi b/arch/arm64/boot/dts/mediatek/mt8370.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..cf1a3759451ff899ce9e63e5a00f192fb483f6e5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8370.dtsi
> @@ -0,0 +1,64 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (c) 2025 Collabora Ltd.
> + * Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> + */
> +
> +/dts-v1/;
> +#include "mt8188.dtsi"
> +
> +/ {
> +	compatible = "mediatek,mt8370";
> +
> +	cpus {
> +		/delete-node/ cpu@400;
> +		/delete-node/ cpu@500;
> +
> +		cpu-map {
> +			cluster0 {
> +				/delete-node/ core4;
> +				/delete-node/ core5;
> +			};
> +		};
> +	};
> +};
> +
> +&cpu6 {
> +	clock-frequency = <2200000000>;
> +};
> +
> +&cpu7 {
> +	clock-frequency = <2200000000>;
> +};
> +
> +&cpu_little0_cooling_map0 {
> +	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

Please fix the indentation:

	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
			 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
			 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
			 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

Other than that, looks good.

Cheers,
Angelo

> +};
> +
> +&cpu_little1_cooling_map0 {
> +	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +};
> +
> +&cpu_little2_cooling_map0 {
> +	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +};
> +
> +&cpu_little3_cooling_map0 {
> +	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +};
> +
> +&ppi_cluster0 {
> +	affinity = <&cpu0 &cpu1 &cpu2 &cpu3>;
> +};
> 




