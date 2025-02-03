Return-Path: <devicetree+bounces-142527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D72A25A60
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C4F47A2284
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF10204F67;
	Mon,  3 Feb 2025 13:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="ZIzSEIpT"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A058E204C3E
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738588148; cv=none; b=lBx0/j0ulMzI5h1rpBggciD0wwFySyHdgL9pSmYfJtAVY7JcwlGaKOZ4A6MzS/mkUMANUf9YhUvBsm7M+ccg+Pxyg+AfM02gpWCLglcj5cqwVcIxeCsZacK8oxRRhpiak/FYglZcW6E/rHPiXPB3mq+uGO9Y85qS76QYZELRcSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738588148; c=relaxed/simple;
	bh=GDCSiGKumchsCLvW4RTp/AlX8Fvnpt+Z/TW2GqZF3NU=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=QAyJznwgeu9TIFv+P14OP51phAxTt/4GlpoDxZHjqwRpR2cpNiwzLp9AInpODsktuWoMWJTbPH/vzTxFdNG6zNLBXusjkhHi2MqpJJKmEvi4/huS9HZCaP8RUvT2HuOe+QddQmJBNUFmlbxsIqtWKeKZXyYoysS0pijK9ZAzlKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=ZIzSEIpT; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738588147; x=1770124147;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=GDCSiGKumchsCLvW4RTp/AlX8Fvnpt+Z/TW2GqZF3NU=;
  b=ZIzSEIpTCzcoZa4dOM6Lkmi4W7A9Czhl2ckQZ1kzNL4dL0zjz8dPChqC
   xD/Y54B7dqzd8JiW17aupXidkcQzWWPj1Ed5ukjZ6hMy9yeacTiaUyqrl
   9l66c2wN/g0XkQEkfOkXd4oUoM5pen31mGbLPyPf51d5L7xVbZB3i4DK0
   qgimSseP65bXskCPT3X6xL7Uve1+dkEOt7QvHy7hvMe10VYmwvJpMMcIF
   Hu8qHKx6+Cvrj1p9pG9L2jZ/3CkvHrLIx9H72F8E/+Y1mSOJYnEiWGDfT
   oe6QPJ07o2UVKXZt+jGl2ejjinB8L3uNZkvhYJu9URep7fdKhFzcXY9LM
   A==;
X-CSE-ConnectionGUID: PZia51+RR3iwDczuUzl0MA==
X-CSE-MsgGUID: fHD8+wFCR+OSDR2TKoB+yg==
X-IronPort-AV: E=Sophos;i="6.13,255,1732604400"; 
   d="scan'208";a="37204349"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Feb 2025 06:09:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 3 Feb 2025 06:08:37 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 3 Feb 2025 06:08:35 -0700
Message-ID: <f4fc0326-dc2a-40cc-822c-61530aa2a267@microchip.com>
Date: Mon, 3 Feb 2025 14:08:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] ARM: dts: at91: calao_usb: fix various naming
 problems
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	<linux-arm-kernel@lists.infradead.org>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Conor Dooley <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
Content-Language: en-US
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 31/01/2025 at 22:02, Wolfram Sang wrote:
> Two patches deal with the either missed or mistyped vendor 'Calao'. The
> other two patches deal with improper node names as reported by
> dtbs_check.
> 
> Wolfram Sang (4):
>    ARM: dts: at91: usb_a9263: fix wrong vendor
>    ARM: dts: at91: use correct vendor name for Calao boards
>    ARM: dts: at91: calao_usb: fix button nodes
>    ARM: dts: at91: usb_a9g20_lpw: use proper mmc node name

Series looks good to me:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks Wolfram. Regards,
   Nicolas

>   arch/arm/boot/dts/microchip/tny_a9260.dts          |  2 +-
>   arch/arm/boot/dts/microchip/tny_a9260_common.dtsi  |  2 +-
>   arch/arm/boot/dts/microchip/tny_a9263.dts          |  2 +-
>   arch/arm/boot/dts/microchip/tny_a9g20.dts          |  2 +-
>   arch/arm/boot/dts/microchip/usb_a9260.dts          |  2 +-
>   arch/arm/boot/dts/microchip/usb_a9260_common.dtsi  |  6 ++----
>   arch/arm/boot/dts/microchip/usb_a9263.dts          |  8 +++-----
>   arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi | 10 ++++------
>   arch/arm/boot/dts/microchip/usb_a9g20.dts          |  2 +-
>   arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi  |  2 +-
>   arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts      |  4 ++--
>   11 files changed, 18 insertions(+), 24 deletions(-)
> 
> --
> 2.45.2
> 


