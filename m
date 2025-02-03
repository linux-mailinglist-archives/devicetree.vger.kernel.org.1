Return-Path: <devicetree+bounces-142523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 36892A25A4B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAA791620CB
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001D51FECDF;
	Mon,  3 Feb 2025 13:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="BZtgPp9y"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4F61FBC83
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738587772; cv=none; b=ToEysfCnEMnuYBndY4oEC0m9tCLdA2+Devki1FBtWHMTLkbk3SsFe0XTIfmJUPtLduJXBbaCEh+hQcw6rVgJcVkCCtdokz7+OKbkQDpZcdFlrgbBNJo6bKHf8rggzaMDkCnlT5sb0oxrjwzIfWuzNBW1sTxA25eBBdmOhjZmPAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738587772; c=relaxed/simple;
	bh=5PBBsKFJeyBGF3ppK9avnkVglYIUvcu81Wzgn1jmcMI=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=NwdKNrDnJSFZxMKCkRYNZGugZ2hlBKErlAOr7aoCNNa7Ye9zKyEWnyL0ja/GQWUX0HUd6lXfOF9nifY9WjE1yu1+kX6fAE4Fzc+YikrCG4sTQrPuR3qFjxU0Mb/lVXPsl+zDvgfiRaX+ITwo5WrpTl2jopKdABMb4/nxsrZAiJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=BZtgPp9y; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738587770; x=1770123770;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=5PBBsKFJeyBGF3ppK9avnkVglYIUvcu81Wzgn1jmcMI=;
  b=BZtgPp9ynqni3Sck6/AZ7GBVoira9avLPJZYbixGhlQjBE7CMG3PqOdy
   AdYDzO8V4PfdyVEb6RtxOXf9TIlcy1WHOcovz5fMjm6LfEbNJIibOf4+o
   pv//DstGP3kqmuj8a6Ge8VeGzYwXGQVUXj3Aw8CZnUik+6fNk/w25fE7x
   CuTnjutP4USF4v94pWGFHx70C4P1zWPA1cPQ4lmP+9pnkrkOlC5qiLQl/
   Wdh8fsoX452HjMUVfmfZe3YdWP1fRi4pVGjC1XpoAZokHC22IxyYN7t02
   Ygn/R1gHFNswgrkckbvrsVF4BNu3QZFpjQpooAFHuHOLv8LoCmjf/9JlC
   Q==;
X-CSE-ConnectionGUID: c/KuCnkaQC2iDOXWgZ4zOg==
X-CSE-MsgGUID: 0Sh8J6srSEO86SsF0ePaFA==
X-IronPort-AV: E=Sophos;i="6.13,255,1732604400"; 
   d="scan'208";a="36818623"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Feb 2025 06:02:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 3 Feb 2025 06:02:16 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 3 Feb 2025 06:02:14 -0700
Message-ID: <75da15f6-f0f6-4404-a473-fde480c63e3c@microchip.com>
Date: Mon, 3 Feb 2025 14:02:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: at91: calao_usb: remove heartbeat for User
 LEDs
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	<linux-arm-kernel@lists.infradead.org>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>
References: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
 <20250131162611.33338-6-wsa+renesas@sang-engineering.com>
Content-Language: en-US
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20250131162611.33338-6-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 31/01/2025 at 17:26, Wolfram Sang wrote:
> Default DTs should be minimal. It is cumbersome carrying a custom patch
> disabling the heartbeat just to use the LED for own cases.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Makes sense on this minimal platform:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks and best regards,
   Nicolas

> ---
>   arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 1 -
>   arch/arm/boot/dts/microchip/usb_a9263.dts         | 1 -
>   2 files changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
> index 5eb844f2df9d..9672a5626cae 100644
> --- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
> +++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
> @@ -123,7 +123,6 @@ leds {
>                  user_led {
>                          label = "user_led";
>                          gpios = <&pioB 21 GPIO_ACTIVE_HIGH>;
> -                       linux,default-trigger = "heartbeat";
>                  };
>          };
> 
> diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
> index 45745915b2e1..ef529ec5dd6f 100644
> --- a/arch/arm/boot/dts/microchip/usb_a9263.dts
> +++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
> @@ -151,7 +151,6 @@ leds {
>                  user_led {
>                          label = "user_led";
>                          gpios = <&pioB 21 GPIO_ACTIVE_HIGH>;
> -                       linux,default-trigger = "heartbeat";
>                  };
>          };
> 
> --
> 2.45.2
> 


