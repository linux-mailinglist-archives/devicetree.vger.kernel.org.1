Return-Path: <devicetree+bounces-45864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD5586723E
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A110B2C0ED
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2770A2033F;
	Mon, 26 Feb 2024 10:23:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679C9182BB
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 10:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708943017; cv=none; b=e+NpHdbUThtwClPGastawGY5Q8pgyBd7k6NkrQpZZrINR78aEDCc1Vzos35PGknyIxkHz04xr86ruJZ+trdFWExX3FaulRRTu5QupNVUQVtuJzGbLMpX7MnDHmEoWN1mqnvs/CdxjrQMjLefFJs+NKhd0JhzbmQq79XJ40uw3qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708943017; c=relaxed/simple;
	bh=5TxV8P5k24Y++vbvcEa5i/SWuX6VoSImxDfEaoNmGm4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rhWkuqBJIdFlxdb/73IBOwnhZxUmub1FlgI/eWsefsTDQEJB4QDxkYyLAqmAQ4LwAXwZdFl5An2w6S1EhQggw79on6hoAbjLSOQm6b6gEcZHgDGFJ6CwGiL3gCN9sXSXnhEH2gtGHu6XXWvgnjZ6MaMR6eBTa9UQLNyKMk0Afa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1reY8p-0006aF-Un; Mon, 26 Feb 2024 11:23:23 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1reY8p-002yO2-EZ; Mon, 26 Feb 2024 11:23:23 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1reY8p-0092X7-19;
	Mon, 26 Feb 2024 11:23:23 +0100
Date: Mon, 26 Feb 2024 11:23:23 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: puranjay12@gmail.com, jic23@kernel.org, lars@metafoo.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: iio: ti,tmp117: add optional label binding
Message-ID: <20240226102323.6awrkxrdfq7j3ymj@pengutronix.de>
References: <20240223162042.2658620-1-m.felsch@pengutronix.de>
 <e6bb70fc-81ed-4775-8d3e-4bf177c6f22f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6bb70fc-81ed-4775-8d3e-4bf177c6f22f@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-26, Krzysztof Kozlowski wrote:
> On 23/02/2024 17:20, Marco Felsch wrote:
> > Add the support to provide an optional label like we do for ADC
> > channels to identify the device more easily.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > Hi,
> > 
> > patchset [1] should be applied first to avoid merge conflicts.
> > 
> > [1] https://lore.kernel.org/all/20240219131114.134607-1-m.felsch@pengutronix.de/#t
> > 
> > Regards,
> >   Marco
> > 
> >  .../devicetree/bindings/iio/temperature/ti,tmp117.yaml        | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> > index 33f2e9c5bd81..f00c1cb89acd 100644
> > --- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> > +++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
> > @@ -27,6 +27,10 @@ properties:
> >    vcc-supply:
> >      description: provide VCC power to the sensor.
> >  
> > +  label:
> > +    $ref: /schemas/types.yaml#/definitions/string
> 
> Drop ref. Did you take it from any existing binding?

I used Documentation/devicetree/bindings/iio/adc/adc.yaml as reference.

Regards,
  Marco

> 
> Best regards,
> Krzysztof
> 
> 
> 

