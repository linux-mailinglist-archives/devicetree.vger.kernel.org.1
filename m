Return-Path: <devicetree+bounces-68124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8AA8CAE50
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 034F61F23A99
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 12:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D238F76413;
	Tue, 21 May 2024 12:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="tcJsehu8"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B39D46BB33
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 12:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716294615; cv=none; b=d8LO6d68LHmzgEecYlqYeHEAljJ35I7XwGvdzptDCvjNWfjhOrI7NWbCXZvwX/phqYNSaHdkixFzq7SW86Qe425MZMrFN241pF6pXDEZbWIWdZkTuIZ/WBMaVyFhVabHYT6t4v62UYZPD0WYCgoIz5eUcS2ch/6sNPx4eCSt7bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716294615; c=relaxed/simple;
	bh=inFia2SI4gyrSS+NM4R+gTmGK3sXAfInB0c0Z9vRUF4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KM643xSVccLQ61sGTbK6ULIc7WeOVsArVjoYVygtnaTWfnPDNB2iWctbzfiOaigndfyx2uynCvRHt05ckanJjA/qKA+OqP0qWw8dB+xDYOsVemi5neCGJdUtU3VwezQIT/ozLe8CNRkF5ZavEYcezHGGZmA4e/KfTMBNhwvKBPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=tcJsehu8; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C58CA5A4;
	Tue, 21 May 2024 14:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1716294593;
	bh=inFia2SI4gyrSS+NM4R+gTmGK3sXAfInB0c0Z9vRUF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tcJsehu86vNyA8ftNK8aNoX/SW6csZjhvaEfv5aXD57/Wx52uzcC7PEFQyVNVtUCU
	 H5NOfbm8vhWrbWwABpwvX7obbu/iDTWIkuXqfoig38h5WexNC4FFqXrjexS32GyNU9
	 oFmO+4pj/zJ0xAGHB7JdQje3WWMERGt6tJInqYOs=
Date: Tue, 21 May 2024 15:29:55 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Marek Vasut <marex@denx.de>
Cc: devicetree@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Mark Yao <markyao0591@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
	kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: display: synopsys,dw-hdmi: Mark ddc-i2c-bus
 as deprecated
Message-ID: <20240521122955.GH16345@pendragon.ideasonboard.com>
References: <20240521104057.10485-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240521104057.10485-1-marex@denx.de>

Hi Marek,

Thank you for the patch.

On Tue, May 21, 2024 at 12:40:47PM +0200, Marek Vasut wrote:
> The ddc-i2c-bus property should be placed in connector node,
> mark the HDMI TX side property as deprecated.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Mark Yao <markyao0591@gmail.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: imx@lists.linux.dev
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  .../devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
> index 828709a8ded26..d09a0bee54247 100644
> --- a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
> @@ -47,6 +47,7 @@ properties:
>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> +    deprecated: true
>      description:
>        The HDMI DDC bus can be connected to either a system I2C master or the
>        functionally-reduced I2C master contained in the DWC HDMI. When connected

How about adding an additional sentence here to explain what should be
used instead ?

       to a system I2C master this property contains a phandle to that I2C
       master controller.
+
+      This property is deprecated, the system I2C master controller should
+      be referenced through the ddc-i2c-bus property of the HDMI connector
+      node.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

-- 
Regards,

Laurent Pinchart

