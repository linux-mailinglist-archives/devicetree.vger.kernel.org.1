Return-Path: <devicetree+bounces-25812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E168814A66
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 15:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E55E1F21503
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 14:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 068BE315B2;
	Fri, 15 Dec 2023 14:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="G5u3tAZH"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFD131A6E
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 14:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 12CAEE62;
	Fri, 15 Dec 2023 15:22:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1702650134;
	bh=255u05I1bEyydD3pSYfpx7p8nZln2eziMOesnwSM610=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G5u3tAZHWXJxNqL6UyLKpIwfqBlR1YSTlpKm9R3o9LKyYnCdqnuPbVNlDHkugxNdM
	 wF+hcu6kmDdOMpooaDH5HPpBILcWXm3QBuu0urjEv/cmSBGWfbhwytEOw6TShXVWC3
	 4GcKBLRciKjUWoDW9vI4XiA56r8adkjyfl2uKotI=
Date: Fri, 15 Dec 2023 16:23:08 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: Adam Ford <aford173@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>,
	Sandor Yu <sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
	NXP Linux Team <linux-imx@nxp.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
Message-ID: <20231215142308.GL21146@pendragon.ideasonboard.com>
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
 <20230920171009.3193296-2-l.stach@pengutronix.de>
 <20230920205736.GB7723@pendragon.ideasonboard.com>
 <CAHCN7xJz=rEH_8wHaBCVOUzP0kO6cM_c=zLf6ocjW8bt1FaCBw@mail.gmail.com>
 <CAOMZO5C7_Rj-Ja0BO0D0Po+gy+XbvyMdQf-wH5YNyhAdMof2vg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5C7_Rj-Ja0BO0D0Po+gy+XbvyMdQf-wH5YNyhAdMof2vg@mail.gmail.com>

On Fri, Dec 15, 2023 at 10:31:27AM -0300, Fabio Estevam wrote:
> On Sun, Dec 10, 2023 at 2:35 PM Adam Ford wrote:
> 
> > Lucas,
> >
> > It's been a few months since there has been any action.  If you want,
> > I can help apply the suggestions that Laurent has and re-submit with
> > both of our names if you want.  It would be nice to get this
> > integrated.
> 
> It would be nice if you could re-submit the series.

Yes, that would be nice. It shouldn't cause any issue, the patches will
retain Lucas' authorship.

-- 
Regards,

Laurent Pinchart

