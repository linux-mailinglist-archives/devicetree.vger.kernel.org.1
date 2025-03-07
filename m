Return-Path: <devicetree+bounces-155256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 258C6A56091
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 07:02:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65FA9176C46
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86CE61624F8;
	Fri,  7 Mar 2025 06:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qJgCoEJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4602EEA9
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 06:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741327318; cv=none; b=mSMmMI+1QydGOJZO7YO2VcqLvxeKzNr1muPO42fd+hdAjzj8+q+KDqvxcKvMb5VOGppL4KW/kT7ny1QNKt8EizAD0g0CE3X9c91eGaoBbk+6XVueytPWLd1QCB5Qs5TKjnFEuZwgp+Ed+JCR3MZAuLCLZxvCH1JRmc5M94LH1Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741327318; c=relaxed/simple;
	bh=x0+zvy1qg4qGQfkLknC49dIUCx/sQgVGvi0qPrj62ys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f5X3NnK7tn+seer/v7Ip0RLZPTfcLSjj98SEVFeFmalds6CPwndZISkbkiamBdgtZRaItafcp8ifr3Cg8bABqA3BUw7/VPS6dod3PprBFJwTU63gnECDxCh10xlcXTjO64uwaVeFqEryKbZNhXeBBJewByDIWJYnqr1jvNuuTHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qJgCoEJD; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5496078888eso1726350e87.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 22:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741327315; x=1741932115; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C65djOqhcGETcHae7N1a5CM3xNJNRB9w9qhV4EN153M=;
        b=qJgCoEJD+U5haGdxjKCLmiByEstwkmHrqidUg8/XuIM55rOr6LW9lA6qzqEu2wJKWS
         IHZfO9aGZM23vWCZDLRG6VeEDb7/hVnH/POths0PUFn9AogqfqNfVipPHZvvCkToSeOR
         XISXfYWxvSdV+xDj5KHXs71K4ul9hVHwbo4HWedy2UJoH6/JPwCBgjrHujX7Gjhcd56v
         Rs5tAf7gzIQ1l+3Fyukb2oTpsipKzgSxIS85t0JXcoTfuQCgP6KddovgYrVMsURPuL4w
         PfYXpCfYT2C1j8Iaib+di9ALUHhpTw4MijUIlLXi/s4oiKFfbnYHtDUlZ5uRKVvezww+
         OPAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741327315; x=1741932115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C65djOqhcGETcHae7N1a5CM3xNJNRB9w9qhV4EN153M=;
        b=gAAIRdqAkT/lYdst5mDNwOSNUEcCvyo2XLNkHc+xxaPGkezFrby12cj27nSSRaAfSP
         C+zUVZwTd1gYa/MCuuBfMSPAsWDvBYHCK4pFNtUDrMyQUnnL+xzD7ZZzgZWGbwbNSlLa
         PooULT9At0ZBuurPnXh/cCNqPoEUSE/Hi9Bpd3jIFRg9ZGIDGvbWBqr21v6Z+sq61Lbe
         kccn2S+2mewAyl5TUPTuKkMO5NK5w6WIi+Iv2WGRN4XgvfdN/ghODCJ3QgtSIgXEBFhe
         qmBGPHapCehTcEmGCzt53a1cFpe4pr2cp1r4OJaXOLyqCpEuMF0eQPi0SW9PuRkbwn+v
         tT8g==
X-Forwarded-Encrypted: i=1; AJvYcCX6A46z7vl3GVxVM8InFASETxjyg8cQSLSiF1HwkHZ1c4UamVS3n4sWWG3wrf8Gs5fC1H/g5vXJJJ/6@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr64eQu5hybpC6DQ/sbBPCWLK0Kp0jZ53KBawT2Zuc4fc6T0BB
	FZSb6rKXd2gjYtDeyDmm5BIHiL4kU2iITQthKxGr3nfqwBTcY+aoFv4ernVW46pQe7l/KdvFnQS
	UazY=
X-Gm-Gg: ASbGncu8TZ8F9uNKIQy688EcTeAo+VFme+yJj0xYfe24UwSC+Lx9MHrWLmoVnHaxhMz
	/ej4WVk9RdKBthG7Crx/rPbFxQp/P7Mx8iJGE3o9zogYK+fgIKhAatoidvpy3foLgmffPLa3XBA
	Ytmo71z4iZugBFnvITKkCpjvbrUY9bG0Seg+TVx6c1q23pthMwO3kY5CSIE3txM1fhIHmhNWAst
	PGzfUSh5hqV9fXnuevDNQ9H88yuqga8L8eDiX5tWqxwwRxHdM3rpOq9fCfFs84S5wSqPJJX+PYN
	tl+kjQad0nIIbyPiuJZXYwiX/Vr+WhPcHdxtmqdTuHOosrlhEOB+/CleOx5GvdcAvKEyn8yV/nQ
	mWsMpvpYdDhpyVBivJcC+fnKZ
X-Google-Smtp-Source: AGHT+IHxRUqbuLmJjQEhQlkwaTO0qnaC2w02vtcpYT9p+yxaWvOQd3yxzCKNzTNRLOOam4AsBVyDMA==
X-Received: by 2002:a05:6512:3984:b0:545:f69:1d10 with SMTP id 2adb3069b0e04-54990e2c082mr581760e87.8.1741327314649;
        Thu, 06 Mar 2025 22:01:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be98ec3f5sm4236181fa.28.2025.03.06.22.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 22:01:53 -0800 (PST)
Date: Fri, 7 Mar 2025 08:01:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "A. Zini" <alessandro.zini@siemens.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, 
	Andrej Picej <andrej.picej@norik.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: add
 h/vsync-disable bindings
Message-ID: <ps7s4fr3vznymp4kd6n4ovhzivbel5ueupvni2lgonxzujbr4o@zxuecu7gubdi>
References: <20250306091133.46888-1-alessandro.zini@siemens.com>
 <20250306091133.46888-2-alessandro.zini@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306091133.46888-2-alessandro.zini@siemens.com>

On Thu, Mar 06, 2025 at 10:11:32AM +0100, A. Zini wrote:
> From: Alessandro Zini <alessandro.zini@siemens.com>
> 
> Add hsync- and vsync-disable bindings, used to disable the generation of
> h/vsync signals.

Please describe, why this is necessary at all, instead of desribing the
contents of the patch.

> 
> Signed-off-by: Alessandro Zini <alessandro.zini@siemens.com>
> ---
>  .../bindings/display/bridge/ti,sn65dsi83.yaml        | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> index 9b5f3f3eab198..ff80876d504ad 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -94,6 +94,18 @@ properties:
>        - port@0
>        - port@2
>  
> +  hsync-disable:
> +    type: boolean
> +    description: |
> +      Disable HSYNC generation on the LVDS output by setting the
> +      width in pixel clocks of the hsync pulse width to 0.
> +
> +  vsync-disable:
> +    type: boolean
> +    description: |
> +      Disable VSYNC generation on the LVDS output by setting the
> +      length in lines of the vsync pulse width to 0.
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

