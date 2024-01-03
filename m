Return-Path: <devicetree+bounces-29445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0282822EE8
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E337BB21160
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7D3A19BBB;
	Wed,  3 Jan 2024 13:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="CjBhnNfs"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F277119BB2
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1704289764; x=1735825764;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=AH3sdwn2kmYk5LMy3Ft0pqTsWL+8ZzwVY5XA9udv5Bo=;
  b=CjBhnNfsuCnozxv176AV/5JZuQC4lifciHMm37wvU3yHQfLX1Rsfywtd
   xkBmvGfPHCUdzXE3L26vAehNFmSbUlU6vBBfXtyYJKUV5udLcsjZkw8s9
   vO8S/YcbMg47nGt94Yw6QYHKG+fvE3hhENBQS0hMA9I0Dr5kMCtUHgcBK
   DDJWuygtVqp/tcNxL1G1qwkI+ZFk1H1Q1Oh751+fc7sb+ULM8oYIfW0Js
   0LCNSqVXnWq2IFSGSPVE+PJ1ILC6alkfz8WHI7OjSVgndU7x54CmaJeWO
   TFFR9MurnB5h8TN5kFZ2AVxeoFpAlrphcy6o00jKKIrPoP5z3sPwZglgB
   A==;
X-CSE-ConnectionGUID: tBLUej1LSlCZcBhJ3JlEtw==
X-CSE-MsgGUID: dNTzH/hAQAa8pJT+C1khvg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; 
   d="scan'208";a="14599138"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Jan 2024 06:48:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 06:47:53 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Wed, 3 Jan 2024 06:47:51 -0700
Message-ID: <b44864f5-561e-452a-844e-3e706f62581a@microchip.com>
Date: Wed, 3 Jan 2024 14:47:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ARM: dts: at91: at91sam9x5ek: Use DMA for DBGU
 serial port
Content-Language: en-US, fr-FR
To: <ezra@easyb.ch>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Conor Dooley
	<conor+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: Reto Schneider <reto.schneider@husqvarnagroup.com>, Michael Zimmermann
	<michael.zimmermann@grandcentrix.net>, <devicetree@vger.kernel.org>, Ezra
 Buehler <ezra.buehler@husqvarnagroup.com>
References: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
 <20240102161839.702625-2-ezra.buehler@husqvarna.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20240102161839.702625-2-ezra.buehler@husqvarna.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2024 at 17:18, ezra@easyb.ch wrote:
> From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> 
> The UART controller does not seem to be fast enough to receive data (at
> 115200 baud) without dropping bytes when DMA is disabled.
> 
> This has often been noticed when pasting SSH keys into the serial
> console (ttyS0). Only after multiple tries, the long strings would be
> successfully transferred without missing characters.
> 
> Co-Developed-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
> Signed-off-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
> Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Fine with me:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks for your patch. Best regards,
   Nicolas

> ---
>   arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi b/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi
> index 5f4eaa618ab4..9618b8d965b0 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi
> @@ -39,6 +39,8 @@ &adc0 {
>   };
> 
>   &dbgu {
> +       atmel,use-dma-rx;
> +       atmel,use-dma-tx;
>          status = "okay";
>   };
> 
> --
> 2.39.2
> 


