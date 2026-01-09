Return-Path: <devicetree+bounces-253271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61942D092DE
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 13:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 93E523020748
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F192B35A92D;
	Fri,  9 Jan 2026 12:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="J3FNHwip"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8370E33032C
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767960101; cv=none; b=ZeyUe3x5V2sDBx8N3VM5q7VLcyPG2RDMn9zddUcVoM61lJwOR2joD327kRNvux3jFWUCLLXuBUm0su2d9b/kywA1oU8YG3aLDlHytotTS0mvzxi+4LF2nuW9L439CxlkSnpZFvPPTRHNjGpp96YydTsdLwQOAyYB2MkxvXgbxJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767960101; c=relaxed/simple;
	bh=XeMdYPigjOmGUChCVc1tml5qodMv43PdO/V1IOatsFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=dU2oNaWxrK7B49BmgnRz3BX+xSv+Iq5FYItT5Wxnv0yQuHyr0LMlYNcUCk4xF43FdPFGzYEaWHc7Cadh6ZoZ2tqogk7oX7wGX4IHwN247c14rk9cVA0iBMuoIulaAxNsCUppyjnKDPwSYiOGj/t9MeZg1N9+AX4eVUgcwwyk1kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=J3FNHwip; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260109120137euoutp01be05740e49568b8316e31e59354f45f9~JDld-F09p1041910419euoutp01A
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:01:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260109120137euoutp01be05740e49568b8316e31e59354f45f9~JDld-F09p1041910419euoutp01A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1767960097;
	bh=MptIO4ksyg9F6O22oNgMjISLOZ/OHNz7yvvYKIuS4f0=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=J3FNHwipeIkk54b8svtLBLvDhEFjuGvfRwRzsOR/KqY1ezhnB25BoWCAw1vnnrMm7
	 oE7DMilVkw8NH8b1FnM801nhvDOFC4qBjwdA9MGwtuzI7exePSwC4TYIrjewI5XYeq
	 kvciERb4MfdND8Cf8jnrl333ESBppKSPQXRYpvv8=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260109120137eucas1p221b9dd341c2319c0f9d0da1fbd48d1b3~JDldt-SrV1778517785eucas1p2Q;
	Fri,  9 Jan 2026 12:01:37 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260109120135eusmtip27bce27ce7cb357fdbd1ba01e918d97ed~JDlcHXyH52161121611eusmtip2R;
	Fri,  9 Jan 2026 12:01:35 +0000 (GMT)
Message-ID: <e98ad883-7ba2-417b-8cd3-19f5f863b03d@samsung.com>
Date: Fri, 9 Jan 2026 13:01:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH 02/13] ARM: dts: broadcom: bcm2835-rpi: Move non
 simple-bus nodes to root level
To: "Rob Herring (Arm)" <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Florian Fainelli
	<florian.fainelli@broadcom.com>, Broadcom internal kernel review list
	<bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, Scott
	Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-2-ba45874e4553@kernel.org>
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260109120137eucas1p221b9dd341c2319c0f9d0da1fbd48d1b3
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260109120137eucas1p221b9dd341c2319c0f9d0da1fbd48d1b3
X-EPHeader: CA
X-CMS-RootMailID: 20260109120137eucas1p221b9dd341c2319c0f9d0da1fbd48d1b3
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
	<20260106-dt-dtbs-broadcom-fixes-v1-2-ba45874e4553@kernel.org>
	<CGME20260109120137eucas1p221b9dd341c2319c0f9d0da1fbd48d1b3@eucas1p2.samsung.com>

On 07.01.2026 03:09, Rob Herring (Arm) wrote:
> The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
> under a 'simple-bus'. Additionally, the "raspberrypi,bcm2835-power" node
> is part of the firmware, so move it under the /firmware node.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

This breaks operation of all drivers under the firmware node. I'm not 
exactly sure why, but they are not properly instantiated. It must be 
something specific to "firmware" name, but I didn't dig enough to find 
exactly where and why.

After changing the "/firmware" node name "xfirmware" everything works again:


diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi 
b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
index 9ab70b519a63..464f032ccb71 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
@@ -1,7 +1,7 @@
  #include <dt-bindings/power/raspberrypi-power.h>

  / {
-       firmware: firmware {
+       firmware: xfirmware {
                 compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
                 mboxes = <&mailbox>;


Same issue occurs with bcm2712 change (patch 3/13).


> ---
>   arch/arm/boot/dts/broadcom/bcm2835-common.dtsi |  7 ++++---
>   arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi    | 16 ++++++++--------
>   2 files changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> index 9261b67dbee1..1e76b290510d 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> @@ -141,9 +141,10 @@ v3d: v3d@7ec00000 {
>   			interrupts = <1 10>;
>   		};
>   
> -		vc4: gpu {
> -			compatible = "brcm,bcm2835-vc4";
> -		};
> +	};
> +
> +	vc4: gpu {
> +		compatible = "brcm,bcm2835-vc4";
>   	};
>   };
>   
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> index e9bf41b9f5c1..9ab70b519a63 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> @@ -1,15 +1,13 @@
>   #include <dt-bindings/power/raspberrypi-power.h>
>   
>   / {
> -	soc {
> -		firmware: firmware {
> -			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
> -			mboxes = <&mailbox>;
> +	firmware: firmware {
> +		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
> +		mboxes = <&mailbox>;
>   
> -			firmware_clocks: clocks {
> -				compatible = "raspberrypi,firmware-clocks";
> -				#clock-cells = <1>;
> -			};
> +		firmware_clocks: clocks {
> +			compatible = "raspberrypi,firmware-clocks";
> +			#clock-cells = <1>;
>   		};
>   
>   		power: power {
> @@ -17,7 +15,9 @@ power: power {
>   			firmware = <&firmware>;
>   			#power-domain-cells = <1>;
>   		};
> +	};
>   
> +	soc {
>   		vchiq: mailbox@7e00b840 {
>   			compatible = "brcm,bcm2835-vchiq";
>   			reg = <0x7e00b840 0x3c>;
>
Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


