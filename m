Return-Path: <devicetree+bounces-247747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5D2CCB101
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F2E3300954E
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F3322EA48F;
	Thu, 18 Dec 2025 09:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="hd7dU7UJ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCB522CBC0;
	Thu, 18 Dec 2025 09:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766048772; cv=none; b=Lu1OcUwqql6RNRdJg1QrhVJGBAWRz9vQVl7+nOmh4W8CcuAOY/SGkHzFr2xA/EMD5GiGwTPbBEBrMJBP7GaaHuZTWwuvIefexjZGCA3y1ABw+lCjNO2rDjAH4WttDedFur+NWiUY7qtjoXXInjb+ZV5Ud/s/IkDUbY2EsIrTZls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766048772; c=relaxed/simple;
	bh=XX7b7q9Edhc0k6MzMJrFi4FJw/WKh29AyKl9J8y+gVc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=FHr/8bc1oQZP6qh7Us3Uav+9dELk1hh5I3v9f16xa1He+/GIbEi2EUSuGTBqqdu3N/ZP1AS33M+mBCaQtA7thgK1lQhgkglTK3/wPMwWAorlRpBhm0JUEAWPrZXR6Ahcb119Z7hWKSRaZXchNBLXXWJS1DCEf7xolqwaa8RlcdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=hd7dU7UJ; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1766048772; x=1797584772;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=XX7b7q9Edhc0k6MzMJrFi4FJw/WKh29AyKl9J8y+gVc=;
  b=hd7dU7UJY4HMsi5jdQ/13bMDGL/RcYl8YFXsDulutFu3ks+7Art/3FN8
   GYbpkUszMoF98+NKAMv+OGCKDKkC96DFpHl/guwnxjo+7ySMcN1JXOAzr
   yX2fluq7Jxj5qu7kK/UMYaJhR0absATIJzxvhi/D9qJ1knuCdH4icsMCZ
   hSHqy4pq/MlLc40380qimcalYORKaw4iyxIQYzldsYsaL33u5FfQPmmne
   pkYAm8j929TzqJ4pQxzvW0Bk6+9GYDpVeS/yOIE7AaeCoGlo1EGkfK2YK
   cr80dLHobPdc09VWOrNIT6j3DF4NhS6SIPaCT5lhAUU/3/N8u+Ye0c7Q/
   g==;
X-CSE-ConnectionGUID: Ve+L4/dBQ2anPaGCYtCixQ==
X-CSE-MsgGUID: Vc5HPdrpQn2pxdPLCq9osw==
X-IronPort-AV: E=Sophos;i="6.21,158,1763449200"; 
   d="scan'208";a="282091071"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2025 02:06:10 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Thu, 18 Dec 2025 02:05:29 -0700
Received: from [10.171.248.75] (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 18 Dec 2025 02:05:24 -0700
Message-ID: <66b2bbd4-a758-4a20-981f-07fcdb116412@microchip.com>
Date: Thu, 18 Dec 2025 10:05:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] mfd: atmel-hlcdc: Add compatible for sama7d65 XLCD
 controller
To: Manikandan Muralidharan <manikandan.m@microchip.com>, <lee@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<dharma.b@microchip.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<simona@ffwll.ch>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>
CC: Ryan Wanner <Ryan.Wanner@microchip.com>
References: <20251218040521.463937-1-manikandan.m@microchip.com>
 <20251218040521.463937-2-manikandan.m@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20251218040521.463937-2-manikandan.m@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 18/12/2025 at 05:05, Manikandan Muralidharan wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add compatible for sama7d65 XLCD controller.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
> changes in v2:
> - isolate this change into a dedicated patch
> ---
>   drivers/mfd/atmel-hlcdc.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mfd/atmel-hlcdc.c b/drivers/mfd/atmel-hlcdc.c
> index 4c4e35d404f3..c3f3d39bf584 100644
> --- a/drivers/mfd/atmel-hlcdc.c
> +++ b/drivers/mfd/atmel-hlcdc.c
> @@ -140,6 +140,7 @@ static const struct of_device_id atmel_hlcdc_match[] = {
>   	{ .compatible = "atmel,sama5d4-hlcdc" },
>   	{ .compatible = "microchip,sam9x60-hlcdc" },
>   	{ .compatible = "microchip,sam9x75-xlcdc" },
> +	{ .compatible = "microchip,sama7d65-xlcdc" },
>   	{ /* sentinel */ },
>   };
>   MODULE_DEVICE_TABLE(of, atmel_hlcdc_match);


