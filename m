Return-Path: <devicetree+bounces-11820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B620C7D6B7B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:28:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC039B21007
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699C727ECF;
	Wed, 25 Oct 2023 12:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="VvaXFBCX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8DD125D7
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:28:46 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01AF28F;
	Wed, 25 Oct 2023 05:28:43 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 96B5B660731F;
	Wed, 25 Oct 2023 13:28:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698236922;
	bh=XVUNCwXvwwO8iAGXwgWiNkikQdtq3Qfu7s3r4hSQ49Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VvaXFBCXSZopdm9zEMBPwk52IGi4WqgdVNuy/su89jrUPEmGfR3Oh2C+7rodLTPs8
	 MsF+R+8rndzXh7Dwkmx4UoffY9LX9WYImV1DCu4O2I238ybFyQmHsTCnJGatMusYbT
	 7VcI//prbtGebFGqWqNCwPBHw2BCcEglfjRgxFarDMdoaTth2X6hboQhferuPcYshq
	 56XPcLdv+MLLr8x4ZtmzjbYwdwhedhEQ9SCGVXTZ0tJBEa13eO52w4TZ/J5sEJ9D7F
	 INdKjtHNV9aNoJhlN0RIeMd3oi/fI/446tUbAV/ytB/IE40yf3xBjrp9zcJ3XLlmiF
	 07Pdti5Kv8WHw==
Message-ID: <42c8fbc2-49db-4cca-aabe-520e4eee597a@collabora.com>
Date: Wed, 25 Oct 2023 14:28:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] arm64: dts: mt7986: change cooling trips
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Golle <daniel@makrotopia.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230820153135.42588-1-linux@fw-web.de>
 <20230820153135.42588-3-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230820153135.42588-3-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 20/08/23 17:31, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add Critical and hot trips for emergency system shutdown and limiting
> system load.
> 
> Change passive trip to active to make sure fan is activated on the
> lowest trip.
> 
> Fixes: 1f5be05132f3 ("arm64: dts: mt7986: add thermal-zones")
> Suggested-by: Daniel Golle <daniel@makrotopia.org>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>   arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 20 ++++++++++++++++----
>   1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> index 207510abda89..36d8945400df 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> @@ -614,22 +614,34 @@ cpu_thermal: cpu-thermal {
>   			thermal-sensors = <&thermal 0>;
>   
>   			trips {
> +				cpu_trip_crit: crit {
> +					temperature = <125000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +
> +				cpu_trip_hot: hot {
> +					temperature = <120000>;
> +					hysteresis = <2000>;
> +					type = "hot";
> +				};
> +
>   				cpu_trip_active_high: active-high {
>   					temperature = <115000>;
>   					hysteresis = <2000>;
>   					type = "active";
>   				};
>   
> -				cpu_trip_active_low: active-low {
> +				cpu_trip_active_med: active-med {
>   					temperature = <85000>;
>   					hysteresis = <2000>;
>   					type = "active";
>   				};
>   
> -				cpu_trip_passive: passive {

Rule of thumb is that each commit has to build on its own: this will break build
because of mt7986a-bananapi-bpi-r3.dts referencing the now unexistant
cpu_trip_passive phandle.

Solving that is simple.
Merge commit [2/3] and [3/3] in a single commit.

Obviously, retain both fixes tags :-)

Cheers,
Angelo


