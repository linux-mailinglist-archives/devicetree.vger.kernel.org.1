Return-Path: <devicetree+bounces-223886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 797BDBBEA34
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:25:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 25C7434A777
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FE122DC780;
	Mon,  6 Oct 2025 16:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="pz3OrF77"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1412DC789
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759767928; cv=none; b=gx6tvUY/0aoWdczXLxQTK5+EWqSFdcXsya/t/mwjwximyi1p+HvIqfCqsONaEkmGqwBUdpg43gBVw7WtIYbJ4tXQKTJoU7+pxdiYBh+qWy//p5dUuiN341XXuRGxzJaJek3UhOIztYbCuYRRkmyhSlsLe3fjUaZDeEL2kJbcn9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759767928; c=relaxed/simple;
	bh=t96uReInL8jGo3Qf+o1CqcdutAZiZPvLUIz8oEspw+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eBMGVGnboOKIlnIRw6wlEhavrlMFNzHXYhhB/9Ia7lggDywMAtS/cJiXWP9v8N4h99KvKyQDMH8BV224hVDo1+ugilNzlBjJ60lsmhSgvcepI3V7Qhsqvb6OCjQ2qOAUppbj9a3ucchPDO6oZqLTGusmIT7Vkm6L9Ybjd1vL3Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=pz3OrF77; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D3D1FB0B;
	Mon,  6 Oct 2025 18:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759767833;
	bh=t96uReInL8jGo3Qf+o1CqcdutAZiZPvLUIz8oEspw+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pz3OrF77gW3c1hVlJxiEGrX3qW1NwAm1e/KKNUZkcI0cwuC4WaFkUJ+W6d29CselO
	 CMFni65/6k+eTAXCg08FqkbzNhBYSluunBjHTl5hCVW8YWmnWhxnT4DHRbhzyQ4WPA
	 It+n/FyPIP4KHasiFIhHTUkDL/U87iZkeBVZ5X4k=
Date: Mon, 6 Oct 2025 19:25:18 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Alexey Charkov <alchark@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rk3588-dw-hdmi-qp: Add
 tmds-enable-gpios property
Message-ID: <20251006162518.GJ5944@pendragon.ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
 <c5kwmvu3j72evbgdmjn6qn5nqx7ywbiwpzhnpeh6hjjhbz5vwo@jpe3onblwhmy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c5kwmvu3j72evbgdmjn6qn5nqx7ywbiwpzhnpeh6hjjhbz5vwo@jpe3onblwhmy>

On Mon, Oct 06, 2025 at 02:19:24PM +0300, Dmitry Baryshkov wrote:
> On Mon, Oct 06, 2025 at 02:55:37AM +0300, Laurent Pinchart wrote:
> > From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > 
> > Add an optional property to RK3588 HDMI TX Controller binding describing
> > a GPIO line to be asserted when operating in HDMI 1.4/2.0 TMDS mode and
> > deasserted for HDMI 2.1 FRL.
> > 
> > This is used to control an external level shifter for HDMI data lines.
> > 
> > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> > index 96b4b088eebe..eec0d40c91ea 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> > +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> > @@ -113,6 +113,13 @@ properties:
> >      description:
> >        Additional HDMI QP related data is accessed through VO GRF regs.
> >  
> > +  tmds-enable-gpios:
> > +    description:
> > +      Optional GPIO line to be asserted when operating in HDMI 1.4/2.0
> > +      TMDS mode and deasserted for HDMI 2.1 FRL. It can be used to control
> > +      an external level shifter for HDMI data lines.
> > +    maxItems: 1
> 
> Just my 2c: since TMDS is assumed to be a default mode, shouldn't this
> be a frl-enable-gpios instead?

I don't mind either way. Cristian, any opinion ?

> > +
> >  required:
> >    - compatible
> >    - reg

-- 
Regards,

Laurent Pinchart

