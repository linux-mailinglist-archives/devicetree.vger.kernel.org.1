Return-Path: <devicetree+bounces-239300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C76A0C63A6F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:58:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 5A85D28ABE
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 827E730E837;
	Mon, 17 Nov 2025 10:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="COX4WNgH"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49251DC985;
	Mon, 17 Nov 2025 10:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763377129; cv=none; b=Q39ddZy99E8XdBxxv2Z0ECeYU1vgewg4WqbHAuRTCA6EPsC5T600KKkuPN8oI6uc1Oxk2h276CERRPhHq8am71Mn5pJA6X3i38YD+778Ob2Lm9RtFokQrtxGLl+fF4Y35V3380W3Dx2QVLb/cSic1GQscRPxOAcD1cCJysWg7Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763377129; c=relaxed/simple;
	bh=hUIBnGTka6MWAFgLDZm+Yb9QyWef8l+NVsIbZANEvYg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ufojt51UWesGFd0G78Sh/eysUOxeaa6j13ZidZOPYb1Pc5PElZ5funooSyonDxl1mrXJOy1DjOVgYAV69eHzcjjxv6BHeJYcsJErmX1du6zLKscJf8WyZHP2xPWTT7Bz5Zyw91dk4DDuGZ/3je+jzCfGdYZgmhQPn+47jEekfNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=COX4WNgH; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AHAthamF3462592, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763376943; bh=/2xVl9GtYDKziiIkptsRgm8RTLyYPV0xJz1nP0LWBYs=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=COX4WNgH+/v8wdJ1B1b4fetKPl+lji2q0miDHYVP4bUr8ja6PfPYuW5c+2Qhr2G72
	 G22oNH2B6supn5JexMxJIcOkVdKRwNy1ySh5iomj7kEKgDpYkpBk2cPjPmAqU7XrMH
	 h38MtVz+BkqC6uTmN+qiTx0MAF3X7Q3wP86AEh42pvjBAL7GpXLHjKtsfByalGtU7P
	 nvL+O60aj29GdKw1sNTKbIy7Fqkn5e0ToaWNdm/TIz7kQcDGrw084h94T7R4wpVmvc
	 W4WmV5m6bJ1BkyS48JpKYbi4jysBdZefAk0HwQo6FqYxDcIwo9ufA8xFA3OWp40R1A
	 M6qKkGNS1kzPQ==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AHAthamF3462592
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Nov 2025 18:55:43 +0800
Received: from RTKEXHMBS01.realtek.com.tw (172.21.6.40) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 18:55:43 +0800
Received: from RTKEXHMBS03.realtek.com.tw (10.21.1.53) by
 RTKEXHMBS01.realtek.com.tw (172.21.6.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 18:55:42 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS03.realtek.com.tw
 (10.21.1.53) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Mon, 17 Nov 2025 18:55:42 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <conor@kernel.org>
CC: <afaerber@suse.de>, <conor+dt@kernel.org>, <cy.huang@realtek.com>,
        <devicetree@vger.kernel.org>, <eleanor.lin@realtek.com>,
        <james.tai@realtek.com>, <krzk+dt@kernel.org>, <lee@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-realtek-soc@lists.infradead.org>, <robh@kernel.org>,
        <stanley_chang@realtek.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: realtek: Add Kent Soc family compatibles
Date: Mon, 17 Nov 2025 18:55:42 +0800
Message-ID: <20251117105542.14789-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113-preorder-task-4e5ba09580d8@spud>
References: <20251113-preorder-task-4e5ba09580d8@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

On Thu, Nov 13, 2025 at 08:30:07PM +0800, Yu-Chun Lin wrote:
> > Define compatible strings for Realtek RTD1501s, RTD1861b and RTD1920s.
> > 
> > Additionally, convert legacy DTS-style comments to YAML description 
> > properties, following the pattern from the ARM bindings conversion 
> > series [1].
>
> "Additionally" is often a sign that it should be in a different patch.
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable

Hi Conor,

I'm planning to split the changes into two separate patches:

1. One patch to convert realtek.yaml to match the DTS-style comments,
following the pattern from the ARM bindings conversion series.
2. Another patch to define the compatible strings for Realtek RTD1501s,
RTD1861b, and RTD1920s.

Could you confirm if both patches should include your Acked-by tag, or is
it only applicable to one of them?

Best regards 
Yu-Chun

> > 
> > [1] 
> > https://lore.kernel.org/lkml/20200622125527.24207-2-afaerber@suse.de/
> > 
> > Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> > ---
> >  .../devicetree/bindings/arm/realtek.yaml      | 42 +++++++++++++------
> >  1 file changed, 30 insertions(+), 12 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml 
> > b/Documentation/devicetree/bindings/arm/realtek.yaml
> > index ddd9a85099e9..be529490640c 100644
> > --- a/Documentation/devicetree/bindings/arm/realtek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/realtek.yaml
> > @@ -14,21 +14,21 @@ properties:
> >      const: '/'
> >    compatible:
> >      oneOf:
> > -      # RTD1195 SoC based boards
> > -      - items:
> > +      - description: RTD1195 SoC based boards
> > +        items:
> >            - enum:
> >                - mele,x1000 # MeLE X1000
> >                - realtek,horseradish # Realtek Horseradish EVB
> >            - const: realtek,rtd1195
> >  
> > -      # RTD1293 SoC based boards
> > -      - items:
> > +      - description: RTD1293 SoC based boards
> > +        items:
> >            - enum:
> >                - synology,ds418j # Synology DiskStation DS418j
> >            - const: realtek,rtd1293
> >  
> > -      # RTD1295 SoC based boards
> > -      - items:
> > +      - description: RTD1295 SoC based boards
> > +        items:
> >            - enum:
> >                - mele,v9 # MeLE V9
> >                - probox2,ava # ProBox2 AVA @@ -36,25 +36,43 @@ 
> > properties:
> >                - zidoo,x9s # Zidoo X9S
> >            - const: realtek,rtd1295
> >  
> > -      # RTD1296 SoC based boards
> > -      - items:
> > +      - description: RTD1296 SoC based boards
> > +        items:
> >            - enum:
> >                - synology,ds418 # Synology DiskStation DS418
> >            - const: realtek,rtd1296
> >  
> > -      # RTD1395 SoC based boards
> > -      - items:
> > +      - description: RTD1395 SoC based boards
> > +        items:
> >            - enum:
> >                - bananapi,bpi-m4 # Banana Pi BPI-M4
> >                - realtek,lion-skin # Realtek Lion Skin EVB
> >            - const: realtek,rtd1395
> >  
> > -      # RTD1619 SoC based boards
> > -      - items:
> > +      - description: RTD1501s SoC based boards
> > +        items:
> > +          - enum:
> > +              - realtek,phantom # Realtek Phantom EVB (8GB)
> > +          - const: realtek,rtd1501s
> > +
> > +      - description: RTD1619 SoC based boards
> > +        items:
> >            - enum:
> >                - realtek,mjolnir # Realtek Mjolnir EVB
> >            - const: realtek,rtd1619
> >  
> > +      - description: RTD1861b SoC based boards
> > +        items:
> > +          - enum:
> > +              - realtek,krypton # Realtek Krypton EVB (8GB)
> > +          - const: realtek,rtd1861b
> > +
> > +      - description: RTD1920s SoC based boards
> > +        items:
> > +          - enum:
> > +              - realtek,smallville # Realtek Smallville EVB (4GB)
> > +          - const: realtek,rtd1920s
> > +
> >  additionalProperties: true
> >  
> >  ...
> > --
> > 2.34.1
> > 


