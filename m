Return-Path: <devicetree+bounces-247746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 847A8CCB0F8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:06:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49B673007C5D
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8D7274B23;
	Thu, 18 Dec 2025 09:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="ZDlm4GgS"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00383A1E93;
	Thu, 18 Dec 2025 09:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766048750; cv=none; b=t0GR8q+aik/1IouFYPCxRrnJrhgMhnBctvwhzglkPXWrSgrD4JOXRXWyx/8XhzsAhHr0wMtsApFIC+wNzf3sbIBXPoS7iyKyD5ze1FWv88vIaztOi7yy1S9vdLCnCOcGg2/R/mX6DjCRMA9T5OgmlIMyY12oA1v2MKmMGiESe9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766048750; c=relaxed/simple;
	bh=ZSfKuyhknbDckhEuDJksiGTYSdFPIDWNu7knsS8JTrw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=IPwNUn/US6bcXNrI2yEH3vYff2CVthcPf9J8YoOQUoSInJpOek/G/MracV+Q4ejr6Fc1yRmqh8MF+j9G2UAHYytDTKupKWT8IZLLcVhnGKQ7kj1ebDDxlZwRSqG6zWcTh/bav1pVw/WGKEWEI4TlFNrX1CL2MjUJbG2wZQkOxOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=ZDlm4GgS; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1766048747; x=1797584747;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ZSfKuyhknbDckhEuDJksiGTYSdFPIDWNu7knsS8JTrw=;
  b=ZDlm4GgS9PecpiGfbYfZqYNxeO7vGzS79ruMgLKO2Xp/3zb26V6dklJK
   koGa2XQjbTzCe/e5KeFEXVfsynGbIRxA53vAtdbGZhgdV4aawZFsJAN2a
   T5NbDezkuLxi0Z2pAUZxrkup9f7Ev5JltQjHoe+x8sEyYuieMhn2Ql+Yx
   RE45OzKLeyOI2SR90hE4D1wSyRXfVUnnm6ea3+537jnI6tpoMO4f1MX0G
   Lc6ZHcBx51Lj7KSK3VMrA/3fZoLwLMQW+wGrrEmLzRxeEltK6iwppEvPI
   C7ECf8iGbiEBH0SS3F1tsWQ95zPhI3A/PgY6XBVJl7h/s/Wq+k8ljb0Ga
   A==;
X-CSE-ConnectionGUID: 6Eh0cHflS2uiAW2+IC6f/A==
X-CSE-MsgGUID: KOwhJPFpTp2RUlyqCRGyKQ==
X-IronPort-AV: E=Sophos;i="6.21,158,1763449200"; 
   d="scan'208";a="50039434"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Dec 2025 02:05:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Thu, 18 Dec 2025 02:05:17 -0700
Received: from [10.171.248.75] (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 18 Dec 2025 02:05:12 -0700
Message-ID: <c60323c4-a938-4ceb-b0f4-82166ebfb2ad@microchip.com>
Date: Thu, 18 Dec 2025 10:05:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: atmel,hlcdc: Add sama7d65
 compatible string
To: Manikandan Muralidharan <manikandan.m@microchip.com>, <lee@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<dharma.b@microchip.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<simona@ffwll.ch>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20251218040521.463937-1-manikandan.m@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20251218040521.463937-1-manikandan.m@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 18/12/2025 at 05:05, Manikandan Muralidharan wrote:
> Add LCD compatible string for sama7d65.
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>   Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml b/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml
> index 4aa36903e755..dfee8707bac2 100644
> --- a/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml
> +++ b/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml
> @@ -25,6 +25,7 @@ properties:
>         - atmel,sama5d4-hlcdc
>         - microchip,sam9x60-hlcdc
>         - microchip,sam9x75-xlcdc
> +      - microchip,sama7d65-xlcdc
>   
>     reg:
>       maxItems: 1
> 
> base-commit: e8c28e16c3ebd142938aee296032c6b802a5a1d4


