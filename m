Return-Path: <devicetree+bounces-76714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4326290BB3C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 21:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5CE02846C9
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 19:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54394187332;
	Mon, 17 Jun 2024 19:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uJrZQgym"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3A1468E
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 19:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718653044; cv=none; b=YABN8Uf2JS3ojdtBFvMyVb/pl5aFQyaOqw1P+QoKOG7TilHHWg+olFENUFoWO2+AwyLZQ5KKuJ//t+CcW2Nfa5nwekvcj5bXPqGDsw37gddMpKk9cN9MEFyvjV/Ecv18iNxcWUnIiWRMnZlk+c5xC0Tdutefm52PuI8qyupoGHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718653044; c=relaxed/simple;
	bh=8ltVyY7Ym9lYdZ6LElvolV9guQCXocHDy3/djzsyaSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kYYZJ459SBTqvqkPqegJDEm6SwOz2AAffFBhbMp1xbJdIdM7OAT3M21fLHW0KoWw3FzBHaUWMZ49qfkSwwkaingHZY2CXhtq5es7F7Cljpk+ZD2P72P5PQvFE6tLdUq1RV8EE90VnSuvineaA73GzWK/r+TTkh9YzvTRgYLAzAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uJrZQgym; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52c7fbad011so5553770e87.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 12:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718653040; x=1719257840; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3lWV8I5FVI0dWCO348F+TJ6mgy6m4jexZ2TUnszYTA=;
        b=uJrZQgymKO/wjiK6KmkzlNNwiDBwhogvg1s/8aTIv4Xp2VexjwbOl+VGPU4cZAXkV/
         1E8cVJ74SX6n1JyeanjwM5RpJCGwuqc6B0SoFIW6V8hK6tZYpms+g/Fev2IHGTS/dg5M
         NxGRKleZIiMGgBVQnqNXsJQFmmvOQQuV5d5Otd0liZn5Xnaix8pYHS5x04x1NVhSHkgG
         /xvxnKQPt4e9quAhArYy5DJOta+gvQ+ErL69QKp+sceZiu//eX+n91PxRMXsPcgBj6v2
         RifuQsF34vxAkBUSL7FfrKFg5vjoY6JwTO+gkpIbE2djj+/41TwRWFGGm06l3aI8LHiF
         LVTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718653040; x=1719257840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3lWV8I5FVI0dWCO348F+TJ6mgy6m4jexZ2TUnszYTA=;
        b=bnmEL2aYXwkgx6+b2efASUWWwB1RK7KXkYQTRsc6+65PM66qFHlBWIAun6Jg2+8sbi
         QkvnxoN+UieFHrkqUK59MdrKqLf2n7IG7OULmm6IUOQIR7ZKRscc57SqGDk78GYUjpdq
         pPpIyUvI/0tueTdVdafSWphnHqtnqvwV5kjrYVzO6VYIYO8fbTa+yniLbsA888BDmF2z
         LLCj8tulEhsmJbpqElaBaXQSefJ2LdE/y090VhGYJiJBVHjydGYLHee1Ad611qy/PF9N
         o85p0Y1NQ/Xa2x5zy6k7KavShrqMSIGa72mRV+zYdilDxr4WYDwwJTDb7jil7qllycF1
         oo1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXRQdFKDyXdPG1krMn35hA0bAliAtP76dwyh08pkQwRAT8IOLnvL/UV5KMMBJDAHE+MnoI0ZJ5wY0LbXlQaw+OG5YN1u2z8lZU+Nw==
X-Gm-Message-State: AOJu0YzDRlb4oFo1hBaNoR0niUcPIpDxlf/hz1o6vMaYIIS5qnXfKBKR
	51khyy4R3mPQqDeBDQZLxAeJsjmqr6qs/dNW5iQsyLG3RK+kb53YyAjbkUVqNdQ=
X-Google-Smtp-Source: AGHT+IGJ9kb9N4Obba0CKE0vXyHy1MEihZUnPT0jtn77r0HCwMnCuvrYTGNHAYH2xsym/gKKTVXT/Q==
X-Received: by 2002:ac2:518d:0:b0:52b:839c:78dc with SMTP id 2adb3069b0e04-52ca6e6db33mr6078522e87.29.1718653040448;
        Mon, 17 Jun 2024 12:37:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2871f71sm1321739e87.121.2024.06.17.12.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 12:37:20 -0700 (PDT)
Date: Mon, 17 Jun 2024 22:37:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH 1/4] dt-bindings: display: simple-bridge: add ti,tdp158
Message-ID: <y37rh2uulewie3mpumlznhmvrk4ileauhk6xkoafv4zt43q5wm@ftnpqit6alth>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-1-df98ef7dec6d@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240617-tdp158-v1-1-df98ef7dec6d@freebox.fr>

On Mon, Jun 17, 2024 at 06:02:59PM GMT, Marc Gonzalez wrote:
> In default mode, this device works transparently.
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> index 43cf4df9811a5..5f0c9687538bf 100644
> --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> @@ -31,6 +31,7 @@ properties:
>            - ti,opa362
>            - ti,ths8134
>            - ti,ths8135
> +          - ti,tdp158
>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> @@ -52,6 +53,9 @@ properties:
>      maxItems: 1
>      description: GPIO controlling bridge enable
>  
> +  vcc-supply:
> +    description: Power supply for the bridge
> +
>    vdd-supply:
>      description: Power supply for the bridge

I'd suggest having a separate _bindings_ file. This way you can point
out that it's an I2C device sitting on the I2C bus. And once somebody
has to extend the bindings to support 'smarter' programming of this chip
they can edit just that file. It's still fine to use the simple-bridge
driver for the device defined in that bindings file.

-- 
With best wishes
Dmitry

