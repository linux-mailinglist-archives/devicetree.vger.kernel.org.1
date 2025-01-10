Return-Path: <devicetree+bounces-137231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D83B2A083D1
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 01:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ED10188BAD9
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 00:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3702C6AA7;
	Fri, 10 Jan 2025 00:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vnVsI+Ut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455881FA4
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736467953; cv=none; b=Wz4bXRbGFtt1tE1S5rPH90jf1sGd7DhqEyj8fPsKxfMrrcdvNa2G+YR5U1lWoow00TMnBPT+ZQg3Hmjh2hfBF+VTItKMIX/oqzVaoM6hdQSt3+D2EheIGmkCAmqy3tGF8hW4hpemcTsmZ11Lx+X8guXBidfpZjf4gi/L4FhJ4nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736467953; c=relaxed/simple;
	bh=9HYxOlBVMJGp+kYa5cCj+uVdCLrvkLZ1Yp+RYPBpmpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CJoM4uJPlVeo5o0b4+14mripOh4zlETNgPp1EO4o8PxZ0GeG7+it5tcie2s6pV7D0Qi2s4UA28u+SvmuxLSxAKbF0vQEPJrIlcRfxBpnsUz/h4VLQ+xKZ6S5c1HgzMOXOgDIfJRBJxFjFp1tQWOlsDbU9TE4Y5Od+0gFkizTuTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vnVsI+Ut; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54021daa6cbso1319459e87.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 16:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736467949; x=1737072749; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bOM8iTrS8cJotx5OK5PF3W6RZdr+BZepKPQm6WfCyO8=;
        b=vnVsI+UtEqXLL4qXpUUlt0sn36RKLG3V1y/RISqU/HKa6x89dDnYUN/Z4KKt78jIse
         4CwEB/udzjGJtXqhMUXKncZOlmM4vD4yYbP3CmbciFwp0N6hI/jQjtFOfd8KMKLmh6mb
         ZZ/UymStrjHnxi1UvWzxxNMJseJXXg68rrch9cbqd2E9niekFMLkSiaRQrbqNNfo0dOC
         HyVpnWHzol+UdMkhOtajj8TGBXO0mCyZCZvYe/2b20tQOL6M7k5Hhl8tq0nL9x2pzTXh
         t++fnGkxlT+3ncpAh8M+S9h3racyOVjzsmAotT1xs97MfyaveuWu1SHAMBpOr+sMUXhH
         o0NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736467949; x=1737072749;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bOM8iTrS8cJotx5OK5PF3W6RZdr+BZepKPQm6WfCyO8=;
        b=hbdINMQqy6SGLBABsr0wmJrnTYmbxxPvRvZegajTij+bsNvL3NBYcab907gGFrx5ZK
         1UChYBVaggaolvlcBoO/sKMGrrzohbqUpzeIYWENztNky/353Ie9/r9TPv2eaZtXuzWk
         wYE2rmEbbpnHAH4AyNWEpvXqwl7c/RoHwi/57aCdMH9S9M6F91s9oRD1tbfxAoeIxg1J
         15iWpwhTYBgl4xLS5ZPp7UQk/psZHHgWIOgj6Oa+Z4S96QFRZmG7J7p7xwuFNoBeBYZQ
         RfpnOrfUIVcAREwh1wb9Df9yNhqI7kZ8XNOaY2zvxQ3DthT4qdVFPUaSxGFixfgEFOtG
         q4BQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTKPWNJ2wIKCkaOOvZX6mhAtMzfTvPyHeugduIjcrwgzZp6btXWrzTWj6m6RbkvRiBM5lwvd/PCX3V@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5I7AADE0YWqwfcQZK1uAa7DmDw34uasBpDRyZq18jAKT55Edf
	2XC7sm/2R0cT4drC0H7BQtvnLKnG9h7rQNJdRkvraclr3pF4HCvxCUEDx2hmCLg=
X-Gm-Gg: ASbGnctSDHIJpPRN3j2HLCf5rdrwDWxY+sxuoGLPtPOtyyOJvx1K24iwl1MGQidYA8E
	GUvcLVUbcGZc3jv2yveaO198TMRL1WrtaG7+xsfQS3inCYnZ50MigsCnrAc34NbTjhiB+X4KDYJ
	dIGbr4wHHZ5BlSjSiSFkS9/S7IAU3iPeSbUiILvTfOODD0xxRjRZTPxk6pSnZPdzL0SBMAbcBPQ
	seeKkjYFnG2nI6kv706hQdxfZNe7Wms30ZzJPtfODSPL4FTRPMbsQUzi6PGDq8fonhXMiRXrbX+
	8bPtKquagUX6KXQJoVGSP8Orfo+Z7ZdBLdnv
X-Google-Smtp-Source: AGHT+IGwIl2CKZkBwjuoikiFYrtznIYuYloYMjubKPdN284XWv1Xg6SBpze2m0OXrZNk5dsJj+ecLw==
X-Received: by 2002:a05:6512:3b9d:b0:542:6d01:f55f with SMTP id 2adb3069b0e04-5428481ceaamr2920549e87.48.1736467949461;
        Thu, 09 Jan 2025 16:12:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becafaasm339014e87.239.2025.01.09.16.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 16:12:28 -0800 (PST)
Date: Fri, 10 Jan 2025 02:12:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, Jianhua Lu <lujianhua000@gmail.com>, 
	Stefan Schmidt <stefan.schmidt@linaro.org>, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v9 27/28] media: iris: enable video driver probe of
 SM8250 SoC
Message-ID: <te2nhzkl2mx3y7vknokzwtr7szfge7dum7sy37ndy6laot5yqn@urv7svjqgmk7>
References: <20241212-qcom-video-iris-v9-0-e8c2c6bd4041@quicinc.com>
 <20241212-qcom-video-iris-v9-27-e8c2c6bd4041@quicinc.com>
 <Z3_nCPk_g8znto4A@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z3_nCPk_g8znto4A@hovoldconsulting.com>

On Thu, Jan 09, 2025 at 04:11:04PM +0100, Johan Hovold wrote:
> On Thu, Dec 12, 2024 at 05:21:49PM +0530, Dikshita Agarwal wrote:
> > Initialize the platform data and enable video driver probe of SM8250
> > SoC. Add a kernel param to select between venus and iris drivers for
> > platforms supported by both drivers, for ex: SM8250.
> 
> Why do you want to use a module parameter for this? What would be the
> default configuration? (Module parameters should generally be avoided.)
> 
> Why not simply switch to the new driver (and make sure that the new
> driver is selected if the old one was enabled in the kernel config)?

Because the new driver doesn't yet have feature parity with the venus
driver. So it was agreed that developers provide upgrade path to allow
users to gradually test and switch to the new driver. When the feature
parity is achieved, the plan is to switch default to point to the Iris
driver, then after a few releases start removing platforms from Venus.

> > Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org> # x1e80100 (Dell
> 
> Looks like something is missing from Stefan's Tested-by tag throughout
> the series ("Dell XPS13"?)
> 
> > Reviewed-by: Stefan Schmidt <stefan.schmidt@linaro.org>
> > Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
>  
> > +static bool prefer_venus = true;
> > +MODULE_PARM_DESC(prefer_venus, "Select whether venus or iris driver should be preferred");
> > +module_param(prefer_venus, bool, 0444);
> > +
> > +/* list all platforms supported by only iris driver */
> > +static const char *const iris_only_platforms[] = {
> > +	"qcom,sm8550-iris",
> > +	NULL,
> > +};
> 
> Surely you don't want to have to add every new platform to two tables
> (i.e. the id table and again here).

I'd agree here, this list should go. We should only list platforms under
the migration.

> 
> > +
> > +/* list all platforms supported by both venus and iris drivers */
> > +static const char *const venus_to_iris_migration[] = {
> > +	"qcom,sm8250-venus",
> > +	NULL,
> > +};
> > +
> > +static bool video_drv_should_bind(struct device *dev, bool is_iris_driver)

The name should follow other names in the driver.
`video_drv_should_bind` doesn't have a common prefix.

Also export it and use it from the venus driver if Iris is enabled.

> > +{
> > +	if (of_device_compatible_match(dev->of_node, iris_only_platforms))
> > +		return is_iris_driver;
> > +
> > +	/* If it is not in the migration list, use venus */
> > +	if (!of_device_compatible_match(dev->of_node, venus_to_iris_migration))
> > +		return !is_iris_driver;
> > +
> > +	return prefer_venus ? !is_iris_driver : is_iris_driver;
> > +}
> > +
> >  static int iris_probe(struct platform_device *pdev)
> >  {
> >  	struct device *dev = &pdev->dev;
> > @@ -196,6 +224,9 @@ static int iris_probe(struct platform_device *pdev)
> >  	u64 dma_mask;
> >  	int ret;
> >  
> > +	if (!video_drv_should_bind(&pdev->dev, true))
> > +		return -ENODEV;
> 
> AFAICT nothing is preventing venus from binding even when 'prefer_venus'
> is false.
> 
> > +
> >  	core = devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
> >  	if (!core)
> >  		return -ENOMEM;
> > @@ -324,6 +355,10 @@ static const struct of_device_id iris_dt_match[] = {
> >  		.compatible = "qcom,sm8550-iris",
> >  		.data = &sm8550_data,
> >  	},
> > +	{
> > +		.compatible = "qcom,sm8250-venus",
> > +		.data = &sm8250_data,
> > +	},
> >  	{ },
> >  };
> >  MODULE_DEVICE_TABLE(of, iris_dt_match);
> 
> Johan

-- 
With best wishes
Dmitry

