Return-Path: <devicetree+bounces-67598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA0D8C8D47
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 22:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 402031C221DA
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 20:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B06901411CB;
	Fri, 17 May 2024 20:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFZPW4VJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871981411C5;
	Fri, 17 May 2024 20:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715977807; cv=none; b=j9d2TFUdG/HnAPCOPfHEq7EVFDJ//UUVjcuKhb6sdkoBhtj3zixuZLhZ5gK6wPu9mdRxTPLPaWL0q8pmp5yR8cGbCn0ykHhWQRzin3W7WOgl/W5BXI/bgknUYE2dbZn7Z2hLKvNR0wybQ9oGIVyCcK5M6P0Z5Az06pFYTqZii2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715977807; c=relaxed/simple;
	bh=pADEbApVXIv0FappvvSpMuC23lIc4IlKvDPrdkdJIb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JgbQC/tFYX1vrUjoOlf1dmEaG6rCnxq10Y1+5sUzy93u2fFo+isHoN58RLi46kYReO73TxapElzPaEvWT4ziwF9ZoEvO/CclSVNVmdz/6NCtQtAm68OVdF64qtHvSaJRLvzyYGHF99BPB7BdSRlQchpcwvwOOD+gQJqPJBiTbJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFZPW4VJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA1D1C2BD10;
	Fri, 17 May 2024 20:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715977807;
	bh=pADEbApVXIv0FappvvSpMuC23lIc4IlKvDPrdkdJIb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oFZPW4VJ53opmg/YsvEmyH0NZre+FNsoZBUM16wU0fJNuxjAABNH/TBGZRneldfju
	 qEpFdyCq2PJyl2u40NSwi23Q0nED63v3c8Zh44txo9vYe8ywbNvqE8H8AqY3oBbGT3
	 iTt8mWXbS8OVV3ltCss+hRbUpRN8YoGKIdcJoM0k6QBaMqmObd3fA9njoByEPxl1R5
	 qcQArEDk6c/E6y129aB/2D3zia2K/YNAijwh9Bp9rx6Cd5/lGiwW45ospYUGFAzuV0
	 XhIfNrUUHzz8NKRIs8/FzY7x0b6OH9+r+UGeETDiJIVDHmLAjwWnrVcckjg9aM3B9z
	 V4/pRYwZSjolQ==
Date: Fri, 17 May 2024 15:30:05 -0500
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Robert Foss <rfoss@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
	kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: display: synopsys,dw-hdmi: Document
 ddc-i2c-bus in core
Message-ID: <20240517203005.GA2893366-robh@kernel.org>
References: <20240515062753.111746-1-marex@denx.de>
 <20240515134705.GA12169@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240515134705.GA12169@pendragon.ideasonboard.com>

On Wed, May 15, 2024 at 04:47:05PM +0300, Laurent Pinchart wrote:
> Hi Marek,
> 
> Thank you for the patch.
> 
> On Wed, May 15, 2024 at 08:27:44AM +0200, Marek Vasut wrote:
> > The DW HDMI driver core is responsible for parsing the 'ddc-i2c-bus' property,
> > move the property description into the DW HDMI common DT schema too, so this
> > property can be used on all devices integrating the DW HDMI core.
> 
> De-duplicating documentation is good :-)

Generally, yes.

> I see no reason why this property should be disallowed on any of the
> platforms that integrate a DW HDMI (unless that platform has no other
> I2C controller, but I think we can ignore that in the bindings).

The main reason is Because this property should be in a connector node 
as the I2C bus is connected to the connector not the HDMI block.

I would suggest this gets marked 'deprecated'. Can be a separate patch.

Rob

