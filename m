Return-Path: <devicetree+bounces-135011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E399FF6EB
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 09:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D175C7A03D4
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 08:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C3B1990D3;
	Thu,  2 Jan 2025 08:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="tZyvflE9"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1251953A1
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 08:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735806641; cv=none; b=EToIvBm+k1Ge6O9krCWdATQ6N/ZSRVNufw9XcyzZcvq4Lj5V10bP3bkV/gkBps2586egppCB3v8UO3wyb0fn+POyspqNDQ5iT+0asA2fBgd1Fo/xycJMwZPOth90GkZs7Og9HFPxVaTqSJkNlOVLvygVLwbiqWq7Iz7WCwpPEts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735806641; c=relaxed/simple;
	bh=tsPS3XAjtH/3cde0vUoy4i3L6/+p1mMnya4QFPd7W3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jMuOuJDRWT8D1XzWcYqok52M7+sPf9NGH018hOYbGh+KY9vDB9qN+zCvdL/gARp3XED7aY3w/N2cnfMowK1tpmu//PNoPc0OvsJ6YXZgZw1EJ33lBlhd+O9s3FmOmKvwD0YtDTwHZWM7klZgSL4a1hJN8JnVgfzuEZB5YyoHaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=tZyvflE9; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F2ED880A;
	Thu,  2 Jan 2025 09:29:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1735806589;
	bh=tsPS3XAjtH/3cde0vUoy4i3L6/+p1mMnya4QFPd7W3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZyvflE9bGalNjH64JCp91O/Nkbh5ppDx9gHPP7SK0PTzo90bCPEwlpD1vGVO7mK8
	 JS4baft8eTdMYwZ4ozBdzqT2qWQ1Hhly6zqfWzM5cQZK/7quRD63iNSCh/i0x2Jh5H
	 iHxHMnc/04Vei0rVMx1AE+FQlU3Kd6cazQZCzHSI=
Date: Thu, 2 Jan 2025 10:30:38 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
	dri-devel@lists.freedesktop.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Robert Foss <rfoss@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>,
	Stefan Agner <stefan@agner.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/4] drm: bridge: dw_hdmi: Add flag to indicate output
 port is optional
Message-ID: <20250102083038.GB14307@pendragon.ideasonboard.com>
References: <20241231192925.97614-1-marex@denx.de>
 <20241231203136.GD31768@pendragon.ideasonboard.com>
 <88778e2b-8c43-46a1-bb79-0d9c968a5233@denx.de>
 <20250101223620.GA7206@pendragon.ideasonboard.com>
 <ac4kkjv2nmziu6pd6vkuxbllhkqaueu32snfetpemtu2l5s6ud@cvystps3734o>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ac4kkjv2nmziu6pd6vkuxbllhkqaueu32snfetpemtu2l5s6ud@cvystps3734o>

On Thu, Jan 02, 2025 at 05:26:50AM +0200, Dmitry Baryshkov wrote:
> On Thu, Jan 02, 2025 at 12:36:20AM +0200, Laurent Pinchart wrote:
> > On Tue, Dec 31, 2024 at 10:10:51PM +0100, Marek Vasut wrote:
> > > On 12/31/24 9:31 PM, Laurent Pinchart wrote:
> > > > Hi Marek,
> > > 
> > > Hi,
> > > 
> > > > Thank you for the patch.
> > > > 
> > > > On Tue, Dec 31, 2024 at 08:28:48PM +0100, Marek Vasut wrote:
> > > >> Add a flag meant purely to work around broken i.MX8MP DTs which enable
> > > >> HDMI but do not contain the HDMI connector node. This flag allows such
> > > >> DTs to work by creating the connector in the HDMI bridge driver. Do not
> > > >> use this flag, do not proliferate this flag, please fix your DTs.
> > > > 
> > > > What's the rationale for this, what prevents fixing DT instead of using
> > > > this flag ? Adding such a flag will most likely open the door to
> > > > proliferation.
> > > 
> > > See the V2 series discussion, there are a few in-tree DTs which do not 
> > > have the HDMI connector node. The rationale is there might be more and 
> > > they might come from vendors, so this flag is necessary to work around 
> > > those DTs.
> > >
> > > > If you can't fix the DT on particular boards, patching it could be an
> > > > option. We had a similar problem on Renesas boards, which we fixed with
> > > > a DT overlay, see commit 81c0e3dd82927064 ("drm: rcar-du: Fix legacy DT
> > > > to create LVDS encoder nodes"). This made the workaround self-contained,
> > > > and allowed dropping it several kernel versions later (in commit
> > > > 841281fe52a769fe, "drm: rcar-du: Drop LVDS device tree backward
> > > > compatibility").
> > >
> > > Frankly, I would much rather fix the few in-tree DTs and mandate the 
> > > HDMI connector node in DT, which would keep the code simple, rather than 
> > > maintain a backward compatibility workaround for problem which might not 
> > > even exist.
> > 
> > The in-tree device tree sources should be converted as part of the
> > series, I don't see a point trying to maintain backward compatibility
> > for in-tree DT sources.
> 
> DT is an ABI. We are supposed to keep backwards compatibility with
> existing device trees (at least for a while). I'm adding DT list and
> maintainers to be able to provide comments on this topic.

Backward compatibility is about supporting old DT binaries with a newer
kernel. There's no need to support old DT bindings in in-kernel DT
sources. By definition, if someone compiles a DT from a newer kernel and
installs it along with the newer kernel, there's no "backward"
direction.

The backward compatibility requirements aim at ensuring no breakage when
upgrading the kernel without upgrading the device tree. As I mentioned,
there is no regression if nobody is affected in the first place. Proving
there is no affected DT in the wild is difficult though.

> > For out-of-tree sources it depends on how likely the problem is. There's
> > no regression if nobody is affected. I personally like restricting
> > backward compatibility to the strict minimum, to ensure that all new DTs
> > will use proper bindings. Making the backward compatibility code
> > self-contained helps there, and we could also print a loud warning
> > (WARN_ON() seems appropriate) and set a date for the removal of the
> > workaround.

-- 
Regards,

Laurent Pinchart

