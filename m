Return-Path: <devicetree+bounces-121493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8EA9C6E92
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:04:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A90F1F22EC8
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 12:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB841FF7CD;
	Wed, 13 Nov 2024 12:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S+c9DfvE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A41201039
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 12:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731499207; cv=none; b=OOq5/9w4ZwYRFAzLEgQTfEwbBwjfBOwv732MM3pZp4cS6cm8SYF6gjJYruiKtyAYtKfilA7aOdYmBTHGoDOwvcb6We+wCWOn5BoaveKRbTsYm5Wq46phnQgL51SAioHWPb9MEPKi/Os5bpwrPmb+Hn3u1bv0tMQv0kIyB1GL4/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731499207; c=relaxed/simple;
	bh=Y/ExT48T7Q2ATlSss8DWUDqAd9sExKAvxJf0TSSTqFY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pvwTN2ZeCQfzWZrNR6oRm1FWL0QFbkma412bhKJ3/D4bG+HlYeQ3lc9LjOpmUvhYPE6FnGDYOf2WEDFCh6p60Zu0+uDptug9VOjyFVmVD6j48Q6wt8+ChdrjGSA5Ql5nAlN3uhLf0X58NTYCCEjOed0N+dOvqFKZLfFU/7MBhlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S+c9DfvE; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e30cef4ac5dso6538736276.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 04:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731499204; x=1732104004; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k596TkgrTDI/utTSIuBX3I56IpPI7g6dbjiEOxEyzaM=;
        b=S+c9DfvEZlyIdbDfDvx7uxF9xOEzCgb33Jwstw3eUqJUNFDGRixFve9s4/3XyGrxHv
         2fsY6iEL+8YoxAi81XgwR0in9+cKOdCcq6N3DVZRrL9fK3DdJsYxmB8+3knXRtB1uBqy
         Iti7V6aZn4YVkaogZ9Ve2m5YbT4/Zj2tFckGCQxopSkhVus3aXL4MLWGPnPfBZFwQ1PB
         OmXGLoJIaqDuRdywyJbl1JGc4ExR1bMcqDn8iEBPNpNyaA44uqkeNZFtzhLL+w2n3yyk
         DhttxaNQ/6ZgYS6zQ/Cg222TETb5jTdYK+po3gJIc3MfguQZ8SC+YuEwDHcEDf6hwtM6
         HOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731499204; x=1732104004;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k596TkgrTDI/utTSIuBX3I56IpPI7g6dbjiEOxEyzaM=;
        b=RE5jC3Poe76wdOR49jS+kohViabYjARiRstbVl64p8fKpS85gkRg23uDHUvniSX1FS
         H18A2UobUaBFsVA0sn5LFxTXjSuvN8bVz0ID0rF/khS7FAMqIszgVSLAZ9U2p5dDCfB5
         uk0edGmwEUMR385Gr0+xeUeMDqW6NSc6PgmB8kmqVqLrXXDer+w4s1AOuM1ACgvwypV8
         8cqPf8e2mlXAhhF1PXufRAcyh21UUa36vd0Fu7CMaS8w9b9LILovUXkVbd0WEqzdmegC
         DLQXY/IZGzK2BxaFI3oGMuswkjmNCk/cHOMYmWX9aSIJw1d0rtaipyn2v9UVDiGlXIqR
         Xi7A==
X-Forwarded-Encrypted: i=1; AJvYcCVdSJlQqYtkWLFc7Jhq9rVZn98deKDNEeA/sNYLCXlSRXDDaNPvH76wng1ETpm53G024ZSHZ4URgRHD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4QLp+QlSG47dsHKZKpYqtUvE58iUryLc1B1+A2Vbk3+6y0xKQ
	CENY9uF8hOdOPh9lkcRwaenPn16/HV2h3699wnwHYhKbxBx1IayFkATF2IdetL/B7M0u5UH6oz0
	r4/z4Q1BwNyL5TWzDEuRhdx4syg1ZWuJCCNTPBA==
X-Google-Smtp-Source: AGHT+IGsfhJyx7HitisMHHA/fWs2Ill2LxOo1g7wiX41CtypK1CZq6dLU052J92fnNbQTwcKpCJRGkLjMZxLGn27mTk=
X-Received: by 2002:a05:6902:1083:b0:e30:dc66:5877 with SMTP id
 3f1490d57ef6-e35dc54772dmr5688914276.17.1731499204256; Wed, 13 Nov 2024
 04:00:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com>
In-Reply-To: <20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Nov 2024 13:59:52 +0200
Message-ID: <CAA8EJppomD1MTFOjb3hTiYgkNhNbmDyh19DuznMy1Pyg95kJuQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] Add display support for QCS615 platform
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Nov 2024 at 13:52, Fange Zhang <quic_fangez@quicinc.com> wrote:
>
> This series aims to enable display on the QCS615 platform
>
> 1.Add MDSS & DPU support for QCS615
> 2.Add DSI support for QCS615

Please don't send next iterations until the discussion on the previous
one has finished.

>
> Note:
> items still being confirmed
> - missing reg_bus_bw
> - missing refgen supply

So, NAK, I'll wait for v3 after concluding discussion on v1.

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
> Changes in v2:
> - Added b4 check and check passed

Added where?

> - Added necessary blank line

where?

> - Added correct S-o-B
> - Added correct maintainer
> - Added correct To&Cc

where? Is it a change to the patch?

> - Added QCS615 DP controller comment in commit message
> - Added comments for dsi_dp_hpd_cfg_pins and dsi_dp_cdet_cfg_pins
> - Added missing port@1 for connector
> - Changed patch order
> - Changed 0 to QCOM_ICC_TAG_ALWAYS for mdss interconnects
> - Changed 0 to GPIO_ACTIVE_HIGH for GPIO flags
> - Fix indent issue
> - Fix sorted issue

This is not descibing the changes at all. Please take a look how other
changelogs are formatted and what is actually being described.

> - Moved anx_7625 to same node
> - Moved status to last
> - Renamed dsi0_hpd_cfg_pins to dsi_dp_hpd_cfg_pins
> - Renamed dsi0_cdet_cfg_pins to dsi_dp_cdet_cfg_pins
> - Renamed anx_7625_1 to dsi_anx_7625
> - Removed extra blank line
> - Removed absent block
> - Removed merge_3d value
> - Removed redundant annotation
> - Removed unsupported dsi clk in dsi0_opp_table
> - Removed dp_hpd_cfg_pins node
> - Splited patch according to requirements
> - Link to v2: https://lore.kernel.org/r/20241014-add_display_support_for_qcs615-v1-0-4efa191dbdd4@quicinc.com
>
> ---
> Li Liu (9):
>       dt-bindings: display/msm: Add QCS615 DSI phy
>       dt-bindings: display/msm: dsi-controller-main: Document QCS615
>       dt-bindings: display/msm: Add QCS615 MDSS & DPU
>       drm/msm/dpu: Add QCS615 support
>       drm/msm: mdss: Add QCS615 support
>       drm/msm/dsi: Add support for QCS615
>       arm64: dts: qcom: Add display support for QCS615
>       arm64: dts: qcom: Add display support for QCS615 RIDE board
>       arm64: defconfig: Enable SX150X for QCS615 ride board
>
>  .../bindings/display/msm/dsi-controller-main.yaml  |   1 +
>  .../bindings/display/msm/dsi-phy-14nm.yaml         |   1 +
>  .../bindings/display/msm/qcom,qcs615-dpu.yaml      | 118 +++++++++
>  .../bindings/display/msm/qcom,qcs615-mdss.yaml     | 252 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts           | 109 +++++++++
>  arch/arm64/boot/dts/qcom/qcs615.dtsi               | 186 ++++++++++++++-
>  arch/arm64/configs/defconfig                       |   1 +
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_qcs615.h | 263 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c                  |  17 ++
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h                  |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c              |   2 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h              |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c         |  21 ++
>  drivers/gpu/drm/msm/msm_mdss.c                     |   7 +
>  17 files changed, 982 insertions(+), 1 deletion(-)
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

