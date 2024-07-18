Return-Path: <devicetree+bounces-86655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA13937026
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 23:36:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25F301F21C4E
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 21:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E50143C54;
	Thu, 18 Jul 2024 21:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M9dPxQjg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD4975808
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 21:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721338561; cv=none; b=AWZgQPCJc/engvUby8OTs7ucTs7NEpYO8fQ7q2PhjGxZ8k+/K40zCB0kV+fiSL5LrMEQjiy7z8gufH3GspDnJf+v4pSwlwKj9SA+t/tV0HReS5hZEbtOtJXlOYFHBW12AC9oqDHkw6kgJD2QkBCcTX2QUSn3nij59XVBo4eFp14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721338561; c=relaxed/simple;
	bh=Fk1q37AkJRR10jxS0EvjOga9edYZklZD/stTuwe7plA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a73TTi+ZeXpCxFvJUxlozrWRz/rG8T7s/wY6w4D/C/hEOjzll4AglT71S9rA4axCiUmJ6S6rFOb5kcz7X4EQe7lkqIyXvHkZmRvm+01OhMe3cUCNLf/uetW8PaZQ7yjKaryGQ0859XVM+UrFUf0J6WsNquedaQJwXSWhHB4caQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M9dPxQjg; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52e97e5a84bso1307631e87.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 14:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721338558; x=1721943358; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0/fJsgp/AZdEv3h8J8/jVqL+YwWPDVkh0WLdgpf556c=;
        b=M9dPxQjgACC4QZn9bVYibWBkr/H6Mv4NKQ7tOffQmL7ZpzJblKvOFxD/pNVCr/NKPK
         CTyFFZjz+KXp1BI3HGq9eX9o9fhXPdg+WzYu1SvLSgcPItNJVibs8MoKC9xwLpJM/AEG
         VAZVC6PHvNjhJS9jYjG1jlbp0RmkCMcf4aidKldO5PwVyHIlY6yzcxbYIH7IuIxJFAGT
         OezEbC6A08eBoBDV36BL7koauYpkbYlcubjhJe6QjdwjH/duYm/DXsxLQa5QYR5UPJe8
         5tgc9+tiFi8EDHXxR5tBwmCXnlJghwN/sllYc7Z5VAm3gXFyp3tfCeTgIo1gAYxSI0Ar
         QKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721338558; x=1721943358;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0/fJsgp/AZdEv3h8J8/jVqL+YwWPDVkh0WLdgpf556c=;
        b=CngPaxNYIFcybjj/OisgOKwanpOz6l3sMkTXlLuQGZBAUKTtKCk4gJon8FsCFIwaWl
         bObmPR74QwJYLqoA2d0qW4tdeSKbFPU6HjKHzdU8RPToTMq9CSsMVEzGQrg6ueWZULpp
         TCkbJa+X8DbGFRSQ3amAtM+2nICsC/pwt9QD2wEMe/4FDIvwMw7rtDrQsUZwUZqMFPU+
         vEUhJQhhI9YSEm4byZB2t2bv0Ub3jZj+Zs7CEnboN4uB8k5HoWch5QClzRe9jbxcj7pf
         +Sj/7BIE5gl6TkWIBnJMPZadp8ezs8xdx0VkElQKK6GxdFecobeRimUYZej019oxvv1U
         g2ig==
X-Forwarded-Encrypted: i=1; AJvYcCXFDwO0Q7pfULKnX5bwfnAA0yCXLSWFuHh5ROltjJj3jSiDLEmV1eMzXkM2ritC5Q5L7tar4RA1DHuI4OnWq8mHzbRZzcdwI7AVZA==
X-Gm-Message-State: AOJu0Yy7y8kdt3MmIbgGvzPoc+p3AA7h3PxNSkiaS+GrBM+9+DXKnETw
	3HBshhdGZeCaBCoz/gqlQvozSDCSbqhBb8iDMOMWh+4r6fLP7Mn9fAsN1gRARSo=
X-Google-Smtp-Source: AGHT+IHuG7Yb6XcvPP/LuraXGboWeWjVx2oXL8KmKYQwMBVDG/13BqKI2G45L7A6gN329d5eBqY3OA==
X-Received: by 2002:a05:6512:1081:b0:52e:9904:71e with SMTP id 2adb3069b0e04-52ee53d7623mr5237291e87.28.1721338557906;
        Thu, 18 Jul 2024 14:35:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ef07445b5sm204487e87.126.2024.07.18.14.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 14:35:57 -0700 (PDT)
Date: Fri, 19 Jul 2024 00:35:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Doug Anderson <dianders@chromium.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Rob Clark <robdclark@chromium.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: samsung,atna45dc02:
 Document ATNA45DC02
Message-ID: <fnoc5jhpu5gwkfufm4cyyn4cjhh6dtw2if3jukk7t3tyvdwesv@pmr4j3vfgpjt>
References: <20240718184434.6307-1-robdclark@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240718184434.6307-1-robdclark@gmail.com>

On Thu, Jul 18, 2024 at 11:44:32AM GMT, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> The Samsung ATNA45DC02 panel is an AMOLED eDP panel, similar to the
> existing ATNA45AF01 and ATNA33XC20 panel but with a higher resolution.
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
> index d668e8d0d296..284a4ee79bbf 100644
> --- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
> @@ -19,6 +19,8 @@ properties:
>        - samsung,atna33xc20
>        # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
>        - samsung,atna45af01
> +      # Samsung 14.5" 3K (2944x1840 pixels) eDP AMOLED panel
> +      - samsung,atna45dc02

This makes me wonder if we should define a cover compatible like
samsung,amoled-edp-panel.

>  
>    enable-gpios: true
>    port: true
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

