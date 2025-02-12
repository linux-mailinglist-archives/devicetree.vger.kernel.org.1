Return-Path: <devicetree+bounces-145767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF269A323B7
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 11:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 703423A5439
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 10:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30083209F2E;
	Wed, 12 Feb 2025 10:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UvMRwah7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAACC209F53
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 10:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739356956; cv=none; b=NJPidg8He3fd9p8wQvDXXfFWu7lP/X+EebBFi5B1fttknlcGIVj44VpzQqAW28koRQcwMoRuqf+WhCqBjlSvlVZZvQwcRscI0rKvLEz1RhBLy3QnFIKCqwdtpadt7ebdcT0hdgKLU2fb/xDKyy/7uveJXFuTolSWzyBFV4r3gz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739356956; c=relaxed/simple;
	bh=zKemnO3M4vvKr/b+LEy5t/9tGLoJbtiRSG+p5f9+Kws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXTx4nURM03Si0kmoqjKgA+HRwXgJV54q8eTUmJA3xmcV8rL55jGhqio2Fb1jNsUE+iJRNILCCU+PyoteavHNOcdXV35QBhr6PWRj14I1Alw4AtObhZGA9Nci2t0VkG5SG/iISRHdUU/DOZPfyv8q5j/rHDPEAoOcYq9gVACazA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UvMRwah7; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30737db1ab1so61032051fa.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 02:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739356951; x=1739961751; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ld1TfC5Cdjw/PoVC0iP097r1SbIYfGgfFoLiWX4Zz3g=;
        b=UvMRwah7YSQfTrvxsptY1ehUFhktfrovYmj0W1SWPW95ehDdJPtGEmZsPk6zj04XCV
         smPSGuigSJlCGwwM8YDg2dvDdSipSMD1yAA3+4obCI1cAeR82bWcvTRHjE4jNns2OOBm
         D+DCSO56POEUuVhoQrlAxricsU1YQtfBJFhR/VsYvzbKmwZ+vEx34CqiqNwCZhBGfFBj
         6KTDOwcn0q8qDaJKQuywUl4nkzLvkG6Qy1nFyE8iRFnO5jEv9FjE5/ChbnmDwanVCL6R
         xi9TOGN9sHj7SidZbm4zsi3bootmzuTB/PYUxVBa79yDVVkLlx9tSLSOE6uKfww1koqJ
         Jd4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739356951; x=1739961751;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ld1TfC5Cdjw/PoVC0iP097r1SbIYfGgfFoLiWX4Zz3g=;
        b=GLYudbzOTIBnPSsCAp7nK1YSSf3lnk8h7Qq/081yfZY/tg90hqnk/I3PmiAf6tatZg
         a/989KhmVs5RQfHM6CGSGA3aASp+ffslago88KuOk3OZEmatY9pgmbxuhsiD4Q3hmONQ
         fBnjYvOC7ZiOZt2fuaUz7dH1Z2zdbT1WvuPReMvtKH4Fe4bpDwXfeA1h26OMoJ4zMfOz
         CEBjE2GM3XNiSaMt2JlQh+zZ+TgcO1mXRnMb696sV27hX2KC+5AM1/HfOglSaEK0TnXx
         7NaXt4oz49ibhLnLJLCjFzYV9dsisiT+XqafL3B5HygDDpmY/OeBza8TUjImyEjT6Xmn
         O0ug==
X-Forwarded-Encrypted: i=1; AJvYcCUkujspsceu1UOOKm6hRV6oDckD+dK99JOoMBTOJzuKt14imi+NDt26BvABaGd2WSgzfD7PGzSRD2nc@vger.kernel.org
X-Gm-Message-State: AOJu0YzJWDHFAKzInSyWuK0eZKCjGnlMEj1fZrpstx+4UaviMvB2GOQ4
	kAtBmrwe+DuFKqd+1HYWmB3+st6qgaYDLoxGjvmum6RStVNqRmJIAoggY1WN5ns=
X-Gm-Gg: ASbGncvNbuejHhbXVkALf/kAh5BD7EjNeji3XdJsQE5Bh5nGG+V7iJJf+q4mwYTPMpf
	S021lw2BJh3JBIqSpCLH+E8EF19H0UirzAm6kYMel0Rw003UIV6m5L7GEmkXpBn94/BgQBAou29
	fp+GSHMnbGxhyMoX4Yn2WaVa/Fov/yJLoyEc1xVkRbP4N4OhMEWA8FZ21jujTAC45gHop0e+92F
	aLyyClxIf1oVNcrNhsMt40HQGGjeBcRAdf+QhAJBeDi/m/lH2yfU3VIjGfS6ddLg7Fyf98imyrM
	wr1NN+BEfjlN2Aj9BtZSgO5Kzi3rDr6UgbZPalpRnrCX43v49vGPEiZFkTwoBa/WtoVpI+A=
X-Google-Smtp-Source: AGHT+IF+1GUoRD9HhqBh1RL9sJOAG4t7Xk0SYLrZn9lbwf1SpooHUxeWe02/GIT06t3TK4EotARjyA==
X-Received: by 2002:a05:6512:39cf:b0:545:17d:f96b with SMTP id 2adb3069b0e04-545180eb5f9mr737259e87.14.1739356950858;
        Wed, 12 Feb 2025 02:42:30 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54504e344a7sm1328754e87.5.2025.02.12.02.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 02:42:30 -0800 (PST)
Date: Wed, 12 Feb 2025 12:42:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: display/msm: Redocument the
 dp-controller for QCS8300
Message-ID: <brm43v5kzsum6hc6ahs3lqzgww55kczjzwzxsmx5a6alw3xxvh@3mdqqjvo2b5k>
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
 <20250212-mst_qcs8300-v1-1-38a8aa08394b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212-mst_qcs8300-v1-1-38a8aa08394b@quicinc.com>

On Wed, Feb 12, 2025 at 03:12:24PM +0800, Yongxing Mou wrote:
> We need to enable mst for qcs8300, dp0 controller will support 2 streams
> output. So not reuse sm8650 dp controller driver and will add a new driver
> patch for qcs8300 mst feature. Modify the corresponding dt-bingding file
> to compatible with the qcs8300-dp.

Forgot to mention that in the quick response: please fix usage of
capital or lowercase letters in the commit message. If you are unusure,
'git log' will help you.

> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 

-- 
With best wishes
Dmitry

