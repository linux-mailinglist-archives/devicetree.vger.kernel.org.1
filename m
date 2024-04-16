Return-Path: <devicetree+bounces-59886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6178A771C
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 23:59:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A1771F2176D
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 21:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E7D16EB4E;
	Tue, 16 Apr 2024 21:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LC+rgL/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2772200D5
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 21:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713304743; cv=none; b=FmCFX8Wm8gebterGEuGwaoIbszKa+xE8gQWcjuDClZW5OkKm2pCEEWBRFtzNy65WYxM05OWq2iBSXTgVUF7ySdl0TqQrCSX6cyVecUh/f9jfyb4vVf0MhxP5X5+c/lXx66pLjohXofcNyLe6wZBoeANc/lO64YwgTVeh3pds3Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713304743; c=relaxed/simple;
	bh=XEoW389eSLuQ1EWHK2ao+NjLE5w0UuWoEmY0QujQk4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IqZK0huFneTQCUqPoN0rBcKgJ1IZt/ueOBwsyYH3FWmG1poxY0EC24gxWsT+ln5wsnqB54bQo0Yzu1q+a7RYFDO8yP27CIkvf63qJob3ewEBe5SNorcRJWmBYjeObDqxf8NLiVXF7C6PWDAthvPNiaJTDq/tPD5Bm9qz/rSqC+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LC+rgL/D; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-516d3776334so6311601e87.1
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 14:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713304740; x=1713909540; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FrWqLDNPHgTIgEAwm/yBGkXHJJ9fe1QtFWXIQREdmco=;
        b=LC+rgL/Dt8p/9Ss7BHbOsFw8YML5p9xCulzk3HQ7cYvllZYZfad61LjygDsbKoVkDI
         6a6I/4JMAx5vB4sUJWb4NHUdG9+rDGaFY2U67ZyR4yl7iOFGmSqW8T+0n7UD84+ARkJK
         G9nS2BBHQP+Ck3nGQ/zDcypbETTjoXeF51OR6i2UUvV45BDKwGfsEgdlu9oSapKbR9aV
         tq+oZHeY08tZV5IXlfno9S9aPMfAfYUwZEtNxs70LuTPv9f5PhItZZ7JIBYXXnbtQByB
         t/G2gYYaCrf2f6DPjmsP0olZ4D2Nv6+z/maEopWq4mcde1rnhpnYm6S/9iO8Rt9zwJdR
         ObqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713304740; x=1713909540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FrWqLDNPHgTIgEAwm/yBGkXHJJ9fe1QtFWXIQREdmco=;
        b=JH9IKrr3KklpNHEPu++6JyYTEqjOzIMkJTiEXzaOaPKV/UZa/4U3tO44xIf738xx2X
         BAfL1UamDrmR5/7u/iZcAcRQ1Ygz7AdqVhnNSYg2PwXb7fBcKQclrg+7xpYYnAVN3Wt+
         XQj4u+CMekU2uV891fIiYMYpq04STgpxWpuVZJD26AfPMucUA2gBLjdr99ZWXCU+22vz
         iD/hOZaoY1D6XHRQyAIsGB+lsSgLPedIEAKdhmNXS2Zj6DXRk99pwKv/+t7+wDL8Nrnh
         gLgI8VVTFDtYfLqXguF7EoxAf4TAg34gb+ovV0RxXuSEsqSF3erO4ttW5qZBbqhGRE4R
         JCkg==
X-Forwarded-Encrypted: i=1; AJvYcCWeEcTkU7oH8tXXewjJMKYKIi8VN2fnPkbqhWjBmwXejEgRuFYvAFrT8U28oL7ybJOcHOS3uZ5gMA/o6KVO+OgV/aX6qW1VO4X3ZQ==
X-Gm-Message-State: AOJu0Yx2Y4t7FSPXpAWgQ7eA4+KFsu06dj2qiY7ZDwj4cDZIjRLTvLe/
	NQ5UapJASQqIELpreI+9Zc6yEYUppyDh9RMC174j75X6fkvEItWlQEG67ODL36g=
X-Google-Smtp-Source: AGHT+IHIWdijioLtvYC5fIdBBwJ5eA/9DxE81hqHqTOf/GfjKH/Bjt5bQdrOAL/NR1UOMamRdStcwA==
X-Received: by 2002:a05:6512:1c7:b0:516:d3ba:5602 with SMTP id f7-20020a05651201c700b00516d3ba5602mr9510074lfp.16.1713304739613;
        Tue, 16 Apr 2024 14:58:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id k5-20020a05651210c500b00518c1a1d370sm984687lfg.101.2024.04.16.14.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 14:58:59 -0700 (PDT)
Date: Wed, 17 Apr 2024 00:58:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
Message-ID: <yh4r2pgdl2m5wp627r35zse3obacmeanin5rjo34f7tctgpix2@dme3vwzaivag>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>

On Sun, Mar 31, 2024 at 11:28:57PM +0300, Dmitry Baryshkov wrote:
> The IPUv3 DRM i.MX driver contains several codepaths for different
> usescases: both LDB and paralllel-display drivers handle next-bridge,
> panel and the legacy display-timings DT node on their own.
> 
> Drop unused ddc-i2c-bus and edid handling (none of the DT files merged
> upstream ever used these features), switch to panel-bridge driver,
> removing the need to handle drm_panel codepaths separately and finally
> switch to drm_bridge_connector, removing requirement for the downstream
> bridges to create drm_connector on their own.
> 
> This has been tested on the iMX53 with the DPI panel attached to LDB via
> LVDS decoder, using all possible usecases (lvds-codec + panel, panel
> linked directly to LDB node and the display-timings node).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Changes in v2:
> - Fixed drm_bridge_attach flags in imx/parallel-display driver.
> - Moved the legacy bridge to drivers/gpu/drm/bridge
> - Added missing EXPORT_SYMBOL_GPL to the iMX legacy bridge
> - Link to v1: https://lore.kernel.org/r/20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org

Phillip, Shawn, Sascha, any comments on this patchset?


-- 
With best wishes
Dmitry

