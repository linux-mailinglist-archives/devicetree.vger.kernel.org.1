Return-Path: <devicetree+bounces-239662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B02C6839F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 3F36228BD1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BC3D30DD21;
	Tue, 18 Nov 2025 08:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="QVV9tOuP"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160F6275864;
	Tue, 18 Nov 2025 08:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455143; cv=none; b=ozQW3tZsoR5FFakgEbRkvJvVQWdZAXF+taLq+8eB6Evg2mE+lNltaToQ6Hv3E8BgySOzwhknO4CDE4oijv0B2VlH8EE6VLaDFXcRs3MHjkjmmpc5U0nls2jCKcrDwXjwys1rCI8DewOKzIjo8r08SiVoL+ka4Xzh+yiqniPKYhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455143; c=relaxed/simple;
	bh=G8N7InRiz/r2N49MxkgSLlhI3kbCLucI3vlcM9g4e1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=fxasy0vZ1d0tI/vWT8RIVTMDSf6TTIT/hM3INPBcApEEgq4Zyiq9qx9IfVd+GaZNsDyNq+aNYgCUzwYFFtBeRt10sW7sUJa1be0rQg8okSv+rqenpCO2tsT1ggy7iIug4G8FrKBF9MujuS1hYNvqc8z1kbp1EY/ujucn9SN2Y2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=QVV9tOuP; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763455141; x=1794991141;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=G8N7InRiz/r2N49MxkgSLlhI3kbCLucI3vlcM9g4e1w=;
  b=QVV9tOuPlotigCOTS4y4Bmmp5Oq4qKBQJ2YlujQvJlfUTkRcG1GwlusU
   BNTuBBx+oidTr29B2q5Jv+zBcAQz0SecUeHu8wAOUYW40SvdxwBPBHsZg
   s3PRjaXHYKg6ufD3vTM3/PlK3rh28cvTjy/n/tAqejxw8ppq8rItytq3p
   zoKGvjOpcvHeVtQugoPRBtlCkr1ROLtLUG8g56q1dtL75gAfwTkt4Hujm
   55581/+7im93K5d07K7WZ9gGGB3eRZwTGQ0Mee7QBHa4pkqwxtTc37T+x
   DaljkeM5E79K1TnAHK8+RHIn0KtUlkJuiyVpm7/HpQU4NK9tSfsreajz5
   g==;
X-CSE-ConnectionGUID: 7r7bw6jDSkez8ippLPCIow==
X-CSE-MsgGUID: x4o0IzLVSO6HQox2+ulUiA==
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; 
   d="scan'208";a="48657120"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Nov 2025 01:38:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 18 Nov 2025 01:38:19 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 18 Nov 2025 01:38:16 -0700
Message-ID: <e7f645da-0d77-4d7f-bcc6-c81e96589144@microchip.com>
Date: Tue, 18 Nov 2025 09:38:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: mfd: document syscons falling back to
 atmel,sama5d2-sfrbu
To: Conor Dooley <conor@kernel.org>, <linux-kernel@vger.kernel.org>
CC: Conor Dooley <conor.dooley@microchip.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>
References: <20251117-aeration-smock-5e7ac06e2942@spud>
 <20251117-marlin-mustang-5ffda4d211c7@spud>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20251117-marlin-mustang-5ffda4d211c7@spud>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 17/11/2025 at 17:29, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The sfrbu on both sama7g5 and sama6d65 both fall back to sama5d2 in
> devicetrees, but the former two compatibles were undocumented. Now that
> syscon.yaml has easy support for multiple soc-specific compatibles, add
> both of these undocumented devices.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Nicolas Ferre <nicolas.ferre@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Thanks Conor for having added these compatibles!
Best regards,
   Nicolas

> CC: Alexandre Belloni <alexandre.belloni@bootlin.com>
> CC: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> CC: Lee Jones <lee@kernel.org>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: devicetree@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-mediatek@lists.infradead.org
>   Documentation/devicetree/bindings/mfd/syscon.yaml | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 50f0012f4ebe..64829ecbb0b0 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -239,6 +239,12 @@ properties:
>                 - ti,j784s4-pcie-ctrl
>                 - ti,keystone-pllctrl
>             - const: syscon
> +      - items:
> +          - enum:
> +              - microchip,sama7g5-sfrbu
> +              - microchip,sama7d65-sfrbu
> +          - const: atmel,sama5d2-sfrbu
> +          - const: syscon
>         - items:
>             - const: microchip,pic64gx-control-scb
>             - const: microchip,mpfs-control-scb
> --
> 2.51.0
> 


