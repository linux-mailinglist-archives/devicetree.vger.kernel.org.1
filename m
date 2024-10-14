Return-Path: <devicetree+bounces-111019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6EA99C8B5
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:23:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC60D1C234A6
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446231A4F30;
	Mon, 14 Oct 2024 11:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OCMKF5PR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0B71A0B07
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904931; cv=none; b=AzDaevwViUQsk78lCbGhJcLsAJ1ME9qOKpmno2Doc8yiR092ICWSNTJbmVlzw+LENwUh5gGD2usONVVaC6DucEbATOKoiMwmjCXQX1mWNWrekUr4y8grCbRTMGAt/ZmrTiUzAfCOD3D5A0w2hoJQ9MYQ5HQg2JuPdRqgEc0npvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904931; c=relaxed/simple;
	bh=2wdQhAhyw/SdXzugpRpMo4y4p7fkvbNM1sGdlnuD0Ok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NrqO10P41BoeoOJGAivzfz02Zwk19eKD7KRBGSNoohSuml7DW69xZVEQf7t7O79JaSAhF0/8TR4kmI42gTZJ21tu8bzOowftzcXfkInICN8LMoAghlgx39CVYjnZPim6k/PO394exWY7KBbnoGWkmojz6oa9LaLjVrLej4zfZmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OCMKF5PR; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f0f9ee49so1164038e87.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728904927; x=1729509727; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c/WJZ6TxkTCNzjbO8VtHNLVTfZRsmiEKJfPFl0v8JMg=;
        b=OCMKF5PREoVAuXyFCsH52t1It1xtvygNfPfzo/4tNpZkRJYY5tn6x/31UOj0QJgmD6
         Ff05GsPhIchcXH08rqqr9BQdxhBQI4VJLTp+XJS9+ejRbNAJyj3fXYJl1i4bllNhI95z
         /TWeAyFiBZ0cG/aLuGCCoZkNUEZf4HgyQg0M7d1jgi8Bow8h4PBozXEMl1ipeZRsSoit
         xrV1O4kxoRAvBTR8+Cb1RYeXRDHROg6XMC0ofe6dcgHWoGENi4xSG1ryhB03QgpgIoYY
         map+9idNtXeKvJSv/HDbSMDOdtjkpHM8j9R/c2Chd68W3g3VpsHQe6b/fRdrHdLJjCI1
         PSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904927; x=1729509727;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/WJZ6TxkTCNzjbO8VtHNLVTfZRsmiEKJfPFl0v8JMg=;
        b=jiCpWHnKcGkWkaSbrbnXk54yIUE8RQh4a16mGf1YPynUg0ehzHmQPdqKhVaE0ldyds
         +j5zpZBsnd+g65Tw6YCdqrPetRMrjtF4kmmT40NRukRMyyUXeMGRwL+K3NcU19D5nz88
         iQog4MRonLsAjUInk975mprEu/hm5TReCuTnDapNtRtxVfqIL0LXYXNZ1I7T37VTlZ8P
         K89qIXpN6Nq/UwzaAblZHGhrZ+xyPHO6S5zsIjGEJL2wTeVkqwk19csj/phuEyffgdSD
         CMA5LDu19Ax2HdrKknIA1coqWhhZhQUFW0iT8ag5myng+1BtZ8PjDObXgj8jnPDsRARi
         Tyjw==
X-Forwarded-Encrypted: i=1; AJvYcCXlq7zeNg+NzqvHd+k4B87zhMACOdhKykQC466MmK/6kVTbu7QI8JnnSlAmKUf/qnUC7nWHj+o8o7/7@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo4zQMOlKdZVJN2PQrfYHCPdCGDgnh18XvJ7QlG8nUhI2uYyV0
	pbHqQmla6B8mntdyZtcUU7ov5pIj21POgFVa3iEgP8RwhRQ4iyOQQu7GDOPQshg=
X-Google-Smtp-Source: AGHT+IHyq2KzCbTQHgIF+N3Wkwz4ktOrcRxxTc37r4GkdQ0eTp8kNWi6LQOgPbMbscQq22sm9zgMXw==
X-Received: by 2002:a05:6512:1305:b0:539:d05c:f553 with SMTP id 2adb3069b0e04-539da3c6967mr5271456e87.21.1728904926491;
        Mon, 14 Oct 2024 04:22:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539e86e2fa5sm834727e87.145.2024.10.14.04.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:22:05 -0700 (PDT)
Date: Mon, 14 Oct 2024 14:22:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	quic_bjorande@quicinc.com, geert+renesas@glider.be, arnd@arndb.de, nfraprado@collabora.com, 
	o.rempel@pengutronix.de, y.moog@phytec.de, marex@denx.de, isaac.scott@ideasonboard.com, 
	biju.das.jz@bp.renesas.com
Subject: Re: [PATCH v2 6/9] drm/bridge: Add ITE IT6263 LVDS to HDMI converter
Message-ID: <re3oe4nlz3mqecdlaetrgtqsdjzrzlwxjnxu6cojkbyzcjpwkn@24gg755jm2lv>
References: <20241012073543.1388069-1-victor.liu@nxp.com>
 <20241012073543.1388069-7-victor.liu@nxp.com>
 <dtloyyghjep5rm34qjjinvhvrar5jzj3n24czvpdmnkfesntjq@t2uijuez7myj>
 <f47bc3f1-20d9-4f7e-acdd-85eabdb8d743@nxp.com>
 <kaoqse23we5lyhaawk6xe2ouxwwjtjfpkiqb3j7xe64o2jscny@3yswlkjhuuxw>
 <91d1e176-f578-466b-991b-2df1728e2f78@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <91d1e176-f578-466b-991b-2df1728e2f78@nxp.com>

On Mon, Oct 14, 2024 at 04:28:29PM +0800, Liu Ying wrote:
> On 10/14/2024, Dmitry Baryshkov wrote:
> > On Mon, Oct 14, 2024 at 03:18:15PM +0800, Liu Ying wrote:
> >> On 10/14/2024, Dmitry Baryshkov wrote:
> >>> On Sat, Oct 12, 2024 at 03:35:40PM +0800, Liu Ying wrote:
> >>>> Add basic HDMI video output support. Currently, only RGB888 output
> >>>> pixel format is supported.  At the LVDS input side, the driver
> >>>> supports single LVDS link and dual LVDS links with "jeida-24" LVDS
> >>>> mapping.
> >>>>
> >>>> Product link:
> >>>> https://www.ite.com.tw/en/product/cate1/IT6263
> >>>>
> >>>> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> >>>> ---
> >>>> v2:
> >>>> * Add AVI inforframe support.  (Maxime)
> >>>> * Add DRM_MODE_CONNECTOR_HDMIA.  (Biju)
> >>>> * Rename it6263_reset() to it6263_hw_reset().  (Biju)
> >>>> * Check number of LVDS link data lanes.  (Biju)
> >>>>
> >>>>  drivers/gpu/drm/bridge/Kconfig      |   8 +
> >>>>  drivers/gpu/drm/bridge/Makefile     |   1 +
> >>>>  drivers/gpu/drm/bridge/ite-it6263.c | 919 ++++++++++++++++++++++++++++
> >>>>  3 files changed, 928 insertions(+)
> >>>>  create mode 100644 drivers/gpu/drm/bridge/ite-it6263.c
> >>>>
> >>>
> >>> [...]
> >>>
> >>>> +static int it6263_parse_dt(struct it6263 *it)
> >>>> +{
> >>>> +	struct device *dev = it->dev;
> >>>> +	struct device_node *port0, *port1;
> >>>> +	int ret;
> >>>> +
> >>>> +	ret = of_property_read_u8(dev->of_node, "ite,lvds-link-num-data-lanes",
> >>>> +				  &it->lvds_link_num_dlanes);
> >>>> +	if (ret) {
> >>>> +		dev_err(dev, "failed to get LVDS link number of data lanes: %d\n",
> >>>> +			ret);
> >>>> +		return ret;
> >>>> +	}
> >>>> +
> >>>> +	it->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 2, 0);
> >>>> +	if (IS_ERR(it->next_bridge))
> >>>> +		return dev_err_probe(dev, PTR_ERR(it->next_bridge),
> >>>> +				     "failed to get next bridge\n");
> >>>> +
> >>>> +	port0 = of_graph_get_port_by_id(dev->of_node, 0);
> >>>> +	port1 = of_graph_get_port_by_id(dev->of_node, 1);
> >>>> +	if (port0 && port1) {
> >>>> +		if (of_property_read_bool(port0, "dual-lvds-even-pixels") &&
> >>>> +		    of_property_read_bool(port1, "dual-lvds-odd-pixels")) {
> >>>> +			it->lvds_dual_link = true;
> >>>> +			it->lvds_link12_swap = true;
> >>>> +		} else if (of_property_read_bool(port0, "dual-lvds-odd-pixels") &&
> >>>> +			   of_property_read_bool(port1, "dual-lvds-even-pixels")) {
> >>>> +			it->lvds_dual_link = true;
> >>>> +		}
> >>>> +
> >>>> +		if (!it->lvds_dual_link) {
> >>>> +			dev_err(dev,
> >>>> +				"failed to get LVDS dual link pixel order\n");
> >>>> +			ret = -EINVAL;
> >>>> +		}
> >>>
> >>> Please use drm_of_lvds_get_dual_link_pixel_order(), it validates that
> >>> the DT definition is sound: one port for odd pixels, one port for even
> >>> pixels.
> >>
> >> It cannot be used, because it get the pixel order for the LVDS
> >> source not sink. IT6263 is the LVDS sink.
> > 
> > Then you need a similar function for the sink side. Add it to the
> > drm_of.c
> 
> How about getting remote LVDS source ports first and use
> drm_of_lvds_get_dual_link_pixel_order() like the snippet below?
> This way, no need to add a similar function or modify
> drm_of_lvds_get_dual_link_pixel_order() implementation.
> 
> If you don't like this, can you please suggest a similar function
> name or maybe an additional parameter(with type and name) for
> drm_of_lvds_get_dual_link_pixel_order()?
> 
> ---8<---
>         port0_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, -1);           
>         if (port0_ep) {                                                          
>                 remote_port0 = of_graph_get_remote_port(port0_ep);               
>                 of_node_put(port0_ep);                                           
>         }                                                                        
>         port1_ep = of_graph_get_endpoint_by_regs(dev->of_node, 1, -1);           
>         if (port1_ep) {                                                          
>                 remote_port1 = of_graph_get_remote_port(port1_ep);               
>                 of_node_put(port1_ep);                                           
>         }                                                                        

I think getting remotes just to get remotes back is a little bit clumsy.
Adding drm_of_lvds_get_dual_link_pixel_order_sink() looks like a claner
solution.

>                                                                                  
>         if (remote_port0 && remote_port1) {                                      
>                 order = drm_of_lvds_get_dual_link_pixel_order(remote_port0,      
>                                                               remote_port1);     
>                 if (order < 0) {                                                 
>                         dev_err(dev,                                             
>                                 "failed to get dual link pixel order: %d\n",     
>                                 order);                                          
>                         ret = order;                                             
>                 } else if (order == DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS) {        
>                         it->lvds_dual_link = true;                               
>                 } else if (order == DRM_LVDS_DUAL_LINK_EVEN_ODD_PIXELS) {        
>                         it->lvds_dual_link = true;                               
>                         it->lvds_link12_swap = true;                             
>                 }                                                                

	it->lvds_dual_link = true;
	order = drm_of_lvds_get_dual_link_pixel_order_sink(port0_ep,
							   port1_ep);
	if (order < 0) {
		dev_err(...);
		ret = order;
	} else if (order == DRM_LVDS_DUAL_LINK_EVEN_ODD_PIXELS) {
		it->lvds_link12_swap = true;
	}

>         } else if (remote_port1) {                                               
>                 ret = -EINVAL;                                                   
>                 dev_err(dev, "single input LVDS port1 is not supported\n");      
>         } else if (!remote_port0) {                                              
>                 ret = -EINVAL;                                                   
>                 dev_err(dev, "no input LVDS port\n");                            
>         }                                                                        
>                                                                                  
>         of_node_put(remote_port0);                                               
>         of_node_put(remote_port1); 
> ---8<---
> 
> > 
> >>
> >>  * drm_of_lvds_get_dual_link_pixel_order - Get LVDS dual-link pixel order        
> >>  * @port1: First DT port node of the Dual-link LVDS source                       
> >>  * @port2: Second DT port node of the Dual-link LVDS source      
> >>
> >>>
> >>>> +	} else if (port1) {
> >>>> +		ret = -EINVAL;
> >>>> +		dev_err(dev, "single input LVDS port1 is not supported\n");
> >>>> +	} else if (!port0) {
> >>>> +		ret = -EINVAL;
> >>>> +		dev_err(dev, "no input LVDS port\n");
> >>>> +	}
> >>>> +
> >>>> +	of_node_put(port0);
> >>>> +	of_node_put(port1);
> >>>> +
> >>>> +	return ret;
> >>>> +}
> >>>> +
> >>>
> >>
> >> -- 
> >> Regards,
> >> Liu Ying
> >>
> > 
> 
> -- 
> Regards,
> Liu Ying
> 

-- 
With best wishes
Dmitry

