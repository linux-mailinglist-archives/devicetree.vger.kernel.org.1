Return-Path: <devicetree+bounces-127973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D039E6DD9
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 13:12:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A4AB188332A
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48728200BBC;
	Fri,  6 Dec 2024 12:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d7GGvaxZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0EF1FDE2F
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 12:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733487136; cv=none; b=BnPOxHhaOwUiwTYLPAdPRwTHyWjlAjtZAuVipW8hRkWQxzhgqLlMXNtd1c/RMqIU8u4usL97T8NLBvzAkSIcOArO3JKFw1sSvquSIP+z8Cv1B+x0oe3leVn3N4P6q65lFe+VrbPpFblDfSbbLvmUKjUQyGEEYKBBVek4ByOvzGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733487136; c=relaxed/simple;
	bh=rjc/9LVlo/NRPqr5hAWSZAQnrZyro27R+IJbWLilJ0A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PatzaEggL1OOHsfw3un1DCDXnsIvCSYuLGateA2EwAQReKJHgyf0PrITqM/r8hBvnBdRuJa7JesvtqD8v5RTMhS/pz8Kp6wDNbALtdreDFE27BXq1ejqnA2eO1wpvsKo2VDoU3vMfOcFuUQQifqoZDfWzVVUSC6ier/EMnhsEDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d7GGvaxZ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa64721042cso9622466b.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 04:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733487132; x=1734091932; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q3dVJRMa0TfmjWnvrA4GwhBptLmOPXIzRSr4Tl/7cq0=;
        b=d7GGvaxZQinRL9sZ8IHzevd4tAoPjt1SMnziYEaJw9+hmHkwsoreYRNmSW7U/8Hono
         iLRZADgBmH7A1hl3k7feB/mQt9Vhktbr9DeR+CCJvrZJWdHPfB6jpLSgPmQs60aBNREF
         HuabqPgAOFGS8d/34JISbiC9A7I9MMMj4uDuMK3t+nUq9iib4Nuzv9CzuDMIO8rIAIgV
         JWfK0J/VY813+N3/XZXwNUQkAFznFW9rgV4Oe7jKiOwxL9v47P+T7g5IyKMUDBDiyZFI
         SQLwySd7eEU5zN8uf2u09BeNlMfinWRk9O/2vQkbV84OpEtYsWQpWa0i5/vugv1Wfd4v
         eNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733487132; x=1734091932;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q3dVJRMa0TfmjWnvrA4GwhBptLmOPXIzRSr4Tl/7cq0=;
        b=TqtRVj2WPPihquqDiv4AYdGtNAgpzDRTFOBtsCNaheqIJ/Lz2bghVF4XCwjpDM1Tns
         xDInc0N0wi3XHa7K/5zTET3hIVXlX7lj8sK2hLtPpdAfbIO+Yttl/fZGhFHR8e7Pu4Lg
         TDZzasdExKM+DXk+qgQCQVN6y2Eo4lL5TvBDh8Xpignu/5wqb4XMhUj8N73SVfVyuOil
         vnZTnvWsR5u+krQNPamhEjP5iRx7JIiN2SRGn5wrWQSoZs6fqQYNwj80XSQ8s1L3gP7n
         0BeeyknTHRGTYgw7RNSieTJacnO9DOGbqlYFZ3JVygX4zf4J4ka9cizMUZAV6b1O5S2y
         F0og==
X-Forwarded-Encrypted: i=1; AJvYcCXQZGzMgUA71Nderlb3zaYPkuIaXdor5v8xHIHqDbFRCHJ7DVkFsg4ZRcrZuLtktxBO3/MLPQHEPgHW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0Sg+1wVlFgEH+BIAMbOD5odehNkJ0S98B72baA/VG+W/YVVEO
	l/L2yJdnbVwiWUwwoc2ktnP/fpFNYD7lH+ao1hOatfixb5A5aaxqbXFBeZQRp9Q=
X-Gm-Gg: ASbGncsDquD5byKQ+mfo2v+fyMlZdsd6VVmtrZRbXivJquFXL5RhTvOL+hblzeqWFks
	Fjy7FrPagsHYTPN0w46EPYf10WHZJ4Jt/wPJRiGat1oaKlB3TDNgNx3LsUCAFQKVSinLA8mESY3
	H8y7em83pbN5TNtxhwAFeRmNJPdR1uC/9H57E+LpcUZPBs4MJhlpQ6k4uUjdhNLewsWx8sFgcRR
	11adAzrqokl1ELG1TW3F6E8mv4T+wSya97e2l/ibKdkyOTaLoveZ4HEQhsylQ==
X-Google-Smtp-Source: AGHT+IFUBtKqDnQ9TdUxArZ0TKaVsJSrVKXuzX74MKt4//gCX0PMHcMHzQXS+cSEiOZgDyWc5Brq9g==
X-Received: by 2002:a17:906:2922:b0:aa5:76f1:4051 with SMTP id a640c23a62f3a-aa63a1a162cmr145435666b.35.1733487132526;
        Fri, 06 Dec 2024 04:12:12 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef80:7aba:3257:28e7:dce9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa62601c1ddsm235148666b.126.2024.12.06.04.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 04:12:12 -0800 (PST)
Date: Fri, 6 Dec 2024 13:12:07 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Stephen Boyd <swboyd@chromium.org>,
	Chandan Uddaraju <chandanu@codeaurora.org>,
	Guenter Roeck <groeck@chromium.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vara Reddy <quic_varar@quicinc.com>,
	Rob Clark <robdclark@chromium.org>,
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 13/45] drm/msm/dp: separate dp_display_prepare() into its
 own API
Message-ID: <Z1LqF_jIHhqRImsf@linaro.org>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-13-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-13-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:44PM -0800, Abhinav Kumar wrote:
> dp_display_prepare() only prepares the link in case its not
> already ready before dp_display_enable(). Hence separate it into
> its own API.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 24 +++++++++++++++++-------
>  drivers/gpu/drm/msm/dp/dp_display.h |  1 +
>  drivers/gpu/drm/msm/dp/dp_drm.c     |  2 ++
>  3 files changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index 2f8650d60202deaa90de1a5e0dd6d8bc50f09782..02282f58f1b31594601692b406215cee4ca41032 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -1525,26 +1525,36 @@ int msm_dp_modeset_init(struct msm_dp *msm_dp_display, struct drm_device *dev,
>  	return 0;
>  }
>  
> -void msm_dp_display_atomic_enable(struct msm_dp *dp)
> +void msm_dp_display_atomic_prepare(struct msm_dp *dp)
>  {
>  	int rc = 0;
> -
>  	struct msm_dp_display_private *msm_dp_display;
>  
>  	msm_dp_display = container_of(dp, struct msm_dp_display_private, msm_dp_display);
>  
> -	if (dp->is_edp)
> -		msm_dp_hpd_plug_handle(msm_dp_display, 0);
> -
>  	mutex_lock(&msm_dp_display->event_mutex);
>  
>  	rc = msm_dp_display_prepare(msm_dp_display);
>  	if (rc) {
>  		DRM_ERROR("DP display prepare failed, rc=%d\n", rc);
> -		mutex_unlock(&msm_dp_display->event_mutex);
> -		return;
>  	}

FWIW: This patch breaks the eDP panel on the X1E80100 CRD for me. If you
don't do the msm_dp_hpd_plug_handle() before msm_dp_display_prepare(),
then the link_params (rate/num_lanes etc) are not initialized. Moving it
back here seems to fix it.

Maybe I'm missing some dependent patches or so, I was just experimenting
a bit. :-)

Thanks,
Stephan

[   17.724076] phy phy-aec5a00.phy.15: phy poweron failed --> -22
[   17.724698] ------------[ cut here ]------------
[   17.724699] disp_cc_mdss_dptx3_link_clk status stuck at 'off'
[   17.724709] WARNING: CPU: 9 PID: 705 at drivers/clk/qcom/clk-branch.c:88 clk_branch_toggle+0x124/0x16c
[   17.724877] CPU: 9 UID: 0 PID: 705 Comm: (udev-worker) Not tainted 6.13.0-rc1 #1
[   17.724883] pstate: 614000c5 (nZCv daIF +PAN -UAO -TCO +DIT -SSBS BTYPE=--)
[   17.724887] pc : clk_branch_toggle+0x124/0x16c
[   17.724889] lr : clk_branch_toggle+0x120/0x16c
[   17.724927] Call trace:
[   17.724929]  clk_branch_toggle+0x124/0x16c (P)
[   17.724933]  clk_branch_toggle+0x120/0x16c (L)
[   17.724935]  clk_branch2_enable+0x1c/0x28
[   17.724938]  clk_core_enable+0x78/0xb4
[   17.724944]  clk_core_enable_lock+0x88/0x118
[   17.724947]  clk_enable+0x1c/0x28
[   17.724950]  clk_bulk_enable+0x38/0xb0
[   17.724953]  msm_dp_ctrl_enable_mainlink_clocks+0x140/0x234 [msm]
[   17.724974]  msm_dp_ctrl_prepare_stream_on+0x10c/0x19c [msm]
[   17.724985]  msm_dp_display_atomic_prepare+0x9c/0x1b4 [msm]
[   17.724994]  msm_edp_bridge_atomic_enable+0x60/0x78 [msm]
[...]
[   17.725216] ---[ end trace 0000000000000000 ]---
[   17.725218] Failed to enable clk 'ctrl_link': -16
[   17.725220] [drm:msm_dp_ctrl_enable_mainlink_clocks [msm]] *ERROR* Unable to start link clocks. ret=-16
[   17.725231] [drm:msm_dp_ctrl_prepare_stream_on [msm]] *ERROR* Failed to start link clocks. ret=-16
[   17.725240] [drm:msm_dp_display_atomic_prepare [msm]] *ERROR* DP display prepare failed, rc=-16

