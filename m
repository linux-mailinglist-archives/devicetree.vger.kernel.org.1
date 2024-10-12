Return-Path: <devicetree+bounces-110594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3AC99B23D
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 10:48:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D245028430A
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 08:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE0F149C69;
	Sat, 12 Oct 2024 08:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P/3YHyaM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36C71494D9
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 08:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728722891; cv=none; b=kPL8bVl+KZIxZ1DdKwWpZRniwPyKxXdt3/va7Z+FI7SbyCXKJN1SUfOcHKEL4spa58BxRg2hDCDdAbxGHe3xBj/snSXqIjYSMpumAkRTea5S63WD8I64gVY5DBREgp7YLgxiMC9N/cdQb1iKjY9Ixs75OwsugcbnJn8PtfuH6Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728722891; c=relaxed/simple;
	bh=KFuQlRLZV6kFsSMadCKcwpjYQJM58BTvJl7C1jSy1eg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RdX6TuR4JGJI1PihpoEGfTRnSW72poRE/rKLfARDIFdqDIl3QMpnc9yFv5zcgnF77+Ubr5MB2WnEflup7/Q+8SiW4Erl2E3Tb1sOrFLv4lBEd11xyKFJSqwnI75ICdkByGVnOKzBpWjR/hGAeABIxCdzAH7BouWyIY5mClq7Fp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P/3YHyaM; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53993c115cfso3575017e87.2
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 01:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728722888; x=1729327688; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ash+1oKuFiPE3A8tEMkMCFcio5xBuHLSoR41kg8F3Os=;
        b=P/3YHyaMIh4LSZ5zR9ClD+D536Pfr/vuCbo9oePJiMiI4iK+zkqLHYTlBcrMuG5CKb
         5dO2V5oXTu/7X+AQIDKO3NADNa2OQpIjbmxRu5bEzBeTmJoEjuZC18hYiYClUNc4gaZP
         Z0OBbdR/zP9ryM4KWNC2+tCz5nyj5Fxa/n7T78gMGdhXgZpJZkmBFpjNhR3Kov+8mVoT
         gf4bOixjz6ZNHkOyovtYZQkKoT2t2KZZfe8erLzD/Zo0H3phe6LinhXkdufyXBXnPYL6
         Afe4J5GXdzhmMlE8HIXDkFqbVbTU4csNYsc9cV3XuWdOFBqgMDRZu1jhiVnYcpH0/roZ
         SwOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728722888; x=1729327688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ash+1oKuFiPE3A8tEMkMCFcio5xBuHLSoR41kg8F3Os=;
        b=HaiLCDeu7bNqe//XO9PXOaATzD8EA1Fa6adUfrxQWn8FMX/4LSWMDbRrDI2Ay4RZP6
         PSVuvO98jRTlXAM5yV0Vl4jAaeRLkJwy1ZucMsMP0Qrp391DvXrq6JrECnvfLFMNcfQd
         tkwKRpwCVbNIhE5txYI/QAGlLkHQiQ4FU7ZS5h+cro0zEVdI4LAP9PRAdzsbQTv7DxbA
         BkTbK82A1BITwlBurGE3lmqBoC6a9ENGq3dpg/7PmFVFgy5hT3oI37IbStrwjBEvc05M
         EXwuPxWVUliOE2rxGbpySkC3SJu+W9MQ9nSeV12UyNCCOgP5QkoETDYzEtEBETiH0TT3
         b8KA==
X-Forwarded-Encrypted: i=1; AJvYcCWGYu6LjQK/wbh5p+lEJq+Fr20AuTDKGu0tw0ik0VwzIwQC/LKj3D+fiKeoHbMxsJCPfEuVKvBN3/ee@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4yzZ/Pg5oMLOlKz/cCX3mznRC/EK1HbODXZcrsg633G2Jm3wU
	KIGdNI6VvQOFyxn6sT9VKmpYyxo/ZVtD2iYeUyDVsee5ao7Et8CZJZWTwWugnj0=
X-Google-Smtp-Source: AGHT+IHEc4ZuCZYoFT2OUlml69hpickixa0aunTqwOmFQLHqCQKZVS3BFKcMPasacN1gqJ2srIOpVA==
X-Received: by 2002:a05:6512:2384:b0:539:8f4d:a7c9 with SMTP id 2adb3069b0e04-539da552ebfmr3052540e87.41.1728722888062;
        Sat, 12 Oct 2024 01:48:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539e2c82823sm356433e87.184.2024.10.12.01.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 01:48:06 -0700 (PDT)
Date: Sat, 12 Oct 2024 11:48:04 +0300
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
Subject: Re: [PATCH v2 3/9] drm/bridge: fsl-ldb: Get the next non-panel bridge
Message-ID: <o7f5xi4ppam6ox2a6h7xgofgg62ewxfptgsbisbbqkwlwkjbmy@r7mgbhby5x6s>
References: <20241012073543.1388069-1-victor.liu@nxp.com>
 <20241012073543.1388069-4-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241012073543.1388069-4-victor.liu@nxp.com>

On Sat, Oct 12, 2024 at 03:35:37PM +0800, Liu Ying wrote:
> The next bridge in bridge chain could be a panel bridge or a non-panel
> bridge.  Use devm_drm_of_get_bridge() to replace the combination
> function calls of of_drm_find_panel() and devm_drm_panel_bridge_add()
> to get either a panel bridge or a non-panel bridge, instead of getting
> a panel bridge only.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v2:
> * No change.
> 
>  drivers/gpu/drm/bridge/fsl-ldb.c | 31 +++++++++++--------------------
>  1 file changed, 11 insertions(+), 20 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

