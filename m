Return-Path: <devicetree+bounces-56307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A7B89873F
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:24:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 748272862DF
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FD608627D;
	Thu,  4 Apr 2024 12:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lo68TGXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7C685286
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233420; cv=none; b=XqruLRHptLPgeMpQnkagU8n0R4B9elsbQZ26J8CZ7J00eQT0m1aEfRdERrGQ7eVSDS0/BVuiuAhL5RcGVwu+IsAjDHDRyE5XZeew1RMsXd4+6u7cqZmOEtQF2bHRHTtNP5DvNaoyac/XXo0L9dwYYfELToa28pK0eqxK7vg1Ap0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233420; c=relaxed/simple;
	bh=DkBQRag8K/nVFSLzRC1O2X49AG8u22IqmzLoEi+THXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ppUtx9U89G5MVXDTON0inru9w+az3742MeK8CuSFhAO4AQf6aIJb0qRBp/qOH05J7dOot0fagDoE4ovE73a81Hlz7IwG4Y9zXXMKQoP/t6Rk5mm1aw33ophVCLEuBly2a9EiFrG+zKAsq4nVrzGsr0WlATihtfd4AKBvesyvH9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lo68TGXf; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-516c11b6af9so1281301e87.2
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233415; x=1712838215; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eujsqnNsTdlCsaVOb8FrGI1iNYwUxOE+TZxCC6aPEM8=;
        b=Lo68TGXfQAvL+84zz5jC/95LlnZhuBt8/SBcYi21pZqJGs54VNavc1poEkjhXDdHbk
         38BKeAHDjOq4leM3k9gleJuD28sWQ6FZ9pp7dpKPl/iouwvwfRKscUtmGL4/4F2/qIyg
         QagTGFKie1rXuVZttERLtmpNZLs7ho4bBIr32fankZCMka9RT7hbxc+1kI1x6+54co3b
         eir60mXvGaoz7zWJUGCbTSNBKvFr6M3xVcOQ5PTSTKVazQ5WDYE3tz8oXOjMLVGhofgI
         nKDtACozs0HqOq8CTHXsrnOhi3eBzKcBY22qQbcky2of4fYvgAyxvij0rMsK0ez0RCzs
         kjsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233415; x=1712838215;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eujsqnNsTdlCsaVOb8FrGI1iNYwUxOE+TZxCC6aPEM8=;
        b=qETMDhzVsDTPzBxqoJ9vW/h0dGdpGtaGpx7oNHVRdCY15cOapyUBzX0GMKY+mD280B
         52BJVVwfk56Isxt9Z6YPl6InZJ/vLfay8z33/Upa4hQ8RbYuKgjElq0T3PJ4W1a7+M/s
         MwhENvzJkg81fX9Hxwb1RovsRQu1oercETd2x9Uqph1FhhTVk1Je6X6PYBDsFjsXpAAp
         z/R+ekNAaqR/r9evLmvxf52+Sj6Mrx/BzOlWJ8r9fAUa6tz3RxRxoquOeoeQtsw0TaLP
         e7VeqOd3yN1+EvCtOWOVJGVk2MPIQFU8qtEcQ4DD1t3XWmKqS8y+4UxWACt33j4//kXn
         vwBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX832WakUUknTioibf5FSkKrPUL691qxz5GSo/M0Jjo4BaQpIOs8HK36xDds9rL0mdBxZo14IkiV8JWyerGJjd/6yq4+mf+MNi3A==
X-Gm-Message-State: AOJu0YzsUhOtatVk/bhXo6lDz88OGwa20iQO2JEHZOO7YpPrLpc5MdOQ
	5xH+CvVdkUHD1YSiNG1jD1uMTkTqrE+m8c0lOagvDCdiRAFjsaTBh9gC69iE9L8=
X-Google-Smtp-Source: AGHT+IEiC6EifV89yJAb4FjYrCRe0v7lrBhjNcstTawf24NoAdVUVeIn0D+h1SFdO92LrKIFue+53Q==
X-Received: by 2002:a05:6512:3711:b0:516:a148:2f5 with SMTP id z17-20020a056512371100b00516a14802f5mr1453656lfr.40.1712233415518;
        Thu, 04 Apr 2024 05:23:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id q20-20020a194314000000b00516c5204f13sm229240lfa.208.2024.04.04.05.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:23:35 -0700 (PDT)
Date: Thu, 4 Apr 2024 15:23:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Adam Ford <aford173@gmail.com>
Cc: dri-devel@lists.freedesktop.org, aford@beaconembedded.com, 
	laurent.pinchart@ideasonboard.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 1/2] drm/bridge: adv7511: Allow IRQ to share GPIO pins
Message-ID: <s463qfxdzpc5udfb6mmlvosc6d42uo752ue7cnpf4rhg3psdaf@kkrjbncbbezl>
References: <20240305004859.201085-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240305004859.201085-1-aford173@gmail.com>

On Mon, Mar 04, 2024 at 06:48:57PM -0600, Adam Ford wrote:
> The IRQ registration currently assumes that the GPIO is dedicated
> to it, but that may not necessarily be the case. If the board has
> another device sharing the GPIO, it won't be registered and the
> hot-plug detect fails to function.
> 
> Currently, the handler reads two registers and blindly
> assumes one of them caused the interrupt and returns IRQ_HANDLED
> unless there is an error. In order to properly do this, the IRQ
> handler needs to check if it needs to handle the IRQ and return
> IRQ_NONE if there is nothing to handle.  With the check added
> and the return code properly indicating whether or not it there
> was an IRQ, the IRQF_SHARED can be set to share a GPIO IRQ.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2:  Add check to see if there is IRQ data to handle
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

