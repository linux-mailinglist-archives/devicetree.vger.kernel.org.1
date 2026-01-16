Return-Path: <devicetree+bounces-255853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B4AD2B089
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 04:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6498930938CC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1601343203;
	Fri, 16 Jan 2026 03:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BqA4yAsW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5577B29A1
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768535630; cv=none; b=ZZBf8jFoLeANSpHpebt8+wftAJBHR3wILBQJjKtO0v9KSHkm7wfyco9pnl4JyWTq/P071vjZp751NOwLiKSXEkRiEX7qmY+rO35INz4LDGbpwGNOUVlsVrXaMzTx/nUFOmnpQX+T5LLkB77+UiHgkryMkJX7hIPzapDEh8wvf5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768535630; c=relaxed/simple;
	bh=bWnplJrEDoeh80qHYp3tqdriSKQOKKZKCgLMKp4JLAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZuSAtH7zPATNdn5HiGvMt2Ihn1Or82G1RMF1N8XKhOdsYrTR9prPGx3g8Z4luuicqhPL+MOEkDm6ex2SiG0ENx2bBwASbziCRzmRuEdJO25y2VIvRhuIefqNPQ9BZ3+ZqsyHZI4y5l7AX02gYmFQ3/gIK3SxaEx8QLoRqttHmtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BqA4yAsW; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c5e051a47ddso1025529a12.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768535629; x=1769140429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DgeXhAk6KNlbJlhP3Z45ZVXFzRmMcBeJhfIQXTAsmxw=;
        b=BqA4yAsWb1cRBof6xq6IensYLBuofumTbz/N/NF27P9v8I9oPxaS3mtM+Zv1jE2IBP
         mQDaiJb/JCvpRBZx8O7cKDN6FSS9/aSsNR4V6X8k+IHUyt4oeNc1n6kn4/yIIWltdoAG
         e2qYnGs4PGEzfI3+M+xJqhY/mbNUFSRtqqJ9E6FAUo33UEha9Dm9kKwZeFF/f24P2FF1
         CWheDamuCFrQvQ06BJisbSyPVei5oVb3I/3mYiT13jBhB7vPuCrJsl6j3EUBq0gaWmjm
         3zQs7BFjYqAp9dVK1qEAod8gcbPnRttkQb012pIfKsSMvkAgkgP/mdsPFMP7ngs/tMAF
         gJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768535629; x=1769140429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DgeXhAk6KNlbJlhP3Z45ZVXFzRmMcBeJhfIQXTAsmxw=;
        b=MN1MkSmL9FxFzeFu0nYGiOM8DtlwkH2QT9XUu1HO9jBxwPFlQ+aCwwRFoLrpiETYvJ
         P5I+OHpLDluILIcwa53QU+Tt01x51J/XUIb3rdfPDj09SGrxnxt6KSpGclOCWDxZm6vJ
         rLYzKlCblbhk5rQ0z47GFT2LtbXa3MKLBlROAVnlDcKlOhkJz9RTiPlfUgyFSCtkPQAj
         Fp4/k7u4vbZ+Qw90c2K21dPek0UDfMUVnoaJfGxiif/+nZHPbSIXPwz8P/C+O7yFk11G
         dBOaUA7m0eVXj+mDSU7i0kghlxWinwE7NtdRTt2Wrxwf5H25IdwmcOgjtLZpxXh3uHfo
         zz0A==
X-Forwarded-Encrypted: i=1; AJvYcCXqYlrLY01ODV7Du8N6XmjeyRWGwJTQiHwBMO3mcYg3WZoUjdupYoUb0tvIkKyEsgiqtVZc2eYuUKlg@vger.kernel.org
X-Gm-Message-State: AOJu0YxjWW7kDJRfjHKm+CZC5ji/EjHTPpTube4xo2u+Uyu3bFfzjbmq
	2XaIfu8BhWKCau8X8rmtrkeR9PohrgN0iuogh19mBelwCSxhlez/yc94xHKXLA==
X-Gm-Gg: AY/fxX4FFg2a1/DzhCaHImLWigA0c9o252JOyVXsyc0OkhzrP0UvZu+h7Es7DBabNLj
	CrlO9RVZKUxdTO60Ayx7QqOUmV5QkfXcgLmSRseWU21zUJfgiSjFSVRA1wchqCg2XBMf3jxRKR/
	522wkNf7ZyJPMX/udHmC88gO9RJnoO2sWZUfdIOqIc7e+KVW234OfEoVwoUuhHbkj6OQ6EmUnvA
	3Q9PamTfzTUKKQkGITHYcTQAWx2XQgbv26l1dfVZl+JRF6g3COZA120oUj9vGHnfBRuMLa3VBGD
	iIRS/UucOmGcTK32bnRxAFvurGK82MoNS6pfPzn6ty5qGv4WWioxlpYcg/UajEharz3Wv6S9Y58
	4MbnLbkMa3uwyW33LSGoxNhpIkT/QKQDaUmw86I2h8vArm4ZKM7+eHaWfG+WLMMbPpsPvEFVkj8
	Vxtp/d20bOiQJVRKWAKO76LQ69JAu/sxY8bwkyyzwdElwCxH+BhzOogko7swaR8Wz+KGq4PVTEQ
	uA5NR9IZSNr2Xy0ZS+PI+3561dGuklN6g6gAztzb8SqIgo/PGEckhdMl2tGPLmUWjwjKjE=
X-Received: by 2002:a17:90b:4ec3:b0:335:2eef:4ca8 with SMTP id 98e67ed59e1d1-35273296f05mr1371287a91.33.1768535628572;
        Thu, 15 Jan 2026 19:53:48 -0800 (PST)
Received: from [192.168.1.110] ([125.253.50.76])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3527305490fsm751473a91.1.2026.01.15.19.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 19:53:48 -0800 (PST)
Message-ID: <121ede67-dbfc-4b79-8076-04693e9d3d53@gmail.com>
Date: Fri, 16 Jan 2026 03:53:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Add V3D device node
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com
References: <20260114120610.82531-1-mcanal@igalia.com>
Content-Language: en-US
From: Peter Robinson <pbrobinson@gmail.com>
In-Reply-To: <20260114120610.82531-1-mcanal@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Maira,

On 14/01/2026 12:04, Maíra Canal wrote:
> Commits 0ad5bc1ce463 ("drm/v3d: fix up register addresses for V3D 7.x")
> and 6fd9487147c4 ("drm/v3d: add brcm,2712-v3d as a compatible V3D device")
> added driver support for V3D on BCM2712, but the corresponding device
> tree node is still missing.
>
> Add the V3D device tree node to the BCM2712 DTS.
>
> Signed-off-by: Maíra Canal <mcanal@igalia.com>
>
> ---
> v1 -> v2:
>
> - Rebased on top of linux-next (Stefan Wahren)
> - Fixed node's address (2000000 -> 1002000000) (Stefan Wahren)
> - Link to v1: https://lore.kernel.org/linux-devicetree/20260113192902.48046-2-mcanal@igalia.com/
> ---
>   .../boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi    |  4 ++++
>   arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 14 ++++++++++++++
>   2 files changed, 18 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> index 7d4742ebe247..97522c6803c5 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> @@ -247,3 +247,7 @@ &pcie1 {
>   &pcie2 {
>   	status = "okay";
>   };
> +
> +&v3d {
> +	clocks = <&firmware_clocks 5>;

Looking at the upstream DT [1] I think this also needs a clock-names entry.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi#n233

> +};
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> index 330a121ebfcb..661668ef7419 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> @@ -1,5 +1,6 @@
>   // SPDX-License-Identifier: (GPL-2.0 OR MIT)
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/soc/bcm2835-pm.h>
>   
>   / {
>   	compatible = "brcm,bcm2712";
> @@ -642,6 +643,19 @@ mip1: msi-controller@1000131000 {
>   			msi-ranges = <&gicv2 GIC_SPI 247 IRQ_TYPE_EDGE_RISING 8>;
>   			brcm,msi-offset = <8>;
>   		};
> +
> +		v3d: gpu@1002000000 {
> +			compatible = "brcm,2712-v3d";
> +			reg = <0x10 0x02000000 0x00 0x4000>,
> +			      <0x10 0x02008000 0x00 0x6000>,
> +			      <0x10 0x02030800 0x00 0x0700>;
> +			reg-names = "hub", "core0", "sms";
> +
> +			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
> +			resets = <&pm BCM2835_RESET_V3D>;
> +			interrupts = <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
> +		};
>   	};
>   
>   	vc4: gpu {

