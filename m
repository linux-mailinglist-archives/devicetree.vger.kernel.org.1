Return-Path: <devicetree+bounces-105178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4860B9854DE
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 10:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F25F52851E1
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 08:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F4B156991;
	Wed, 25 Sep 2024 08:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TZVwCio4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133241547F5
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 08:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727251285; cv=none; b=edOszqUzoncQK+QJGp1gLAxrfmH3Wi/4NS4O/pWx/2IZvBAowuTol4kU5d55OSONAmEyak0pddFuSINteME+wTKCZEyddttTETUlhxRM2PZAbAM1Sid26r/I/DYkx5btxRopjvsYqhTxk18mF3/mLaXcw+0VWOtzGn8iP3JaIoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727251285; c=relaxed/simple;
	bh=PG3JV8yX4YagZ/hz4Uwna/92Qvd0TZ+fGkf+EKRw97s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ggixjIHjkNHf0IJuOyx89LmwaZTYRUXFL6EgtSi/orVVJh/h3dkAH96g5HnWV94I/woK1jaJ/5wOlXJTIbXUNtbWUrHtfzgNwymRmsgCPeIds7cRvRyW0tsFZd1xZL240DSQ4Wf6F26mglw9AlPQgTkIyvkl0ywjgq0ysB1XFQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TZVwCio4; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53568ffc525so7558919e87.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 01:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727251282; x=1727856082; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gc3Ib7O+i1gpfRlkScdYFdeyRF4I/1t69Ic9Ot48nd8=;
        b=TZVwCio45E6M0tlTX+MJXasKR+mGyhOrnPTKVK/VrY2KQHbaJ+xEz7J0oOQeZmIVPU
         aXgfzq+X+sNbSsdduaJ1kPpaWINvohJj5IdB3jTmFQ/LURrBikVfNKxrkH0aEJg7hI6y
         DOYWiskIVryfp1l/E4BJdM4iN4glyXEm/MN/qA6b8BLyLXAPImvDSO+hys0potrDFhqz
         ULhOlNarFHf6GSa8ItouDTfyB9jYDx796aVdBc53uyn6KRpi4WPypwsWwZ0ZI3Z7t692
         qyKSDIz1lQ9HT0B2Ix53WcAx2x+csBfrTtkIhupG2ug7THMllVxYeQ2seRDo+EounjUD
         uEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727251282; x=1727856082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gc3Ib7O+i1gpfRlkScdYFdeyRF4I/1t69Ic9Ot48nd8=;
        b=CrRx9yk/bCGvWKYw0MKLssCiKpiTRbC9af9FqhFHH2JR36D3EBmYlIr7yBue4o1i4L
         laVNr0gm6HuzD+AckduFhT+UGev5IRLGgukI6PL3QAJMaftVwydl0WTs99+ipWOXO1Bv
         JIA/XghnObneYN0lUoUtFQUWJq4MMeFvydA8KBrvhyWA3TYTjydsPnMcVcAMzFIOHl1y
         ly5IRZT3sUrLWeToJzzTy1YDlg23IY6KqIl14PU2j18tFW9+qBlotOzwiNh58H3UX+5L
         hLmbxlYzvFbAD9pIcgaq+xptv3vG+0vNxF+j95P2uUZfWYrZPOm8Hzbt/n+ZaH1D/Idt
         DLRg==
X-Forwarded-Encrypted: i=1; AJvYcCV/77G1uYpLGQgP++RbueqcNXzFpJrdM6uCTaqmbCgLGwkOwFyPlBf0XljY0mlQCrp91h9GrpMHySs3@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ+MXzAUwdnK4kupoxrynU2EXQYale9U04Xn25eWDak19RsAb4
	Migt2oMo4raN3/cRTdO1fXtEL92Ymu8SQkuhpDZPJUwkrUYP4oOUsRu++2D6+F0=
X-Google-Smtp-Source: AGHT+IER1VglvtyOqe1FAvo9WAwzQX12afWdDnqoigXzzi0KF2Y5w853ryAJa3gThMnnd3Zvo211NQ==
X-Received: by 2002:a05:6512:b8f:b0:533:3fc8:9ac0 with SMTP id 2adb3069b0e04-5387753227dmr999119e87.34.1727251282011;
        Wed, 25 Sep 2024 01:01:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a8640913sm452717e87.173.2024.09.25.01.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 01:01:21 -0700 (PDT)
Date: Wed, 25 Sep 2024 11:01:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, quic_tengfan@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Xin Liu <quic_liuxin@quicinc.com>
Subject: Re: [PATCH v3] dt-bindings: remoteproc: qcom,sa8775p-pas: Document
 QCS8300 remoteproc
Message-ID: <bxkkqezsvvgf7xi6nhxjdpxhr76lrcjp65gtk56x45nhkygdmh@z3lzuz6honcg>
References: <20240925-qcs8300_remoteproc_binding-v3-1-21b0c52b142b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240925-qcs8300_remoteproc_binding-v3-1-21b0c52b142b@quicinc.com>

On Wed, Sep 25, 2024 at 03:21:37PM GMT, Jingyi Wang wrote:
> Document the components used to boot the ADSP, CDSP and GPDSP on the
> Qualcomm QCS8300 SoC. Use fallback to indicate the compatibility of the
> remoteproc on the QCS8300 with that on the SA8775P.

Are there any SoC-specific quirks that demand a separate compat string?

In other similar cases (sm8250 vs qrb5165, sc7280 vs qcm6490 vs qcs6490
we are adding new compatibles only if it is expected that the hardware
(or firmware) is actually different.

> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---
> Changes in v3:
> - add "contains" and remove redundant compatible.
> - Link to v2: https://lore.kernel.org/r/20240911-qcs8300_remoteproc_binding-v2-1-01921b110532@quicinc.com
> 
> Changes in v2:
> - decoupled from the original series.
> - Use fallback to indicate compatibility with SA8775P.
> - Link to v1: https://lore.kernel.org/r/20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com
> ---
>  .../bindings/remoteproc/qcom,sa8775p-pas.yaml      | 44 +++++++++++++++-------
>  1 file changed, 30 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
> index 7fe401a06805..a66007951d58 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
> @@ -15,12 +15,25 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,sa8775p-adsp-pas
> -      - qcom,sa8775p-cdsp0-pas
> -      - qcom,sa8775p-cdsp1-pas
> -      - qcom,sa8775p-gpdsp0-pas
> -      - qcom,sa8775p-gpdsp1-pas
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-adsp-pas
> +          - const: qcom,sa8775p-adsp-pas
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-cdsp-pas
> +          - const: qcom,sa8775p-cdsp0-pas
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-gpdsp-pas
> +          - const: qcom,sa8775p-gpdsp0-pas
> +      - enum:
> +          - qcom,sa8775p-adsp-pas
> +          - qcom,sa8775p-cdsp0-pas
> +          - qcom,sa8775p-cdsp1-pas
> +          - qcom,sa8775p-gpdsp0-pas
> +          - qcom,sa8775p-gpdsp1-pas
>  
>    reg:
>      maxItems: 1
> @@ -63,8 +76,9 @@ allOf:
>    - if:
>        properties:
>          compatible:
> -          enum:
> -            - qcom,sa8775p-adsp-pas
> +          contains:
> +            enum:
> +              - qcom,sa8775p-adsp-pas
>      then:
>        properties:
>          power-domains:
> @@ -79,9 +93,10 @@ allOf:
>    - if:
>        properties:
>          compatible:
> -          enum:
> -            - qcom,sa8775p-cdsp0-pas
> -            - qcom,sa8775p-cdsp1-pas
> +          contains:
> +            enum:
> +              - qcom,sa8775p-cdsp0-pas
> +              - qcom,sa8775p-cdsp1-pas
>      then:
>        properties:
>          power-domains:
> @@ -98,9 +113,10 @@ allOf:
>    - if:
>        properties:
>          compatible:
> -          enum:
> -            - qcom,sa8775p-gpdsp0-pas
> -            - qcom,sa8775p-gpdsp1-pas
> +          contains:
> +            enum:
> +              - qcom,sa8775p-gpdsp0-pas
> +              - qcom,sa8775p-gpdsp1-pas
>      then:
>        properties:
>          power-domains:
> 
> ---
> base-commit: 4d0326b60bb753627437fff0f76bf1525bcda422
> change-id: 20240925-qcs8300_remoteproc_binding-a2837bab2150
> 
> Best regards,
> -- 
> Jingyi Wang <quic_jingyw@quicinc.com>
> 

-- 
With best wishes
Dmitry

