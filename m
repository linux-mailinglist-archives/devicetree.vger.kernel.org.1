Return-Path: <devicetree+bounces-142521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE085A25A48
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:01:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 008343A52C7
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74634204C29;
	Mon,  3 Feb 2025 13:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="pypLvQPy"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56DD20010B
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738587679; cv=none; b=JbuzYiLCVq4Tete7hw3o7Fg2jWwCo1bX8i4rWpl7DnbKbO/rcsskNSQAE5y0P69Wa795FbI8xEMGbQjWGYlOh1rCshOreE48KEew9kcGSR/Q/JqTXN4okiA2VUq/V3XVY9tP38ks6iS4KWceuvj0df+6UTXIvMNwLohs2PTCzBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738587679; c=relaxed/simple;
	bh=/6QWZmvgdgRKemS6uCI/7kDUzuut2jiaZ3WLSrRT25U=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=FTMSvIqL/O4gmEh8ZGuMs7v/Surm1DG8hPkrWlsWmxHHWoOWMwfmYw/+i0Rv1I+wIU/Hv2kVz8tO9CWyi+KYyetD12c/2rHPt8g0QXnP4Hiq5/TJeFo9znyueMijSFsaEkM1iRLFxsPQlDewK+ocTSWWK0NB2D+2RY8YJFhH6Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=pypLvQPy; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738587677; x=1770123677;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=/6QWZmvgdgRKemS6uCI/7kDUzuut2jiaZ3WLSrRT25U=;
  b=pypLvQPyQpfI4APp7yubtESmw8Lhb59/5gZzAPh7KCDQfuMqLaJc8tRf
   rVYsrNBbOKrzfjVZAHxPFGsw9TLn3ZPqsCRRLmnkxuS/pQmUhd1r9meez
   WXSPbNhJ97vj7yCLj+mfhqaoik0Pv28vdZV+bo/KwIm7cBlg98XaReALX
   ZMBzxLCkNtzDWx8IfcPLaURg1hOm6Z4rokcJNNs4op9IKWPFyqTKTFlUA
   DSkjJGBD16pIN0KPX04WVg/P+7VWXXHLPJlix6FOVSF6o8v0OW8JbLIm2
   7CaMEcwePG0dY/e1zumqBX4SWTqApJMSoWPiRmaWGxGcJ1kyj8XX0ZujJ
   A==;
X-CSE-ConnectionGUID: BiQ6Mj8JS4mUyf8xst4c6g==
X-CSE-MsgGUID: nEiw4WNsRAyBbXcor0RWiA==
X-IronPort-AV: E=Sophos;i="6.13,255,1732604400"; 
   d="scan'208";a="37622794"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Feb 2025 06:01:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 3 Feb 2025 06:01:02 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 3 Feb 2025 06:01:01 -0700
Message-ID: <d4c2a158-6b93-4fd7-a638-9f202ed21b17@microchip.com>
Date: Mon, 3 Feb 2025 14:01:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] ARM: dts: at91: calao_usb: improve LED description
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	<linux-arm-kernel@lists.infradead.org>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Conor Dooley <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>
References: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
Content-Language: en-US
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 31/01/2025 at 17:26, Wolfram Sang wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> For developing on the road, the Calao USB-boards are still very useful
> to me. Time to give their Linux support a little love. This mini series
> fixes a wrong polarity and removes the default heartbeat. More to come.

Thanks a lot Wolfram! Patches will be welcome with pleasure.

Best regards,
   Nicolas

> Wolfram Sang (2):
>    ARM: dts: at91: calao_usb: fix wrong polarity for LED
>    ARM: dts: at91: calao_usb: remove heartbeat for User LEDs
> 
>   arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 3 +--
>   arch/arm/boot/dts/microchip/usb_a9263.dts         | 1 -
>   2 files changed, 1 insertion(+), 3 deletions(-)
> 
> --
> 2.45.2
> 


