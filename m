Return-Path: <devicetree+bounces-156908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A78A5DD7B
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 14:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFF713B5122
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 13:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFFA523A9AE;
	Wed, 12 Mar 2025 13:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-watchdog.org header.i=@linux-watchdog.org header.b="QU6bbSSi"
X-Original-To: devicetree@vger.kernel.org
Received: from www.linux-watchdog.org (www.linux-watchdog.org [185.87.125.42])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B241512E7F;
	Wed, 12 Mar 2025 13:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.87.125.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741785086; cv=none; b=CmFCBTvLVk0rHy4LOFvwMEXAEfSHTk2JoRtzsm7TyT1feb3tUWlY6nbWWfx/cX2yDXPkJXDCUbyMS5T1TVyH7Pi2MN0HpWM6xjWGbdMnOPkrIV1VVjYfWv0aSW++pbwddRLEusjRx1BgpMG5kX5dmYU0k6mrsMv/kymlWDSVaUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741785086; c=relaxed/simple;
	bh=EkupLqvzW0cgLU4nH3LB/G7ZcQwzLaS+8sNqJWkTuxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aHSqJkRwL1NMcNqrSbLEz4NhH0gVIKuC/qxVxHWPQaj5D7/ZYvWxJQw1SKzMq/os96CSE7qqnSdXX1IALY6FiLzhZnrQHu3DcDyFUEHwZzzc0ogGwXqKmwATX14FGeWdYb8khetKjf/qq+bf/62AzTZniKXpDfp4kHUSCMPYdsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=linux-watchdog.org; spf=pass smtp.mailfrom=linux-watchdog.org; dkim=pass (1024-bit key) header.d=linux-watchdog.org header.i=@linux-watchdog.org header.b=QU6bbSSi; arc=none smtp.client-ip=185.87.125.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=linux-watchdog.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux-watchdog.org
Received: by www.linux-watchdog.org (Postfix, from userid 500)
	id A8C30409FE; Wed, 12 Mar 2025 13:29:13 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 www.linux-watchdog.org A8C30409FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-watchdog.org;
	s=odk20180602; t=1741782553;
	bh=EkupLqvzW0cgLU4nH3LB/G7ZcQwzLaS+8sNqJWkTuxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QU6bbSSi0kjXT24Fbj+3sY25Ww44u5Hzws/0uCnIDXBWSLl0Z/JiQrbdzEoPpuP0o
	 nBybLEYkz5mqLNvDlrQmG3uuTJNS32i8Re/BdvOMv2NqsL+ELOGkR74aQ7Eh57MUPq
	 xwp0Fdsq4xHHdTaAnZ52mzRdlj1PXoP/OojTIvsU=
Date: Wed, 12 Mar 2025 13:29:13 +0100
From: Wim Van Sebroeck <wim@linux-watchdog.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	"linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	"biju.das.au" <biju.das.au@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: renesas,wdt: Document
 RZ/G3E support
Message-ID: <20250312122913.GA27338@www.linux-watchdog.org>
References: <20250126132633.31956-1-biju.das.jz@bp.renesas.com>
 <20250126132633.31956-2-biju.das.jz@bp.renesas.com>
 <TYCPR01MB1133249AA08160DABC40A31CD86D02@TYCPR01MB11332.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TYCPR01MB1133249AA08160DABC40A31CD86D02@TYCPR01MB11332.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Hi Biju

> Hi Wim Van Sebroeck,
> 
> 
> > -----Original Message-----
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> > Sent: 26 January 2025 13:27
> > Subject: [PATCH v2 1/2] dt-bindings: watchdog: renesas,wdt: Document RZ/G3E support
> > 
> > Document the support for the watchdog IP available on RZ/G3E SoC. The watchdog IP available on RZ/G3E
> > SoC is identical to the one found on RZ/V2H SoC.
> > 
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Reviewed-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > ---
> > v1->v2:
> >  * Collected tags.
> > ---
> >  Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> > b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> > index 29ada89fdcdc..3e0a8747a357 100644
> > --- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> > +++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> > @@ -75,6 +75,10 @@ properties:
> >                - renesas,r8a779h0-wdt     # R-Car V4M
> >            - const: renesas,rcar-gen4-wdt # R-Car Gen4
> > 
> > +      - items:
> > +          - const: renesas,r9a09g047-wdt # RZ/G3E
> > +          - const: renesas,r9a09g057-wdt # RZ/V2H(P)
> > +
> >        - const: renesas,r9a09g057-wdt       # RZ/V2H(P)
> > 
> >    reg:
> 
> Looks like you missed this patch from the series as [1]
> hits in next or you expect it to go through DT tree?
> 
> [1] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250311&id=331c8349605c8fa2f9040c39fe8c40afe3fdc3c3
> 
> Cheers,
> Biju

Added.

Kind regards,
Wim.


