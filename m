Return-Path: <devicetree+bounces-137053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD51EA07612
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:48:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F10383A2062
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F32217F22;
	Thu,  9 Jan 2025 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hOjlKQkj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4B6216E37
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426902; cv=none; b=VQITWhUPUHJo6fKYDit8rDcdcR0e75s+AXOZGGEk/xmqSw2L95EJZyEgyIEYHN4Pzd8QhYPTehX6EisBLYrbAmoWANJZYv/zNjwoaV6M76GB8dIT9fK4yHs9h8f+xeo6HBH2DX7UsnO4CIa+ETriUPlGWosPsyzhadhry1G0HHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426902; c=relaxed/simple;
	bh=e6nNquHNsvr6NKfc4Cfs1Tlaempp1OaD5QtCz/lZvEk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AfMwXDiiWDDmzVI5y/Aoz+RGtROIDNJEti00NF8ijv0GyIerQGSIGSHfVwE6B/XnmdSeb6tlYoyDTk+QFlsn6KogHx80qz7Kk/U3mctKz/pXbT1P+GauhlC1n3Nxdq/TLU/Uxy6Rf7QAu33ZR0lqXhfyNjf9a6oAYD9WYAPifTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hOjlKQkj; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3022484d4e4so8528051fa.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426898; x=1737031698; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h8hd6QQPe6WsmCvGJJcJ/fM8HdXFIRmyRc/10BLVlxA=;
        b=hOjlKQkjxR4JYxXY7qLlJ0SbEf3ziuMIszC45q32q1V2gKufSL1+DVBgTXuAalY9A2
         8U/JxEVP+Dan9f8WwgoP3iaqH3Y5nfLlh4eSokDEGDJ4QHj+B8+rq+5GjbpxL4qyYflq
         wXqWB0R85IpA3p/1Tj9/WqF8ETJYb0LX5JhaCPGkrlcwzszy2kLRP1wPy6PkCNm0O/Ac
         R4qTWJ77YEvEJVnADRDWs4/d3oGIZWG6z8NPUB2uHBxq1RlcPwRLCdeUzYmoXr1fHYZC
         0o9ggNslEK7GN110gBmkM0gwwXLZjnxbwJ6gRCeuvEegsTp0PqIt68JjgbqNUtyroCO+
         axCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426898; x=1737031698;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8hd6QQPe6WsmCvGJJcJ/fM8HdXFIRmyRc/10BLVlxA=;
        b=olYeUIO2h7/VcfVQQGdrT2icqYBtGrU7CSmqBSsJNar8pWtmHantVb3At2Vj3v8t8h
         tfnqUkOH6lDpV6wSDYYpdLHrxaLL9OYOgTmnm9Hubtpa3VvvyuOS90VnlT/vYAmZeiVI
         oHx5T01fSR5ZKljawcSgMpJDKT6yzYpONaYyzkNT6peuMlTqdOsC08yP6X/klfwGQM16
         Ilnylsy7liQoSGqZT7nejY16aKnTyE0Pbzngy4CGaAaCIcmShu10kiMt8Gu5rjxiy2dc
         zjjX70zOBWy6hxK1zSW2KOMLHRsAh0YDf0cAGIoyyOpjvnJoj0Ma7EmY1oNPKkSgZRNh
         A4lg==
X-Forwarded-Encrypted: i=1; AJvYcCWNkHDFnacLLa33/lZ0obrQxQwcwMYdo9bJwnxyZCbNwp19Utd+ynziKVCvSRzqQdju+pDQK7bzDTP6@vger.kernel.org
X-Gm-Message-State: AOJu0YwCd14pax919YFL9d4ZbzQei++M7iCDeW85b779PmSYVoaCAWNy
	45E1xz+bZ9zJU0u2Wh6g8GVauUJDJpGjPYw6cYR+PoNhlD2bWJuijlil4ZlxaXw=
X-Gm-Gg: ASbGncvzOHW+j8MqGifltz7X9YjTO2/dOlKMBK1Et8so9RfwIMAW2fkZX3qwr8a3xK5
	QajmBdOIxWvcUtC6bose6zQcBGrTFhNxF1ND9I5Et925uT+vzgagiXBJsI7q5ItaFgH7NKFqVYy
	n8A4K8FO9aTW3poJGjqGRPrBI1o+JKhWqIwWeLzsVLi8HwITjyZCtGyRRiHCWxMC1vZs8gO7Qeq
	zzWMj2wvQpXEaiqaMo1TgeFXw718MkiStm3SgI+rV6A7ou8hmpvv6SQMytB9buNIBtD91QwZXoo
	NQX9jYwXWJANYIbNISO+q1ySOXFL9Vik4lZh
X-Google-Smtp-Source: AGHT+IFxJ3zGC3CDmY37DlIYBY9oRzAVUXgzKckNzpAHdg+Ck4ZfBSulYaV0hud+81kqukRgXfjP1g==
X-Received: by 2002:a2e:a7ca:0:b0:302:1c90:58ee with SMTP id 38308e7fff4ca-305f4571db2mr17630521fa.18.1736426898468;
        Thu, 09 Jan 2025 04:48:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff1ec1a0sm1889261fa.105.2025.01.09.04.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:48:17 -0800 (PST)
Date: Thu, 9 Jan 2025 14:48:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-13-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:17AM +0800, Damon Ding wrote:
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The function
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
> 
> If failed to get the panel from the DP AUX bus, it will then try the other
> way to get panel information through the platform bus.
> 
> In addition, use dev_err() instead of drm_err() in rockchip_dp_poweron()
> , which will be called before rockchip_dp_bind().
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>   component_add() when getting panel from the DP AUX bus
> 
> Changes in v5:
> - Use the functions exported by the Analogix side to get the pointers of
>   struct analogix_dp_plat_data and struct drm_dp_aux.
> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
> 
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 41 ++++++++++++++-----
>  1 file changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 0957d3c5d31d..3ae01b870f49 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -124,13 +124,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>  
>  	ret = clk_prepare_enable(dp->pclk);
>  	if (ret < 0) {
> -		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
> +		dev_err(dp->dev, "failed to enable pclk %d\n", ret);


why?

>  		return ret;
>  	}
>  
>  	ret = rockchip_dp_pre_init(dp);
>  	if (ret < 0) {
> -		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
> +		dev_err(dp->dev, "failed to dp pre init %d\n", ret);
>  		clk_disable_unprepare(dp->pclk);
>  		return ret;
>  	}

-- 
With best wishes
Dmitry

