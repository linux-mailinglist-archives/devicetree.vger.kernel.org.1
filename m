Return-Path: <devicetree+bounces-36985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 855AA84368A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7C3E1C2127D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 06:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0B4C3E47C;
	Wed, 31 Jan 2024 06:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="VJe7n5Aj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6327E3E479
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 06:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706682071; cv=none; b=g71bS9iAuegTL5z/2OdBZj80xrSpfcMRj8r2E7DPkY0K7MnquMES8yVk2R22XG5QsWfieZ7OZaMZ1FsQjlTTMo/9FF33BvXbOr7T8gRxm4ZotSUMPGdZ2wxy36197uHoqGAFG6p737PqvCxaYgGg0lSDivn0zkWrdyW7xUE51gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706682071; c=relaxed/simple;
	bh=1stjmB4mIQIgjXzEdef4k7mYxVV6dJBOLDOpjOEsKgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tFD0j8z8UsFR3o9A0qo7OFv4Pd7evxIzIg7wnpEhP6R7hV2CynSFl1E+Ob+XpuB+Etgxl5SCMUpo3pUitNFNhHzOY8GEmJ8RwN/PCEHUIQtzCscMAlWqMWE3X/MHL0Qw+vJtC2GZo2RvTQylkGA+21UmWyXSTTUtI2+n/Kb5Yrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=VJe7n5Aj; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id DF81F60417;
	Wed, 31 Jan 2024 06:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1706682069;
	bh=1stjmB4mIQIgjXzEdef4k7mYxVV6dJBOLDOpjOEsKgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VJe7n5AjQvvnU9dL4abFmdrz9smQ62eqsrW5YXVrm5+ZeLeK/3atXMfC/DnTorl7p
	 NBUknsdV39KrNygf7h6UadzelEXF98CNMKxeHLW54j7gaMqmM+08grrx9ox6O/XGnJ
	 zdy2VMIp2xwB4zsYurz5LfHmQBy0XyDUckhtdrJyTv1ZhBcGvqxZ7R8dxAmdqBexaB
	 M/u4Sqz7v3AD9v+L21o+4kP6JteJUHNigSa6y62rX7FHYX6Tck79ViLMavIFbR7KY+
	 yHVBEJq7Og8F5nkJq8CRroOswHul6RmyncB1OYoxaUhJ2UIxCIPK2SnLv4r2e1cBuX
	 XKyQ/2mipYhqg==
Date: Wed, 31 Jan 2024 08:20:21 +0200
From: Tony Lindgren <tony@atomide.com>
To: Michael Walle <mwalle@kernel.org>
Cc: dmitry.baryshkov@linaro.org, Laurent.pinchart@ideasonboard.com,
	andrzej.hajda@intel.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com, jernej.skrabec@gmail.com,
	jonas@kwiboo.se, krzysztof.kozlowski+dt@linaro.org,
	merlijn@wizzup.org, mripard@kernel.org, neil.armstrong@linaro.org,
	pavel@ucw.cz, philipp@uvos.xyz, rfoss@kernel.org,
	robh+dt@kernel.org, sam@ravnborg.org, simhavcs@gmail.com,
	sre@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH v2 09/10] drm/bridge: tc358775: Add support for tc358765
Message-ID: <20240131062021.GV31612@atomide.com>
References: <CAA8EJppYoBxYaFnu7UHxCgNiRwcjmVgPXXcQboaeu_dGCosJXg@mail.gmail.com>
 <20231204095213.2573620-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231204095213.2573620-1-mwalle@kernel.org>

* Michael Walle <mwalle@kernel.org> [231204 09:52]:
> >> @@ -643,6 +658,7 @@ static int tc_probe(struct i2c_client *client)
> >>
> >>         tc->dev = dev;
> >>         tc->i2c = client;
> >> +       tc->type = (enum tc3587x5_type)of_device_get_match_data(dev);
> >
> > Would it make sense to use i2c_get_match_data() instead?
> 
> FWIW, I' planning to add a dsi binding for this driver. So I'd
> suggest either the of_ or the device_ variant. Not sure though,
> if the new device supports the DSI commands.

Yeah good point as some hardware may not have i2c wired at all. Let's keep
this as of_device_get_match_data() for now as the driver is currently
completely dependant on devicetree.

I'll update the enumeration to use the hardware id numbering like Dmitry
suggested though.

Regards,

Tony

