Return-Path: <devicetree+bounces-130751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C98649F0D4F
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:31:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62185161131
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 13:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1861E00AC;
	Fri, 13 Dec 2024 13:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u4C0YhT8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5631DF273
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 13:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734096699; cv=none; b=hU9fMGiStyniuRu/nm5QEGhtFnCea4KtxtqN0LEWfD4x4Z5CvDKuWu4C6FII3xbYc3l2Dnp0PxWyL8AE/xZxwcGamiC9s+SUNWnbf8K5ukAPCk54yNUMjQGrnEWPd8FeOV/e3i+9xRI0ufWxvjOJZNu64nFKyGsouBLHQdrnWmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734096699; c=relaxed/simple;
	bh=wu7UMBtCHOFAPZSsmL3zymqjUc8WPgPrgGKUYGXgx1k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZrNtT0grKwz5hi8mF0clgPWwnjWMIqjz/lBIO0NBwKemCk2YSYsjQPjp3hsvR/A6ieo0Yxsb0oYHBpH2bM0JncDC7sqeQLkK9w5OZCSI6E+RGBHeWjknRIz/0VMKPnTerdKpHZaX83q6sTFgd034nqfHl9GiD3uGSrdDi1CjjaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u4C0YhT8; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6f00b10bc1dso15976587b3.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 05:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734096697; x=1734701497; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sfJqbpO8fzR7hotkw8WChASKcoelnmQh7lFNBgHegyc=;
        b=u4C0YhT8Og44DZ92w8Vut+7Ps+aDvtLjOgT0uTn8uBX3WxUxS6b3wZPkq+FX3LlFEG
         /sSJr1TNqGLyEiwTxoPAVjlsdFptbR28m/hUr6yPR5ljwhr9/LYOdxrmZHnpZJv349uP
         +8so/gp3ltclBBRMVHsxU9HNA+6+NfkRXUPKR46TLd46ye2at+o27+sVsg4m6kzIhnU1
         WBmaqVsZQbD/eEYB/8GiSVRObZuJP0eDjSYJS+zEn+YfSGmq8cAMCGoIzyhkmxgOG7Xm
         XdOXJqhe/we68N8IcPsg/UAKt0CpaE8OaXdgxJlQNID4t8Qje1m5wnWd41gxrFPax4in
         DWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734096697; x=1734701497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sfJqbpO8fzR7hotkw8WChASKcoelnmQh7lFNBgHegyc=;
        b=jRZ4wmIkvvc18y84IhpdQPFYVSJgxi2iQ9RMVfgh3LA7KhQ3wg4foZQGwipghyLW3y
         YtDFC/ZfleSoXkIeqt1gNCvhn8zf9Fp3H+i+l1uN2i9A9OctJYzHj9h+a1MI9RLaM5Lo
         DFRQC4dF8gy7si5TbL9ZG5/Bo9BU46OZzLrxT1+P941jLXXN/8io+SOoijmKd+wm+u3k
         Z1qAFV3mGM3RKHWDXArYHtL7lXR7tskIGPhXSEjXRyBmJAm0YGIJ1Vmk/fm8bOtwpSlA
         5KNgUcxeozmqsTX8zu5wv+kuV0hrK6E7QegNEbsNm31M5EyoJqFypWF0w0bnhpa9ozqr
         hZfA==
X-Forwarded-Encrypted: i=1; AJvYcCVP1mbNFT6KZOtPo8jW4iKiW48yBFrRfES9Bw+kAyZalVHZJu/tz08bQOTOXKgeK2K/Cku6XJ+Q3qUl@vger.kernel.org
X-Gm-Message-State: AOJu0YwLA3yGZjSNSZdfTiOTHDflS9f/GN9X2VAxArdelJj5Qh3n2GXK
	sEjft8fCNDz3Rib8IRtDDBazTlo2D8tU0gDmNHifO7qFT5D5sWjlqjckieb43wSFHWUvMSuJkyq
	IHJYF36EzTE+uT7RbD9OVZHsXtclqP3UX6UqB4Q==
X-Gm-Gg: ASbGnctz0et0Ee2jrSX4LWHbQOVQG1XGEC3jzOKIc4qRDrpguNCI+hANWbnxtp4QHfP
	6kZWPYHIJheDDaARppm1gehpKGWS4x0k+SL2K
X-Google-Smtp-Source: AGHT+IG2oQo9/pJojNxPge9b6BLy5vw+9wYfAvJ7mQMiGJU6v/4xK8PvgaXtkMMl3WrEhcVUtJlFxa3Ns2fJC50KKas=
X-Received: by 2002:a05:690c:6e13:b0:6ef:7fdb:7d41 with SMTP id
 00721157ae682-6f2798e0c42mr25633727b3.0.1734096696819; Fri, 13 Dec 2024
 05:31:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213-qcs615-gpu-dt-v2-0-47f3b312b178@quicinc.com> <20241213-qcs615-gpu-dt-v2-4-47f3b312b178@quicinc.com>
In-Reply-To: <20241213-qcs615-gpu-dt-v2-4-47f3b312b178@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 13 Dec 2024 15:31:25 +0200
Message-ID: <CAA8EJpom2amWzH5QpXrPSdMKS6bB_8O4CU67OVNuEjkjA-wseA@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 4/4] arm64: dts: qcom: qcs615-ride: Enable
 Adreno 612 GPU
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jie Zhang <quic_jiezh@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 13 Dec 2024 at 13:32, Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
>
> From: Jie Zhang <quic_jiezh@quicinc.com>
>
> Enable GPU for qcs615-ride platform and provide path for zap
> shader.
>
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index ee6cab3924a6d71f29934a8debba3a832882abdd..860a0db1908cfe32a250b14aac14065923c5a575 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -202,6 +202,14 @@ &gcc {
>                  <&sleep_clk>;
>  };
>
> +&gpu {
> +       status = "okay";
> +};
> +
> +&gpu_zap_shader {
> +       firmware-name = "qcom/qcs615/a612_zap.mbn";

This brings up my usual question: should it be qcom/qcs615 (fine with
me) or qcom/sm6150 (maybe even better?)

> +};
> +
>  &qupv3_id_0 {
>         status = "okay";
>  };
>
> --
> 2.45.2
>


-- 
With best wishes
Dmitry

