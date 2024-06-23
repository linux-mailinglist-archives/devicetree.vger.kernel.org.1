Return-Path: <devicetree+bounces-79021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5256C913E3D
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 22:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 758451C20C93
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 20:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71BDA1849CE;
	Sun, 23 Jun 2024 20:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P4cpegvZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0AB184132
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 20:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719176081; cv=none; b=dAHhltS0hFuVH++ghWKW9hs/Nl7wofmILu3XplVyLSaFC2FN8MVjaUkJYnCHCYBfz5jxaJOEQin40fIdUvzfc5hA82ocbG+4SBicxyD18rliIHztz98j7otqa/MSXaedVQA/uHY5F0AUmtG45fi/g7atQwhZS6Eq/L1/+4ra3qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719176081; c=relaxed/simple;
	bh=2/Xm3yr86KIqcykYHU4jn+op8F+W0i9aaf6uj+dVwNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NdN0hOPnbDfIOvLeY7bjHmKZXpp0+qGbkcsHeGgNWNJMkKV603cXDzJuDlrBVPFBMzmHZ9w7yRnWHWqGDyBDpTSnJ1nU0Mw8TsZ847ios64tQIKi0PiuYaIJPpXUbZNuilLzS9ebW9BuEVPKGNxxlQc2QgMupm6sWMTfR1LS8Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P4cpegvZ; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52cdf579dd2so1164182e87.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 13:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719176078; x=1719780878; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CQ6PtGCSFslWh1NWs4l9F/KIrbPK8P3SynMUjUqvTRk=;
        b=P4cpegvZg2H9YXgWx2BCSAluRbigc0STekh9/o5v40oTkFNYVANBdWD1LH0Env03xo
         kfA1x9MfOGmMZsQ/xEI2Wm8Ncb4e+zz7iKiXT0Cbd0OxeK0r3mkqJikHQgGgBHwB+UQN
         yrPCn0ZTblxlntZMUjvBj1kNoOfiuJZ/yXoiTN7fImPuXUY2kLTzCNTypvRHFmsAItQg
         sVK33e+bpdFxnjXMPPnnMfjwridaaUJyWFQI4/ntbyAb7VCy9ERGewc7nQPI21fxTmuc
         U6Tl6nmb1itq4t0M8PAixTGUCcQLRQjNM1KvhKVzskn7xyulsLNh/CerxaeaXjnaqKTU
         /JMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719176078; x=1719780878;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CQ6PtGCSFslWh1NWs4l9F/KIrbPK8P3SynMUjUqvTRk=;
        b=V+RM/a6gJIaw6HzWU0lzO61i2e4bGEeK0TwiiCgwBPrYYvsqcRLVWaQUgsUa2v/q7x
         dykjxAevYJeIRJHuaNqo30RXpbeRGP2bOGMiNzWbqmIuuTVeC9lOfMQ0T2658a0Scjmp
         /Yhskl6iAIbr0naqob5wOMZ07s4rHfu8OGE5i+ReT/cLZ6wBIGu0aF7wotal133U9w3n
         jScrUJcUFZWCTxQWFgSKEzZBG4PdTGoRNa0yUe42QIHurtz2VDUoKndq4ERvS0ParjFR
         gdajX4146auG6rQDuZjhWgzzDJC6tCAdjFa00ZbKcdRxCOt1qwiUc9Mzr1PL6Tpi+Icm
         3VNw==
X-Forwarded-Encrypted: i=1; AJvYcCW88JAnWDKEgaHL7HL37lswuITSP7mcORhHv7nqWZzbUiKcHRIasTdWHdCo5tnf29BmLpQCZmjEf+5pQgkcqNGDFM1zF20//syzeQ==
X-Gm-Message-State: AOJu0Yz7201hVu5n2VxLEzhUU/RuBHcQKy61F7EW+b8xuQDCpgZ2loMQ
	bvRB8YDKEz5n3QIPvEBzVFphIqHm7JG8xSw76uLUdNcd22gYaRDVdWWA5lGCL/s=
X-Google-Smtp-Source: AGHT+IHcvQBzyPAeMdz+wbElXVCVQl+gsHiPe/J7kj0/xSGAFtwHdOhJ+qHCSmuAqniUaRWk/9TkJQ==
X-Received: by 2002:a19:f614:0:b0:52c:dbd9:45e7 with SMTP id 2adb3069b0e04-52cdf826730mr2349608e87.57.1719176077718;
        Sun, 23 Jun 2024 13:54:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63cb64csm845518e87.108.2024.06.23.13.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 13:54:37 -0700 (PDT)
Date: Sun, 23 Jun 2024 23:54:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org" <rfoss@kernel.org>, 
	"Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"hjc@rock-chips.com" <hjc@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, 
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, Xingyu Wu <xingyu.wu@starfivetech.com>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, Jack Zhu <jack.zhu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 06/10] drm/vs: add vs plane api
Message-ID: <2bo3yzeogfup2qfyeqrq2ini7g3evshteqpd5lxr6l5jupfo6w@tqwg2zuhlpph>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-7-keith.zhao@starfivetech.com>
 <gcwvgco3ixpwaalnaq5qzwcp3sq44dgphps7vlqm6zdozu6ci2@vfq4ovpxk25n>
 <NTZPR01MB1050934BBB12DC9DC8BD9740EECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <NTZPR01MB1050934BBB12DC9DC8BD9740EECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>

On Sun, Jun 23, 2024 at 07:17:07AM GMT, Keith Zhao wrote:
> > 
> > On Tue, May 21, 2024 at 06:58:13PM +0800, keith wrote:
> > > add plane funs and helper funs
> > > add vs drm common struct and funs
> > >
> > > Signed-off-by: keith <keith.zhao@starfivetech.com>
> > > ---
> > >  drivers/gpu/drm/verisilicon/Makefile   |   3 +-
> > >  drivers/gpu/drm/verisilicon/vs_drv.h   |  93 +++++
> > >  drivers/gpu/drm/verisilicon/vs_plane.c | 487
> > > +++++++++++++++++++++++++  drivers/gpu/drm/verisilicon/vs_plane.h |
> > > 26 ++
> > >  4 files changed, 608 insertions(+), 1 deletion(-)  create mode 100644
> > > drivers/gpu/drm/verisilicon/vs_drv.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h

> > > +
> > > +/*@pitch_alignment: buffer pitch alignment required by sub-devices.*/
> > 
> > Is that all the docs you want to add?
> It should delete the redundant parts which is unused,
> To make this patch clearer to review 

I'm sorry, I can't understand your comment.

> > 
> > > +struct vs_drm_device {
> > > +	struct drm_device base;
> > > +	unsigned int pitch_alignment;
> > > +	/* clocks */
> > > +	unsigned int clk_count;
> > > +	struct clk_bulk_data	*clks;
> > > +	struct reset_control	*rsts;
> > > +	struct vs_dc dc;
> > > +	int irq;
> > 
> > As usual, please drop unused fields and add them when required.
> 
> In principle, I try to split the patch independently according to this.
> In fact, there is still a lot of room for optimization
> The subsequent patches will maintain independence and remove redundant parts for decoupling

Yes, please.

-- 
With best wishes
Dmitry

