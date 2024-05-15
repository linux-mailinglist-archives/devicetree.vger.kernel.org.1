Return-Path: <devicetree+bounces-67116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 349418C6981
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 17:17:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 583241C20EEA
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 15:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A9E155743;
	Wed, 15 May 2024 15:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lr7SPNX2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506C3149DEE
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 15:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715786234; cv=none; b=JIe3aW2nXNZid+NrBs8cdpspnWTiAv7BhwK1fMqFyZqwco6cwD8t3qUGWTRQNuN5qkVbJibgDpqYhR9K6JuJQPclfnpzM742YDMnI8O0ebr9Atsht/7qoEkNVMVRV2a45NaxISa7ndYbVuUWIqFWtwKqFkMg7eMXm7tAmG84WTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715786234; c=relaxed/simple;
	bh=JygM0wi++CYnqmfN6Lmj9gMrZY+Usd3FTL4ZUxg5yC0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UGsEgx4uiU+jQ5EeumZLxJ7fg5j6zM9VWHH51FM4yuUAUeU5ah6KLjCzwk/vu6EyicP8lkg9U8Ib206ZJP95m58TyCgHNdyH/ExzuXoJxEuo2NF7k2M9LK0JYoVfIy2yvUHyZvrLcY0Be61mKt4P23ypYgOiGZ5/IoWOk08Xa+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lr7SPNX2; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5238fe0cfc9so884745e87.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 08:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715786230; x=1716391030; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z9DhrYZzp/EIYZ8abLcnEA0fy1NH812BKWTrOUW8L5k=;
        b=Lr7SPNX2jct3kth+Vqt2D+tobUqylGaoaCVzw31Rcq3NmvB397LnCmZr7WateiQMR5
         ZA2tEhFEaMi08lyUn5DaZsNTBfcDVbMV5oZ54ggYFGjMu45JJAtWAo+GLoKg3uA62RiC
         B8eKb60gHtozt7mN8FknIbwmZTEKa2bO3WxIQT4fpXBHYrG4/YULYXdo9cHa2O2LXbEZ
         mVtTwAReymDUhZ+bDhUg3/tdVfRLo5ZjtS5rO3McRP166ZFOCKBx6vdmG9smYazD29/w
         t3zFfWz4pAP3Z80huvHPJHZ89S3aNxoFo05ouwyDdMAkIDxlxjbwFOg/HVsFi8EWXTgt
         77sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715786230; x=1716391030;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z9DhrYZzp/EIYZ8abLcnEA0fy1NH812BKWTrOUW8L5k=;
        b=JMXWEDEsOkO9+plnD+mCBUcFZN6lfJYxaTbpaYinm1h7zWrN1YD0wbNj2m1bbX1sO5
         of4NbZUMAIsHMdxEyLB90ssUOvGVavGAC8iih8HstdkK3YPe7hQ29JyOPyJ0zBlB1dm4
         lQVRdEU2tCwgKjnY4oYMXU1+rFditzwGnfQQG1yT9YoTTC4WH8tYHSWwy/DBHCDKsbIo
         aMRYUXjvgjMZAzttN5Y6gLTuHY+dIDEty6AI9Rur25Ms2glTnVgEvbr7aHvq4jc6OowZ
         rPpo0qpRa1XvjsgWu2l8yy/iwWOefdAjQgVxC1OdiWjXTLPcWiJlBi0ZDiFH3+sFiZ/I
         gE2Q==
X-Gm-Message-State: AOJu0YxNoPPk1QqWP6aklO+YyWfJYi0IlNRdNV16w3zo1be2AvXgvwLy
	toougliMXIy04FK91Z2Cbbccty5Vw1JFilr3/xVBA49APdNi41DEkpfeY7cUcXg=
X-Google-Smtp-Source: AGHT+IHyTmkOm1TsXY8cn3cuLocZb8fmYoDpZ+JmZuMDLomyQjYv9EvJEhkhRq7MhsWaBmV6Ot3NOw==
X-Received: by 2002:a05:6512:33d2:b0:51f:5f6d:3fba with SMTP id 2adb3069b0e04-521e126be71mr7515859e87.27.1715786230365;
        Wed, 15 May 2024 08:17:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d8784sm2543785e87.191.2024.05.15.08.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 08:17:09 -0700 (PDT)
Date: Wed, 15 May 2024 18:17:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, 
	"suijingfeng@loongson.cn" <suijingfeng@loongson.cn>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "mripard@kernel.org" <mripard@kernel.org>, 
	Xingyu Wu <xingyu.wu@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, 
	"palmer@dabbelt.com" <palmer@dabbelt.com>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, William Qiu <william.qiu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
Subject: Re: [v3 6/6] drm/vs: simple encoder
Message-ID: <vimeq7nqco4iu5kbwetkoyiwe4kosb4wf3ch3eqcx4lzexp4hc@cul2sle6glvy>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-7-keith.zhao@starfivetech.com>
 <CAA8EJpqbQKjTeEdOpwNy7P+dJK-nnZzZYefyzoG+JWKVgsS=rw@mail.gmail.com>
 <CAA8EJpqrYpL8N4_nXW4BbJRuUR=zqmP88Ze6_xkoZRStso6ugA@mail.gmail.com>
 <NTZPR01MB1050B57AEAD7FC6EE1911D5FEEEC2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <NTZPR01MB1050B57AEAD7FC6EE1911D5FEEEC2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>

On Wed, May 15, 2024 at 10:07:27AM +0000, Keith Zhao wrote:
> 
> 
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Sent: 2023年12月5日 21:19
> > To: Keith Zhao <keith.zhao@starfivetech.com>
> > Cc: devicetree@vger.kernel.org; dri-devel@lists.freedesktop.org;
> > linux-kernel@vger.kernel.org; linux-riscv@lists.infradead.org;
> > aou@eecs.berkeley.edu; suijingfeng@loongson.cn; tzimmermann@suse.de;
> > paul.walmsley@sifive.com; mripard@kernel.org; Xingyu Wu
> > <xingyu.wu@starfivetech.com>; Jack Zhu <jack.zhu@starfivetech.com>;
> > palmer@dabbelt.com; krzysztof.kozlowski+dt@linaro.org; William Qiu
> > <william.qiu@starfivetech.com>; Shengyang Chen
> > <shengyang.chen@starfivetech.com>; Changhuang Liang
> > <changhuang.liang@starfivetech.com>
> > Subject: Re: [v3 6/6] drm/vs: simple encoder
> > 
> > On Tue, 5 Dec 2023 at 15:14, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > wrote:
> > >
> > > On Mon, 4 Dec 2023 at 14:33, Keith Zhao <keith.zhao@starfivetech.com>
> > wrote:
> > > >
> > > > add simple encoder for dsi bridge
> > >
> > > This doesn't look like a proper commit message.
> > >
> > > >
> > > > Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> > > > ---
> > > >  drivers/gpu/drm/verisilicon/Makefile        |   4 +-
> > > >  drivers/gpu/drm/verisilicon/vs_drv.c        |   2 +
> > > >  drivers/gpu/drm/verisilicon/vs_simple_enc.c | 195
> > > > ++++++++++++++++++++  drivers/gpu/drm/verisilicon/vs_simple_enc.h |
> > > > 23 +++
> > > >  4 files changed, 223 insertions(+), 1 deletion(-)  create mode
> > > > 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.c
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.h
> > > >
> > > > diff --git a/drivers/gpu/drm/verisilicon/Makefile
> > > > b/drivers/gpu/drm/verisilicon/Makefile
> > > > index 71fadafcee13..cd5d0a90bcfe 100644
> > > > --- a/drivers/gpu/drm/verisilicon/Makefile
> > > > +++ b/drivers/gpu/drm/verisilicon/Makefile
> > > > @@ -5,6 +5,8 @@ vs_drm-objs := vs_dc_hw.o \
> > > >                 vs_crtc.o \
> > > >                 vs_drv.o \
> > > >                 vs_modeset.o \
> > > > -               vs_plane.o
> > > > +               vs_plane.o \
> > > > +               vs_simple_enc.o
> > > > +
> > > >  vs_drm-$(CONFIG_DRM_VERISILICON_STARFIVE_HDMI) +=
> > starfive_hdmi.o
> > > >  obj-$(CONFIG_DRM_VERISILICON) += vs_drm.o diff --git
> > > > a/drivers/gpu/drm/verisilicon/vs_drv.c
> > > > b/drivers/gpu/drm/verisilicon/vs_drv.c
> > > > index d7e5199fe293..946f137ab124 100644
> > > > --- a/drivers/gpu/drm/verisilicon/vs_drv.c
> > > > +++ b/drivers/gpu/drm/verisilicon/vs_drv.c
> > > > @@ -23,6 +23,7 @@
> > > >  #include "vs_drv.h"
> > > >  #include "vs_modeset.h"
> > > >  #include "vs_dc.h"
> > > > +#include "vs_simple_enc.h"
> > > >
> > > >  #define DRV_NAME       "verisilicon"
> > > >  #define DRV_DESC       "Verisilicon DRM driver"
> > > > @@ -217,6 +218,7 @@ static struct platform_driver *drm_sub_drivers[]
> > > > = {  #ifdef CONFIG_DRM_VERISILICON_STARFIVE_HDMI
> > > >         &starfive_hdmi_driver,
> > > >  #endif
> > > > +       &simple_encoder_driver,
> > > >  };
> > > >
> > > >  static struct component_match *vs_drm_match_add(struct device *dev)
> > > > diff --git a/drivers/gpu/drm/verisilicon/vs_simple_enc.c
> > > > b/drivers/gpu/drm/verisilicon/vs_simple_enc.c
> > > > new file mode 100644
> > > > index 000000000000..c5a8d82bc469
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/verisilicon/vs_simple_enc.c
> > > > @@ -0,0 +1,195 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (C) 2020 VeriSilicon Holdings Co., Ltd.
> > > > + */
> > > > +#include <linux/component.h>
> > > > +#include <linux/of_device.h>
> > > > +#include <linux/module.h>
> > > > +
> > > > +#include <drm/drm_atomic_helper.h>
> > > > +#include <drm/drm_bridge.h>
> > > > +#include <drm/drm_crtc_helper.h>
> > > > +#include <drm/drm_of.h>
> > > > +#include <linux/regmap.h>
> > > > +#include <linux/media-bus-format.h> #include <linux/mfd/syscon.h>
> > > > +
> > > > +#include "vs_crtc.h"
> > > > +#include "vs_simple_enc.h"
> > > > +
> > > > +static const struct simple_encoder_priv dsi_priv = {
> > >
> > > Please use proper prefix for all the struct and function names.
> > > vs_simple_encoder sounds better. Or vs_dsi_encoder.
> > >
> > > > +       .encoder_type = DRM_MODE_ENCODER_DSI };
> > > > +
> > > > +static inline struct simple_encoder *to_simple_encoder(struct
> > > > +drm_encoder *enc) {
> > > > +       return container_of(enc, struct simple_encoder, encoder); }
> > > > +
> > > > +static int encoder_parse_dt(struct device *dev) {
> > > > +       struct simple_encoder *simple = dev_get_drvdata(dev);
> > > > +       unsigned int args[2];
> > > > +
> > > > +       simple->dss_regmap =
> > syscon_regmap_lookup_by_phandle_args(dev->of_node,
> > > > +
> > "starfive,syscon",
> > > > +
> > 2,
> > > > + args);
> > > > +
> > > > +       if (IS_ERR(simple->dss_regmap)) {
> > > > +               return dev_err_probe(dev,
> > PTR_ERR(simple->dss_regmap),
> > > > +                                    "getting the regmap
> > failed\n");
> > > > +       }
> > > > +
> > > > +       simple->offset = args[0];
> > > > +       simple->mask = args[1];
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +
> > > > +void encoder_atomic_enable(struct drm_encoder *encoder,
> > > > +                          struct drm_atomic_state *state) {
> > > > +       struct simple_encoder *simple = to_simple_encoder(encoder);
> > > > +
> > > > +       regmap_update_bits(simple->dss_regmap, simple->offset,
> > simple->mask,
> > > > +                          simple->mask); }
> > > > +
> > > > +int encoder_atomic_check(struct drm_encoder *encoder,
> > > > +                        struct drm_crtc_state *crtc_state,
> > > > +                        struct drm_connector_state *conn_state) {
> > > > +       struct vs_crtc_state *vs_crtc_state =
> > to_vs_crtc_state(crtc_state);
> > > > +       struct drm_connector *connector = conn_state->connector;
> > > > +       int ret = 0;
> > > > +
> > > > +       struct drm_bridge *first_bridge =
> > drm_bridge_chain_get_first_bridge(encoder);
> > > > +       struct drm_bridge_state *bridge_state = ERR_PTR(-EINVAL);
> > > > +
> > > > +       vs_crtc_state->encoder_type = encoder->encoder_type;
> > > > +
> > > > +       if (first_bridge && first_bridge->funcs->atomic_duplicate_state)
> > > > +               bridge_state =
> > > > + drm_atomic_get_bridge_state(crtc_state->state, first_bridge);
> > >
> > > Please don't poke into others' playground. This should go into your
> > > DSI bridge's atomic_check() instead.
> > 
> > Hmm. And you can not use vs_crtc_state from your bridge. Actually this design
> > makes me wonder, how does your hardware work? Is it possible to send the DSI
> > commands to the panel?
> > 
> Hi Dmitry:
> 1、 This fun is used to check the media bus format whether in support list , if not , this mode will be invalid,
>     I just used the bridge api to get the media bus format. (sync with the input bridge(connector) bus format)
> 2、 the bridge doesn't care the vs_crtc_state,  just do their own drm_bridge_funcs ->atomic_check, 
>     or it will be impossible to make this dsi encoder to fit dsi bridge driver.
> 3、 hardware work :
>     encoder_atomic_check get the media bus format and update it to vs_crtc_state-> output_fmt,
>     during the crtc_enable , it will write the output_fmt to hardware .
> 
> 4、	to send dsi command to panel ,  It is only relevant to dsi controllers and panel driver (bridge and panel )，
> 	It does not involve the logic associated with encoder and crtc

Do you have a pointer to your DSI bridge driver somewhere (a preliminary
version is ok, if it's not ready yet for upstream submission). From the
current design it seems that there is no need for a separate 'simple'
encoder. Instead it might be easier/better to transform your DSI bridge
driver into an encoder driver, especially as you are prety flexible in
the component connections.

> 
> https://elixir.bootlin.com/linux/v6.6.30/source/drivers/gpu/drm/mxsfb/lcdif_kms.c#L457
> Do the similar logic

-- 
With best wishes
Dmitry

