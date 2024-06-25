Return-Path: <devicetree+bounces-79746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CDE916A6E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:32:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64DF2280EBD
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F582170847;
	Tue, 25 Jun 2024 14:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JCoZn9FD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D498417084A
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719325805; cv=none; b=B8qAKFVgr1R3Ghr7ggpu2kFNzTqguyNGkn2hXv0U+OYhWHtw6nt/hgp9M+elfOA8XuhsjFhSzbyFGYW7GeffQgYmafymsOTrQw0ZvD+f9pRYBT26AQI68N25qQ/+fAIyRhJi1fyQzD2PcPWsA2aPSfdRABPJdtZHDbDTLQJXX7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719325805; c=relaxed/simple;
	bh=rpNZYAlxmN/rG9fSu368ufRQuDICSKYr4IHageIwSjc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bK7be6ck9cPqvOsICquyc4rCMIXC5SQhx1ouSQoIqQssGsKJljl1DvCIfde9rDsI6n4LwiK48KZJuZIn1zupfXTtUn6KmDJZ59MsDbgL/oTqWiH22SdqimCEHGum+0goHGKGkAZ5pAc2ID2BLVXQUCioDUYTZsn9hXNJFr748zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JCoZn9FD; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52cf4ca8904so392502e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719325802; x=1719930602; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TIW+BEEpFZxcaSiuFdd6E7EOCLgPKt/xKVONfeyzByw=;
        b=JCoZn9FDzDJF9bIK7ae6jlvXz9UyZEzOA5sePhmJKDcviVdT6P4Lu2UX+WPSxVwEpe
         yyp7lJPLQyh0d4/+WBr9vyVaB1hQIuglLgAPIDd/W2YdHPQ5toFu7oi3rUW1kz3PVl0K
         HbpfBTitL7wyn1DEOAqYGwF13o2RdxnKfgJUSsuyzL11NEo8bfAuJj/Ej+Ig5l40Kdi2
         kBZA9c4P4ASJKMnvWCnWvNXbZufFHLgx4nOtiB4JccTUqrepQpGjadhgFdk54wbs8p4b
         FAu3NIGE8qmwR4KG+itQCAzkgdsd5LmT+DYgeKqk9awG1Hs7fSXUzzKdbPHJvF3BDfx1
         fVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719325802; x=1719930602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TIW+BEEpFZxcaSiuFdd6E7EOCLgPKt/xKVONfeyzByw=;
        b=j7M5GAmWH587o0S20YpfUPlqmN9t6JQeiUE+r5mrwReJOkc8VeIH0tE7XYzimkYiQ/
         F4mZGa3IuDb7yqinmFVulxrXnvu71yK4yXtN0/5OAhSNKMwBvuZqTtNT23QwPX5q+63m
         4OPX2lOKJiU9OUkCDkVIMUTWo+EEkc1hHLvf9FbLjzct7+nhodUxGSw62C+f7OpEvFNT
         RVgfS6A9rJx4hW/Q+DYwSkWeRmjcepD2DisE4RtFdXfN/qyF/yH2CA3AFYCaqYoVn4EF
         mLoRZihFWKY2aiiWAr/6M5nXDyZIqX1wf2GefDg5Ad1R3sLXDKCnBUqz7zAB2eenR+VJ
         MNww==
X-Forwarded-Encrypted: i=1; AJvYcCVbWeoxweexihA7n9lxN27RPwjg0OgogMFAX4SJwMxJMoVvDZhhPTs3bPyLyIuxGknkbJMIqAnSK/RbolK8IZ6TVxgGzEhBrknycA==
X-Gm-Message-State: AOJu0YzNVflhqQAea2RcZtrgyavPUP7MAUoF7q1pav8lQSdiXIUvxtoq
	CZPjL+e21LgPJkQ7TykKt/ohfhFQJWxD9VqoVTD2wXwJ7NUl5PZFjACWEbib4VM=
X-Google-Smtp-Source: AGHT+IHZ8OaLyMHtv2S65EE9rCSfAJ0Z6PqtA32z4W6qeFVbOuiH5///ycCmgXTPqmIPXgTzGR093g==
X-Received: by 2002:a19:9115:0:b0:52c:df63:bebd with SMTP id 2adb3069b0e04-52ce0673528mr5256172e87.49.1719325801936;
        Tue, 25 Jun 2024 07:30:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63bd28dsm1258950e87.92.2024.06.25.07.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 07:30:01 -0700 (PDT)
Date: Tue, 25 Jun 2024 17:29:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Michael Walle <mwalle@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Gunnar Dibbern <gunnar.dibbern@lht.dlh.de>
Subject: Re: [PATCH 2/2] drm/panel: add Ilitek ILI9806E panel driver
Message-ID: <d23fsb53p2at6rldkkolujgjfmbxpc7ulbsd5cak3pksacsvk7@b37rq4vnskjl>
References: <20240625133317.2869038-1-mwalle@kernel.org>
 <20240625133317.2869038-3-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240625133317.2869038-3-mwalle@kernel.org>

On Tue, Jun 25, 2024 at 03:33:17PM GMT, Michael Walle wrote:
> The Ortustech COM35H3P70ULC panel is based on the ILI9806E DSI display
> controller.
> 

[...]

> +static int ili9806e_get_modes(struct drm_panel *panel,
> +			      struct drm_connector *connector)
> +{
> +	struct ili9806e_panel *ctx = to_ili9806e_panel(panel);
> +	struct drm_display_mode *mode;
> +
> +	mode = drm_mode_duplicate(connector->dev, ctx->desc->display_mode);
> +	if (!mode)
> +		return -ENOMEM;
> +
> +	drm_mode_set_name(mode);
> +
> +	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> +	connector->display_info.width_mm = mode->width_mm;
> +	connector->display_info.height_mm = mode->height_mm;
> +	drm_mode_probed_add(connector, mode);

drm_connector_helper_get_modes_fixed(), please.

> +
> +	return 1;
> +}
> +

-- 
With best wishes
Dmitry

