Return-Path: <devicetree+bounces-148801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE40DA3D76A
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:54:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0C52188CD3F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 990A21EE7B6;
	Thu, 20 Feb 2025 10:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SC+E7NOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47531E9B1A
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740048817; cv=none; b=Ab616aKE79QwNcg1uIBLVtPLihGiZIv+yuu+0vsu81m4XjPLX7JMfhgES6KtpHNXbhzDn8b91AUspOQxc3Fm8MhsP//4Wgp5Yy8PD2VaJyeGIZCcCALqGf6OVQFU2O3OucZfXhlnQDIp3vG8AiAJikSHVPPOXrrNorGyOe+h5A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740048817; c=relaxed/simple;
	bh=YaF6r2FXlfQ0DsVDdfJuMoslOCpKrnWhv6zdNCgK1mo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mR4uKmZxtjPHmjJAxYCafjxp0g8lZe8OoQBaC4uiuwd9QkmbEDtkkmbEpfegNUl1rTDes70dnSc4iw6xSUJFsmkqf7LBL7G3A+m2+xyngSXa+5FeRZD01kXsXsUPs7/mG02zvARENAD8tGIGcIz3V6DiHLiY5kF5pfSx3NAB/uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SC+E7NOm; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5461b5281bcso759858e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740048814; x=1740653614; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i4cNa1KAWhPy2izhnLaEb+31HFajh22g8Y95z+oCBBY=;
        b=SC+E7NOmaP59JSoDUIFpLZAuGfW6GsHXFdvGfoDhRyYFKNXhILzRPDBmFQp+yMlXj0
         j/Qz+HQX2dQB1aXVZprXY/uYx5XLmrk+OGdEdoirDBQhY7fTf/Ithp65gqdXJYP5ckWJ
         BW8ML1kQUwRTQmCv6NwiCJyr76aRA/8a59rEF2qgST803vGXBuhyC5K3/Hcg4dtb12es
         mgUwVkLVqr5cvqVIW6TwMXRlrdfwB/sopKPE8aprQFduVI787XWQy7q+SwxBcy0N6ToI
         besAbc3Wpw6XdJSHYtamxQ8Z66x7zOjv9EEixyhQRk/felQUSJcoAIf2w0S4qMJ92qHJ
         8Zqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740048814; x=1740653614;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4cNa1KAWhPy2izhnLaEb+31HFajh22g8Y95z+oCBBY=;
        b=d8EOSPqkvlr5tad74zxzSqq4ki8rkDIa+B3vxjbj12yCM1eIN5tIljGxiA1LO1D0/G
         uz9IBQ5+wQwleBZvN5PX7Ly7/GJyshxnFhF2DwXbtxXzdpQAh41/bOtacgI7dXom3d45
         2956S8I3aihWz3UxQYJYVExgsRYgCRJE7HCWGhocTl7rmajRUGq2gS1KpGLhshLvL1eV
         UolbcW7y8vBP7muceD0cZqoVRCpH3/6KyS3e3pkjv7Z61d3fpGPRD57yR4m2PXLCEws/
         v7jKNKi2KNsOjXdcp4nPYMq5s10e1avyqCTaB0/mzu7lQOS0TgOeVOzvtp5T89V/4fY+
         J6CQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPv9Zh3teEzDMab+8/NCVJ5i7FnyLGMMT4ACgFkya9+hzGtvQzcWnQ0WuYuemfqOpJJ9EYww7j8QEY@vger.kernel.org
X-Gm-Message-State: AOJu0YxmUxs3GRcIefHUXsXebHYsD9+8zTu82/zVMcx31yfNw77rxCRR
	b/GdaZdSTOXGuUrTajrcF2Qlf90GoijNqh6cd6kc0N3VK7blpkTu9PxTZp/5VVc=
X-Gm-Gg: ASbGncvaIcLdyx1ZO3QfWEzLjGk9C9y780iFFcJh7Nvnhf/fBn7ZXnsXpe1R/eyhVQ3
	vBrBTAiAS6UgjmI+mF7Af2U+u03Lhya3vwweg+voJ8XS7ugD9XlO7hh8Gcvcd5Atb/D9HO0vemC
	LHFyWIKXshYEBsWPj5d50/G2kRht/xYDS8g1jfPCTYG+dekWENu0+uWYLTqBfeL+F9dzhnDUmi4
	XZwbMmfsmaRpAdoj0HEBE/JTfuCe0x+KTbL/o9u+HaMI+gcLq1xOQn/HkZR5cwYKKqHQzqcRKer
	hPF2AhuwrymZTK7mNVwmaNNKjbp3KArCRWNd8duZuTAJUWeRiNDpqtMzJ/gVDYD+Iv4df04=
X-Google-Smtp-Source: AGHT+IGUa93DzQBNfWAgZCCcEoZ80+sJq5+WQjklkO36XME+Wd2aJ2kzORb+MvS9U9E5VlLr6XgUwQ==
X-Received: by 2002:a19:5e58:0:b0:546:2ff9:1539 with SMTP id 2adb3069b0e04-5462ff91883mr1947710e87.52.1740048813729;
        Thu, 20 Feb 2025 02:53:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54530a91179sm1748351e87.33.2025.02.20.02.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 02:53:32 -0800 (PST)
Date: Thu, 20 Feb 2025 12:53:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxim Schwalm <maxim.schwalm@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] dt-bindigs: display: extend the simple bridge
 with MStar TSUMU88ADT3-LF-1
Message-ID: <fqnaxziho63smog2adn27ypwoqrknbgbpe4xtgmj6xdbcavp3u@djbitfumfc6d>
References: <20250220094456.32818-1-clamor95@gmail.com>
 <20250220094456.32818-3-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220094456.32818-3-clamor95@gmail.com>

On Thu, Feb 20, 2025 at 11:44:55AM +0200, Svyatoslav Ryhel wrote:
> A simple bridge used in ASUS Transformer AiO P1801-T.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> index 43cf4df9811a..8308e833938d 100644
> --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> @@ -31,6 +31,7 @@ properties:
>            - ti,opa362
>            - ti,ths8134
>            - ti,ths8135
> +          - mstar,tsumu88adt3-lf-1

Please keep the list sorted.

>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

