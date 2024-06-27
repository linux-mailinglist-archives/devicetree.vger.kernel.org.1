Return-Path: <devicetree+bounces-80582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B79191A07B
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 09:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 226FC28238F
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 07:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F60959164;
	Thu, 27 Jun 2024 07:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="HZ1Lk4vq"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6964F3EA76
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719473725; cv=none; b=diGoAS3lPT/yHBrBHNK2VNT2uK/CYRzBdbgew4jFGbJ6u+ElwMmM3ZyuTiBKoqOg6WlnIXvQenA7poHJC4nrWxArfFD9mCYkzfQ4WNg/p1JLogINOzVOpUeTlMO8i8k9wz9PBgr1JRLVXG5nngqrZPmOPo+Nck6KidUqn6jtY8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719473725; c=relaxed/simple;
	bh=AOOIce+tZxnTL8aeA6Veoq0sdvFXqGDLji3p5KTAR50=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=YQip+aC11Qozl+UQSaK/hhY0Fsu/jsy0pPRbPHWk7KGkCH1+9T2L+uAd8sgwIO8RcB3PB/zNq6DhEXkMMBsNcbB+yL6U0YLrU2BuArFJNLBNSWGiqeQorQ5tzfluwEB4msxWnlMWsw4Zup+GqjbiIM9lKa1KBjTwm/68Vc+EMAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=HZ1Lk4vq; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1719473723; x=1751009723;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=AOOIce+tZxnTL8aeA6Veoq0sdvFXqGDLji3p5KTAR50=;
  b=HZ1Lk4vqrNdXdiAWYEROKPo3O8ASzOjhwf9sHZaoAtH/Gd6p7Qx6BwLF
   oYBbKwkDDTIe9pAZwuP7REWRNz8QMt9s7hpjw+RUOsozxpnvYYWwhKFMw
   IJW7B/Q34chIfzDF6LwEhA4K62kNTUl7+XgFYmIB2TCUkJjZb5b0F4moQ
   PwleABLix4IoSswJdWvu6xyMILrN0Ob6h61IbQJKLui90hfHeReQhMBz5
   wbaJjSyVzsLZnQzVsN37zbualT9cs+8P8UpzBe8w4MDlvqOeSPDPXMAe7
   39oFgK2QsrJiDIs6AjSuOqpDyvI9o17vazLg9WBomHOavVzV5ozmb//99
   Q==;
X-CSE-ConnectionGUID: AvttvU+vQS6kjuWC7c9CCw==
X-CSE-MsgGUID: 8VqTP6eXSCGtsggpCCtzSw==
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; 
   d="scan'208";a="195959555"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Jun 2024 00:35:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 27 Jun 2024 00:35:13 -0700
Received: from [10.180.116.106] (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Thu, 27 Jun 2024 00:35:10 -0700
Message-ID: <6da15a23-7ba0-4046-acd2-c9a2aa61dfe8@microchip.com>
Date: Thu, 27 Jun 2024 09:35:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] MAINTAINERS: add microchip soc binding directory to
 microchip soc driver entry
To: Conor Dooley <conor@kernel.org>, <devicetree@vger.kernel.org>
CC: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Lars Povlsen <lars.povlsen@microchip.com>, "Steen
 Hegelund" <Steen.Hegelund@microchip.com>, Daniel Machon
	<daniel.machon@microchip.com>
References: <20240626-platter-scarcity-d503fda8a2fd@spud>
Content-Language: en-US, fr-FR
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20240626-platter-scarcity-d503fda8a2fd@spud>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 26/06/2024 at 17:54, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> I noticed that there's technically not an explicit maintainer for this
> directory, even if the files currently in it are covered by either the
> Mircochip FPGA or AT91 entries. Add it to the entry covering the
> corresponding driver directory.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: devicetree@vger.kernel.org
> CC: Nicolas Ferre <nicolas.ferre@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Thanks Conor, best regards,
   Nicolas

> CC: Alexandre Belloni <alexandre.belloni@bootlin.com>
> CC: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> CC: Lars Povlsen <lars.povlsen@microchip.com>
> CC: Steen Hegelund <Steen.Hegelund@microchip.com>
> CC: Daniel Machon <daniel.machon@microchip.com>
> ---
>   MAINTAINERS | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e2d8fdda1737..c74fd2b70532 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14975,6 +14975,7 @@ MICROCHIP SOC DRIVERS
>   M:     Conor Dooley <conor@kernel.org>
>   S:     Supported
>   T:     git https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/
> +F:     Documentation/devicetree/bindings/soc/microchip/
>   F:     drivers/soc/microchip/
> 
>   MICROCHIP SPI DRIVER
> --
> 2.43.0
> 


