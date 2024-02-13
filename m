Return-Path: <devicetree+bounces-41140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE818528A3
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 07:14:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D03871F233E7
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 06:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C405812E48;
	Tue, 13 Feb 2024 06:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="EXsyfvra"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081561427A
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 06:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707804857; cv=none; b=rBZNU6VJTtCCDS7bGwa6qKzKxT8f6GsXmcJejIvcXxEq2sZhkyNtOYfriGK1qdLZUk2MWiLiPtuDLiAU2VammbRmNW/Fc35JAM3zItNhGnxXuHZwTPDDMI3MwDh+wDFesnJwx0Xr57GAEFWHCFK+vpnODiGmM0D+3vvnmArEw7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707804857; c=relaxed/simple;
	bh=R0znUu0GHXFoqcSfi4LlBwu1nXMDxEP+E6wmeGG7Tno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eB/NhrLPf3KJyR2oLoiT7X6GgQ7ItKukaELVtMGexfD2PPfKgI1R7VjtRRL92onjHP1L1LtzxtNnRYCfVp3Ak3uKvt2GYJk/CxWABxUZtlmxDzkah6okqvvwRgOew7goTqMmt/xJUDgu3LKAV9bML7P5x3RVenOGp7mhEXbzEpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=EXsyfvra; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 0FC1B60525;
	Tue, 13 Feb 2024 06:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707804854;
	bh=R0znUu0GHXFoqcSfi4LlBwu1nXMDxEP+E6wmeGG7Tno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EXsyfvraULAU/vDytEyspCQlWiFxwJAbEVsRXUAGq07TgFEip2L6AUoRnJcjLeskz
	 YF/mm3KZJDTHM/j4ruL0wC/YQPs6AhdTqEZuP3uLVZQV4BAkbBi0va18vmAp8905Ri
	 w7GF+otQc+9tcKemjsZwiaYpO80cECGpjrSXvzkTLAgSsu0TuKV5OtN3I7PvvcnBR5
	 PKC8aJRRgJ2/16NaJi0AtLWGrtYm476QWT7mxv3rQ9MHImeiPRXH/XkV8qIxX1x7iJ
	 +wYNvoiTLK4LTYqpk9c3Rp6aV7W64wnDnm9jdP/U+L95Uu9jfDtBqPWUAcuxqOEM2g
	 ksYddTFVhZUEg==
Date: Tue, 13 Feb 2024 08:13:29 +0200
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Michael Walle <mwalle@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 03/10] dt-bindings: display: bridge: tc358775: Add
 support for tc358765
Message-ID: <20240213061329.GH5299@atomide.com>
References: <20240211095144.2589-1-tony@atomide.com>
 <20240211095144.2589-4-tony@atomide.com>
 <adeb3ebb-76ed-4f00-8b46-a1b9c36cfc64@linaro.org>
 <20240212081744.GE5299@atomide.com>
 <d6ecc1aa-419d-4f3c-8ba2-b124e5423293@linaro.org>
 <20240212135108.GA49008-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240212135108.GA49008-robh@kernel.org>

* Rob Herring <robh@kernel.org> [240212 13:51]:
> On Mon, Feb 12, 2024 at 12:30:12PM +0100, Krzysztof Kozlowski wrote:
> > On 12/02/2024 09:17, Tony Lindgren wrote:
> > > usage: yamllint [-h] [-] [-c CONFIG_FILE | -d CONFIG_DATA] [--list-files] [-f {parsable,standard,colored,github,auto}] [-s] [--no-warnings] [-v] [FILE_OR_DIR ...]
> > > yamllint: error: one of the arguments FILE_OR_DIR - is required
> > >   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> > >   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> > > 
> > > After removing the ">2&1" from the Makefile, there's some more info:
> > > 
> > > yamllint: error: one of the arguments FILE_OR_DIR - is required
> > > 
> > > Where DT_SCHEMA_FILES ends up empty. I guess dt_binding_check needs
> > > to be now run with just:
> > > 
> > > $ make dt_binding_check DT_SCHEMA_FILES=toshiba,tc358775.yaml
> > > 
> > 
> > Yes, since June last year. Rob later brought (in July) backwards
> > compatible way, but apparently something changed now in Makefile.
> 
> It broke in 6.8-rc1. I have a fix in my tree which I'll send to Linus 
> this week.

OK good to hear, thanks!

Tony

