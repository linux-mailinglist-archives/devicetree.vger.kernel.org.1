Return-Path: <devicetree+bounces-72841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FC38FD266
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40FE51F28E27
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F94A6CDA1;
	Wed,  5 Jun 2024 16:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPrxDYnr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3AF19D885
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717603415; cv=none; b=PpfwpQ1m1n4AfbXnwajugCiXNMz9E0/s58BKIbNRgnwCUQRWNwcWiMcV5hlXvBRJ5E1yGGnXUSdMnBU2cmsJxl5bHDSecQRDAc2B9YDZcXkR3W/+TI9hP1Z7hHdKyRcVYaKYlyT/UW3IsBJRKYjydo4WfhKc6NP+ufwqvKq/w7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717603415; c=relaxed/simple;
	bh=p5xoxXEmNvPPLt6YV1rvuZtTOD99XueXa+W4v1sd5zA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bM5oouinkHl7lBm9P4XfeqQOfiIGIAGU96K2eJt5lck/UxSJSOL81mzbf+kB1Mh7Lc+XIS373iVIgQ+86uPXzwc4wzOTLwvXRvVT6Sa66TjSRxpnMtxIb2G/4vSUwi8Qc6mnc1/5g7Le9LonT5wgtIjDcTDhM/TYLcVzoXJf8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPrxDYnr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53F05C2BD11;
	Wed,  5 Jun 2024 16:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717603414;
	bh=p5xoxXEmNvPPLt6YV1rvuZtTOD99XueXa+W4v1sd5zA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BPrxDYnrYPlk2tScYv1rpYxhbkHx+Y+kMDxYlttZ68K5Qga+nyPdjt0Ldf6LGzG03
	 H7rcx2l3T+Zu4DTuc67VIpsn5EprgknxKvc44wVH+B1b6Fq4JAONHm8Gu0G5wjU8rF
	 DlruPhuiOTEpZizdGuJ2jUnnCkui/qKYpCYebYK8ML8YrbxR/kKvRqK6hU2kt6QXRz
	 3b8mfp+yUKChvYsctBzCc8JSpcHn0LP394zCyAB9v32Ek0d+mQyAfA5ZaNyw8X44uq
	 SkbKl8k0rN0d997zgVxgE6o0pxNGf5xudCPp8JKHrPs6mETc04aKSEBZ9GWMv6VZQO
	 aRCfhGQogB/Ig==
Date: Wed, 5 Jun 2024 10:03:31 -0600
From: Rob Herring <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
Message-ID: <20240605160331.GA3222592-robh@kernel.org>
References: <20240531204339.277848-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531204339.277848-1-marex@denx.de>

On Fri, May 31, 2024 at 10:42:03PM +0200, Marek Vasut wrote:
> Document default DP port preemphasis configurable via new DT property
> "toshiba,pre-emphasis". This is useful in case the DP link properties
> are known and starting link training from preemphasis setting of 0 dB
> is not useful. The preemphasis can be set separately for both DP lanes
> in range 0=0dB, 1=3.5dB, 2=6dB .
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: kernel@dh-electronics.com
> ---
>  .../display/bridge/toshiba,tc358767.yaml       | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> index 2ad0cd6dd49e0..dcf56e996ee22 100644
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> @@ -98,6 +98,24 @@ properties:
>              reference to a valid eDP panel input endpoint node. This port is
>              optional, treated as DP panel if not defined
>  
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              toshiba,pre-emphasis:

You didn't test adding this property. You will find it isn't allowed. 
That's because 'properties/port' schema above doesn't allow extra 
properties (on the port and endpoint).

> +                description:
> +                  Display port output Pre-Emphasis settings for both ports.

Both ports? This schema is for just port 2.

> +                $ref: /schemas/types.yaml#/definitions/uint32-array
> +                minItems: 2
> +                maxItems: 2
> +                items:
> +                  enum:
> +                    - 0 # -6dB de-emphasis
> +                    - 1 # -3.5dB de-emphasis
> +                    - 2 # No de-emphasis
> +
>      oneOf:
>        - required:
>            - port@0
> -- 
> 2.43.0
> 

