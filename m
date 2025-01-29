Return-Path: <devicetree+bounces-141667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5087FA21DE0
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 14:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 885881881A7C
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 13:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29414481CD;
	Wed, 29 Jan 2025 13:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="nvc84Hkg"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA8913C9B8;
	Wed, 29 Jan 2025 13:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738157374; cv=none; b=P5e3ztS+c5AIbH1i+WVoMbCCIYZtrLDD8e9YGKlWGS6rIkST+ragNWqhC9OcDXbmsxf/4KVhlLsuIPfnlSJOkZm0ku3+Q5jnWNnWhvkXfC117lveHByMD97EweFiwunjxqw+jfD22i/OZyhu2AcAkR+UrEWzJcZThd18TqskVlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738157374; c=relaxed/simple;
	bh=WesBG+jjD2tRTVdByBwKWmtB14CYZppXcUWCk3ge0Vc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZAL70w22/pZ/iSUIn2OQ3tS2zbTWHjfQorRBYkiK7++G4MBuqDNCXEazOI9e8Y3B3BZCJ98VPEcxqFc1pNF/kEfyMZbAQW1M/oikqIKhpzbe3538716ZmG2TYOw8T2tPe3cMLb68oXckXJDLJsmmkj75+loIPGeQ3mCbVZn1dAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=nvc84Hkg; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738157372; x=1769693372;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WesBG+jjD2tRTVdByBwKWmtB14CYZppXcUWCk3ge0Vc=;
  b=nvc84HkgLMPHyQlqZTD4mbhcKperrL8XSUPwIlbQ83jr76aAXkhNJtsG
   OwTH11OZcWIUlXBTWkDbJ+0GkLd57uj2pt19tS2ZkQb2MJMu79Q/2KQid
   Nhl+fGFXb+O77WHsijJhT0tUNDZFzOgVbVbgYS9OllwD75vdAJ+zsbNe+
   TmF4wLR2QtobWFaM5J8MmlFOxIuiGkOILPK7jUfMfEvJ1TOm3h8TrLFze
   CbCPmIlXYtsVXXm+veqgT+1hPP+4RcJuInjoRceZaqnUU0ETzQt/SJRS2
   Sp0kBpDEVChb/e3gEyeb0TUtS/mZ/iHlJGkyd8s6syREKJCoiRR2nJKwl
   Q==;
X-CSE-ConnectionGUID: Qu3qKRu3QiuJYJdtclTq/g==
X-CSE-MsgGUID: 4v9D/ymHTqajRbX7K2tZUw==
X-IronPort-AV: E=Sophos;i="6.13,243,1732604400"; 
   d="scan'208";a="268371753"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Jan 2025 06:29:31 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 29 Jan 2025 06:29:26 -0700
Received: from ROB-ULT-M76677.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Wed, 29 Jan 2025 06:29:24 -0700
From: Andrei Simion <andrei.simion@microchip.com>
To: <krzk@kernel.org>
CC: <alexandre.belloni@bootlin.com>, <andrei.simion@microchip.com>,
	<broonie@kernel.org>, <claudiu.beznea@tuxon.dev>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, <krzk+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: misc: atmel,at91-ssc: Convert to YAML format
Date: Wed, 29 Jan 2025 15:28:23 +0200
Message-ID: <20250129132822.9382-1-andrei.simion@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250129-vagabond-scrupulous-scorpion-b57db9@krzk-bin>
References: <20250129-vagabond-scrupulous-scorpion-b57db9@krzk-bin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Hi,

Thank you for the review.

I will place this in: Documentation/devicetree/bindings/sound/
because the SSC it is used only for Audio.

>
> Missing dai-cells. Old binding said 0, now you say anything...
>
> Missing required block
>
>> +allOf:
>> +  - $ref: ../sound/dai-common.yaml#
>
> Full path, so /schemas/
>
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - atmel,at91sam9g45-ssc
>> +    then:
>> +      required:
>> +        - compatible
>> +        - reg
>> +        - interrupts
>> +        - dmas
>> +        - dma-names
>
> So only dmas?
>
>> +        - clocks
>> +        - clock-names
>> +    else:
>> +      required:
>> +        - compatible
>> +        - reg
>> +        - interrupts
>> +        - clocks
>> +        - clock-names
>
> Drop entire required:
>

I have a question:

1) The old binding said if "atmel,at91sam9g45-ssc": add dmas and DMA-names to the list:
	- compatible, reg, interrupts, clock-names, clocks
   Why do you ask: "drop entire required"?
   I intended to set the required through a conditional.
    case 1) dma transfer
    case 2) pdc transfer

Best Regards,
Andrei Simion

