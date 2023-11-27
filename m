Return-Path: <devicetree+bounces-19257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D342B7FA40F
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:07:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 110921C20986
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BE4231743;
	Mon, 27 Nov 2023 15:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="PFk8u7wC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEA14BB
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:07:05 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 9C0E860465;
	Mon, 27 Nov 2023 15:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701097625;
	bh=lC+3ZMbrmK+ltml+tURt+b+Q8sc1HX1E264KqcTY3bk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PFk8u7wCpiU1UX80rKe5MU5GUOG+CXIATm5Z2vNFmhuFg5y8aKP7s3nvvFu1Xylk8
	 02GfW1D1xuJEl2q0yZJJ3gmSQvtUmvN/DoQJ/B8xfawMH94X1IOuxAQPiAGgZ1KkRF
	 w22ixEM9HRxHR/yZhzFm+t23zNdlrhaImxh5YNcBCRLvg/xmXK10ylWQA7JBZe70hK
	 bmmvO+x/K3GzUpZ8flQRhdy7mZ7bpZcI1qSsxLSG2MWUI11P8aZFmvgCSPQWbGHgjx
	 0JcxzNA3MgYmSWOBEST9R9hCS0lPbGRwRpgT0nBGJKAggLpOT03CFHe+/QMocAf+d4
	 /Nd3oVv4BvuhQ==
Date: Mon, 27 Nov 2023 17:06:13 +0200
From: Tony Lindgren <tony@atomide.com>
To: Michael Walle <mwalle@kernel.org>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
	andrzej.hajda@intel.com, daniel@ffwll.ch,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com, jernej.skrabec@gmail.com,
	jonas@kwiboo.se, maarten.lankhorst@linux.intel.com,
	merlijn@wizzup.org, mripard@kernel.org, neil.armstrong@linaro.org,
	pavel@ucw.cz, philipp@uvos.xyz, rfoss@kernel.org, sam@ravnborg.org,
	simhavcs@gmail.com, sre@kernel.org, tzimmermann@suse.de,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 2/6] drm/bridge: tc358775: Fix getting dsi host data lanes
Message-ID: <20231127150613.GH5166@atomide.com>
References: <20231126163247.10131-2-tony@atomide.com>
 <20231127130941.2154871-1-mwalle@kernel.org>
 <20231127131947.GE5166@atomide.com>
 <48e9584ca904397ac0b0771d7e8b81ba@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <48e9584ca904397ac0b0771d7e8b81ba@kernel.org>

* Michael Walle <mwalle@kernel.org> [231127 14:31]:
> + dt maintainers
> 
> > > I actually have the same fix, but with one additional detail, which
> > > I'm
> > > unsure about though: This looks at the data-lanes property of the
> > > *remote*
> > > endpoint whereas other bridge drivers (see tc358767, ti-sn65dsi83,
> > > lt8912b,
> > > anx7625) look at the local endpoint and I'm not sure what is correct.
> > 
> > Yes I've been wondering about that too. Let's just move it over to the
> > bridge node? We could produce a warning if the dsi host node has the
> > data-lanes property.. No current in kernel users AFAIK.
> 
> I haven't found any in-tree users either. In my patch, I first try the
> remote
> end and then the local end. But thinking more about it I don't think
> this is correct. Maybe we can do it the other way around, first try
> data-lanes of the local endpoint and if not found, then try the remote
> one. That way, we would at least be backwards compatible in the driver.
> And for the dt-bindings, make it mandatory to have a local data-lanes.

OK sounds good to me.

Tony

