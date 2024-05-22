Return-Path: <devicetree+bounces-68302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D8A8CBC1A
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 09:33:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5F3E1F2189C
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 07:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A02933993;
	Wed, 22 May 2024 07:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="FG7iqI6d"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4042819470;
	Wed, 22 May 2024 07:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716363188; cv=none; b=RRP0AlbTqRjU8kl9DCpmYcL5eGyNLSczo9BAciLSGZ2oYwtWmTyUVLURqUyn/7hu6fMg/yiwmtedwblqhXet5xlDxKLXoQvnPMvn5wiZ5/UgBtBvA5UOkZGrFytO/DAU6zls1TkUQmlDMTsj0maz8zHOi20qavhh6bmCi/9mDjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716363188; c=relaxed/simple;
	bh=/CP+fbgEX5XFpkxvApNtr2U9BrvlM+4DperW6OziTxQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WfkTSYvyN8BZHbhhQ1z4oKk7OywSlbGF25PFA5+u3cQk/VI22fWaI0XkrIG+e2WX2RCsCleQ339QbZ+k0WA0DWlgdmtiUVPNdQ7WNWM+GwnJwMR3uHC5kqXX+3zLyyHGF5a03M9t4Eo1Oz/ZdNF1adVHgY+s7N4ZyRwPShGMtUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=FG7iqI6d; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 05152581;
	Wed, 22 May 2024 09:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1716363171;
	bh=/CP+fbgEX5XFpkxvApNtr2U9BrvlM+4DperW6OziTxQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FG7iqI6d6LiRahUeHDB38CN5sHl/Q3UAaiplBz/Pit6ghjpZHChzof2jV2Rh/Jf7v
	 FENvCM2RsExg7/C1GxV5pxbvo+wJKsLPOtoGdMPXkdk+/3IUH0axyxIvZRG1bs8HMJ
	 KY92D21Kq9loYMC8EazNLkHHhchWDzEmMZN71Y54=
Date: Wed, 22 May 2024 10:32:53 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: Alex Bee <knaerzche@gmail.com>,
	"andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"rfoss@kernel.org" <rfoss@kernel.org>,
	"jonas@kwiboo.se" <jonas@kwiboo.se>,
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"mripard@kernel.org" <mripard@kernel.org>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"hjc@rock-chips.com" <hjc@rock-chips.com>,
	"heiko@sntech.de" <heiko@sntech.de>,
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>,
	Xingyu Wu <xingyu.wu@starfivetech.com>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	Jack Zhu <jack.zhu@starfivetech.com>,
	Shengyang Chen <shengyang.chen@starfivetech.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 02/10] drm/bridge: add common api for inno hdmi
Message-ID: <20240522073253.GF8863@pendragon.ideasonboard.com>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-3-keith.zhao@starfivetech.com>
 <58ddfc8f-1995-4f41-9d63-35a00c6f92b9@gmail.com>
 <20240521154206.GA1935@pendragon.ideasonboard.com>
 <NTZPR01MB1050CA92FFE17AE1C9E38BF8EEEB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <NTZPR01MB1050CA92FFE17AE1C9E38BF8EEEB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>

Hi Keith,

On Wed, May 22, 2024 at 05:58:00AM +0000, Keith Zhao wrote:
> Hi Alex, Laurent:
> 
> I want to make as few changes as possible on the current basis, and add bridge_fun, 
> 
> On 2024年5月21日 23:42, Laurent Pinchart wrote:
> > On Tue, May 21, 2024 at 05:36:43PM +0200, Alex Bee wrote:
> > > Hi Keith,
> > >
> > > thanks a lot for working on this. See some general remarks below
> > >
> > > Am 21.05.24 um 12:58 schrieb keith:
> > > > Add INNO common api so that it can be used by vendor drivers which
> > > > implement vendor specific extensions to Innosilicon HDMI.
> > > >
> > > > Signed-off-by: keith <keith.zhao@starfivetech.com>
> > > > ---
> > > >   MAINTAINERS                                   |   2 +
> > > >   drivers/gpu/drm/bridge/Kconfig                |   2 +
> > > >   drivers/gpu/drm/bridge/Makefile               |   1 +
> > > >   drivers/gpu/drm/bridge/innosilicon/Kconfig    |   6 +
> > > >   drivers/gpu/drm/bridge/innosilicon/Makefile   |   2 +
> > > >   .../gpu/drm/bridge/innosilicon/inno-hdmi.c    | 587 ++++++++++++++++++
> > > >   .../gpu/drm/bridge/innosilicon/inno-hdmi.h    |  97 +++
> > > >   include/drm/bridge/inno_hdmi.h                |  69 ++
> > > >   8 files changed, 766 insertions(+)
> > > >   create mode 100644 drivers/gpu/drm/bridge/innosilicon/Kconfig
> > > >   create mode 100644 drivers/gpu/drm/bridge/innosilicon/Makefile
> > > >   create mode 100644 drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c
> > > >   create mode 100644 drivers/gpu/drm/bridge/innosilicon/inno-hdmi.h
> > > >   create mode 100644 include/drm/bridge/inno_hdmi.h
> > > >
> > > ....
> > >
> > > > +	drm_encoder_helper_add(encoder, pdata->helper_private);
> > > > +
> > > > +	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
> > > > +
> > > > +	drm_connector_helper_add(&hdmi->connector,
> > > > +				 &inno_hdmi_connector_helper_funcs);
> > > > +
> > > > +	drmm_connector_init(drm, &hdmi->connector,
> > > > +			    &inno_hdmi_connector_funcs,
> > > > +			    DRM_MODE_CONNECTOR_HDMIA,
> > > > +			    hdmi->ddc);
> > > > +
> > >
> > > I really don't want to anticipate bridge maintainer's feedback, but
> > > new bridge drivers must not contain connector creation. That must
> > > happen somewhere else.
> > 
> > You're absolutely right :-) Connector creation should be handled by the
> > drm_bridge_connector helper. The HDMI bridge driver should focus on the
> > HDMI bridge itself.
> 
> static int inno_bridge_attach(struct drm_bridge *bridge,
> 				 enum drm_bridge_attach_flags flags)
> {
> 	struct inno_hdmi *hdmi = bridge_to_inno(bridge);
> 
> 	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) {
> 		DRM_ERROR("Fix bridge driver to make connector optional!");
> 		return -EINVAL;
> 	}

This kind of code was added to existing bridge drivers when we
transitioned to the new model where bridges don't create the connectors,
because we couldn't fix all the existing bridges in one go. New bridges
must do the opposite. See imx8qxp-pixel-link.c for instance, it has this
code instead in its attach function:

	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)) {
		DRM_DEV_ERROR(pl->dev,
			      "do not support creating a drm_connector\n");
		return -EINVAL;
	}

(I would personally drop the DRM_DEV_ERROR message)

> 	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
> 
> 	drm_connector_helper_add(&hdmi->connector,
> 				 &inno_hdmi_connector_helper_funcs);
> 
> 	drmm_connector_init(drm, &hdmi->connector,
> 			    &inno_hdmi_connector_funcs,
> 			    DRM_MODE_CONNECTOR_HDMIA,
> 			    hdmi->ddc);
> 
> 	drm_connector_attach_encoder(&hdmi->connector, encoder);
> }
> 
> static const struct drm_bridge_funcs inno_bridge_attach = {
> 	.attach = inno_bridge_attach,
> };
> 
> Connector creation is handled by the drm_bridge_funcs ->attach.
> Is it ok?

No, the connector should be created by the display controller driver by
calling drm_brige_connector_init(). It should not be created by the
bridge driver. The bridge driver should provide the bridge functions
(drm_bridge_funcs), but not create any connector.

> > > Also I'm neither seeing any drm_brige struct nor drm_bridge_funcs,
> > > which are both essential for a bridge driver. I don't think moving a
> > > part of a driver to .../drm/bridge/ makes it a bridge driver.
> > >
> > > > +	drm_connector_attach_encoder(&hdmi->connector, encoder);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > ....
> > >

-- 
Regards,

Laurent Pinchart

