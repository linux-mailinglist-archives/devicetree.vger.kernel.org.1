Return-Path: <devicetree+bounces-105612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFC3987401
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:00:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8777FB2728E
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED43134BD;
	Thu, 26 Sep 2024 13:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rr4r6lZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E8910F4
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 13:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727355626; cv=none; b=JpU2ZHpwMvFBnJTNDgyBtmtmMClv0celL+uXKu9vbvpSmZlSZJ+sSQZQ22v45TVIyUoCOjbF2Wr1QeCivgeX+s9xES8TFnzM10clXOVPxhXCbnbsc6klQVB+L84qd9jodQknymIANszAsypoTiHUMlo5IhzSnFHTT1YXgMf8g8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727355626; c=relaxed/simple;
	bh=QzG5pjigP56w5BLvdrxVbxrasKk0iIw55R25kmN4ONg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oq37jzRr30Sqq9wkyIeBVXjqS0LfhF8rRVRXHcfS9hG99LU5ch6I8Jq5t4309/RZdsIGBinhI7Wdqk8GsFzmlqiyxt+txianTu0t5C/UCrFkGrv/PiyAmG1Ja0/4BhSrjiU7gvxxyQjBHdanXuVKqH3R8UjEwoCLrOY8iaZiVGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rr4r6lZj; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5365cc68efaso912000e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 06:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727355623; x=1727960423; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8VbPVLJo90gF6bloxyF3+VghcH4b6zy2e3AKb4JKXSg=;
        b=Rr4r6lZjzWHWHX4osSv1dm+QBBtywF7YWGUafAM3skvzALiO11IbrOnjMyVrlxAcHz
         +lYVCNqSoV6PJ5s9xl9/Ux0/lw3m6SdcNiBSx6NkOY+r4tOMVao+FjZmLJcQNjP6Cmzk
         htUFtMjw7ZdJVgmAOU+Tx564fZ37efXpRKJlSk7+Q4JM3NcVElvPGOGqBY9HUNiXtV7U
         Rk+u+hDi/dqsxZhugjaREgQqilzA+FhdH/lVHBw2ZuHVckL6yRPa7E9Vy21fSEu/EzCQ
         5Sx+agNHPhGV2qIigqm7bAWkMIZad9E/MgcpQTCVSJSGxdpYK5bzNEagw31OON6J0emU
         aRCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727355623; x=1727960423;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8VbPVLJo90gF6bloxyF3+VghcH4b6zy2e3AKb4JKXSg=;
        b=wQbnZumJfTco6dkyxy4Ej7ZDhh/x/1SU6tR8Ng+bUVmRowbrvaUyxp7e90Wz3z8+0i
         JpvkjLTLD76JHBiS/Fo+KNGMwSdAITXRmeRnnQIpwclrU45xfVwB9FqP1+TJ3KYqncnC
         gOBgZPpluV06R7awCHtt4NBUpUyyk5oD+FkO45wAgyGS4WdEY1t4GbP9nUODiv5An3h4
         Zr0ceukbcVEwx75fv+MuKlNvLvqqgSLEDZ945Z9qIWMzzw7RYLR91Dl0x6uUmSV2KiQi
         TklSdgZ1lQFvEQ/lSrinC/HaQkbWpVR/FFrocDgqicXjxKc9rrwdb20bN08flLacayT0
         hIxw==
X-Forwarded-Encrypted: i=1; AJvYcCUYcLzQDx/Pup/zLb7C9ZViPy8E8/IYo4asg9Yc92vM5gwU+p4YdnUDH3xqKfVJ8IcPO6WFpmQ+bVuy@vger.kernel.org
X-Gm-Message-State: AOJu0YwhFfqHYN62JbTSx2PkWw1rrT6nQ7VEoWGymWFV4EzJWplHKEbM
	i98YKSkAgMgu1jbJAKkNFzr42mT+hO85z7iGxtNrrwLpkvQ8MlQ4gLF5l/gB9Ik=
X-Google-Smtp-Source: AGHT+IFGi69LdpsEvft8/gS6khZ1h2DKOt4lRFK2QIM9OQPs45u9Jci7vJjN3PDBuQNJ9jEkKW2v6A==
X-Received: by 2002:a05:6512:230b:b0:536:55a9:caf0 with SMTP id 2adb3069b0e04-538693aaac7mr4063854e87.0.1727355622822;
        Thu, 26 Sep 2024 06:00:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a85e0d1bsm792908e87.19.2024.09.26.06.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 06:00:20 -0700 (PDT)
Date: Thu, 26 Sep 2024 16:00:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Mahadevan <quic_mahap@quicinc.com>
Cc: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, swboyd@chromium.org, 
	konrad.dybcio@linaro.org, danila@jiaxyga.com, bigfoot@classfun.cn, 
	neil.armstrong@linaro.org, mailingradian@gmail.com, quic_jesszhan@quicinc.com, 
	andersson@kernel.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_kalyant@quicinc.com, quic_jmadiset@quicinc.com, quic_vpolimer@quicinc.com
Subject: Re: [PATCH v2 2/5] dt-bindings: display/msm: Document the DPU for
 SA8775P
Message-ID: <rp6z2xpaeshzoa34r3wptbx6ovv3gl46qorovlxk65ccrgfon6@fhcba7scaczu>
References: <20240926110137.2200158-1-quic_mahap@quicinc.com>
 <20240926110137.2200158-3-quic_mahap@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240926110137.2200158-3-quic_mahap@quicinc.com>

On Thu, Sep 26, 2024 at 04:31:34PM GMT, Mahadevan wrote:
> Document the DPU for Qualcomm SA8775P platform.
> 
> Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> ---
> 
> [v2]
> - Use fake DISPCC nodes to avoid clock dependencies in dt-bindings. [Dmitry]
> - Update bindings by fixing dt_binding_check tool errors (update includes in example),
>   adding proper spacing and indentation in binding example. [Dmitry, Rob]
> - Capitalize clock names in description. [Dmitry]
> 
> ---
>  .../display/msm/qcom,sa8775p-dpu.yaml         | 122 ++++++++++++++++++
>  1 file changed, 122 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sa8775p-dpu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-dpu.yaml
> new file mode 100644
> index 000000000000..435e4c028bb8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-dpu.yaml
> @@ -0,0 +1,122 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/msm/qcom,sa8775p-dpu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies, Inc. SA8775P Display DPU
> +
> +maintainers:
> +  - Mahadevan <quic_mahap@quicinc.com>
> +
> +$ref: /schemas/display/msm/dpu-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,sa8775p-dpu
> +
> +  reg:
> +    items:
> +      - description: Address offset and size for mdp register set
> +      - description: Address offset and size for vbif register set
> +
> +  reg-names:
> +    items:
> +      - const: mdp
> +      - const: vbif
> +
> +  clocks:
> +    items:
> +      - description: Display hf AXI
> +      - description: Display AHB
> +      - description: Display lut
> +      - description: Display core
> +      - description: Display vsync
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: iface
> +      - const: lut
> +      - const: core
> +      - const: vsync
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    display-controller@ae01000 {
> +        compatible = "qcom,sa8775p-dpu";
> +        reg = <0 0x0ae01000 0 0x8f000>,
> +              <0 0x0aeb0000 0 0x2008>;

Same here. 0x0 instead of just 0.

> +        reg-names = "mdp", "vbif";
> +

-- 
With best wishes
Dmitry

