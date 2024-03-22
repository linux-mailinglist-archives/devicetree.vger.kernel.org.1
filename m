Return-Path: <devicetree+bounces-52486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9009886D9C
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 14:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77C891F25B89
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 13:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F22D5FBA6;
	Fri, 22 Mar 2024 13:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aqzPxcCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C135FB98
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 13:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711114600; cv=none; b=F1dGSKWSxhWjV1wV8xNa7R2SL0neIwrPP3TbQP89vk1AbHFl411s5XDgU8gFrI5HcdwYlVKiuA51WCzY5vxK9OIExpqNNwt+1KpuBYng9MozTTYd/X5FE3BJJ3w1qMNXqu71WgkAez0J6N8ZV5zyYX7oJmDsinp9kd1KvzYBlmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711114600; c=relaxed/simple;
	bh=H4IlFCreru9OSShE7qeGlxe68zK3kQMdEUlVqZDaUOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=elu7q/uIncCwFUuWDx8kQXzm3TyxD9uYncttj2Z1Nd6ttHgx1zqmuqqm2Xp7JikJYcgwKGOQ8Sek8kworCecnyFMASTAX4jSRWQbgV68zWVwGwhpKgtkPRT56ExccW9BafXMl2ghpmMJ1zHUTkgFKBx2RBvj/IFfisoxOv8wTU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aqzPxcCJ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a472f8c6a55so84819966b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 06:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711114597; x=1711719397; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nnd6ibXxUQf/CK/aaQKXsb3cInWcKtPxZxIk6K6GCqM=;
        b=aqzPxcCJXY03ffe+tmPbVYKnmA0jAoFmMF2MBPBklu16dLmaTvripDsrgbllTcZ8fa
         MrpVYvJ2BUzGm4nivDq+ph1oX+cjZyFNLn9AK3kAuk4hrznft97Can1j0Sge/dzjKsS+
         L9Y7DKEAviksVkzwraD8ECQpGo5AJ6tp2ENSqA+35eDLsT+JALc4+IoDK0BlJBd/4sHX
         /LXCu6vzkVwzgdQHK4AZPI+3/aIpaRuvg5Ivl5xuAJBeh2I+8Fz5VYmRwgiTrugYJMGx
         2Usqvag9qJKGQyukxIqGUdB9zv5TXISpuKb99hjuYh0TuGqOZHpg4wGgFzzJh1H7yPOE
         Y6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711114597; x=1711719397;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nnd6ibXxUQf/CK/aaQKXsb3cInWcKtPxZxIk6K6GCqM=;
        b=PXEO5E5qWeMsA0gssf2P49Wz/YjNbwdVHazErTji1otMpt4zchmhNxxYnNAIIz/1TW
         NTSgUzUkZaou42ZWRJ/e1iY6H72Z34ikD4VCbnLtPZTaE4Ttx/Zz8MGaSPl74p8sw4Cs
         tXTy24bzZpakRTERgAH6vhj+R1btXAyvBlpznPSi/RMlMIaW7oc9h5CJsw4WPsWkDNJH
         Dky5lPL9AvemITl64pcF7aV69cjCntOM4aRvTNQEFS/Vindl6d3Vw4aOGK3oIhizBooI
         HJ52KcyoC+WZb6H6Ac5TLG5u1RDKy7xU7p+VtXsjoVvp8W6MD7OwhRb8LdWRZleFxhbB
         ff/A==
X-Forwarded-Encrypted: i=1; AJvYcCXfecFslPLbTvZq3u81FRXNVLmaULVcR8hu6PTT4SpF78AU3ffwD0z1ZrYnW5LC3DtNga5g7fo/x3Vj2XOUmMxLFJ2bh4tC4GvSOA==
X-Gm-Message-State: AOJu0YyUHJqbgKfCv77bekmWgtFmU7kjuIWQqMvDY7V87x93T5Bftg6S
	TQ05rNkAuVUQDH8YFT01XpsgvVhwU/IZtc4x5HGO1i8vkUYlwWiKlhipbJaOhdY=
X-Google-Smtp-Source: AGHT+IFoaXX1Dh5Xg/+nKkToAtA9OhmG/gb6cE5zvBDWJWXkJ4/21d6NlvsfBgwbrNf8MmMq9rhSlQ==
X-Received: by 2002:a17:906:b6d2:b0:a46:cc94:1677 with SMTP id ec18-20020a170906b6d200b00a46cc941677mr1618611ejb.17.1711114596679;
        Fri, 22 Mar 2024 06:36:36 -0700 (PDT)
Received: from linaro.org ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id ch11-20020a170906c2cb00b00a47090964casm1010680ejb.184.2024.03.22.06.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 06:36:36 -0700 (PDT)
Date: Fri, 22 Mar 2024 15:36:34 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] drm/msm/dp: Add support for determining the
 eDP/DP mode from DT
Message-ID: <Zf2JYmm3DEaR8vB5@linaro.org>
References: <20240322-x1e80100-display-refactor-connector-v3-0-af14c29af665@linaro.org>
 <20240322-x1e80100-display-refactor-connector-v3-1-af14c29af665@linaro.org>
 <CAA8EJpp6V5qVzbYtnU=JjO8FX45fcxBvWsD3PWQ5bu5wuv-T=g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpp6V5qVzbYtnU=JjO8FX45fcxBvWsD3PWQ5bu5wuv-T=g@mail.gmail.com>

On 24-03-22 15:30:54, Dmitry Baryshkov wrote:
> On Fri, 22 Mar 2024 at 15:22, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > Instead of relying on different compatibles for eDP and DP, lookup
> > the panel node in devicetree to figure out the connector type and
> > then pass on that information to the PHY. External DP is not described
> 
> Nit: External DP doesn't have a panel described in DT...
> 

Will fix.

> > in DT, therefore, assume it's eDP if panel node is present.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/dp/dp_display.c | 43 +++++++++++++++++++++++++++++++++----
> >  1 file changed, 39 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> > index c4cb82af5c2f..c9763f77c832 100644
> > --- a/drivers/gpu/drm/msm/dp/dp_display.c
> > +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> > @@ -726,6 +726,14 @@ static int dp_init_sub_modules(struct dp_display_private *dp)
> >         if (IS_ERR(phy))
> >                 return PTR_ERR(phy);
> >
> > +       rc = phy_set_mode_ext(phy, PHY_MODE_DP,
> > +                             dp->dp_display.is_edp ? PHY_SUBMODE_EDP : PHY_SUBMODE_DP);
> > +       if (rc) {
> > +               DRM_ERROR("failed to set phy submode, rc = %d\n", rc);
> > +               dp->catalog = NULL;
> > +               goto error;
> > +       }
> > +
> >         dp->catalog = dp_catalog_get(dev);
> >         if (IS_ERR(dp->catalog)) {
> >                 rc = PTR_ERR(dp->catalog);
> > @@ -734,9 +742,7 @@ static int dp_init_sub_modules(struct dp_display_private *dp)
> >                 goto error;
> >         }
> >
> > -       dp->aux = dp_aux_get(dev, dp->catalog,
> > -                            phy,
> > -                            dp->dp_display.is_edp);
> > +       dp->aux = dp_aux_get(dev, dp->catalog, phy, dp->dp_display.is_edp);
> 
> Unrelated
> 

Yep, will drop the change.

> >         if (IS_ERR(dp->aux)) {
> >                 rc = PTR_ERR(dp->aux);
> >                 DRM_ERROR("failed to initialize aux, rc = %d\n", rc);
> > @@ -1241,6 +1247,35 @@ static int dp_auxbus_done_probe(struct drm_dp_aux *aux)
> >         return dp_display_probe_tail(aux->dev);
> >  }
> >
> > +static int dp_display_get_connector_type(struct platform_device *pdev,
> > +                                        const struct msm_dp_desc *desc)
> > +{
> > +       struct device *dev = &pdev->dev;
> > +       struct device_node *aux_bus;
> > +       struct device_node *panel;
> > +       int ret = DRM_MODE_CONNECTOR_DisplayPort;
> > +
> > +       /* legacy platforms specify connector type in match data */
> > +       if (desc->connector_type == DRM_MODE_CONNECTOR_eDP ||
> > +               desc->connector_type == DRM_MODE_CONNECTOR_DisplayPort)
> 
> misaligned
> 

Sure, will fix.

> > +               return desc->connector_type;
> 
> Can we drop this part completely?
> 

You mean the whole if clause? How should we handle the legacy approach
then?

> > +
> > +       aux_bus = of_get_child_by_name(dev->of_node, "aux-bus");
> > +       if (!aux_bus)
> > +               goto out;
> > +
> > +       panel = of_get_child_by_name(aux_bus, "panel");
> > +       if (!panel)
> > +               goto out;
> > +
> > +       ret = DRM_MODE_CONNECTOR_eDP;
> > +
> > +out:
> > +       of_node_put(panel);
> > +       of_node_put(aux_bus);
> > +       return ret;
> > +}
> > +
> >  static int dp_display_probe(struct platform_device *pdev)
> >  {
> >         int rc = 0;
> > @@ -1263,7 +1298,7 @@ static int dp_display_probe(struct platform_device *pdev)
> >         dp->dp_display.pdev = pdev;
> >         dp->name = "drm_dp";
> >         dp->id = desc->id;
> > -       dp->dp_display.connector_type = desc->connector_type;
> > +       dp->dp_display.connector_type = dp_display_get_connector_type(pdev, desc);
> >         dp->wide_bus_supported = desc->wide_bus_supported;
> >         dp->dp_display.is_edp =
> >                 (dp->dp_display.connector_type == DRM_MODE_CONNECTOR_eDP);
> >
> > --
> > 2.34.1
> >
> 
> 
> -- 
> With best wishes
> Dmitry

