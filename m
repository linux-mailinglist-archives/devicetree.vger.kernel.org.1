Return-Path: <devicetree+bounces-79031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 136BF913E67
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 23:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE5CD2811CF
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 21:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3FE184116;
	Sun, 23 Jun 2024 21:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AvI4Ldc6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EF365C
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 21:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719176880; cv=none; b=jKi5lx9hIfzr1lYAIO8cjCEp/YvJhzdIWj97WbdA4g3ULre5OiXA6ywN0/T8aXcwoVt9QXBsgXLdnYSjzqbHqILVSVscjxY2rJc/5yTFyfIoLm62f7cstIEmyj7cdZb9MxUr+e+uV1VWji5m/XEhKcdRYYqppRQzbq/yULgYMSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719176880; c=relaxed/simple;
	bh=8rN7Eq/Elatf9F9ma/Po1Gm6he+RB/4o5q19VyFxU2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h3qwZsz0RvAZsZLf6yQJ5sJwpeI6d+d0hUYc/kavw1xjrSo2HCiZHfJO1UcJoXNR7by65ApniIfCaAY5ucW/f4w3hAElZZgS5jSt1OKGCyHOINAStLYrLtCvmVT4NH1fsNJphQYGewISY6GZp4DTOUBs3FlpqnLr1ZC/NKvLzbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AvI4Ldc6; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so43293161fa.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 14:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719176877; x=1719781677; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bn3XVAl2b/VVj7+ANpPXLYR04bLlOpvbJszDOHEIUlk=;
        b=AvI4Ldc6LRyS/kGzNb9wC07TFl1Fy0+CtNbZuxVs7EWybsbHNNucPkN4e7ItvyT2oR
         kRc3WFlQWU9BC+qo1TTZOlh01IxAJ/CNYGLRo9eo6LKhtDCJIu7IXLHIUsjsAzv5xaG6
         q+7D5JLn11WsnzxDYZ4qN96UxDxwhRBFJ3ZRdyuToDOK0+V0qXeXU6dG+Pmns6xprg/1
         iyGd66JYFyQzIOIprleQSKTy7EN6sNg8jae468YNZ8CvugDKVWfw/xDHSLJsKTc8Oaun
         W4RvB2T3PNklyFiS32O8GP5Lxshj1/66ICFFw3Ord4wuwmRE4V0uFy3rQlVoIHQZ6tKT
         CLRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719176877; x=1719781677;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bn3XVAl2b/VVj7+ANpPXLYR04bLlOpvbJszDOHEIUlk=;
        b=sXJu+J8r6uh+l1eEn5uGZyigRzTM3yJqGdX77rguffo0s+EduR3IAogSt6vJYrSe5e
         OOHiBr/CvSg7TEIazCEB6v5rmZhKpkq0rpXAmL44Zp/qgMJBlGzHCH5vfJXEW/CEz9uN
         weddk6yvyynon/k/kQ9mMo6LvTWpB1OfGc6w5I1rWqBC02eMqZBL1Nb0gy22HaCfrsem
         9LWqTPnP3fsjWbhRa9JglSVXPUvzX3ljweUW+rpXyAyGqRNj8i0dBjDpZP7fIh01LqGm
         1jJwXPdq1kd2bUYePW/Di//W31DWcinKltJGcr8SvV2mpX0ZE96fh6nTavgo+egjcjVJ
         dEPg==
X-Forwarded-Encrypted: i=1; AJvYcCWdAXCT8Q/szAov+IK2VSuWhKJdAoB+0WZmWV7rz1wrQh1s+BCZpqFn+ukQ9c9ekhGpwSfdKix+Swqk8+AP2lcBdPE/94srqFW2xg==
X-Gm-Message-State: AOJu0Yy5HczMWA5A1Hrf1TiNcCj+bjrnQXT207lj+EAPDOe9zwNVhZsF
	3ttvf5ibv9coqkrV4uiUGV6A+PBE2v0ppgPPqKfGKJcvPXqUCkGpObw/YwZgXYM=
X-Google-Smtp-Source: AGHT+IE/+Cm6kTTws7yRC5u/oOPZAuYzqObXzz8cbQUZVy042qI2SPItKJruChfcYCXw+MKeWMonTQ==
X-Received: by 2002:a2e:97d8:0:b0:2eb:ef78:29c8 with SMTP id 38308e7fff4ca-2ec5797a37fmr21548801fa.14.1719176876831;
        Sun, 23 Jun 2024 14:07:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d76f791sm8277271fa.118.2024.06.23.14.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 14:07:56 -0700 (PDT)
Date: Mon, 24 Jun 2024 00:07:54 +0300
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
Subject: Re: [PATCH v4 08/10] drm/vs: add vs drm master driver
Message-ID: <uymjzpwsvlaoenftrc6y2colqpvtoniubuoncyslfychynom4i@3qvmcudgfrql>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-9-keith.zhao@starfivetech.com>
 <mbkrlg67jtggoqwecu6emymw3hgqoyf5pe55ho2fthq6pgnds2@ml7mbssrdr2x>
 <NTZPR01MB1050CAD9457771A58217A58CEECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <NTZPR01MB1050CAD9457771A58217A58CEECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>

On Sun, Jun 23, 2024 at 07:16:57AM GMT, Keith Zhao wrote:
> > On Tue, May 21, 2024 at 06:58:15PM +0800, keith wrote:
> > > Add vs DRM master driver for JH7110 SoC ADD DMA GEM driver
> > >
> > > Signed-off-by: keith <keith.zhao@starfivetech.com>
> > > ---
> > >  drivers/gpu/drm/verisilicon/Makefile |   3 +-
> > >  drivers/gpu/drm/verisilicon/vs_drv.c | 718
> > > +++++++++++++++++++++++++++
> > >  2 files changed, 720 insertions(+), 1 deletion(-)  create mode 100644
> > > drivers/gpu/drm/verisilicon/vs_drv.c
> > >

> > BIT(DRM_COLOR_YCBCR_BT2020),
> > > +		.zpos			= 0,
> > 
> > How are these zpos related to the zpos from drm_plane_state?
> Zpos was added to drm_plane_state by calling drm_plane_create_zpos_property funs,
> 
> vs_plane_primary_create 
> ------> drm_plane_create_zpos_property(......vs_plane_primary_info-> zpos )

Yes. But why do you need zpos here? Especially if it's set to 0.

> > 
> > > +
> > > +	drm_dev->mode_config.min_width = min_width;
> > > +	drm_dev->mode_config.min_height = min_heigth;
> > > +	drm_dev->mode_config.max_width = max_width;
> > > +	drm_dev->mode_config.max_height = max_height;
> > 
> > I thought that I saw mode_config.min/max being initialized.
> Yes the mode_config.min/max has been initialized，
> This place is doing an update according to detail info.

Then please drop previous initialisation. While looking at the code it's
impossible to understand which one is correct.


> > > +
> > > +static struct component_match *vs_add_external_components(struct
> > > +device *dev) {
> > > +	struct component_match *match = NULL;
> > > +	int i;
> > > +
> > > +	for (i = 0; i < ARRAY_SIZE(drm_sub_drivers); ++i) {
> > > +		struct platform_driver *drv = drm_sub_drivers[i];
> > > +		struct device *p = NULL, *d;
> > > +
> > > +		while ((d = platform_find_device_by_driver(p, &drv->driver))) {
> > > +			put_device(p);
> > > +
> > > +			drm_of_component_match_add(dev, &match,
> > component_compare_of,
> > > +						   d->of_node);
> > > +			p = d;
> > > +		}
> > > +		put_device(p);
> > 
> > What about just going through the graph connections instead and adding them?
> 
> The purpose of using components is to create encoder and connector to the drm subsystem by calling component_bind_all
> 
> graph connection needs to be based on whether there is a bridge at present. 
> If the bridge has been added, it can be obtained through drm_of_get_bridge 
> Create a connector based on the obtained bridge and then attach the connector to the encoder.
> Then do drm_dev_register.
> 
> I don't know if my understanding is consistent with yours. Please help confirm it.
> Thanks

Your code is looping over the subdrivers, locating devices and then
adding them as components. Can you instead use device nodes which are
connected to your master via the OF graph? If I understand examples in
your DT bindings correctly, this approach should work.

> > > +static void __exit vs_drm_fini(void)
> > > +{
> > > +	platform_driver_unregister(&vs_drm_platform_driver);
> > > +	platform_unregister_drivers(drm_sub_drivers,
> > > +ARRAY_SIZE(drm_sub_drivers)); }
> > > +
> > > +late_initcall_sync(vs_drm_init);
> > 
> > Why _sync?
> 
> late_initcall_sync will make it success ,when do devm_drm_of_get_bridge.
> Also it can use the " EPROBE_DEFER " to avoid it,

Why do you need this? It's perfectly fine to have DRM devices probe
assynchronously.

> > 
> > > +module_exit(vs_drm_fini);
> > > +
> > > +MODULE_DESCRIPTION("VeriSilicon DRM Driver");
> > MODULE_LICENSE("GPL");
> > > --
> > > 2.27.0
> > >

-- 
With best wishes
Dmitry

