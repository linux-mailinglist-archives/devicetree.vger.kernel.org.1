Return-Path: <devicetree+bounces-44537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEF885ED59
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 00:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4979D283CA3
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089CA12C539;
	Wed, 21 Feb 2024 23:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DueHmEmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFF812B178
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 23:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708559192; cv=none; b=Kr9C8cLCOZ1mALvAPwxO03LIoMB95qK4xDi2RC2lcSNY3vfIie+a+kv2bgGuCbaSjU1us0p97A5fDWl/oRxmwmcG+Lt84uIRuXy3dFEk+ACVsLi6kW/dKinKBK0IRbEfY4m2PG+oNflIT9zKx8aaXtDlaLp1kGAp/6AhGRj/QAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708559192; c=relaxed/simple;
	bh=pnWmeqP+Q+Ss6Z1HiEF7qic+Q6eECcvYbDCo4XWvvrI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZTZpG7k5qgfnGIckE8Jo4oE7qVU3IZ3Qpv9NDkbZ5NqET8llGRaKNxDyx9wkcTSGPkQhoY7qVu/JozPFBboLvhQranE6Vr9LfB727jSBuJ5osZCS7JgvLtcn3PSmeaC5HK3XL/By4873rZ+CSiQjX3x5cQCOtrom3Ms+bdAQwRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DueHmEmB; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc238cb1b17so1372077276.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708559190; x=1709163990; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9dEH93zhYBQD4O+y/ZdH1upWZUpwf2rY+NjXG87KgkY=;
        b=DueHmEmB56IJsWfC2ZCVxdkD0nfWvrE4zvzf0eooQaREXhPI7xLhOOgEwH/pIbnFUt
         V7OiXBQmSbqQ/Ip0iIbNsK411MBG94IhV/J5o6+qLziklzBkkV39XGGMBHtKi283IGSc
         FPd9kgjW8PttPOF6GyYwTMHHFhHwo6WZgOA5WJUb/Imqlhhw3av6qZFsV/dBi8D+svU2
         guUwyVvnXxaFxF52yivbsbxKzWZmIon+pgI/11Xilc9ykxuOb5JBwVC9p9CZKdRGIO0s
         LuTxvKZ9a7Z/04DkKFgbUeCcvXe+s2tAk8sTEuDIrg6wNqB8Cswo8ramwF/MVdoKO7/z
         Dr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708559190; x=1709163990;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9dEH93zhYBQD4O+y/ZdH1upWZUpwf2rY+NjXG87KgkY=;
        b=NWqy/n9/uJJvRLXY9Ba4fRvI007iZHVvY6tsRQhPi8+hRm+TOVqnt7SgMdUE58jcHi
         vA3qM5qk7Adg3+qc+UJ/+Kiu4EiRYNY+CwiXDUX+Vdtx3S9koggCC+hPgE3SQR0YSRjd
         GMx9U3FFJN4u5kvo1I8C1zn/In5yxV7/qqZ2+UlUJw/lyROXqCUY0HG/XsIzD1you5e+
         UvExYsabEq+6r5biwi8nk86egq8qOFYsox6fI38WNUV3jomFlZ9C4bUzbOCUxTWdWFUL
         jILTG9DzpMteveTrgsr9yttCbdDf1EOEy9rGviGhPMYPwmeZC/hR3qa/AcQuqir23Yo4
         2aGg==
X-Forwarded-Encrypted: i=1; AJvYcCUtbpe+69HNPR0irZCp6uvW+B3Dkcvdo6ZY9SyGHPBKVOX14LGn+LR7jamQIuPDMaqPD8VLv+OQzVlZUxHw1ZtoObEBddnCc+QVWQ==
X-Gm-Message-State: AOJu0YyTxpakwNjuQtsVJvlTOM1JqPO0OyKeEcZmxlz4pQmVRWRnX+bw
	94cOJSWfDOMvX67LDlAAQsoGauJJOQLJLP0yiv3X3kuKVEN43JE2oBaYmgvD6Xqa61TT+CVWDsh
	QuPaoeIcX6HwSjwT08XDhscmiYn8cipLGz9I0YA==
X-Google-Smtp-Source: AGHT+IGT+kCZVUVphawG3vyzsnULQGNfcmUnmQnWaJ9LkQcRZTA/qLxPQfQPfUp2YntsI2O5+i9NAL76Naaxfiuwc7Y=
X-Received: by 2002:a05:6902:2412:b0:dcc:245b:690e with SMTP id
 dr18-20020a056902241200b00dcc245b690emr1138030ybb.40.1708559190364; Wed, 21
 Feb 2024 15:46:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com> <20240221-rb3gen2-dp-connector-v1-4-dc0964ef7d96@quicinc.com>
In-Reply-To: <20240221-rb3gen2-dp-connector-v1-4-dc0964ef7d96@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 01:46:19 +0200
Message-ID: <CAA8EJppeStVB4Fn9Abh5hae6UBT871r9OrdCSux-YBwUOGAN3A@mail.gmail.com>
Subject: Re: [PATCH 4/9] arm64: dts: qcom: qcs6490-rb3gen2: Add DP output
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Feb 2024 at 01:19, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> The RB3Gen2 board comes with a mini DP connector, describe this, enable
> MDSS, DP controller and the PHY that drives this.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index ac4579119d3b..32313f47602a 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -430,6 +430,23 @@ &gcc {
>                            <GCC_WPSS_RSCP_CLK>;
>  };
>
> +&mdss {
> +       status = "okay";
> +};
> +
> +&mdss_edp {
> +       status = "okay";
> +};
> +
> +&mdss_edp_out {
> +       data-lanes = <0 1 2 3>;
> +       link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> +};

Please add a corresponding dp-connector device and link it to the mdss_edp_out.

> +
> +&mdss_edp_phy {
> +       status = "okay";
> +};
> +
>  &qupv3_id_0 {
>         status = "okay";
>  };
> @@ -470,3 +487,9 @@ &usb_1_qmpphy {
>  &wifi {
>         memory-region = <&wlan_fw_mem>;
>  };
> +
> +/* PINCTRL - ADDITIONS TO NODES IN PARENT DEVICE TREE FILES */
> +
> +&edp_hot_plug_det {
> +       bias-disable;
> +};
>
> --
> 2.25.1
>


--
With best wishes
Dmitry

