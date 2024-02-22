Return-Path: <devicetree+bounces-44971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D2A86048F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 22:14:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34E461C23872
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 21:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FFA26E5E7;
	Thu, 22 Feb 2024 21:13:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED43873F02
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 21:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708636419; cv=none; b=hYUjO02N/+iantRyrFRkuGHFfmO5Ely+aEL9nVrR3n2Ijnq1T1zfgdbloR0EAxBzLGDWp0SYyjMmYy2rhXAz9L+fIvQst4qjVwGXxf6eQgwzA41n9tOj+I7BNnq2N/LpxblqqjoLJP1S80+bNEZOP57EDyGXs3sk2CWgZ23kYMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708636419; c=relaxed/simple;
	bh=5moig4njCgnDf7igi1Vp9KBukK6uFIF2+DWnHa9UyB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lpSXZuxp3luTigy/4fhjcL3NW1HXvVckZC10MKzA025LPsdhEiW0+PqbfpXzfjjkLfLTelIdqiN6C5cF32pvlmJvxExGJC/8oI50b6+rKQJ0vYQsvrXaGVXECkqhxkSzlHUWdjLBVcc03lMdAhOHt4S4zyKT8lH2Li6limGyiIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rdGNr-0001r8-7F; Thu, 22 Feb 2024 22:13:35 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rdGNq-002Irv-5S; Thu, 22 Feb 2024 22:13:34 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rdGNq-002sSL-0E;
	Thu, 22 Feb 2024 22:13:34 +0100
Date: Thu, 22 Feb 2024 22:13:34 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
	heikki.krogerus@linux.intel.com, kernel@pengutronix.de,
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux@roeck-us.net,
	jun.li@nxp.com
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: typec-tcpci: add tcpci fallback
 binding
Message-ID: <20240222211334.xvgwe33dsj7digrt@pengutronix.de>
References: <20240215212852.1202339-1-m.felsch@pengutronix.de>
 <20240215212852.1202339-2-m.felsch@pengutronix.de>
 <4e464a7a-6a38-461a-b03e-442cc43d1719@linaro.org>
 <20240222202357.2etmuoy6i6qr6bnq@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222202357.2etmuoy6i6qr6bnq@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-22, Marco Felsch wrote:
> On 24-02-22, Krzysztof Kozlowski wrote:
> > On 15/02/2024 22:28, Marco Felsch wrote:
> > > The NXP PTN5110 [1] is an TCPCI [2] compatible chip, so add the fallback
> > > binding.
> > > 
> > > [1] https://www.nxp.com/docs/en/data-sheet/PTN5110.pdf
> > > [2] https://www.usb.org/sites/default/files/documents/usb-port_controller_specification_rev2.0_v1.0_0.pdf
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > > v2:
> > > - rephrase commit message
> > > 
> > >  Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml b/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml
> > > index eaedb4cc6b6c..7bd7bbbac9e0 100644
> > > --- a/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml
> > > +++ b/Documentation/devicetree/bindings/usb/nxp,ptn5110.yaml
> > > @@ -11,7 +11,9 @@ maintainers:
> > >  
> > >  properties:
> > >    compatible:
> > > -    const: nxp,ptn5110
> > > +    enum:
> > > +      - nxp,ptn5110
> > > +      - tcpci
> > 
> > That's not a fallback, but enum. Fallback is "items" and then you could
> 
> Damn, you're right. Sorry.
> 
> > also send a follow-up patchset (separate, so Greg won't take it) fixing
> > DTS (if not, let me know, so I will fix it).
> 
> Sry. but I don't get this. Why do I need to send a follow-up? Greg did
> not apply anything, at least I didn't received an e-mail, that this
> patchset was picked.

Got it now and made it this way.

Regards,
  Marco

