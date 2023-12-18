Return-Path: <devicetree+bounces-26386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E056B816458
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 03:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 182391C20DCF
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 02:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A2F23C2;
	Mon, 18 Dec 2023 02:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="oeytA5DB"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5154580B
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 02:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8B949D4A;
	Mon, 18 Dec 2023 03:36:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1702866960;
	bh=YPAckEBh+UtrsRq0bMrNFh1hjjNvHYAydGDRzbdUjYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oeytA5DBvo/zVvbH4ouv3SkLgYbn2QZXrMlQ4dRc/r+8p2cJAiRddvt1YB0KDVx+R
	 ibSpbduGPuGtN5cOdI6Ald3jMje7zDDrXTM5m5fJEpCTHABhFi7QtKWhoZjJWKF83x
	 htkLGRsWoCeknWkcF5CeG7K4tW8gk6iIVMKv5GY4=
Date: Mon, 18 Dec 2023 04:36:55 +0200
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
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
Message-ID: <20231218023655.GG5290@pendragon.ideasonboard.com>
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
 <20230920171009.3193296-2-l.stach@pengutronix.de>
 <20230920205736.GB7723@pendragon.ideasonboard.com>
 <CAHCN7xJz=rEH_8wHaBCVOUzP0kO6cM_c=zLf6ocjW8bt1FaCBw@mail.gmail.com>
 <CAOMZO5C7_Rj-Ja0BO0D0Po+gy+XbvyMdQf-wH5YNyhAdMof2vg@mail.gmail.com>
 <20231215142308.GL21146@pendragon.ideasonboard.com>
 <CAHCN7xJPg_Nk=o9fKwkZfVTNSB-YL0m7vY6p1O7+i=PHShp7hg@mail.gmail.com>
 <CAOMZO5AGAkPpds=5H-iQj53djcQtW5GsRQrzdC_JOOrcENhvvw@mail.gmail.com>
 <CAHCN7xLHMGcS2-QTneqqpHYU66JwuEG4TyR0j0riFGqO6RC8ug@mail.gmail.com>
 <CAOMZO5B2bWVciDEwSh+YQWu6b_Hp5ijk6Jq-bMePPTDRJ-vHFA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5B2bWVciDEwSh+YQWu6b_Hp5ijk6Jq-bMePPTDRJ-vHFA@mail.gmail.com>

On Fri, Dec 15, 2023 at 05:09:41PM -0300, Fabio Estevam wrote:
> On Fri, Dec 15, 2023 at 4:01 PM Adam Ford <aford173@gmail.com> wrote:
> 
> > Thanks for the list.  I was able to successfully build the stable 6.6
> > branch with those patches applied and I have the HDMI working.
> > Unfortunately, I get build errors on the linux-next, so it's going to
> > take me a little time to sort through all of this.
> 
> If you need help to figure this problem out, please let me know.
> 
> I haven't tried it against linux-next.
> 
> > I am thinking that it would be better to consolidate all these
> > together into one series instead of piecemealing it.  However, there
> > are some items that can be submitted right away without significantly
> > reworking them against linux-next.  Do people have a preference?
> 
> I think it makes sense to re-submit the "easy ones" right away.

Agreed. The more we can merge quickly, the easier it will become to
rebase and upstream the rest.

-- 
Regards,

Laurent Pinchart

