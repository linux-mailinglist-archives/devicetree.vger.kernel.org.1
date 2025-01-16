Return-Path: <devicetree+bounces-138920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDA4A130BE
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 02:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DED31605D2
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 01:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 017FE7081C;
	Thu, 16 Jan 2025 01:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vSU4/cqE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9DC6A009
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 01:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736990633; cv=none; b=pmYFNcEg3ShqVU6F5RPiKPLuf4473WMUcUuObTZoqkj3AlwbHKNNLG6I8IDBoDwSLoED46DMLMTJRaWdRVIxF879LTY+7amVcQzfycU7B+bBpqejuYAlZyWNR0hNDAcGSW+YJBw+RkpyJ/h65bbx/lxookUsIEDZUlYpALjvXG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736990633; c=relaxed/simple;
	bh=7WCB0TMdg14tT4wzmyltTbxRPx9gWJXDhDmGnVXmR7Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BAS76hwot1RyJ468Ujv72KLfZ1fAvzQfK9A/jOm0s/wFO28HSyCB1WGutJbniejoCp2Ln5Ag0bJcFHXe4kEB58gvxIE/CpjSREGKt3eWSegwjyfm5fboz/sjmmHmlWir0YC4AUXyRZ1rxpxhbG9LIRvHc18J/DqDNJT6tu9HSDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vSU4/cqE; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54024ecc33dso413371e87.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 17:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736990629; x=1737595429; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IbDhKJFQy4EO5f+mpYskXg5HTSB2g/vn6zwWJ10k7s0=;
        b=vSU4/cqEznlRoRYR5Cn2x+zg3O8zLyqXV3bJ32+hDAwZ0HgglUJqxd3wFwbPUg7Ppg
         8re/XZFS/U6Rb1ApHObFb/imnKQwQriSVQlnd/y+6NV8OHou4mAkGVg2B+OqxthtDk0O
         DfGY9W+X5QGv/yt8lFA8CVmng9luGAK5qfZHodjW1dctk0vi/Z3BvUafbBAbFjP0WFXT
         hpso7xl4OBwkaMz9NqLsenwap2tW7FDD6oP4DXEqFFNfi0AKOeNWBWN5QHeSPAs6Fump
         q60jgOBOS7qPceADrcHk0jVfnsasJHOfn670F3upfh+fPmTepnmLxMWYgS/6fZaTRWE4
         dNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736990629; x=1737595429;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IbDhKJFQy4EO5f+mpYskXg5HTSB2g/vn6zwWJ10k7s0=;
        b=Fdf5QnT/MUznUvSoOimj/wHV12AHVCwxwkV4wFb2afRggMRMu6/zq2KkA2CSuPZSlj
         aVU22Vyf9+39vKes1KLHpvUjPeUpHtOGK6r757BT+h6y1ZdcMc7Pwo96TdgIg37yz4sV
         Io22JovA3ELtu+eFU3dUlvGxb4NO4Qvwcyi/1EJOREvdG9AjWFbhZNQhdiX0ajeOAfAH
         Ssrr+cLwb84Z+NRYqbV+gUAJmPNIKCCmrgLQIanlI3LOACkHNOUcM1vC9RPNM5sHugEp
         xryIgIlUn/xFXxS/FkH6Mu41UGiLJ5QooFkTBUAfeyfdV9mvKOObFwWj/ABvL84C9DBM
         F8BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQlB2Hks6N9XTan1AG3YQFQxudEpOp9jlEd2eqdHuJHmLzH6cERs035SWUs2oDzr+jvVwv9VCJQH6Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz807DhDW9banfz/yqlRDBYnUvNWjR59uzse4kxEai5r6ZkGXWe
	VXUR1kSwE+rRBWQSNO24dKeS+4P3oyUQ4OC8tJwiWo/0VTX9XWA1+MsSYc/nFkE=
X-Gm-Gg: ASbGncvHMPMFsoWrbOdDAsOoGTTUWbab3oeogsPbZBaBoijx4VXwa6W98m+xJKGs+NT
	mh1OcR9mbB5oM/wUkVtAcHEacuiTczRmXy+ExCH//Q+ZRa6FGoqiAHb6lb18q/crU+8K/XbcQ0s
	GGXxFrf8RZ0QjxsFNjnO8+cLNtoBx/qE58zoFCcepFvkQ1sQUyVpUevl7SzjxmClBsylLf0Ex/x
	fNlOBL06p5nU+xnJ+hbJEFe7kTOe9Opjsu1iXtJ4gcvsax3NBU4t0AqQI5+bsaToK3poCcBLW6M
	/IkkRfZIDuSRG5/x6SMINLqC1S9UaAtnMaAU
X-Google-Smtp-Source: AGHT+IG82e1Wkv6Li8H+ap0AJxiNGQt3kJpHHk4MMHOvoB+WUvJpWPETVn8I6UxKnfFGzs9oqOtyMQ==
X-Received: by 2002:a05:6512:3049:b0:542:9883:266 with SMTP id 2adb3069b0e04-54298830320mr5819379e87.37.1736990628631;
        Wed, 15 Jan 2025 17:23:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff1c78e8sm23909331fa.86.2025.01.15.17.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 17:23:47 -0800 (PST)
Date: Thu, 16 Jan 2025 03:23:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, 
	Dikshita Agarwal <quic_dikshita@quicinc.com>, Vikash Garodia <quic_vgarodia@quicinc.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, Jianhua Lu <lujianhua000@gmail.com>, 
	Stefan Schmidt <stefan.schmidt@linaro.org>, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v9 27/28] media: iris: enable video driver probe of
 SM8250 SoC
Message-ID: <xh5jbf2w7lwqub5f7re7yipsbax5p4svpdpuctgpo2a2efmpah@haqjpch44hzc>
References: <20241212-qcom-video-iris-v9-0-e8c2c6bd4041@quicinc.com>
 <20241212-qcom-video-iris-v9-27-e8c2c6bd4041@quicinc.com>
 <Z3_nCPk_g8znto4A@hovoldconsulting.com>
 <te2nhzkl2mx3y7vknokzwtr7szfge7dum7sy37ndy6laot5yqn@urv7svjqgmk7>
 <1bcf0995-cb77-4e01-b3e0-14f88dc91140@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1bcf0995-cb77-4e01-b3e0-14f88dc91140@linaro.org>

On Wed, Jan 15, 2025 at 10:49:28PM +0000, Bryan O'Donoghue wrote:
> On 10/01/2025 00:12, Dmitry Baryshkov wrote:
> > On Thu, Jan 09, 2025 at 04:11:04PM +0100, Johan Hovold wrote:
> > > On Thu, Dec 12, 2024 at 05:21:49PM +0530, Dikshita Agarwal wrote:
> > > > Initialize the platform data and enable video driver probe of SM8250
> > > > SoC. Add a kernel param to select between venus and iris drivers for
> > > > platforms supported by both drivers, for ex: SM8250.
> > > 
> > > Why do you want to use a module parameter for this? What would be the
> > > default configuration? (Module parameters should generally be avoided.)
> > > 
> > > Why not simply switch to the new driver (and make sure that the new
> > > driver is selected if the old one was enabled in the kernel config)?
> > 
> > Because the new driver doesn't yet have feature parity with the venus
> > driver. So it was agreed that developers provide upgrade path to allow
> > users to gradually test and switch to the new driver. When the feature
> > parity is achieved, the plan is to switch default to point to the Iris
> > driver, then after a few releases start removing platforms from Venus.
> > 
> > > > Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org> # x1e80100 (Dell
> > > 
> > > Looks like something is missing from Stefan's Tested-by tag throughout
> > > the series ("Dell XPS13"?)
> > > 
> > > > Reviewed-by: Stefan Schmidt <stefan.schmidt@linaro.org>
> > > > Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > > > +static bool prefer_venus = true;
> > > > +MODULE_PARM_DESC(prefer_venus, "Select whether venus or iris driver should be preferred");
> > > > +module_param(prefer_venus, bool, 0444);
> > > > +
> > > > +/* list all platforms supported by only iris driver */
> > > > +static const char *const iris_only_platforms[] = {
> > > > +	"qcom,sm8550-iris",
> > > > +	NULL,
> > > > +};
> > > 
> > > Surely you don't want to have to add every new platform to two tables
> > > (i.e. the id table and again here).
> > 
> > I'd agree here, this list should go. We should only list platforms under
> > the migration.
> > 
> > > 
> > > > +
> > > > +/* list all platforms supported by both venus and iris drivers */
> > > > +static const char *const venus_to_iris_migration[] = {
> > > > +	"qcom,sm8250-venus",
> > > > +	NULL,
> > > > +};
> > > > +
> > > > +static bool video_drv_should_bind(struct device *dev, bool is_iris_driver)
> > 
> > The name should follow other names in the driver.
> > `video_drv_should_bind` doesn't have a common prefix.
> > 
> > Also export it and use it from the venus driver if Iris is enabled.
> > 
> > > > +{
> > > > +	if (of_device_compatible_match(dev->of_node, iris_only_platforms))
> > > > +		return is_iris_driver;
> > > > +
> > > > +	/* If it is not in the migration list, use venus */
> > > > +	if (!of_device_compatible_match(dev->of_node, venus_to_iris_migration))
> > > > +		return !is_iris_driver;
> > > > +
> > > > +	return prefer_venus ? !is_iris_driver : is_iris_driver;
> > > > +}
> > > > +
> > > >   static int iris_probe(struct platform_device *pdev)
> > > >   {
> > > >   	struct device *dev = &pdev->dev;
> > > > @@ -196,6 +224,9 @@ static int iris_probe(struct platform_device *pdev)
> > > >   	u64 dma_mask;
> > > >   	int ret;
> > > > +	if (!video_drv_should_bind(&pdev->dev, true))
> > > > +		return -ENODEV;
> > > 
> > > AFAICT nothing is preventing venus from binding even when 'prefer_venus'
> > > is false.
> > > 
> > > > +
> > > >   	core = devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
> > > >   	if (!core)
> > > >   		return -ENOMEM;
> > > > @@ -324,6 +355,10 @@ static const struct of_device_id iris_dt_match[] = {
> > > >   		.compatible = "qcom,sm8550-iris",
> > > >   		.data = &sm8550_data,
> > > >   	},
> > > > +	{
> > > > +		.compatible = "qcom,sm8250-venus",
> > > > +		.data = &sm8250_data,
> > > > +	},
> > > >   	{ },
> > > >   };
> > > >   MODULE_DEVICE_TABLE(of, iris_dt_match);
> > > 
> > > Johan
> > 
> 
> One drawback to this approach is; if CONFIG_QCOM_VENUS=n and
> CONFIG_QCOM_IRIS=m you still need to-do
> 
> zcat /proc/config.gz | grep -e VENUS -e IRIS
> CONFIG_VIDEO_QCOM_IRIS=m
> # CONFIG_VIDEO_QCOM_VENUS is not set
> 
> rmmod iris
> modprobe iris prefer_venus=0
> 
> which is awkward.
> 
> Certainly if venus is off the parameter should default to false.

Not just the parameter. The whole function should become a stub if
either iris or venus is off.

> Perhaps I've missed the resolution of this discussion but how exactly are we
> fixing the "racy" nature of binding here ?
> 
> Shouldn't there be a parallel venus patch which either has its own module
> parameter to quiesce binding in favour of iris ?

Venus should call video_drv_should_bind() too. Possibly it's worth
separating this function and a table to a helper kernel module, so that
the venus driver doesn't suddenly get a runtime dependency on iris if
both are enabled.

> 
> i.e if
> 
> CONFIG_QCOM_VENUS=m and CONFIG_QCOM_IRIS=m
> 
> rmmod iris
> rmmod venus
> 
> (sleep $((RANDOM % 3600)); (modprobe iris prefer_venus=0) &> /dev/null &
> disown) &
> 
> (sleep $((RANDOM % 3600)); (modprobe venus) &> /dev/null & disown) &
> 
> Will do what exactly ?

Nice question. I'd add iris.prefer_venus=0 to kernel commandline and let
it live there for a transition period. It should fix the possible race
condition here.

-- 
With best wishes
Dmitry

