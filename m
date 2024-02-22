Return-Path: <devicetree+bounces-44661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAC785F366
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD8F92825CC
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 581382BD01;
	Thu, 22 Feb 2024 08:47:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E6823754
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708591654; cv=none; b=tlAkEUUEHn7pB5t2deuUN8ylOg2JhUhBDIR51b7EklfTL1NX8bvamv9HipRjw7A0fFO4ojizakjkImDTNvw8EBkT4SR7ApplFF5LUnbx4x9VnWDfcoZKiYWkcQygBTNwDOLuKpA72nd3BsyNhHkBqITBhz9u+vp14pEQZN8CY3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708591654; c=relaxed/simple;
	bh=1O+AV1qRXleQZJEL0gbhPEb6oQ9MCd5osE9XC4AXlro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G9snZyhGXkppD7LcHI8Tr6phIbkERBD1BuygefzUKnZ48Og0t2d515YxaxkzNIMngDlVfXoiKne0PIGxs8qDmbnCp01AdzfAlXqTzrvXqYtV/k/8niOEWklgrZwGxQK9bvi54hMrYLL8ww7kStgINWVlbrWcs+wQdCwca8dU+oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rd4je-0005ah-MD; Thu, 22 Feb 2024 09:47:18 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rd4jd-002CJ3-9R; Thu, 22 Feb 2024 09:47:17 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rd4jd-002j7F-0e;
	Thu, 22 Feb 2024 09:47:17 +0100
Date: Thu, 22 Feb 2024 09:47:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	denis.ciocca@st.com, linus.walleij@linaro.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: iio: st-sensors: Add IIS2MDC magnetometer
Message-ID: <20240222084717.rcckoyjeh4shmcxr@pengutronix.de>
References: <20240221175810.3581399-1-m.felsch@pengutronix.de>
 <20240221-undecided-union-4078db711693@spud>
 <20240221191644.5r3ylr5w3cnfnrzj@pengutronix.de>
 <20240221-imitate-molar-81d93285ac77@spud>
 <20240221194518.3sm4o5i274ldpvzf@pengutronix.de>
 <20240221-lubricant-machine-79054f117eb0@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240221-lubricant-machine-79054f117eb0@spud>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-21, Conor Dooley wrote:
> On Wed, Feb 21, 2024 at 08:45:18PM +0100, Marco Felsch wrote:
> > Hi Conor,
> > 
> > On 24-02-21, Conor Dooley wrote:
> > > On Wed, Feb 21, 2024 at 08:16:44PM +0100, Marco Felsch wrote:
> > > > On 24-02-21, Conor Dooley wrote:
> > > > > On Wed, Feb 21, 2024 at 06:58:10PM +0100, Marco Felsch wrote:
> > > > > > Add the iis2mdc magnetometer support which is equivalent to the lis2mdl.
> > > > > > 
> > > > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/iio/st,st-sensors.yaml | 1 +
> > > > > >  1 file changed, 1 insertion(+)
> > > > > > 
> > > > > > diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> > > > > > index fff7e3d83a02..ee593c8bbb65 100644
> > > > > > --- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> > > > > > @@ -64,6 +64,7 @@ properties:
> > > > > >            - st,lsm9ds0-gyro
> > > > > >        - description: STMicroelectronics Magnetometers
> > > > > >          enum:
> > > > > > +          - st,iis2mdc
> > > > > 
> > > > > Without a fallback compatible to the equivilent device, how does a
> > > > > driver bind to this device?
> > > > 
> > > > I skimed the datasheets and the driver already handles this binding
> > > > exactly the same as the st,lis2mdl, so my assumption is they do match.
> > > > 
> > > > Why do I you think we need a fallback compatible here?
> > > 
> > > I didn't look at the driver, there was no mention of the driver already
> > > having (undocumented) support for it. Since there was no driver change
> > > alongside this patch, I thought you'd need a fallback compatible to
> > > allow the driver to match against a compatible it recognises.
> > 
> > I explicitly did not mention the driver in the commit message else I
> > would have got a response like "dt-bindings have no dependency to
> > drivers" ;)
> 
> Putting it under the --- line is always an option. Where there are
> existing users but the compatible is just undocumented, this it's
> helpful to do.
> 
> > > Besides, having fallback compatibles is the norm when one device has the
> > > same programming model as another.
> > 
> > Not for this binding according the driver.
> 
> If they don't have the same programming model, then describing them as
> "equivalent" wouldn't be correct. That said, they seem to use the same
> sensor settings when alls said and done (see st_magn_sensors_settings),
> so I think they are actually compatible even if the driver has separate
> match data for each.

I told you that I have checked the driver and skimed the datasheets and
came to the exact same conclusion.

Regards,
  Marco


> 
> Cheers,
> Conor.



