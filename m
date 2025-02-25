Return-Path: <devicetree+bounces-150914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DE9A43E88
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73D047A6034
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A975267B8C;
	Tue, 25 Feb 2025 11:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QdASPCFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7687C1C861B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740484662; cv=none; b=jW4SVJq+scpk6HK5dCqndEwPCne51RFq49hcq6LvuDXxlReTZE3RNBg29Qfenwmgb2/BKY59UIzcbQW4tks+NRku4xpQb85j/tLPvbdXB7pWq6Fbu0tlTk15vn2cUcsCadp6pK3ZR0X8a4bOXTBM56OAs5aoipDV7VAXPysV8sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740484662; c=relaxed/simple;
	bh=0ejaQvRgvD/39Cpjo9LWMBffWmj8mem5cTlbNfG0LaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L6cgCNt4Um7ZJcOfgsrXzydEYVF3K3EpoNNMu+exwB/ZukMgf8Hk2JdrxykjIx+stu3yvmmLX/gr95oQegcNp3E53Ha92zOHM62QIOhdabVOVSA0BN/0ZMFbKrTwT2kJ7MSIPv+K7wVMd5mY52cCYEWrq9q++3VhbOX6cD1JX/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QdASPCFm; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5439a6179a7so6124475e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740484657; x=1741089457; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BJdxb9d2Qc7/mEkgivvxiQHCCJjZY2RUEpoG9MQvZUI=;
        b=QdASPCFmvY0kmiBGFkfLYbccilBrK/x1p/YrUfUijy9lOZsV8J2PugjpT/T+E9UA3G
         O2p2rQ+XGfu1eEIwuKTVLbGqsxgUErD6aTqUqKt+nw4P93gOKFrsRZWD/8LEgOkg0wL6
         7cmpVuEMMHg4/7LBmMaBHXHuDuY+CBe5Y3zyY4KPv6/cXMVcXSmsa2EkjJZW8DgAcpcw
         /0dfwpRz4yPAoVNw+3DmUf/DMiIzE9bOyHE7S1R3tAyk+N3L867M2hVEd4mARY5yNYjS
         H28nFe10GNUrxCdGVI3rkPCFdLP+/z3G5POkfBBg+q+X0WP1ouj+IyNVxHuDUWvLtIM4
         PhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740484657; x=1741089457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BJdxb9d2Qc7/mEkgivvxiQHCCJjZY2RUEpoG9MQvZUI=;
        b=OvTYiTdEMZCVN5u2l5sZcqIi0oySvxXWHFwWY15GloCefpz2izCidnt5XX2Au5E8SC
         GnJhfyDoosYK71VP4uOw+2InOPmIdrzZMkZ4ulg9gAZH8U4Jv2jFW704b5TVYiqyOfql
         mDBXwz/wTB6XYYvIDdA3KavlJRNiN5Nb0dImA5gBVZSguJUR6xvo1gJKk1nyTuhjEj9H
         MQArONpiG/9eprqIgGU5U35dzdDdnhpsUOgYPDaeP18Gjsgwu5dYfzhAHjDl511op+Pb
         Hd6ftBeNcuCmt2NXV1EQc/aQ/azzFTcSAb/9oaMHYDe9VuWxyJsW12yl8EOzZBZVOilz
         7GTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWV6TGbx9gs7Iou438DSsgUo7/HvqxAeiTNUsv8MnMGsRFCHeRUQTl1DyiXha+m/+FqXTpiJnELxGPr@vger.kernel.org
X-Gm-Message-State: AOJu0YwsjizOULTZdP7hJ8v1zEkrFYND7dHoA4iS0BXgVVvwh0ciHn0A
	FEipcAUd8JvRK2n1rfv8+PTpbdxrrO1yqcDXhLCd6TEb6MUHPWAwbuDqbNIJyGk=
X-Gm-Gg: ASbGncupLU+P1QOi45NDCEx8W4TyMJftwJub9dLwC6LT8sH7kNy3yO12n06oJSxPcEX
	bFIbqKRfyI4WbHDWWpXZvmKHLYw4oMIaFgZ3cmM0Qnz0WHghW3kg47Uyftzkehi09TvcJFC0i3G
	AgBXbxwiJDvms4U/Airj8Y7cFCkO5TT470q1CYsMkOi7igJBvSFL+0M64F9fkqAeoHAsm9TihIe
	0jn3UXw2T4Pwoj0LNNow3oX+IxQiBctiRbQvWup7geNSvYohL7V4Mcr0b1W01CK9wlfDhzuf+sr
	xQCkT/aYm8xc6IFH7KkIeElaB8T9sgwGaQOmVy/kIS7AGoMotal5akYRj/3ge80sJ+JkuTf8nko
	fGpsfbg==
X-Google-Smtp-Source: AGHT+IFbqdYh8fwBrlR0bY7/Z36QCpnKteDFdIRRsnwu1FwaNfeJZqynpnHdLJr5tV947+xq6nGVtQ==
X-Received: by 2002:a05:6512:280a:b0:545:8f7:8596 with SMTP id 2adb3069b0e04-54838cb6287mr5705354e87.17.1740484657548;
        Tue, 25 Feb 2025 03:57:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548794c6a73sm95082e87.250.2025.02.25.03.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 03:57:36 -0800 (PST)
Date: Tue, 25 Feb 2025 13:57:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxim Schwalm <maxim.schwalm@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] drm/bridge: simple-bridge: Add support for MStar
 TSUMU88ADT3-LF-1
Message-ID: <lkfxsq3daspjxdw43dofch3nulprpmg4soxsgflsypu3kem4ok@utt6rfdtbg7j>
References: <20250225083344.13195-1-clamor95@gmail.com>
 <20250225083344.13195-4-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225083344.13195-4-clamor95@gmail.com>

On Tue, Feb 25, 2025 at 10:33:44AM +0200, Svyatoslav Ryhel wrote:
> From: Maxim Schwalm <maxim.schwalm@gmail.com>
> 
> A simple HDMI bridge used in ASUS Transformer AiO P1801-T.
> 
> Signed-off-by: Maxim Schwalm <maxim.schwalm@gmail.com>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Robert Foss <rfoss@kernel.org>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
> index ab0b0e36e97a..c0f1f7baaa37 100644
> --- a/drivers/gpu/drm/bridge/simple-bridge.c
> +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> @@ -277,6 +277,11 @@ static const struct of_device_id simple_bridge_match[] = {
>  			.timings = &ti_ths8134_bridge_timings,
>  			.connector_type = DRM_MODE_CONNECTOR_VGA,
>  		},
> +	}, {
> +		.compatible = "mstar,tsumu88adt3-lf-1",
> +		.data = &(const struct simple_bridge_info) {
> +			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> +		},

This entry should also come between adi,adv7123 and ti,opa362.

>  	},
>  	{},
>  };
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

