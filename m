Return-Path: <devicetree+bounces-142522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5679A25A4A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59DBB1885FED
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F8B01FBC83;
	Mon,  3 Feb 2025 13:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="QMEz8S/B"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CC3C139
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738587726; cv=none; b=RagrP0pgqjKpChK5bZGcPip6qMOMgLIx5WOpB3X6HT+XzCHB8sYuHGYYnu3Tn8CDdOo81VHzuaw9n8VsHocNmpFYTp2xUo9x6eZ8Sr+ShmACi5fSMVvOL/kvGVYUsMI5JVRN/x5HmoE63VGACNdJPd86vzqu/m4BNE1AgAncGOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738587726; c=relaxed/simple;
	bh=+9nCidMasawJSxee/bobFP/vrqZwe7yW0J4pRtLVVbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ZimB76VS46v6Ng1oxCzKCjrj/ARtHKmj3NVlnOmE6CkM48aUphRdVZJOhS195NW1vpEDJqiuXh7DIhIRKyWHMWFgAEGAeKElfDsbXFyB9CWDq+c/RoTWdwP/LI+W8u0kpk1y9AHjTIO/zspFpRcSgCafNtdoxtqaaGX3NjTXxRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=QMEz8S/B; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738587724; x=1770123724;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=+9nCidMasawJSxee/bobFP/vrqZwe7yW0J4pRtLVVbs=;
  b=QMEz8S/BVK8pUhZBq6KzvFz852sPL/THFGWqTP2ZgiAWIphxoE1VHpZW
   izUaLntYRCmS/hGGoyeEkZw7n8I3CU+pek0YlavBnlWhv/AsrkcsiJS1U
   Phhl8b/c4UYobJDznlC0CIKuDw7J+mjNIXnv2VMsgi+80naJai4JWXDAf
   Z/BgencUz9c7Hfk/0iAVm+kwo5dPDjsAN3gh2BkA+r+Za34HX7m6ukuht
   WXNn2wf+xANglaq5eHEk8/3Affm40lQi9yIyOrUvxSSp1JxDnu5ovfQdS
   r+uaVNq2HBBCqX9QauoJoj8mGr8VZc9qnOyBYF5ZVThS1VnG9HtqfhTr9
   A==;
X-CSE-ConnectionGUID: VeIlbagITs+s9NULpo7Mbg==
X-CSE-MsgGUID: 0HZrdDSrTnWOcbekv9w8Wg==
X-IronPort-AV: E=Sophos;i="6.13,255,1732604400"; 
   d="scan'208";a="37622858"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Feb 2025 06:02:03 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 3 Feb 2025 06:01:23 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 3 Feb 2025 06:01:21 -0700
Message-ID: <5613e05c-ba7c-4df2-9cbe-6caef8d1b8ae@microchip.com>
Date: Mon, 3 Feb 2025 14:01:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: at91: calao_usb: fix wrong polarity for LED
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	<linux-arm-kernel@lists.infradead.org>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>
References: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
 <20250131162611.33338-5-wsa+renesas@sang-engineering.com>
Content-Language: en-US
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20250131162611.33338-5-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 31/01/2025 at 17:26, Wolfram Sang wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> It is active high per testing via sysfs. Also matches the very similar
> usb_a9263 variant.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

> ---
>   arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
> index 8744b5f6f792..5eb844f2df9d 100644
> --- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
> +++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
> @@ -122,7 +122,7 @@ leds {
> 
>                  user_led {
>                          label = "user_led";
> -                       gpios = <&pioB 21 GPIO_ACTIVE_LOW>;
> +                       gpios = <&pioB 21 GPIO_ACTIVE_HIGH>;
>                          linux,default-trigger = "heartbeat";
>                  };
>          };
> --
> 2.45.2
> 


