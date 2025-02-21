Return-Path: <devicetree+bounces-149510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C0CA3FAE3
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6DE1188F027
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5052116F5;
	Fri, 21 Feb 2025 16:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B/L7sqsO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEA1211492
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740154295; cv=none; b=eqphdpXm8PJJm9PIFWVx2aRTt+AQdBs8eTB1QFsLa4KBg8wVn4TJOZz1sZE5racu0cBdYnTB9aBscIXWelxFTXHZURQT0A32ssgqcxY7dsjl83ZMU4CE7heC2xQihcynwHnNLjHLm5iz5fDUfenhoBRwL8lZ6YNnH+XfrURxuZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740154295; c=relaxed/simple;
	bh=o88rw/tjy3HDPJmDRmZM9kcyWyrDf9JHvuhC10NjrKw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gyi/kTmX7CoteTwn4U5pxv1Q6U3EY3l5KVDEN9i4lmgzuWQvru2BNBIsv5wcNeunR0yMjPYB2aHtiMxpbULDFP3irm44wIJAJGdpNvRBIKR1jL3ZRdTJdN0tGYj30dKx/WMGuHbid5TyFdXb+ZM4Izy96TTAdkr1cf1D4eSSP94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B/L7sqsO; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-545284eac3bso2222315e87.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740154291; x=1740759091; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hr3XzvE9aqClELabiY59euwbUIuS5g53m16CEDx+PQs=;
        b=B/L7sqsOMExoXjLPPriEqiguh05/7Wx6VdyzE/E1EpXGKIqIFMPtV+gg8V7XYIs1ek
         C6+3WUhg88pXBBBIPuqFQzGBfNOLsgqtnwwEXIriHVmOhJYcRtb+DdJxmEGv5O9VsDC6
         eDWqC1IQUlns2gXf2RwwF6OM0LCjozVNdUBGA8LF7Q8c4DNiM1XRDiWNrthZITRprodC
         ulJXmGZbclPZ8DO3OLY7oNzsqzk6qiZ5NiQ/GYb9KLx8xY9UGhCq5ed+Li1KuYr8sFwn
         ljxFjlVC3NgdoZzslanC2OihQjdu+ybsvZbogzc9yoMwpHkjdSiZTLm80e43T81vyoTu
         GMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740154291; x=1740759091;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hr3XzvE9aqClELabiY59euwbUIuS5g53m16CEDx+PQs=;
        b=K2BngcehLNOUc7nXa3v3UFpnm/VFTRqjAoRNW1hFAe3d7O0B9iLCjv1AThvuO+pyTX
         UQdieDcHwtHgT/NWxHItqqtxn98iJqm5RDVNAvosrI1E4x+/AkaLFDb0rDxxbqlQsfkB
         Ab587OQvaxh3WkzmwCsOaJ8NoP4nMcNDTNhUGUduA6TQ99eTrtqTddaekbSEPDUntUMj
         VEeKBpREWZmX/5AUW42WxjE55d1OPejsnO+mvaln23WfgOsqz8Vjqztq9DO1tN2fYTze
         PIW6WKNimQXSU9sAvc9h9W7LCBqkiu00GcRzXVAhOdvw0utYoANnvNy6p7gy/i3Epi4Z
         WVKw==
X-Forwarded-Encrypted: i=1; AJvYcCUBSHDjR82YOaAIu6aiIlbQUZyh1809aT50LxldV9NgJ8U6lQSIp4wH/J+zmntn2YIy/9xE7+zzw77m@vger.kernel.org
X-Gm-Message-State: AOJu0YwTknJNcPpIgLLYcDlOQH58UHB305NEgqhNibZgC1pAx3/Rrwfa
	qYsm7MhmwLv2CvzCBRcfiqbPMZnS7e8M3epItUlsy/G2CQ9T1k8YMfd6kjQiYDo=
X-Gm-Gg: ASbGncsXQkYENO0j/eH75Fe3XaFu1YL/o6Rqhkhb+a0FWsl2yrXTJa8aEZwNaA4D9hr
	3u7nAwIjhRFh+LjBiKFRGo67IsbCOxKfIsN1BJrkIo33XGwcDSoRWBbid20sLyiEzeU449aDo57
	wirg7YmVK1ea1tiIsFcDVfotXhTlsmKhbaQVlctdVAKQJGyQVKbsddRTbdjiDBhSV0wMKkE0l6e
	fpWq8XMy5OkR14UrYSPyw9+fB6UncvfLD1aTMTvK8aSuFzC+oSKc8gElLefTprbOxlVS6bSlpdt
	OMwScBKGtI8/sqMIU6dahofLbf47CQz6XJyFA56L7q7hI7sWKPGaG0Emn+bba3FLdpU+J9c3AAc
	TKk0cIA==
X-Google-Smtp-Source: AGHT+IGfxPa9wWy0xBwDTcpNaXXhV+ontjmSCYJHc06VMOigSb61bjng4QxI7OTQ69hRP9FYbbAr5A==
X-Received: by 2002:a05:6512:33cc:b0:547:6733:b5a3 with SMTP id 2adb3069b0e04-54838ef5b91mr1459696e87.28.1740154291461;
        Fri, 21 Feb 2025 08:11:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54531815e02sm1986700e87.228.2025.02.21.08.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:11:31 -0800 (PST)
Date: Fri, 21 Feb 2025 18:11:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH v3 09/21] drm/msm/dpu: Clear CTL_FETCH_PIPE_ACTIVE on
 mixer reset
Message-ID: <tggda55h5mbhqekdmkkk2xpww2mblmtnqz6l64uv23eoh3rfcj@reirdm445sw3>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
 <20250221-b4-sm8750-display-v3-9-3ea95b1630ea@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221-b4-sm8750-display-v3-9-3ea95b1630ea@linaro.org>

On Fri, Feb 21, 2025 at 04:24:19PM +0100, Krzysztof Kozlowski wrote:
> Resetting mixers should also include resetting active fetch pipes.
> 
> Fixes: ae4d721ce100 ("drm/msm/dpu: add an API to reset the encoder related hw blocks")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

