Return-Path: <devicetree+bounces-224850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB72BC8594
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:42:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9AFF44F8D28
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E31942D7DDF;
	Thu,  9 Oct 2025 09:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="ivvS3jbj"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC33B25522B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002892; cv=none; b=VYR/ooSi9hyeEnNYd+zjPBfXhWXKHrxgv4/4M05RpAHF2Rrc0/tTHWaQEVc0Ds60q9NKkEe3ZpJtbWUQJQwqWjt1NgnrBipnHDt3akrPMJ1twY+yzYD8RWvA124x18/m29APThAd+C+X41+x0RSyuMUHRh+P8TyZz+s9n59yUVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002892; c=relaxed/simple;
	bh=7Wgx60kvlYCd+pJyhCK3+0qXiXcbtLPDw3Em4UI29oE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BvYlVR5XYhzJeUz0ioAVdKwKBRWnNDhhBx1euEcpWqpbOAquX2iotnLEsUKxx6CEQS22I83Vpzoi63bQtrzJ64PdZ0QLdRARusR35fCTWQYjw4hBL02p7gel+OL5qV44DdtFldmhVwcDTz0LeIF6ZK12moHtIMOyQjhYlQ9P468=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ivvS3jbj; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-166-19.bb.dnainternet.fi [82.203.166.19])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 35D77664;
	Thu,  9 Oct 2025 11:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1760002794;
	bh=7Wgx60kvlYCd+pJyhCK3+0qXiXcbtLPDw3Em4UI29oE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ivvS3jbjz+5tHLuIG3RlitPTpRHn0/Isq4BNLOqvEEZHTOb8Lnq+uNJmEwfsmGhkf
	 NlDbpO17PKiSucmSgLZ6wRz9olM+TNQWg5qIgpEGv+YkMskeFEOe0xtskJRsuXGqZH
	 HqCHt0ydeeG4FgXNlrOx1WHr004RYqNkSc1+0kJI=
Date: Thu, 9 Oct 2025 12:41:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Alexey Charkov <alchark@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v2 2/5] drm/rockchip: dw_hdmi_qp: Improve error handling
 with dev_err_probe()
Message-ID: <20251009094122.GF12674@pendragon.ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-3-laurent.pinchart@ideasonboard.com>
 <gai5hfvu6xbbqpk4mu3i6nejolijeokjy3mkzca5xwzb4xwic7@jmee36svmwnb>
 <8706f168-5598-4f91-9ad0-fdbd04b410b7@collabora.com>
 <20251006162631.GK5944@pendragon.ideasonboard.com>
 <bfb68ced-e6ec-4636-816e-9b8fe8aa10b4@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <bfb68ced-e6ec-4636-816e-9b8fe8aa10b4@collabora.com>

On Thu, Oct 09, 2025 at 10:24:25AM +0300, Cristian Ciocaltea wrote:
> On 10/6/25 7:26 PM, Laurent Pinchart wrote:
> > On Mon, Oct 06, 2025 at 05:37:23PM +0300, Cristian Ciocaltea wrote:
> >> On 10/6/25 3:02 PM, Dmitry Baryshkov wrote:
> >>> On Mon, Oct 06, 2025 at 02:55:38AM +0300, Laurent Pinchart wrote:
> >>>> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >>>>
> >>>> The error handling in dw_hdmi_qp_rockchip_bind() is quite inconsistent,
> >>>> i.e. in some cases the error code is not included in the message, while
> >>>> in some other cases there is no check for -EPROBE_DEFER.
> >>>>
> >>>> Since this is part of the probe path, address the aforementioned issues
> >>>> by switching to dev_err_probe(), which also reduces the code a bit.
> >>>>
> >>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>> ---
> >>>>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 62 +++++++------------
> >>>>  1 file changed, 24 insertions(+), 38 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> >>>> index 7d531b6f4c09..4e7794aa2dde 100644
> >>>> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> >>>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> >>>> @@ -457,10 +457,8 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
> >>>>  		return -ENODEV;
> >>>>  
> >>>>  	if (!cfg->ctrl_ops || !cfg->ctrl_ops->io_init ||
> >>>> -	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback) {
> >>>> -		dev_err(dev, "Missing platform ctrl ops\n");
> >>>> -		return -ENODEV;
> >>>> -	}
> >>>> +	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback)
> >>>> +		return dev_err_probe(dev, -ENODEV, "Missing platform ctrl ops\n");
> >>>
> >>> This only makes sense for the purpose of unification.
> >>
> >> Right, as mentioned in the commit description, the intention was to ensure
> >> consistent error handling across the probe path rather than limiting the scope
> >> to -EPROBE_DEFER exclusively.
> > 
> > Should I revert this change in v3 or keep it ? I see value in
> > unification, but I don't mind either way. Dmitry, what's your preference
> > ?
> 
> I missed to point out this patch has been also sent a while ago as part of
> another series [1] which should be ready for merging.  It'd be great if there's
> no need to revert any changes, otherwise we need to keep those in sync.
> 
> Regardless, I'll let you know if that gets applied first, allowing us to drop
> this one after rebasing.

Thanks for the information. I'm happy to merge 3/5 on top of that
series. The DT binding change in 1/5 can be merged separately.

> [1] https://lore.kernel.org/all/20250903-rk3588-hdmi-cec-v4-3-fa25163c4b08@collabora.com/

-- 
Regards,

Laurent Pinchart

