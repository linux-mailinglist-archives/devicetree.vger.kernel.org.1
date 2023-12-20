Return-Path: <devicetree+bounces-27320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C54819ED0
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 13:15:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 056CE1F2398A
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 12:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2897B2231D;
	Wed, 20 Dec 2023 12:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qIi/XXFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81092230B
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 12:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5e248b40c97so48388647b3.2
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 04:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703074502; x=1703679302; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4l13RPlxCLnLNVbhTc+jLScyAeZTluA6d9ppZm+Uhxc=;
        b=qIi/XXFdkAD3GqAkXy+JKS0zJy0DTo1fHCZhGVvBlytvltaFKW88vYh297mpylO1R0
         zTjahT9NnWM4DvvDrblLrFuLgOibSiSnUJWwPJJI1cvaLdYemklq6YqK99yaTnZsM79X
         yrMuU/fVNC8yxKZEy3AG4Hm5sD24oxymxDj08OgI91K876Ig9+p67XGKmHdYkKeNw0R6
         Y8O+22HDfRnHkmt9RdtEEgEhondR27tMnNd2IWygaUNHL0mtVyVZyQKhZOtLO0eanOtM
         NaqUF61AiHzQFomxUeDUDF4F5Ax87yvQyEzSiKTIC4oQduambYCdLq9mzyOgqWJMSD45
         rCXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703074502; x=1703679302;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4l13RPlxCLnLNVbhTc+jLScyAeZTluA6d9ppZm+Uhxc=;
        b=VKuKCVKXHmHAZ3SO55zE8CCCZBy/9L5xbgn3mvpKoYCu46wgJirdFRe5tfuJFIyQcr
         Eo9CKPCWleMfqtJCS5QFam97+FrBPfL6ulBDBv3g0p23DS55pbtm3DcRj/JwQTUqvpQE
         BsuAtRdDnqOIgWiiCORG2PCJdOGwSWPAFR++0t9w5Y508aDlwLaRWaNA0yj5VG3qf4ZB
         EsWynccDJqHalybwdkoIO8EBeH4WFMUpE8ZUxRUSAy7lyYpWu7idhyPoLiasaXkvhqfQ
         Z3V73S8AaQtfZYaL17zpQBdxJ0lxFaxHdwPCEe8zAbOI1dkrWIhgIaEdn6176fAhg19G
         9g+w==
X-Gm-Message-State: AOJu0YyvgcXNHO/sW3uIc9uFYp33gw+cSj8xvelbBsuA45WSd2+9iWhZ
	l4M7AjjlFtiYGWJYdsMpGs1dO2Ce/fEkQ4FX0VokzQ==
X-Google-Smtp-Source: AGHT+IGzUyozpGOgpDC3PUOwiEMpuZ391fjn7HsJrYV50IQBf6uXJrs7BXMSSj3PZR1gf7dG5KejP3c6KEIiiSOeots=
X-Received: by 2002:a0d:c703:0:b0:5d7:1940:f3f0 with SMTP id
 j3-20020a0dc703000000b005d71940f3f0mr16148316ywd.88.1703074501713; Wed, 20
 Dec 2023 04:15:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220114225.26567-1-quic_kbajaj@quicinc.com> <20231220114225.26567-3-quic_kbajaj@quicinc.com>
In-Reply-To: <20231220114225.26567-3-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 20 Dec 2023 14:14:50 +0200
Message-ID: <CAA8EJpohwgyoRPq_gWKz+cYipsqvFgLdi=X=acL4AJhhU6Erxw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable various remoteprocs
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Dec 2023 at 13:43, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> Enable the ADSP, CDSP and WPSS that are found on qcs6490-rb3gen2.
>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 8bb7d13d85f6..172f9a3678fd 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -417,6 +417,21 @@ &qupv3_id_0 {
>         status = "okay";
>  };
>
> +&remoteproc_adsp {
> +       firmware-name = "qcom/qcm6490/adsp.mdt";

NAK. this should be .mbn

> +       status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +       firmware-name = "qcom/qcm6490/cdsp.mdt";
> +       status = "okay";
> +};
> +
> +&remoteproc_wpss {
> +       firmware-name = "qcom/qcm6490/wpss.mdt";
> +       status = "okay";
> +};
> +
>  &tlmm {
>         gpio-reserved-ranges = <32 2>, /* ADSP */
>                                <48 4>; /* NFC */
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

