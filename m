Return-Path: <devicetree+bounces-93643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC26951C0D
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 15:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9387285411
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 13:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9085A1B1512;
	Wed, 14 Aug 2024 13:41:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE77F1B14F6
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 13:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723642881; cv=none; b=UwgRp4sGw7WJzURc/gc6camtkL80Oseq1jGsWuA0q8pnT0ArWLdzw4f9M2LkeQA1HCkTqNmm2vZdIjySAN4vZcQqBdCiREMC8eFNBRdlt7oz+N0YOS9FwayRKkhTtMU+DtNcFPcNoFZR1pTLOauw+H89lmS5zgIRxPS8KE6bgOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723642881; c=relaxed/simple;
	bh=zOjk6hGGDth6yc75Nnd1oYyWL8+rID/sW43+5mDPxXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hMMbc2jsVqaqm28eftF1baduaTeE2Mbm8SN8GppIm20lBxaai9YH90Z//cvo/kYWN8JCXbfvB5AeCCM0R6uRVMTytmT/HJOVitRVGY+CoMIEyCIv7kqPD6GKVdIBtlz2dMP71lLrA92iESWsghJYGl+ALnk4bOdxVFVyMAp4FpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1seEFL-00064z-Vs; Wed, 14 Aug 2024 15:41:04 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1seEFL-000N7l-8p; Wed, 14 Aug 2024 15:41:03 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1seEFL-002ZXT-0V;
	Wed, 14 Aug 2024 15:41:03 +0200
Date: Wed, 14 Aug 2024 15:41:03 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Kaehlcke <mka@chromium.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, kernel@pengutronix.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: usb: microchip,usb2514: add support for
 port vbus-supply
Message-ID: <20240814134103.esnt6niyu36adtgp@pengutronix.de>
References: <20240807-b4-v6-10-topic-usb-onboard-dev-v1-0-f33ce21353c9@pengutronix.de>
 <20240807-b4-v6-10-topic-usb-onboard-dev-v1-2-f33ce21353c9@pengutronix.de>
 <20240813185752.GA1423091-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813185752.GA1423091-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Rob,

On 24-08-13, Rob Herring wrote:
> On Wed, Aug 07, 2024 at 04:36:52PM +0200, Marco Felsch wrote:
> > Some PCB designs don't connect the USB hub port power control GPIO and
> > instead make use of an host controllable regulator. Add support for this
> > use-case by introducing an portX-vbus-supply property.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/usb/microchip,usb2514.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml b/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
> > index 783c27591e56..51d02c4b8f2d 100644
> > --- a/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
> > +++ b/Documentation/devicetree/bindings/usb/microchip,usb2514.yaml
> > @@ -35,6 +35,13 @@ required:
> >    - compatible
> >    - reg
> >  
> > +patternProperties:
> > +  "^port[1-7]-vbus-supply$"
> > +    type: object
> > +    description:
> > +      Regulator controlling the USB VBUS on portX. Only required if the host
> > +      controls the portX VBUS.
> 
> This is completely external to the Microchip part, right?
> 
> I think each port node should have a 'vbus-supply' property instead.

This was my first approach but the problem is that we currently don't
support such use-case:

	parent-node {
		/* Parent controlling the supply of the child node */

		child-node {
			vbus-supply = <&reg>;
		};
	};

at least I didn't found such use-case. I'm happy for pointers if you
know more :) At the moment *-supply properties and device-nodes are
bound together:
	
	parent-node {
		vbus-supply = <&reg>;
	};

Regards,
  Marco

> 
> Rob
> 

