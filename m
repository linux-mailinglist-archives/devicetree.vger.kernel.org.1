Return-Path: <devicetree+bounces-48012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5697686FAF7
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 08:37:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15C4EB20A02
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 07:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CEB14000;
	Mon,  4 Mar 2024 07:37:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BC713FF0
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 07:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709537869; cv=none; b=RXttDnvLRCKHZILy06hKeY5bvDKg6dXEbjrwdaMngepoTEwXC/Eosusp9Hs5rk2a/NVcw54i4PRBJtotmB0BR7nFlbhbPW3sADhZx3dcsRuOCNCwHfJqJQQ6H8BPzz6WetB2R/7w5EurAeKxJ8hUyldHIJAlSWkCxUdzkKTWEX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709537869; c=relaxed/simple;
	bh=mI2Yh2L6RE40S0Z0wZeRIP8uxF0BjSGBe5DLHmfWnp8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pi2T8uDLTt9yR82PCtx+MUPWrN6zoxXhHBTs5/7xqAsXruacQeXIRHSCqgaOJufpRDjIpIAEZWWPT5BiBcSAq2VAPwousMRHk0dDp81jlOLG0akaT2u9QwtjufZ52EvbvQ2P8NFQQgPuTGPrGacHptmOz2Tt2A0TIOwHwo2aZfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rh2tE-0001DA-KX; Mon, 04 Mar 2024 08:37:36 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rh2tE-004J3i-7l; Mon, 04 Mar 2024 08:37:36 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rh2tE-001nzd-0U;
	Mon, 04 Mar 2024 08:37:36 +0100
Date: Mon, 4 Mar 2024 08:37:36 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: frowand.list@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH] of: property: lower loglevel of
 of_graph_get_next_endpoint
Message-ID: <20240304073736.om5rptz4pzn6ydmf@pengutronix.de>
References: <20240223104721.4140880-1-m.felsch@pengutronix.de>
 <20240301210326.GA3020204-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240301210326.GA3020204-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-03-01, Rob Herring wrote:
> On Fri, Feb 23, 2024 at 11:47:21AM +0100, Marco Felsch wrote:
> > Drivers like the tcpm.c do search for a remote endpoint on different
> > places to be dt-bindings compatible. The search is done on the device
> > itself or on the child fwnode in case it was not found the first time.
> > 
> > This indicates that not finding the remote endpoint at the first try is
> > a valid use-case and should not cause an error printing.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > Hi,
> > 
> > I'm not 100% certain if this is the correct place but if our platform
> > follows the dt-bindings we receive
> > 
> > | OF: graph: no port node found in /soc@0/bus@30800000/i2c@30a30000/tcpc@50
> > 
> > a few times because of the below pr_err() and EPROBE_DEFER.
> > 
> > Regards,
> >   Marco
> > 
> >  drivers/of/property.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index 641a40cf5cf3..155df04a9512 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -665,7 +665,7 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
> >  		of_node_put(node);
> >  
> >  		if (!port) {
> > -			pr_err("graph: no port node found in %pOF\n", parent);
> > +			pr_notice("graph: no port node found in %pOF\n", parent);
> 
> Already changed to pr_debug.

Ah.. didn't noticed that albeit I was sitting on rc4 while preparing
this patch. Thanks for the info :)

Regards,
  Marco


> 
> Rob
> 

