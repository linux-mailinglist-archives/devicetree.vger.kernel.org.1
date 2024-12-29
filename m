Return-Path: <devicetree+bounces-134531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C15C09FDD4B
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 05:44:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39E8E3A163A
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 04:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82D8E1CAA4;
	Sun, 29 Dec 2024 04:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NXktgfu3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953E6F9EC
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 04:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735447482; cv=none; b=kwaO1xzf0LRsx5Ni0iNS9K7aBcmkuinpxQttFq8gUs/4LfEivEivhkOVT/fqtxww61StnJ+37I/N+Wjq0i6LBf33YoB+scL5ghZYwzPaaSjV9OgmXdNR2e6U4BH84RRGxI5h8UG6Vo/HipUhcb4DdosJKSTDajC16J6Hy7M5vj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735447482; c=relaxed/simple;
	bh=TJr0TbbMyHO6rnJ6urMgKJZB+5+QPeE67o8LJNeKkuA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFgBlpxfstJv7aj1QXh//Qr0/X6xC3GMxwei7pDcichUBklFs30Qw305O4mvyPL9R0+JKyCVgwC7LZiUa+O3a4ZwtcgGFH9IxtNJqiFQHP8CG/C6e9eJ0FFucgihSNn/Dlvw9hoGNwJmWtPCIwRJGzumQHwXbBXoXr+y1Iv6suc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NXktgfu3; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3022484d4e4so103297831fa.1
        for <devicetree@vger.kernel.org>; Sat, 28 Dec 2024 20:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735447479; x=1736052279; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=chdPQNE/j8Xw45cOV5VKgoIPj08nYhEDdCs+/0/t6qw=;
        b=NXktgfu3ec4u2j/35/0oJD+ya+mobtu1xv9+LQpgL/ZTeL1s06hv6kvNG481G6dxRm
         GVFySTiWWwumO4FqNNy4ZWG641uINTaUuhdYsygSEHBQWQLEkGrU8GRgFGG8WFuiI9sG
         iZVstqoR/IvfL+N8zbj6D5fI058oKLoIrHmHBIx5S9EiwCTnzKaL7IQ7AGeISFLFaDJl
         actHmYRRJuMWum2NCL3poMBH5Jioqzf1Uyx1M5r3C9g5BAPP6HQQuC34fAh1Hhz716M8
         jcUc8Np1nE2E9++5cZA97uL+pKVUXrAkffaOEbyBBPXNoYYNnbWioyE29wpFH961bGJI
         eFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735447479; x=1736052279;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chdPQNE/j8Xw45cOV5VKgoIPj08nYhEDdCs+/0/t6qw=;
        b=a5O8K27TuxKiMoNcqVP02+3OTqUgEi76a4tOi6WuGjfRgZ6PankheBjlNkGFO2oNSC
         0tlPwQG0OjR0dQRVG9a/QYwSaBaqdDSH4g64Acl8EYV/IVA99hfEOQOxyGgBcJVZ6btr
         Eat/XYRCQhBYrHSD67tSdLxywL3iTnHU4pJ3qGCP3vL5kbMujc0yCJ8z1wukaLOtGhFa
         QkPeilLsmGDMzFzbRWNIfdwq2xGx0jnkelGHwVAm3scjttDLlwF1wHqU7GcA1zy6Gz1I
         q51JWQEdOyxY5II8pYPfvnawtn9R5o6dqPEWlZxL9YiJT74oQgQq2fTrbM486BaSUkdX
         DkFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVM96FXnwk5izIQkWzIusq7jfxvojO0DSjfjH7GBfKmY91ht+4jIWiZ6wsiCxXRTr5M2iOz5hepg8PV@vger.kernel.org
X-Gm-Message-State: AOJu0YxXjA12Je9KVT+GKehzbNg3Kw5a7rTnHRR1dXul0W628dhQ7lvj
	6JwcJ8OXt7lpbLXc6OOymeoGduNsRKnida909UTFQEWom+E+pEmlglpuzVw4Q/8=
X-Gm-Gg: ASbGncuqThrPZoCcviJndQUA3/6JK8DYkG6v5QeCAEwmmebxR4Kj/4buYPEuXzQvYfr
	JZUy1uZqlPBHP+nUvVWymQt9f4jk2P7wtBrsGC7XLWcORh6uGPmi2Nhad5FesKpPu1YsAbNLfme
	dJ7nVsYyhhqemvYE+KaEibIE5tdojSXgU81VlUbOAdpZ8yyQr7Gv4wbi3ZaW7FRL3BMcODPYOdS
	AY0L7aQt8skfSYaN6TWNhSpMpYoLAe9NgAlF/3rARLt/ZuurLul6gGWrce4rS22N6ra23lG7weO
	cFTLy7RkHzePlL2nIai2we9RjBMvFD93Qnys
X-Google-Smtp-Source: AGHT+IEqnOJCZfEtqq/hxEXbpXGiUtUrPmZ/EuQZbNs9DkS0CE7apf881FhBeAE8931EuWeeqm9PqA==
X-Received: by 2002:a05:651c:60e:b0:300:360b:bc36 with SMTP id 38308e7fff4ca-30468579f57mr84634791fa.23.1735447478652;
        Sat, 28 Dec 2024 20:44:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adad6dcsm30120291fa.60.2024.12.28.20.44.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 20:44:37 -0800 (PST)
Date: Sun, 29 Dec 2024 06:44:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <mha5mg3yyco2dm6g4nw5xfufuhqataoyiw6arkjalsu5caswth@vblodqj3ldcp>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>

On Thu, Dec 26, 2024 at 05:40:44PM +0800, Yongxing Mou wrote:
> This series introduces support to enable the Mobile Display Subsystem (MDSS)
> , Display Processing Unit (DPU), DisplayPort controller and eDP PHY for 
> the Qualcomm QCS8300 target. It includes the addition of the hardware catalog,
> compatible string, and their YAML bindings.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> This series depends on following series:
> https://lore.kernel.org/all/20241203-qcs8300_initial_dtsi-v4-2-d7c953484024@quicinc.com/
> https://lore.kernel.org/all/20241106-qcs8300-mm-patches-v3-0-f611a8f87f15@quicinc.com/
> https://lore.kernel.org/all/20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com/
> https://lore.kernel.org/all/20241024-defconfig_sa8775p_clock_controllers-v2-1-a9e1cdaed785@quicinc.com/

How does it depend on all those series? Does it have any intersection
point at all? You should have decoupled all bindings from those series.
If you did, please update your cover letter. If you didn't, please do
your home work.

> ---
> Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
> - Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
> - Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
> - Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
> - Correct formatting errors and remove unnecessary status in MDSS
>   bindings.[Krzysztof]
> - Add the the necessary information in MDSS changes commit msg.[Dmitry]
> - Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
>   20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
> - Package the DisplayPort controller and eDP PHY bindings document to
>   this patch series.
> - Collecting MDSS changes reviewd-by Dmitry.
> - Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
> - Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
> - Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
> ~
> 
> ---
> Yongxing Mou (5):
>       dt-bindings: display/msm: Document the DPU for QCS8300
>       dt-bindings: display: msm: dp-controller: document QCS8300 compatible
>       dt-bindings: display/msm: Document MDSS on QCS8300
>       dt-bindings: phy: Add eDP PHY compatible for QCS8300
>       drm/msm: mdss: Add QCS8300 support
> 
>  .../bindings/display/msm/dp-controller.yaml        |   4 +
>  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
>  .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  13 +-
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      |  19 +-
>  drivers/gpu/drm/msm/msm_mdss.c                     |  11 +
>  5 files changed, 280 insertions(+), 11 deletions(-)
> ---
> base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
> change-id: 20241224-mdssdt_qcs8300-11b7883dc60b
> prerequisite-message-id: <20241203-qcs8300_initial_dtsi-v4-2-d7c953484024@quicinc.com>
> prerequisite-patch-id: 33f2488a8eb133431f200e17aac743598508dcf3
> prerequisite-patch-id: 7b653ebeaf1ca3f87620ccf7d876e3d1fe496c4a
> prerequisite-patch-id: e1b60af8a64332e5f0ecbd3a4ea2b6e090bd97cf
> prerequisite-patch-id: b823d744d2fb302e2496eaf0cf0c9c66312dcf2a
> prerequisite-message-id: <20241106-qcs8300-mm-patches-v3-0-f611a8f87f15@quicinc.com>
> prerequisite-patch-id: 367d9c742fe5087cfa6fb8e7b05ebe9bc78d68f3
> prerequisite-patch-id: ee0513c070ab96e63766d235b38ee53ca9b19181
> prerequisite-patch-id: 970974160bcdc837ccbe5ea3b5dcac582e90bc0d
> prerequisite-patch-id: 5b2bd9cc44a529b0b9e5d73128dca5d2ff9f2f44
> prerequisite-patch-id: 6a0a81242e1d0f051e3102533bf0191615c6e96b
> prerequisite-patch-id: 322540ce6d45c32f813ecef50e5135c6f08d9019
> prerequisite-message-id: <20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com>
> prerequisite-patch-id: 8faad5c6d8ca255935d3e4d317dcbcc32b8261ff
> prerequisite-message-id: <20241024-defconfig_sa8775p_clock_controllers-v2-1-a9e1cdaed785@quicinc.com>
> prerequisite-patch-id: 81378ec66ab6e569bd828401c43c4f5af55db32c
> 
> Best regards,
> -- 
> Yongxing Mou <quic_yongmou@quicinc.com>
> 

-- 
With best wishes
Dmitry

