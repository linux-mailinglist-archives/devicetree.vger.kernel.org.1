Return-Path: <devicetree+bounces-145771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB2DA323E7
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 11:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B97221621E0
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 10:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5307C209F53;
	Wed, 12 Feb 2025 10:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nE8qgmOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C459D209696
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 10:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739357477; cv=none; b=mf3B07x+V2/xA1YRdfq98TmWDasuy1v4JX6KbuTWQ9ELh7dKhFL7TglzI1xGzK8lJbmcjQ29Qv5bqDR1P50iDRvfpt5oFYeWc5v3SchTpZAvb5vFza8D+WWxXXUF/1sekG+mZwZz6RtWBolIbs/noStfQasNcCYgCXbeEOVvTbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739357477; c=relaxed/simple;
	bh=icla1TpQOFmiFDBsQYkHvOp8ZGI082xL7fkqAzRQ030=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uvRBOVSSdQyr8JdbPn08KqBw2VhF2ZKL76n2P3CubemeIwp4nE8Mgedbq8ywrbXwmno0PXSaUHSIx2t3Ft3uw4UBKp7+gcb3nwnrJO2WoVOpM1HCm3iyoC6YKKEZCUPQ8cQRuzlLObOWRNP2Lwcpgb2y7HIaycjEWnXsTxbKP9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nE8qgmOA; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30795988ebeso66658891fa.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 02:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739357473; x=1739962273; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kFIw2XQTnE5Os4Qc/8wjpDzMXcpRDMes9ZJKySbiInI=;
        b=nE8qgmOAFXm+Ud60sknh92LhhiT4ndc9McaU/62bJiI7mRBZEk6nn4YBOcOumBXjke
         MUt6UCIFoLXjqbufYFxJdHUAcznjA+IdqZmUHMOYQhK5AYxfKAI2yZm+xA980s+O48G/
         /xywndHQQJyqMI1oT7Izx32SUJDqATLnnInVH7M5VOI0Rzw/Olq7/geZW1tsogAOlrkR
         UPyRlPpyn2slHHkgB4w8Xlp5KkYZSJWuKncLqQDA9g9sQ6jCFrmjI7johs12gxfRMSzQ
         Jxi+Qw/g3kSxV0FSTvwK6kv172ZMczPmhn02DXZLF2Cs6gVX8gWakzHsAh5KscZ2seX3
         b+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739357473; x=1739962273;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFIw2XQTnE5Os4Qc/8wjpDzMXcpRDMes9ZJKySbiInI=;
        b=tugi4KIt9yCRn0Ci05K9ZoEz/u1jqQxrEsclH1zT57X9pc5PmS8Bg5D2foKhW7IHdA
         WlkPra+da7UgFLcqU2tOMRP3R8Wef34pzb7+9cuw5uIWcwibLaRQar6qJZZu8nSdI+cA
         EdME9RijSlOZY/d8iDiSmcL+1no+WobERazN5p87TrN91Bw1N8hGJM2wkPumaZglk3SD
         X5kGcBLPKsH/p9kbwM/IRe0G6hyNjVPEQ22kLpXXIakklTueOvFhdrkoPFtq+QZ3B1Bg
         KndjitgWXaVCYa0/COKrjxKAQqnHGFGnm7rhDolW2Qh6+W81ehiC+evVnUgk0s3TAhSo
         umKA==
X-Forwarded-Encrypted: i=1; AJvYcCUJTGM+DrfbyXNHBrUdBJUX6nOZEBaSiM2OXcwZmSMKnjZIfiw9Wdjlp04mnUCmcKpIoMdxXMqJfn5b@vger.kernel.org
X-Gm-Message-State: AOJu0YwW2oJm78zaEPxTa8UxAqcqfEAkSBJzVKwzqY4N4vHLQg7HHhvP
	VD2qZh2KDiZHF0ku37P28hd7yEMeDXHAo83b/EOXMw0PgdCH6ISfBzKK9s7b9aw=
X-Gm-Gg: ASbGncvKRDChPZEcNraWD4en/CMrO6bbOVNdVKGpmHIK/9moNPoyvvAt3vgIVLKMfAh
	scqPRLUT82QVjmmYfZCDLq4NRYYKzc2G6Zj9qOalYMHR65AlyorLP/COstO3IUS+w2CvYvufZdR
	1XCGHk9TgpxojiTNzTQnozq82byvfv7WoZFQBhveZUfXN711FsHGIn2LUurdimhsrhE/ZveMxvp
	T1LTh4RfHy/AwJvKOx/lcRevuZ7RnyYfYYu/rTOQ89P1WICHp0//slHigWsZvIhfBYZRlgf++6o
	H7+DYzlZgzVAtlSg0d5mdbIWDDN7nW3OjDx4Ks3M8y3PT0LSYtIKwq7w6G3D/SuFmpNdMC8=
X-Google-Smtp-Source: AGHT+IEDzcPRrcce5UnawSDEarFr9+DzePDbU8ly6wk16sOl8kdhRUbYe8aGObQlOg8I3bS4B63NyQ==
X-Received: by 2002:a05:6512:3155:b0:545:10e1:b1c9 with SMTP id 2adb3069b0e04-545180ef774mr625448e87.20.1739357472850;
        Wed, 12 Feb 2025 02:51:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545166da063sm353803e87.77.2025.02.12.02.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 02:51:12 -0800 (PST)
Date: Wed, 12 Feb 2025 12:51:10 +0200
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
Subject: Re: [PATCH 0/4] Add MST support for qcs8300 platform
Message-ID: <iwr7hcavp43u2yoif5fefd7y3q3rlfx73gxdyfotfuz5s2jalo@kzyt4kotpawh>
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>

On Wed, Feb 12, 2025 at 03:12:23PM +0800, Yongxing Mou wrote:
> This series of patches introduces how to enable MST functionality on
> the qcs8300 platform.

> The qcs8300 platform uses dpu_8_4 hardware, which
> is the same as the sa8775p, but it only has one DPU. So it only has one
> DP0 controller, supporting 4-stream MST.

This is irrelevant, unless you want to point out something else.

> This patch only enables 
> 2-stream MST, using intf0 and intf3. The first and second patches are
> modifications to the correspond dt-bindings, third patch is the dp 
> controller driver after not reuse sm8650, fourth patch is the qcs8300
> dts modification which add the clk support for stream 1.

This is obvious. Really. Instead you must explain why QCS8300 isn't
compatible with SM8650. How many streams are supported by the SM8650?

> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> This patch depends on following series:
> https://lore.kernel.org/all/20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com/
> https://lore.kernel.org/all/20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com/
> https://lore.kernel.org/all/20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com
> https://lore.kernel.org/all/20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com/
> 

Please don't patches against series which were requested to be changed
singificantly. Don't spam mailing lists just to be able to 'FROMLIST'
them. Instead work with Abhinav to get this patchset integrated into his
next iteration of the series.

> ---
> Yongxing Mou (4):
>       dt-bindings: display/msm: Redocument the dp-controller for QCS8300
>       dt-bindings: display/msm: Add stream 1 pixel clock for QCS8300
>       drm/msm/dp: Populate the max_streams for qcs8300 mst controller
>       arm64: dts: qcom: qcs8300: Add support for stream 1 clk for DP MST
> 
>  .../devicetree/bindings/display/msm/dp-controller.yaml     |  5 +----
>  .../devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml | 14 ++++++++------
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi                      | 12 ++++++++----
>  drivers/gpu/drm/msm/dp/dp_display.c                        |  8 ++++++++
>  4 files changed, 25 insertions(+), 14 deletions(-)
> ---
> base-commit: 7ba9bcc5090556c007d9a718d7176e097fe54f19
> change-id: 20250211-mst_qcs8300-4c18a5179165
> 
> Best regards,
> -- 
> Yongxing Mou <quic_yongmou@quicinc.com>
> 

-- 
With best wishes
Dmitry

