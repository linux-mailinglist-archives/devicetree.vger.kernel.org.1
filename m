Return-Path: <devicetree+bounces-123893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3114B9D6A10
	for <lists+devicetree@lfdr.de>; Sat, 23 Nov 2024 17:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6CA7281AFC
	for <lists+devicetree@lfdr.de>; Sat, 23 Nov 2024 16:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD4507080E;
	Sat, 23 Nov 2024 16:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q2o+MXwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E6D22331
	for <devicetree@vger.kernel.org>; Sat, 23 Nov 2024 16:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732379142; cv=none; b=N3IIb6VALi/s9EvP13gPUSfANUs2Dqq+9j18PbnR7MmRzgXqvcHfxjRf1b9+sy7cz0lbiiCosZnVGUdbQzqCFc1QsbEGp73kmRERgLZBdEYBaKk4PVTABghEw8y90ddIwa3KW+U3dFFYoogYHrS/iw4yfbQXNpQjJSfhtg0MoPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732379142; c=relaxed/simple;
	bh=cKWOhr2TEoHKAogm0XCorVnCLfDDHxCCME+bHWiJtc4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f7UFRgDlOTvvF+ar/aA2Q84z29Rp6CeQE7Y2EWSDF+69OQ5kqOpWoKgPB6VZzUP+uWHVswrQHD8wGkeDnFw/H1NBzuLfWVG/nHXez+HnIjPG6LsPVQ/Z+WZA51SuGROWgMWgkdQcrK3d6m6rGTlDjjYfJcxJ1MKS6amJFoxJX/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q2o+MXwP; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53dde1bf977so380278e87.0
        for <devicetree@vger.kernel.org>; Sat, 23 Nov 2024 08:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732379139; x=1732983939; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p0WfkyrJ5M5c1EHCbXJo+QBQ/tcQlz91DYWkGNQsi0k=;
        b=q2o+MXwPlDe2Qs/X1mHdW62cxB2TDBk19MX2pnMgjQ8Uryn/vzWnYfPFXoK2nBOCiR
         11B6x3Rin9Wl8dvVYmZrAuaRDJn0DsdZdTPDJkZOxta62e+PCDUR5UNhuRdZ0PyBX2Yo
         UZKLYS7o+ji5LubHYUwf7J7PquCL+e3Ln8Z1M7TvByNEzWd5fcoZFMT17rSP6W8K4Bf8
         gO+wgitomzUWHTftv4lZODVp1uQ6FgH2BTGIp2gryjQoDeSVRVkf39xdA93J2o3UGSmq
         9akbEtowz6Kb9R0cpHAX3wAZ11/5eL04B1DqVAsifi+NQK/EUzTUgRYHrA7ehuAQuJ5F
         UDEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732379139; x=1732983939;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0WfkyrJ5M5c1EHCbXJo+QBQ/tcQlz91DYWkGNQsi0k=;
        b=VNUjB2knkH0hKuXPEiz56rN7B9uGdJVaQNt1nJ/Xd0w7nmoI+CKhFjnSHiDP2T9e9w
         DZ2B6JPw2dDfDkehKSJVvmjuo/3yS11Ce+S7qqg+yQkulmB3DqrPkoqML+EZxa83r09E
         37pA4cvRexWmkLpJn1vvozWCGieobUV731Mlf0QW1LAqJfQVXj4CBiXe5i5POk0veROw
         QKdU/C3AeBZdkelcYsf8+NKkOsNTwvN696qNuqkSxPyYEemjoklQWn3gqVTayUZykWXu
         o7r5xV80cboictwJ3DhHdDVPxf4wscxK8PhsYQphyfyWjqDGX88+689Q6pZlnIydTjJY
         didQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1ImXnScuTey7NlCYYEaffaMwgmubarx36dipYxyxFWsVQoR/D5Akl9qm5FHL5s7+1D8zaEHDCP3pU@vger.kernel.org
X-Gm-Message-State: AOJu0Yxgl5uKERVmXAUjzTy5cn9U3dv6rsdrJKk/gumRl5cm9QImihZ7
	CAa/cLCFsxcXEU+lwpYLNCOCtcSS76sWkLus2FarYVyiI8Se3uyfBu6uENNOZVE=
X-Gm-Gg: ASbGnctDttdVDtqiY6Ob/IolGo4KjiU8f76sRzXmbzp6UfOuDHjmLs1KpO8/lZo55pP
	Wizvdnxyf9tUO+gSqbEcY+VRsxLZwI2ozjcgXOE4XNEOHUqe+vo/99NbcXXdwiFhbY3FNG/o4S0
	bxDye1Qx5CABDEL8fvtmlZ+OhUmWYc1iU8dL/1iYAi2ha/ZrSlVwk9acSqs4zl/4XPhlUipxwm1
	kgdMlK7wSjH1TeM/4gNliw36NC6exhAyX97WYVp+tNZadoisbVju2Ja9jmq1RT7nMB/DGORXhqp
	SH5Wsdd3zWWHz1cVDJVJT8rV2iv4dQ==
X-Google-Smtp-Source: AGHT+IH0FijO2SCRMC1LCQPu6j8HOzuiL5/TLdkFvdxMRGvQXC0A8eetmKI0u9hXwy/W2dw3JJlAsQ==
X-Received: by 2002:a05:6512:10d5:b0:53d:dbc4:3b8f with SMTP id 2adb3069b0e04-53ddbc43c2amr1006674e87.13.1732379138690;
        Sat, 23 Nov 2024 08:25:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24455e6sm966524e87.3.2024.11.23.08.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Nov 2024 08:25:38 -0800 (PST)
Date: Sat, 23 Nov 2024 18:25:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/9] Add display support for QCS615 platform
Message-ID: <du7cgpijmpcgyktruvjotclluil7eldw7s5bdv2dkg45iii52c@3ulju66s3yic>
References: <20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com>

On Fri, Nov 22, 2024 at 05:56:43PM +0800, Fange Zhang wrote:
> This series aims to enable display on the QCS615 platform
> 
> 1.Add MDSS & DPU support for QCS615
> 2.Add DSI support for QCS615     
> 
> QCS615 platform supports DisplayPort, and this feature will be added in a future patch
> 
> This patch series depends on below patch series:
> - rpmhcc
> https://lore.kernel.org/all/20241022-qcs615-clock-driver-v4-2-3d716ad0d987@quicinc.com/
> - gcc
> https://lore.kernel.org/all/20241022-qcs615-clock-driver-v4-4-3d716ad0d987@quicinc.com/
> - base
> https://lore.kernel.org/all/20241104-add_initial_support_for_qcs615-v5-0-9dde8d7b80b0@quicinc.com/
> - Apps SMMU
> https://lore.kernel.org/all/20241105032107.9552-4-quic_qqzhou@quicinc.com/
> - I2C
> https://lore.kernel.org/all/20241111084331.2564643-1-quic_vdadhani@quicinc.com/
> - dispcc
> https://lore.kernel.org/all/20241108-qcs615-mm-clockcontroller-v3-0-7d3b2d235fdf@quicinc.com/
> - dispcc dts
> https://lore.kernel.org/lkml/20241108-qcs615-mm-dt-nodes-v1-0-b2669cac0624@quicinc.com/
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
> Changes in v3:
> - Add reg_bus_bw for sm6150_data [Dmitry]
> - Remove patch for SX150X defconfig [Dmitry]
> - Remove dsi0_hpd_cfg_pins from ioexp [Dmitry]
> - Remove dsi0_cdet_cfg_pins from ioexpa [Dmitry]
> - Remove tlmm node for ioexp_intr_active and ioAexp_reset_active [Dmitry]
> - Remove qcs615_dsi_regulators and reuse sdm845_dsi_cfg [Dmitry, Konrad]
> - Rename qcs615/QCS615 to sm6150/SM6150 for whole patch [Dmitry]
> - Rename qcom,dsi-phy-14nm-615 to qcom,sm6150-dsi-phy-14nm [Dmitry]
> - Rename qcom,qcs615-dsi-ctrl to qcom,sm6150-dsi-ctrl [Dmitry]
> - Rename qcom,qcs615-dpu to qcom,sm6150-dpu [Dmitry]
> - Rename qcom,qcs615-mdss to qcom,sm6150-mdss [Dmitry]
> - Split drm dsi patch to dsi and dsi phy [Dmitry]
> - Update yaml clocks node with ephemeral nodes and remove unsed include [Dmitry, Rob]

So, it seems it was not a complete truth.

Fange, please make sure that dt-bindings and driver patches can be
applied on top of the msm/msm-next, otherwise I can not pick them.
The tree must build w/o warnigns with W=1 and pass dt_binding_check with
no additional errors / warnings.

> - Link to v2: https://lore.kernel.org/r/20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com
> 
> Changes in v2:
> - Add QCS615 DP controller comment in commit message [Dmitry]
> - Add comments for dsi_dp_hpd_cfg_pins and dsi_dp_cdet_cfg_pins [Dmitry]
> - Add missing port@1 for connector for anx7625 [Dmitry]
> - Change 0 to QCOM_ICC_TAG_ALWAYS for mdss interconnects [Dmitry]
> - Change 0 to GPIO_ACTIVE_HIGH for GPIO flags [Dmitry]
> - Move anx_7625 to same node [Dmitry]
> - Move status to last in mdss_dsi0 [Dmitry]
> - Rename dsi0_hpd_cfg_pins to dsi_dp_hpd_cfg_pins in ioexp [Dmitry]
> - Rename dsi0_cdet_cfg_pins to dsi_dp_cdet_cfg_pins in ioexp [Dmitry]
> - Rename anx_7625_1 to dsi_anx_7625 in ioexp [Dmitry]
> - Remove absent block in qcs615_lm [Dmitry]
> - Remove merge_3d value in qcs615_pp [Dmitry]
> - Remove redundant annotation in qcs615_sspp [Dmitry]
> - Remove unsupported dsi clk from dsi0_opp_table [Dmitry]
> - Remove dp_hpd_cfg_pins node from ioexp [Dmitry]
> - Splite drm driver patches to mdss, dpu and dsi [Dmitry]
> - Link to v2: https://lore.kernel.org/r/20241014-add_display_support_for_qcs615-v1-0-4efa191dbdd4@quicinc.com
> 
> ---
> Li Liu (9):
>       dt-bindings: display/msm: Add SM6150 DSI phy
>       dt-bindings: display/msm: dsi-controller-main: Document SM6150
>       dt-bindings: display/msm: Add SM6150 MDSS & DPU
>       drm/msm: mdss: Add SM6150 support
>       drm/msm/dpu: Add SM6150 support
>       drm/msm/dsi: Add dsi phy support for SM6150
>       drm/msm/dsi: Add support for SM6150
>       arm64: dts: qcom: Add display support for QCS615
>       arm64: dts: qcom: Add display support for QCS615 RIDE board
> 
>  .../bindings/display/msm/dsi-controller-main.yaml  |   1 +
>  .../bindings/display/msm/dsi-phy-14nm.yaml         |   1 +
>  .../bindings/display/msm/qcom,sm6150-dpu.yaml      | 113 +++++++++
>  .../bindings/display/msm/qcom,sm6150-mdss.yaml     | 250 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts           |  76 ++++++
>  arch/arm64/boot/dts/qcom/qcs615.dtsi               | 186 ++++++++++++++-
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h | 263 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c                  |   4 +-
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h                  |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c              |   2 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h              |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c         |  21 ++
>  drivers/gpu/drm/msm/msm_mdss.c                     |   8 +
>  16 files changed, 928 insertions(+), 2 deletions(-)
> ---
> base-commit: 929beafbe7acce3267c06115e13e03ff6e50548a
> change-id: 20241112-add-display-support-for-qcs615-platform-674ed6c8e150
> prerequisite-message-id: <20241022-qcs615-clock-driver-v4-2-3d716ad0d987@quicinc.com>
> prerequisite-patch-id: cd9fc0a399ab430e293764d0911a38109664ca91
> prerequisite-patch-id: 07f2c7378c7bbd560f26b61785b6814270647f1b
> prerequisite-patch-id: a57054b890d767b45cca87e71b4a0f6bf6914c2f
> prerequisite-patch-id: 5a8e9ea15a2c3d60b4dbdf11b4e2695742d6333c
> prerequisite-message-id: <20241022-qcs615-clock-driver-v4-4-3d716ad0d987@quicinc.com>
> prerequisite-patch-id: cd9fc0a399ab430e293764d0911a38109664ca91
> prerequisite-patch-id: 07f2c7378c7bbd560f26b61785b6814270647f1b
> prerequisite-patch-id: a57054b890d767b45cca87e71b4a0f6bf6914c2f
> prerequisite-patch-id: 5a8e9ea15a2c3d60b4dbdf11b4e2695742d6333c
> prerequisite-message-id: <20241104-add_initial_support_for_qcs615-v5-0-9dde8d7b80b0@quicinc.com>
> prerequisite-patch-id: 09782474af7eecf1013425fd34f9d2f082fb3616
> prerequisite-patch-id: 04ca722967256efddc402b7bab94136a5174b0b9
> prerequisite-patch-id: 82481c82a20345548e2cb292d3098ed51843b809
> prerequisite-patch-id: 3bd8edd83297815fcb1b81fcd891d3c14908442f
> prerequisite-patch-id: fc1cfec4ecd56e669c161c4d2c3797fc0abff0ae
> prerequisite-message-id: <20241105032107.9552-4-quic_qqzhou@quicinc.com>
> prerequisite-patch-id: aaa7214fe86fade46ae5c245e0a44625fae1bad3
> prerequisite-patch-id: 4db9f55207af45c6b64fff4f8929648a7fb44669
> prerequisite-patch-id: 89ce719a863bf5e909989877f15f82b51552e449
> prerequisite-message-id: <20241111084331.2564643-1-quic_vdadhani@quicinc.com>
> prerequisite-patch-id: 3f9489c89f3e632abfc5c3ca2e8eca2ce23093b0
> prerequisite-message-id: <20241108-qcs615-mm-clockcontroller-v3-0-7d3b2d235fdf@quicinc.com>
> prerequisite-patch-id: 748a4e51bbedae9c6ebdbd642b2fd1badf958788
> prerequisite-patch-id: 72a894a3b19fdbd431e1cec9397365bc5b27abfe
> prerequisite-patch-id: da2b7a74f1afd58833c6a9a4544a0e271720641f
> prerequisite-patch-id: 40b79fe0b9101f5db3bddad23551c1123572aee5
> prerequisite-patch-id: cb93e5798f6bfe8cc3044c4ce973e3ae5f20dc6b
> prerequisite-patch-id: 13b0dbf97ac1865d241791afb4b46a28ca499523
> prerequisite-patch-id: 807019bedabd47c04f7ac78e9461d0b5a6e9131b
> prerequisite-patch-id: 8e2e841401fefbd96d78dd4a7c47514058c83bf2
> prerequisite-patch-id: 125bb8cb367109ba22cededf6e78754579e1ed03
> prerequisite-patch-id: b3cc42570d5826a4704f7702e7b26af9a0fe57b0
> prerequisite-patch-id: df8e2fdd997cbf6c0a107f1871ed9e2caaa97582
> prerequisite-message-id: <20241108-qcs615-mm-dt-nodes-v1-0-b2669cac0624@quicinc.com>
> prerequisite-patch-id: bcb1328b70868bb9c87c0e4c48e5c9d38853bc60
> prerequisite-patch-id: 8844a4661902eb44406639a3b7344416a0c88ed9
> 
> Best regards,
> -- 
> fangez <quic_fangez@quicinc.com>
> 

-- 
With best wishes
Dmitry

