Return-Path: <devicetree+bounces-251712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D97AECF5CDE
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 23:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 785B63073F95
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 22:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4FEC2E7165;
	Mon,  5 Jan 2026 22:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnhH+kJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B57A1E885A;
	Mon,  5 Jan 2026 22:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651555; cv=none; b=kyh++06aGz7+T7hCEC00gWWcKPKb29ba/+MZei39lXxiX3GaWWFXhiRf056PKQG5oHkZwyMJI0d9zn3GR35vMRr7J/nOPupbrBZLM6/FxoyOaFiOrCLB7jXCQpBRG0qmSMXfsLiuAEv8fwO7wHYMGzKdWxay1tA8ZSci8iDFK2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651555; c=relaxed/simple;
	bh=+YIFObnfudxN53pOLxub4P/HOWtWYCJJzPjno4dfOeU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tf99awsi1kLF8OB4FPJ11ltqm2FlAuiR5MqBXxw3fWkIJNJLLWL35lDB8g2txo1nU+DXYzSejm8FC35+VdTm+lCLZah1Wia/onW7UNk8K8xLSoDTBkV6zw2EYcUq37kNFomctuv2ddlmfwBvJQsqEkmRvM6z5E/vNX6j9RMtrAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnhH+kJJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01ECDC116D0;
	Mon,  5 Jan 2026 22:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767651555;
	bh=+YIFObnfudxN53pOLxub4P/HOWtWYCJJzPjno4dfOeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QnhH+kJJEmLfLZDzvw3+CDbkcfN8tus/GyX5oBaTOTerCIysqGA0lHBKkpAii57TW
	 DAXuxo3EY8Cnn30rF8ZyyY2IsX/JOmcMYANma/00kdoMtD38ZE4KpeSoe/fnt4QRJ/
	 I4ZCCHLXzQmBK/gBZ11XZoOMp6QMyp/9n7FkgelZ3SZL4FqeoASMpL7yP2tLooJQFO
	 ZUdAv6eMHROABcMV6Zj4pFoalLC+O350HJk0OslptYKuwOMF1odzsHgtiuoeHjhvDW
	 BfqZtpva3RpEFLV8he/wAw7r/MNUfdFYW4EOYXB/lLN9PZl8GAXf3Os0nJ8d2E0HHm
	 ej5E4csTdQPgQ==
Date: Mon, 5 Jan 2026 16:19:14 -0600
From: Rob Herring <robh@kernel.org>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: dri-devel@lists.freedesktop.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: bridge: ldb: Add check for reg and
 reg-names
Message-ID: <20260105221914.GA3612345-robh@kernel.org>
References: <20260104213457.128734-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260104213457.128734-1-marek.vasut@mailbox.org>

On Sun, Jan 04, 2026 at 10:34:21PM +0100, Marek Vasut wrote:
> Make "reg" property mandatory for all LDB devices and "reg-names"
> mandatory for i.MX8MP and i.MX93 which have two "reg" values. The
> i.MX6SX has only one "reg" value so the "reg-names" property there
> is optional and not needed.
> 
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../bindings/display/bridge/fsl,ldb.yaml           | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> index 07388bf2b90df..197ae2f2dd36c 100644
> --- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> @@ -59,6 +59,7 @@ required:
>    - compatible
>    - clocks
>    - ports
> +  - reg
>  
>  allOf:
>    - if:
> @@ -73,6 +74,19 @@ allOf:
>          ports:
>            properties:
>              port@2: false
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              const: fsl,imx6sx-ldb
> +    then:
> +      required:
> +        - compatible
> +        - clocks
> +        - ports
> +        - reg

All of these are already required up above. You only need reg-names 
here.

> +        - reg-names
>  
>  additionalProperties: false
>  
> -- 
> 2.51.0
> 

