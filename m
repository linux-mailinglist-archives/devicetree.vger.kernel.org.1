Return-Path: <devicetree+bounces-80383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D78D91873F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED6B61F23E8F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39A818EFCA;
	Wed, 26 Jun 2024 16:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vhjtc0Qd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07BA1849EF
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719419000; cv=none; b=CLy2+GlchtSj36a311WUrNKYK51I/fcf17b/Lf6j/uKvKrpuGzDzHm6oUlxyD2Ta8em608BnsRvvvZMgdHybFNmVdPlI9VCH+K45wntUKilfU5+ENrxD9zUs5mEJnyiS5qr2a8pES4HC9cYbNB6nI9HUX0VGScPzylwQfqHlqKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719419000; c=relaxed/simple;
	bh=rwQ3cumVaoHRpkWqNAhhbEzmtje6fRMNwm8FyLEwG4A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DZpO1806vuzyGUukIApo1ebCP7F7BUMQ0Goi87mraNiSbc8u48q6Xl1a/zuzszEFWu9m3H9EOD7DCZroFKm6o5ZeNwAfoXKCYAP0xLGJ8MtKAijOjvpgpu8nJCglA5LrldDReJLgQdsXBXMgXvJHfmFy4mudwtKwdNr84sQjr9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vhjtc0Qd; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ed5ac077f5so12562011fa.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 09:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719418997; x=1720023797; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lc6XwGsT/OrBaQc7KsXWoDsazkeJ45Mt+fnavfI74KE=;
        b=Vhjtc0Qdgl14gPPGwF1878cX8qnL5QWTHObpdkOeZXTZUkwQfd6bqibFxxEY0AwnPM
         jVMM6NxBKPjT3A+9hLjvmY4R6qRLZbXLV2PvrGq5j1qFaA1Qgc43mXXrh5rmbFVRwSfZ
         H9e4wZ/huVfIV/rPGf3IMOkA9SGhm5HzXsvA6XkaBupR/7cgbPBJMWfkgTY6cev/gxAZ
         GAGRQLTL4r6tXJPTKpAbAF1qWoBQFeR9LBK84ZVfkYclMgtY2nPDbr1uitXI17T5SG65
         99N35Ht2mSjvMoA4lWoxbx8cKxnv/2+vLj4JBp1LClPpjc6T+Ytgo6hL+N/5a+/Aq9t6
         ruDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719418997; x=1720023797;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lc6XwGsT/OrBaQc7KsXWoDsazkeJ45Mt+fnavfI74KE=;
        b=UEI3orKNJk3P9SR69ZmczcKWHWo3YMyLaPNoIBOgFKFa7sWcCqRg60ol9ULRB9mTE/
         kVYsorkQOxVJUhO0Fob0lwPLyDSnacdtRJsttE4rM2qUD2V7R6O6OcMat4RFtrchYAq6
         z3Blc2jiPxgJ6NIXjf/aP1t2TcIVn6MjzlR021eeDuy2kSrdtGvxbsXYSDtOsv3bYPcv
         xpFO4Vg0CIxx3wB84qoqEVX9b6tz6YppYoHU02NDb+UAZFMdwLrBiIDV+uvySPh0JWIV
         IKzj19fAkYd8KQ/eoYLf29hgUhfW3VymK3PgiP7Whpr0KGKrtGpnAKrMLb14wegTNze0
         /Y/g==
X-Forwarded-Encrypted: i=1; AJvYcCWf6mubvMFlwFhZD/HozogYPMX3EzmwO/RhbMa2skSaxRWws9MxQMp7t8i7OJIn13UrlPWZyWY7HtErH3CJZO/tNBUZXGfYYn4NGg==
X-Gm-Message-State: AOJu0Ywo60hQzkqGdDsp2xiL4yHDGWpHljxSOEY3pVN2VcbWOv8qnIqU
	YUpWDY3mIwQ5iopBbp+d817dywopmP1aT3fEyv0RufXD4YrjdlQyMglaWGctarg=
X-Google-Smtp-Source: AGHT+IHsv74XlRJnwnRUxhAYexJVGMUjY7Ar9S60EXozImhBAVCdYFUzOtce+wPdqcdJOMLB9uGZWw==
X-Received: by 2002:a2e:95d4:0:b0:2ec:40ab:694d with SMTP id 38308e7fff4ca-2ec593be836mr69495321fa.1.1719418996603;
        Wed, 26 Jun 2024 09:23:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d602519sm15325611fa.6.2024.06.26.09.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 09:23:15 -0700 (PDT)
Date: Wed, 26 Jun 2024 19:23:14 +0300
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
Subject: Re: [PATCH v2 2/2] drm/bridge: add support for TI TDP158
Message-ID: <a5wz5xufyd64dg2cyfptdviutaqiawucdytp52kb7qlmza2bui@ppqlooifzy7v>
References: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
 <20240625-tdp158-v2-2-a3b344707fa7@freebox.fr>
 <bgp36sjj5hvldl4tqtjt7q6eva553hkek55easqpugzhdmcjv2@uhafklf25rit>
 <19167580-4e25-4820-90f1-2d03c7e9cb04@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19167580-4e25-4820-90f1-2d03c7e9cb04@freebox.fr>

On Wed, Jun 26, 2024 at 05:26:10PM GMT, Marc Gonzalez wrote:
> On 26/06/2024 06:47, Dmitry Baryshkov wrote:
> 
> > On Tue, Jun 25, 2024 at 06:38:13PM GMT, Marc Gonzalez wrote:
> >
> >> The TI TDP158 is an AC-Coupled HDMI signal to TMDS Redriver supporting
> >> DVI 1.0 and HDMI 1.4b and 2.0b output signals.
> >>
> >> The default settings work fine for our use-case.
> >>
> >> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> >> ---
> >>  drivers/gpu/drm/bridge/Kconfig     |   6 +++
> >>  drivers/gpu/drm/bridge/Makefile    |   1 +
> >>  drivers/gpu/drm/bridge/ti-tdp158.c | 103 +++++++++++++++++++++++++++++++++++++
> >>  3 files changed, 110 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> >> index c621be1a99a89..0859f85cb4b69 100644
> >> --- a/drivers/gpu/drm/bridge/Kconfig
> >> +++ b/drivers/gpu/drm/bridge/Kconfig
> >> @@ -368,6 +368,12 @@ config DRM_TI_DLPC3433
> >>  	  It supports up to 720p resolution with 60 and 120 Hz refresh
> >>  	  rates.
> >>  
> >> +config DRM_TI_TDP158
> >> +	tristate "TI TDP158 HDMI/TMDS bridge"
> >> +	depends on OF
> >> +	help
> >> +	  Texas Instruments TDP158 HDMI/TMDS Bridge driver
> > 
> > Please run ./scripts/checkpatch.pl on your patch.
> 
> Oops, sorry, will do.
> For the record, I did run:
> $ make -j16 dt_binding_check DT_SCHEMA_FILES=ti,tdp158.yaml
> 
> 
> >> +	if ((err = regulator_enable(tdp158->vcc)))
> >> +		pr_err("%s: vcc: %d", __func__, err);
> > 
> > - dev_err
> > - please expand error messages
> > - ERROR: do not use assignment in if condition
> 
> simple-bridge.c uses DRM_ERROR, but it says:
> "NOTE: this is deprecated in favor of pr_err()"
> Hence, I used pr_err.
> Are you saying I need to record the dev,
> just to be able to call dev_err?

Yes, please. Otherwise it's just random 'foo: vcc: -1'. Note, that most
of the error-reporting codes doesn't use __func__.

> 
> 
> > empty line
> 
> Will do.
> 
> >> +	return drm_bridge_attach(bridge->encoder, tdp158->next, bridge, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> > 
> > No. Pass flags directly.
> 
> Oh, just pass the flags argument here? OK.

Yes

> 
> 
> >> +	tdp158->next = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
> > 
> > Missing `select DRM_PANEL_BRIDGE`
> 
> OK.
> 
> >> +	if (IS_ERR(tdp158->next))
> >> +		return dev_err_probe(dev, PTR_ERR(tdp158->next), "next");
> > 
> > This results in a cryptic message 'foo: ESOMETHING: next'. Please
> > expand.
> 
> OK.
> 
> Thanks for the in-depth review & suggestions.
> Will respin with fixes.
> 
> Regards
> 

-- 
With best wishes
Dmitry

