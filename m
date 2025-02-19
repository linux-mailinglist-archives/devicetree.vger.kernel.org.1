Return-Path: <devicetree+bounces-148419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F241A3BFD7
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:27:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4075818847F0
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDDA1E102A;
	Wed, 19 Feb 2025 13:27:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034B91C8618
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739971625; cv=none; b=hzWN5WkZ6orCnafhHKrIRHeVRigMw0STCPuZnjcMoYr50ZvPp9IeebSwMBXqncKdwmcM7unEdhGrskvH92bvPTaFKEg1bcWGcZVElsOEopsMWW+Btqk3vFOWPjH+wFgDxO+CuCvg8ncKfcI9cATtBLPkyg7zDJaWfDMjtdBY1CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739971625; c=relaxed/simple;
	bh=fmJ5QXeJPJUSguLtVVuCwb23B1PIzp7T7lxo3a7/k7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nDTfPkEpjFPLia3UsA9Gkin3gofvsDJ1V8zv6tDzptgFzRwHyr+iwJVlrbPzBC5yGt2YYNnxhBoUKzc0Bv2DVaicHFQydV5HguCm+a73LkGh34OGrNmDU13xIPSF4+Z9+lR6DatWp0WaWBzF5VtszhuwbV3D+s4Lx6CT62ig2Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkk6L-0003h1-Mj; Wed, 19 Feb 2025 14:26:57 +0100
Message-ID: <37d2a7bb-1c8c-4c33-a277-dc1a7448433b@pengutronix.de>
Date: Wed, 19 Feb 2025 14:26:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/10] dt-bindings: display/lvds-codec: add
 ti,sn65lvds822
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 Frank Li <Frank.li@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Oleksij Rempel
 <o.rempel@pengutronix.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
References: <20250106-skov-dt-updates-v2-0-4504d3f00ecb@pengutronix.de>
 <20250106-skov-dt-updates-v2-5-4504d3f00ecb@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106-skov-dt-updates-v2-5-4504d3f00ecb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Dear DRM bridge maintainers,

On 06.01.25 17:06, Ahmad Fatoum wrote:
> Add compatible strings for TI SN65LVDS822, a FlatLink LVDS receiver.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Shawn has asked that the DT or display maintainers take this one patch
through their tree. He has already applied the remainder of the series.

Can you take a look? DT maintainers already acked it.

Thanks,
Ahmad

> ---
> v1 -> v2:
>   - Add Rob's Acked-by
> 
> To: Andrzej Hajda <andrzej.hajda@intel.com> (maintainer:DRM DRIVERS FOR BRIDGE CHIPS)
> To: Neil Armstrong <neil.armstrong@linaro.org> (maintainer:DRM DRIVERS FOR BRIDGE CHIPS)
> To: Robert Foss <rfoss@kernel.org> (maintainer:DRM DRIVERS FOR BRIDGE CHIPS)
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com> (reviewer:DRM DRIVERS FOR BRIDGE CHIPS,in file)
> Cc: Jonas Karlman <jonas@kwiboo.se> (reviewer:DRM DRIVERS FOR BRIDGE CHIPS)
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com> (reviewer:DRM DRIVERS FOR BRIDGE CHIPS)
> Cc: David Airlie <airlied@gmail.com> (maintainer:DRM DRIVERS)
> Cc: Simona Vetter <simona@ffwll.ch> (maintainer:DRM DRIVERS)
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com> (maintainer:DRM DRIVERS AND MISC GPU PATCHES)
> Cc: Maxime Ripard <mripard@kernel.org> (maintainer:DRM DRIVERS AND MISC GPU PATCHES)
> Cc: Thomas Zimmermann <tzimmermann@suse.de> (maintainer:DRM DRIVERS AND MISC GPU PATCHES)
> Cc: dri-devel@lists.freedesktop.org (open list:DRM DRIVERS)
> ---
>  Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> index 6ceeed76e88ece6d86ecd6588ead7a65362dfe62..0487bbffd7f7c4bcce3f71df19548d601715fb98 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> @@ -41,6 +41,7 @@ properties:
>            - enum:
>                - ti,ds90cf364a # For the DS90CF364A FPD-Link LVDS Receiver
>                - ti,ds90cf384a # For the DS90CF384A FPD-Link LVDS Receiver
> +              - ti,sn65lvds822  # For the SN65LVDS822 FlatLink LVDS Receiver
>                - ti,sn65lvds94 # For the SN65DS94 LVDS serdes
>            - const: lvds-decoder # Generic LVDS decoders compatible fallback
>        - enum:
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

