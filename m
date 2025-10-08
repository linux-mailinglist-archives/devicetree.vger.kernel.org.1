Return-Path: <devicetree+bounces-224434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A677BBC3CFD
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:21:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83EA73B1A61
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E00B2EC087;
	Wed,  8 Oct 2025 08:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="jAfJD4JJ"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF572EBBAD
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759911649; cv=none; b=E0eZ4hErnzSrxgJiMxirt+unFn0uy0TrbOPhIteWSAuITipJln915DQm8/hlnNNBe88GoksQPxBSe8+hbrc0TMo/HFP6lpbapZ2kNyDGWK1a+BrtOc6EGLcmXHJoS+NFVammvENDQretaUmqR23BwR+NB6yBAB4K1suNoQgR2Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759911649; c=relaxed/simple;
	bh=tsaypD/DbPUWMTuZH0R026MpaDXXQ9sm7bRAfALfNJg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lJdgshCE5m3cZm6AzR45kJSB4yqE7HruRIVzub9si1HjeBceMh4mzTDuYdRMWwHca8C74Y/xr5VUWIYyyavSMtqIpLzdj4ziJfabcSTaF3uONXMv11KGeFs1xbCEhVospxODrXom+QLqko2v/YyeflBDARIofWLBAiMNSKsTTag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=jAfJD4JJ; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-166-19.bb.dnainternet.fi [82.203.166.19])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id ECADF191B;
	Wed,  8 Oct 2025 10:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759911212;
	bh=tsaypD/DbPUWMTuZH0R026MpaDXXQ9sm7bRAfALfNJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jAfJD4JJX4a9In7LufZltWn8J6npzIvGlDXb8HmftJmNA76CuiIxrgz/njxp20d8K
	 GNr2kd4pjRvwTA/siGW+bAV5KVcHpZKiTYDg7SfoG/iSj3uAws7iQp1vlhdlysevgg
	 e2WMrb9xIBgf3L3Z6hSJW0ivjPCz6Nz17WipET/Q=
Date: Wed, 8 Oct 2025 11:14:59 +0300
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
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rk3588-dw-hdmi-qp: Add
 tmds-enable-gpios property
Message-ID: <20251008081459.GF16422@pendragon.ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
 <c5kwmvu3j72evbgdmjn6qn5nqx7ywbiwpzhnpeh6hjjhbz5vwo@jpe3onblwhmy>
 <20251006162518.GJ5944@pendragon.ideasonboard.com>
 <d423560e-dcd4-45d8-a1e4-5a8b2a21ef86@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d423560e-dcd4-45d8-a1e4-5a8b2a21ef86@collabora.com>

On Mon, Oct 06, 2025 at 07:42:56PM +0300, Cristian Ciocaltea wrote:
> On 10/6/25 7:25 PM, Laurent Pinchart wrote:
> > On Mon, Oct 06, 2025 at 02:19:24PM +0300, Dmitry Baryshkov wrote:
> >> On Mon, Oct 06, 2025 at 02:55:37AM +0300, Laurent Pinchart wrote:
> >>> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >>>
> >>> Add an optional property to RK3588 HDMI TX Controller binding describing
> >>> a GPIO line to be asserted when operating in HDMI 1.4/2.0 TMDS mode and
> >>> deasserted for HDMI 2.1 FRL.
> >>>
> >>> This is used to control an external level shifter for HDMI data lines.
> >>>
> >>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>> ---
> >>>  .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 10 ++++++++++
> >>>  1 file changed, 10 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> >>> index 96b4b088eebe..eec0d40c91ea 100644
> >>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> >>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> >>> @@ -113,6 +113,13 @@ properties:
> >>>      description:
> >>>        Additional HDMI QP related data is accessed through VO GRF regs.
> >>>  
> >>> +  tmds-enable-gpios:
> >>> +    description:
> >>> +      Optional GPIO line to be asserted when operating in HDMI 1.4/2.0
> >>> +      TMDS mode and deasserted for HDMI 2.1 FRL. It can be used to control
> >>> +      an external level shifter for HDMI data lines.
> >>> +    maxItems: 1
> >>
> >> Just my 2c: since TMDS is assumed to be a default mode, shouldn't this
> >> be a frl-enable-gpios instead?
> > 
> > I don't mind either way. Cristian, any opinion ?
> 
> No strong opinion either; we could go for Dmitry's suggestion.

OK, I'll flip it.

> >>> +
> >>>  required:
> >>>    - compatible
> >>>    - reg

-- 
Regards,

Laurent Pinchart

