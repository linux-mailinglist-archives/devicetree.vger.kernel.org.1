Return-Path: <devicetree+bounces-24259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7FD80E849
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 10:55:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40FAF1C20A60
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B67E59147;
	Tue, 12 Dec 2023 09:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="2g4YBe9h"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A244C95;
	Tue, 12 Dec 2023 01:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1702374913; x=1733910913;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=X8CUL9LClm8ET/lWAC5xyw23OUAQtwlECRNjbkZl/IU=;
  b=2g4YBe9hlsznv7GrysqftNIsrbDQ2ny1qvDmn197aE+bgu5Tzb/zsyXT
   YCOMdyup/U61SJk9iFTN4VKKj77pHkMIXlqDJU4cnG7ZqSRK4JF7LUg3c
   Qsc73f/m2cTHozdNWDGGfvoxjKUp/wiplIYKVAlcJNj6cxDWGXBc5Lsdt
   +mBi8jkuACNz63QSvFBiQfShwX0FCfM3h3imA/W/s6iD53mSSsaeEdU1T
   IxPVPH/aWf/vhEx3FDXCq4364qBTUA3yn2vD1ZVK0wHTOPbFMBqc8QFhB
   LsGmLBF0Fas58vlU2TkwiS+0Cc9cTexK5w5VT1vlsMRcqKj0asTL+Njow
   Q==;
X-CSE-ConnectionGUID: iJVzHzojREmPBAOFIETSrQ==
X-CSE-MsgGUID: ygS8AKm2Sh2dSf9Ddb7OAw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; 
   d="scan'208";a="13131478"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 12 Dec 2023 02:55:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 02:55:06 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Tue, 12 Dec 2023 02:55:04 -0700
Message-ID: <521ee68c-f204-4d56-a8ef-46f391bd1e1e@microchip.com>
Date: Tue, 12 Dec 2023 10:54:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sama5d27_som1_ek: Remove
 mmc-ddr-3_3v property from sdmmc0 node
Content-Language: en-US, fr-FR
To: Mihai Sain <mihai.sain@microchip.com>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <cristian.birsan@microchip.com>
References: <20231211070345.2792-1-mihai.sain@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20231211070345.2792-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2023 at 08:03, Mihai Sain wrote:
> On board the sdmmc0 interface is wired to a SD Card socket.
> According with mmc-controller bindings, the mmc-ddr-3_3v property
> is used for eMMC devices to enable high-speed DDR mode (3.3V I/O).
> Remove the mmc-ddr-3_3v property from sdmmc0 node.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>

Fine with me:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

> ---
>   arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> index d0a6dbd377df..f3ffb8f01d8a 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> @@ -54,7 +54,6 @@ usb2: ehci@500000 {
>   
>   		sdmmc0: sdio-host@a0000000 {
>   			bus-width = <8>;
> -			mmc-ddr-3_3v;
>   			pinctrl-names = "default";
>   			pinctrl-0 = <&pinctrl_sdmmc0_default>;
>   			status = "okay";


