Return-Path: <devicetree+bounces-142952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A08C1A27601
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 16:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4D091887389
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 15:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B4062144A6;
	Tue,  4 Feb 2025 15:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FRHDnsg9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B802213E90
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 15:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738683333; cv=none; b=sFiQU0xBwBp2EXFvJs6q1I5niTjs6eHM77lofM+onJyfPAMQst7fKMtmD96wpizA42CBqXn2SLUaAq83Iz+vZz43Obyg1/y3CCSNonOV7ULzx7gEEgiBBbnT+x1sKzyAVQlmjIS8TjmhjJ7Q1NdkbGKiKeMQEfsRbX5d1UKB1Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738683333; c=relaxed/simple;
	bh=DVWVLiFZX3pBISObkfjiwN9Rg1VSfP0CMx9QbuGF9Gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iRCXR94Yerab1eitunCD7zrtaxhV+ZzhOx287dg8BlUFFlzMQDw2jNWaI0n1IvvMV8m/WzkIb4AwPujVpGL39fnffbdRzoF3ws2bCftPJkJPOaDXBO/9TKqroO4K+iRNAXHQI7ypybmE5gwCT+VbRJIez021FGgSHzewcx45RVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FRHDnsg9; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30616d71bb0so58971801fa.3
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 07:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738683329; x=1739288129; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Mo0faCQWMQesSAiWhpm/M42GsGQUGBhbD7joezmU+YI=;
        b=FRHDnsg9MKBV4f9bynE26YGmNgIvZ0f99xhfh9dtV7M34uxUY6s5dQgdhi5V2KIriW
         4LLi7HhwFXLEHy2F1X405q76BnQLcsBDv84BtlK8TrKZ3MlgCQ+8Tu2mFElMw2+XVRk6
         b0TuWjzu2Z0AkjsyJkTUESv59kDksXGZOL4FfJhs1MvD/UY8a2leHUR13KBcEPiQeXte
         Y8pDv4sf7wZFbUsbMgX92xKFZsiqHChchUr0V7f7ZphF2zj+eZd6mDWEA2sH02dc6rFD
         FFD6sV9dJRMlEcxa9JcjwF6MGfCYikjWJSIAEdDue33Mu4THV5MSX8H/AAH99UrcBsdu
         tgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738683329; x=1739288129;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mo0faCQWMQesSAiWhpm/M42GsGQUGBhbD7joezmU+YI=;
        b=vbofBTB5WM3mermOGeBRg/lNLw/pwIlaK8jw0LY1zmcUV7dB16iJsCw9oD5qPzEadu
         xcLbBxbn/kd21Q4nPfqOTJ3oYLQsB6w+MDeriseLpAfK5PDu8MF5cCGDDXZS8mGqRNvL
         oyXN02+vE7lheaQbmUsdJPoSjtX77bpqtZ5QJbFVyQVSDJM2Q6QAVJRGjBKRzB6AxkGU
         lCpKV9hKx7SbUxGzPacjCnmLa31eJMpawVdNRg8Sygrz6Tg0HkvDN6x3wb235yREt9la
         B+S70gaycSeQ6lfhWvyBQqLsuDHb8LzFPDVK75yZXMxe+CYnOowhJzp0a90kKOoygarV
         x6yQ==
X-Forwarded-Encrypted: i=1; AJvYcCULaK3Xm9fLEu4kyQujy7DZpzv1OulxfCor4NU8dUWafRUoyerpWIjWj9OEUFDh2YorAefoBT2r9axu@vger.kernel.org
X-Gm-Message-State: AOJu0YxLPhUdU9Fzsf8rc0VVdXWJxpQJSCX+X6YSAUaxF0OdcSDnBrgS
	QDwM/jxFW8yZaIyHfeEY9yyHEM6EMMhnz7u1ZKDtuVZfg3AsphLVeCfsP9qLVaI=
X-Gm-Gg: ASbGncu4Ihm+I/FwCwpXrfjKsXF+16oyCKEfSNk2WjNnFoaGUM63dTUBO4b1i/lVcMI
	INnZNxG5amD1CvB5gQHTCftKchS2jw2+jDplwvLINZ146EOA+AabrwWOJnKwHs/v3GCfNFRV4ax
	81pRDHeoSEKi0aWjMKg4PmvkFkDffb05u45cw0ANcQh4UZeEAs7EAIHfbmSs3eVyFIjR5rXX8Bi
	qnQMBB0D1t4hwUG4qAQnOV7Pu3eTljHkCUw7rPhMc5h4AOuJQTj7Fql6OqHubPNBHYB+kPOwSDb
	XFxFArFE5jua6iCcrRqCzswlWBOLFvx5SB1QRxtHaePDVJzm8S1qggI3qq3zqgPf7S746dI=
X-Google-Smtp-Source: AGHT+IGSOdu+12crB/KrJD62kGAd9vR+Tk3cUEAAA23UqBKca/FTqES0sbInnGw1I1bv8/42+SlQng==
X-Received: by 2002:a2e:9fc5:0:b0:302:22e6:5f8 with SMTP id 38308e7fff4ca-30796878ee0mr112854481fa.22.1738683328930;
        Tue, 04 Feb 2025 07:35:28 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307a33f7747sm18683361fa.76.2025.02.04.07.35.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 07:35:27 -0800 (PST)
Date: Tue, 4 Feb 2025 17:35:26 +0200
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
Message-ID: <uc2rve7hqf4mmvobinaxzf5qncglysfeg2lbxmxvxapsewhgxh@2ppf757u352g>
References: <20241212-qcom-video-iris-v9-0-e8c2c6bd4041@quicinc.com>
 <20241212-qcom-video-iris-v9-27-e8c2c6bd4041@quicinc.com>
 <Z3_nCPk_g8znto4A@hovoldconsulting.com>
 <64f8bebd-35e1-c743-b212-e1a3292bade2@quicinc.com>
 <Z4EuiPEw8mvDQ2gv@hovoldconsulting.com>
 <24334fb8-4d83-eb06-aee3-dfe1f8e4937b@quicinc.com>
 <552972B8-1ACA-4243-A8E3-8F48DAF39C5C@linaro.org>
 <Z6CApNuSlPGvVL2k@hovoldconsulting.com>
 <fhqlt5xsz7yyrbnvhnovt66gzldjjbitpeznlvxztobdxmjnuw@d4avd5fq3muh>
 <Z6HjbXZsR9QmXxKy@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6HjbXZsR9QmXxKy@hovoldconsulting.com>

On Tue, Feb 04, 2025 at 10:52:45AM +0100, Johan Hovold wrote:
> On Mon, Feb 03, 2025 at 05:37:28PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Feb 03, 2025 at 09:39:00AM +0100, Johan Hovold wrote:
> > > On Fri, Jan 10, 2025 at 08:01:21PM +0200, Dmitry Baryshkov wrote:
> 
> > > > Also as venus and iris drivers are not completely
> > > > equivalent wrt supported platforms, distributions will have to select
> > > > whether to disable support for older platforms or for new platforms:
> > > > Kconfig dependency will make it impossible to enable support for both
> > > > kinds.
> > > 
> > > You shouldn't have both enabled. The only reason for keeping support
> > > for the same hardware in both drivers is that the iris support is
> > > incomplete and considered experimental. No one should enable that except
> > > for development and evaluation purposes until the driver is up to par.
> > > And then you drop support from the old driver along with the config
> > > option.
> > 
> > That's the plan. This modparam is a temporal thing for transition
> > period. And yes, as a developers / platform enablers we want to be able
> > to have a quick turnaround between drivers.
> > 
> > Please stop forcing your decisions on other people. The Linux kernel and
> > its development process has always been about providing a possibility,
> > not a policy.
> 
> That's just not true. The rule is to not have two drivers for the same
> hardware (even if we very rarely have accepted some well-motivated
> exceptions).
> 
> I understand that you may have an unorthodox view of this as you work on
> the MSM DRM driver, but hiding incomplete and broken code behind module
> parameters so that you can game the upstreaming process (e.g. like you
> did for the eDP PSR feature) is simply not a model that anyone should
> follow.

Let me point you the aic7xxx story, we had, if my memory is correct,
three drivers working with the same hardware at some point, during
transition period.

Regarding eDP PSR. It wasn't my implementation, so that's not correct
comparison. MDP5 -> DPU migration is mine and yes, it is implemented in
this way as we can trigger CI jobs having a single kernel, as developers
we can switch between MDP5 and DPU drivers in a quick way, etc.

-- 
With best wishes
Dmitry

