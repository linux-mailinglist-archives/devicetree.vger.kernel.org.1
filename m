Return-Path: <devicetree+bounces-242646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FB3C8D88E
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B29243ACC45
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 09:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDEB332AABD;
	Thu, 27 Nov 2025 09:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="ESavtwV0"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E670329E74;
	Thu, 27 Nov 2025 09:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764235525; cv=none; b=u1OUB3XbnL1foGfG5anL+VK8QhDzTxX3viud+l72i15tmmSdQ7O/TiDDyezA20pJgKshPf9WYUT2b0mHDIpTtzOID/mdApqY4P0XFySLMfvvCtuGXw+tFKPrz6J2ZJhV+UX3hw7FuPIf+RuhXIk9K7Wa3ORMMgANFLTdOnd1c90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764235525; c=relaxed/simple;
	bh=zGs0fOo6tXBdm2tLzw1qB8zGuJHcZAMDiT7yFjCFgFM=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uYMB1Txf0nY0NiPJ3XWtQ0FsZrmx8QkMJT078XaFpLfmYkamQAe1rdXBBSz7MfRQyrrePMzT2FlKkN5craIjIv+uoWOI1Bd0CCeszsSQIHuYSW051oiLUfDkcj0Eb8BuPap3xmSxQ5mCaxgMAmBRQsiQI6PgNODn2evHRPxbhog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=ESavtwV0; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764235523; x=1795771523;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zGs0fOo6tXBdm2tLzw1qB8zGuJHcZAMDiT7yFjCFgFM=;
  b=ESavtwV0qywFtkFUAHKSsCaZHgvixq8sLhVj9+2E8hbaXMxUBCWfTQVg
   azYUpz77D+zRA06D2EEUUg9LM7umEoJvKJTXAFQl0fVSHz5oHezRbsmZI
   QT1jdZkQtpPMX8mgm2Mc9Sjk09JoF17XM64Yf7im1/DjQB41iYmmpn8nX
   TR2H4DEBqyM73Tb+nkVxGzUmHWSiugZGOG4DGLnbyPYznDOuHItUMQ1tF
   Hg+F46ezXrGZ8mbTnYa4EhQtErSNCqQAbivZKUYEL7xG8/quClDxMz8Xc
   125yRccvnH5Piuf6v+uS/votnUHFBR+5njeaFBsfYMq4qeYHjeWXN0wH9
   w==;
X-CSE-ConnectionGUID: h4V7cGYyRjS5kOD0W8j29A==
X-CSE-MsgGUID: RAgQNsCSRsK43X2m+wdQWg==
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; 
   d="scan'208";a="56355110"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Nov 2025 02:25:22 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Thu, 27 Nov 2025 02:24:56 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 27 Nov 2025 02:24:55 -0700
Date: Thu, 27 Nov 2025 10:24:50 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<Ryan.Wanner@microchip.com>, <romain.sioen@microchip.com>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] ARM: dts: Add support for pcb8385
Message-ID: <20251127092450.h3t5vxdfvseartx2@DEN-DL-M31836.microchip.com>
References: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
 <20251126100151.1559590-3-horatiu.vultur@microchip.com>
 <4702976d-1b08-4565-88a5-d9a1b36582f9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <4702976d-1b08-4565-88a5-d9a1b36582f9@kernel.org>

The 11/26/2025 11:24, Krzysztof Kozlowski wrote:
> 

Hi Krzysztof,

> > +
> > +&flx0 {
> > +     atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> > +     status = "okay";
> > +
> > +     i2c0: i2c@600 {
> 
> You added a label, so this feels like a new node, but then you miss
> compatible and status feels redundant.

Ah.. OK. I didn't want to add a new node.

> 
> If this is override, you should rather override by labels/phandles in
> the first place. Even when overriding by full node path, you should not
> add custom labels - they belong to the base SoC.

I can remove the label.
So, when I want to override or extend with new properties I should
labels?

> 
> > +             pinctrl-0 = <&fc0_b_pins>;
> > +             pinctrl-names = "default";
> > +             dmas = <0>, <0>;
> > +             i2c-analog-filter;
> > +             i2c-digital-filter;
> > +             i2c-digital-filter-width-ns = <35>;
> > +             i2c-sda-hold-time-ns = <1500>;
> > +             status = "okay";
> 
> > +
> > +             eeprom@54 {
> > +                     compatible = "atmel,24c01";
> > +                     reg = <0x54>;
> > +                     status = "okay";
> 
> Why? Was it disabled anywhere?

It wasn't disabled anywhere. I will remove this.

> 
> > +             };
> > +
> > +             eeprom@55 {
> > +                     compatible = "atmel,24c01";
> > +                     reg = <0x55>;
> > +                     status = "okay";
> > +             };
> > +     };
> > +};
> > +
> 
> 
> 
> Best regards,
> Krzysztof

-- 
/Horatiu

