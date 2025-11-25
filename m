Return-Path: <devicetree+bounces-241871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBCFC83C28
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D3383A3A68
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 07:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AD22DF709;
	Tue, 25 Nov 2025 07:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="SAOOTEca"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF082D7DD9;
	Tue, 25 Nov 2025 07:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764056603; cv=none; b=Avu6Ynk+P53m4vqeAMNMvm4dLc1yVuCXNTuOTZCBpRALNIaR07bKvobvADEeyCkn1Y1rqbyeF08bgnDk1Y0YiqjXA0Dmufyg9cOK/uKfSLStCUIlzvGmga5rh3Ta3H4PbuPpVepcAhXhqoIo9Hty+Opg5z+K+9kohqRKVpjt3W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764056603; c=relaxed/simple;
	bh=s3OVtX0Inb2w62M5PPfu4Si1gSMWQ8V+WAIDspeJzbY=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qhVaoEUX/4JTsuwwFqM0lw8akriBmAThrWaaf/vHjy31OquhyRYxuHdvK12kLpvIuQGug0d14QTFlkNNNTvDg/sWO/hhSBVd3Mseo08n3g7BvupREqwCCaDVfQh6mvIEEmfFdKOeZApep29c0NXxf6BOh0QnyQZ4FVRVQC2E+IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=SAOOTEca; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764056601; x=1795592601;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=s3OVtX0Inb2w62M5PPfu4Si1gSMWQ8V+WAIDspeJzbY=;
  b=SAOOTEcavDucyKXxGMJsIGQlV9joRg2oI4yoAOgiwgf9u+v3s1kt85pk
   lQhLfzA9/9wZp+0oau8z00x+hmdPXpOMIOH6VNH5uAcSNrPaNEce8VIfp
   V7CcVuSivdTqQMVvI/I2Lu41lhk+AhxP1NbAiXrwJ7sZHcRfmLRmWEkpP
   LuY3yzoqqkj6Vb7VyduMsFlDZjZKRUGIjTfbfRBja9X0qCUcqorrWUnI1
   1MFQn/wRd1gWDoiDJMyf5jvuCxtWMV+Qzu4NdRtZw/gKOmCkwCPaXZJQM
   gZNqMFemOUNUZ1ubNhZ8k9H4MbUgfMampF/XAoEkc4lAqOpW5hx4ijseU
   g==;
X-CSE-ConnectionGUID: u2aaJ1hoQM6K03C9PX/RcQ==
X-CSE-MsgGUID: TEPHXMFWRgmirBXI6sA6zg==
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; 
   d="scan'208";a="56204871"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2025 00:43:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex3.mchp-main.com (10.10.87.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Tue, 25 Nov 2025 00:42:40 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 25 Nov 2025 00:42:40 -0700
Date: Tue, 25 Nov 2025 08:42:36 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
CC: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<wsa+renesas@sang-engineering.com>, <romain.sioen@microchip.com>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: Add support for pcb8385
Message-ID: <20251125074236.bf7wms6djtcy3ymq@DEN-DL-M31836.microchip.com>
References: <20251117125709.102013-1-horatiu.vultur@microchip.com>
 <20251117125709.102013-3-horatiu.vultur@microchip.com>
 <0d21cf40-3614-48f4-86e0-69c7a87458e9@tuxon.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <0d21cf40-3614-48f4-86e0-69c7a87458e9@tuxon.dev>

The 11/22/2025 16:21, Claudiu Beznea wrote:
> 
> Hi, Horatiu,

Hi Claudiu,

> 

> > +&flx0 {
> 
> This would go after aes node to have them alphanumerically sorted. I can
> handled it while applying, if any.

Yes, I make sure that the nodes are sorted alphanumerically.

> 
> > +     atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> > +     status = "okay";
> > +
> > +     i2c0: i2c@600 {
> > +             pinctrl-0 = <&fc0_b_pins>;
> > +             pinctrl-names = "default";
> > +             dmas = <0>, <0>;
> > +             i2c-analog-filter;
> > +             i2c-digital-filter;
> > +             i2c-digital-filter-width-ns = <35>;
> > +             i2c-sda-hold-time-ns = <1500>;
> > +             status = "okay";
> > +     };
> > +};

...

> > +&i2c0 {
> > +     eeprom@54 {
> > +             compatible = "atmel,24c01";
> > +             reg = <0x54>;
> > +             status = "okay";
> > +     };
> > +
> > +     eeprom@55 {
> > +             compatible = "atmel,24c01";
> > +             reg = <0x55>;
> > +             status = "okay";
> > +     };
> 
> Any reason for not keeping these above under "i2c0: i2c@600 {" ?

Not really. I will move them there.

> 
> Thank you,
> Claudiu
> 
> > +};
> > +
> > +&sgpio {
> > +     pinctrl-0 = <&sgpio_a_pins>;
> > +     pinctrl-names = "default";
> > +     microchip,sgpio-port-ranges = <0 3>;
> > +     status = "okay";
> > +
> > +     gpio@0 {
> > +             ngpios = <64>;
> > +     };
> > +     gpio@1 {
> > +             ngpios = <64>;
> > +     };
> > +};
> 

-- 
/Horatiu

