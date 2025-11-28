Return-Path: <devicetree+bounces-242989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 72085C920FA
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5CC994E1144
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 13:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C9532BF24;
	Fri, 28 Nov 2025 13:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="N0tQBodl"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69050329C72;
	Fri, 28 Nov 2025 13:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764335056; cv=none; b=CaXcrjJA6MH3S86YvcGcBgKuRlyk2KCJv6pG9+ehki9bRota0uHiwo6bk+0URnzEzOUfYVDrrpZCG+ORv3BtcgClpc7MQqwr1NtLp9Twqm8xINH34qBMKr8eTE6CW7sZCAoH30xOBkCXUl8/YBiGtJaqKShfjAoyn7kZKjuhQyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764335056; c=relaxed/simple;
	bh=lWNOLheKOqEWsmv9LHfowT+6iUlIRUKSl71DP3/ezrg=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=awiAU/Kmu7rFqhJXkNtRNa68fZK7iiHuOGeDbnFtvzRu+A/AAEgdt1eNKHRVa1+nPeq2UFwzne2XISpM0WKYMBnZi675o9hZGYvmAg6NrbmD6igAS+ow4HYrl7RsNJ/lKx4SOwd2smF2vYahf6AkhTOoeTQVfOCv+6PvM+tNH8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=N0tQBodl; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1764335053; x=1795871053;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=lWNOLheKOqEWsmv9LHfowT+6iUlIRUKSl71DP3/ezrg=;
  b=N0tQBodlIBPol+uMIJJm2dyLu0YOPNbhMcf60t0qfF8XD+Awn0vuIrt2
   ewM4s84urBmwN2VvmlzU4OWGhouC1vu8xL5v4zK0O7vIt58dSRvUpOnMG
   s5z4LR1g9wy+1JCV2U9j2LDJav+LTy1UoLQ9ze0smfLhVREIelC9jMKEQ
   wyC7iKBbVZN3ToL/VR9G7rUvCFskb68fYMRTTnvIwZRvhFTc77vHyoufO
   cXj58GZbLRdnlqj5IGVJubcLblmMEJc4NPdQCyQ/FxkyUj0aDhKU7Y57J
   zvHGT895hp3FOp/0a432Ml4MXRtu0yXbSoqL1epiYBxPhLEGr+bW6UoTV
   w==;
X-CSE-ConnectionGUID: +nmuSS8DRJO584yhKDEqKw==
X-CSE-MsgGUID: 8Fna7HzhRnOI7SAsGjtD6Q==
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; 
   d="scan'208";a="56402189"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2025 06:04:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Fri, 28 Nov 2025 06:04:08 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Fri, 28 Nov 2025 06:04:07 -0700
Date: Fri, 28 Nov 2025 14:04:00 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <wsa+renesas@sang-engineering.com>,
	<Ryan.Wanner@microchip.com>, <romain.sioen@microchip.com>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] ARM: dts: Add support for pcb8385
Message-ID: <20251128130400.bimjex7ptnbsokul@DEN-DL-M31836.microchip.com>
References: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
 <20251126100151.1559590-3-horatiu.vultur@microchip.com>
 <4702976d-1b08-4565-88a5-d9a1b36582f9@kernel.org>
 <20251127092450.h3t5vxdfvseartx2@DEN-DL-M31836.microchip.com>
 <da46dd3f-7259-40a6-b9cd-2586ee5a4aed@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <da46dd3f-7259-40a6-b9cd-2586ee5a4aed@kernel.org>

The 11/28/2025 10:08, Krzysztof Kozlowski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 27/11/2025 10:24, Horatiu Vultur wrote:
> > The 11/26/2025 11:24, Krzysztof Kozlowski wrote:
> >>
> >
> > Hi Krzysztof,
> >
> >>> +
> >>> +&flx0 {
> >>> +     atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> >>> +     status = "okay";
> >>> +
> >>> +     i2c0: i2c@600 {
> >>
> >> You added a label, so this feels like a new node, but then you miss
> >> compatible and status feels redundant.
> >
> > Ah.. OK. I didn't want to add a new node.
> >
> >>
> >> If this is override, you should rather override by labels/phandles in
> >> the first place. Even when overriding by full node path, you should not
> >> add custom labels - they belong to the base SoC.
> >
> > I can remove the label.
> > So, when I want to override or extend with new properties I should
> > labels?
> 
> 
> Yes, child of serial engine should still be extended by label/phandle,
> unless this SoC subsystem has different rule.

What do you mean by "child of serial engine"?

> 
> Best regards,
> Krzysztof

-- 
/Horatiu

