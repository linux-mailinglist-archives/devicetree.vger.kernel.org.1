Return-Path: <devicetree+bounces-29446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11230822EE9
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23C741C2349D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D347119BC0;
	Wed,  3 Jan 2024 13:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="jtDgMCaJ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233AE19BB2
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1704289806; x=1735825806;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=gqqt1B+8i4OwFYpeKi7clftZoS7TrPIgp2YKGqm/Lfw=;
  b=jtDgMCaJ1Bk4EjA1eWoqXEMhLcg9MseSv4jyy1gYCGjHwrDHPIVghg7S
   OQ+rWGZakZMhdIZC3xgjgWJPclMAaaLJgsB8VQDx9aFbInUfs5nbwHuUO
   RUbNAn2YkPS7kuJJMQ9UELYvGRA8ZtfZIvASWRGYMkHfvi3wxf8fprBtX
   Uny82GMyMqgQW7oUxZQlYlcHFfBZoALETH76rYokbh6YPUvbGgGdWJ8JH
   5BNpVclq/tAKthSX8U4vL8MRbxSP59VCdToZ9oRus+yKf7AxNbL1IcWCD
   zsQS+JFgCDSVireFxG3+k6G4Yt2QNpf/8yQLRI7SuIzYPI7x+573vkDlx
   Q==;
X-CSE-ConnectionGUID: CBUEd3ybT5apdCkxvZJGnA==
X-CSE-MsgGUID: xnbKGYmhRBahYlBaROOenA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; 
   d="scan'208";a="244887934"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Jan 2024 06:48:57 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 06:48:30 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Wed, 3 Jan 2024 06:48:28 -0700
Message-ID: <f5db2ae7-fa2d-41d0-a247-928023fb0311@microchip.com>
Date: Wed, 3 Jan 2024 14:47:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] ARM: dts: at91: gardena-smart-gateway: Use DMA for
 USART3
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
 <20240102161839.702625-3-ezra.buehler@husqvarna.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20240102161839.702625-3-ezra.buehler@husqvarna.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2024 at 17:18, ezra@easyb.ch wrote:
> From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> 
> The AT91SAM9G25-based GARDENA smart Gateway uses USART3 (ttyS1) to
> communicate (over PPP, at 115200 baud) with the radio module.
> 
> We have been experiencing packet loss and seeing errors on the ppp0
> interface. Enabling DMA for the serial interface resolves the issues.
> 
> Co-Developed-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
> Signed-off-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
> Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Thanks!

Best regards,
   Nicolas

> ---
>   .../boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts    | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts b/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
> index 92f2c05c873f..af70eb8a3a02 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
> +++ b/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
> @@ -121,6 +121,8 @@ &usart2 {
>   };
> 
>   &usart3 {
> +       atmel,use-dma-rx;
> +       atmel,use-dma-tx;
>          status = "okay";
> 
>          pinctrl-0 = <&pinctrl_usart3
> --
> 2.39.2
> 


