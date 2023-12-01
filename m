Return-Path: <devicetree+bounces-20622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB768005F0
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:40:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F06C2819EC
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A6C1BDC8;
	Fri,  1 Dec 2023 08:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y4zy/Dum"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0176D171C
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 00:40:01 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50aabfa1b75so2704718e87.3
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 00:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701419999; x=1702024799; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dBM0cPs1Gi8BXGGaIRnt4whCmCq9vuvHTnWmljIuX1M=;
        b=y4zy/Dum45Nz9GJpJECOmuhu19Zu0GLShXUf1tOgz6x82EQxbPZnOWhiO47qtcbCgM
         3Ck23WI6LBiU7HFl0i596zzHvicIhiq/WC0d5jjoZPbDYBdyR9DCQ14g6+AJ/SYnQznX
         daHVjW3iiU8/XlKS/1u9SjeNb/ekjJw9QLceosdke6nWABrbDKoqHPswlgWquPwsoDq/
         O1cFExFF86FUcjbUEvVumE8Hu/FyCIxLeBi9FR6E6aIXOuSoLlZX0JxhbYsbzRD0ZoNa
         MpEqBlB3NtSHCH/PlhjY7BUoL/m8Zlc8wuLP8TMRO5n/GC6yw7TJpUilRIjSG1xfbNIZ
         F94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701419999; x=1702024799;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dBM0cPs1Gi8BXGGaIRnt4whCmCq9vuvHTnWmljIuX1M=;
        b=cUkyFoODSg9JpRFDE8J5i/XiVsdobtj0P3sjKZ258YjIreUbjdSnB4Lg1yMhimjAcy
         p1Swt7IRUQHFlUME7EwGRil8vejV0jw8AbWNSYHApOsCuDcZH3X+ZX7gTVTwpccJkc2E
         1crTB19X1WUVUCT1zIO+zCpyR3bOM/rJiGY8uEd8o0zIp46lpK5aQCTILOdKfPFvAIth
         CGbEYb93BLuS6tD5mZetANUdK3mRaBoiVYmPr5LuOl+kJZ1nIJnh1eNnnNSdD9YHzPex
         25W/bozK1MbyBF2oomE3VTjOWOILP4O6jJpR/+Xz2TBDCuCrA/1fJCmYcZwRWawUvfDf
         GWOA==
X-Gm-Message-State: AOJu0Yw2VIgNOOLgx8UMBsrfQVxuhyS6MhuprxN3PR1KTdWzSu/Y3nCf
	Ilx25upyNDs7E/a29OrtaPH4dQ==
X-Google-Smtp-Source: AGHT+IG9NgMjpjHaijT4SNeNKxPgYBOMeGyO+6VbIMNinwm9tJq0n2F38OjVQAXxE7KNX+7pveCisQ==
X-Received: by 2002:ac2:58e3:0:b0:50b:c307:7cba with SMTP id v3-20020ac258e3000000b0050bc3077cbamr454706lfo.31.1701419999229;
        Fri, 01 Dec 2023 00:39:59 -0800 (PST)
Received: from linaro.org ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id fa10-20020a05600c518a00b00405442edc69sm8274555wmb.14.2023.12.01.00.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 00:39:58 -0800 (PST)
Date: Fri, 1 Dec 2023 10:39:57 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sm8550-lpass-lpi: add
 X1E80100 LPASS LPI
Message-ID: <ZWmb3fa5bIXQmLzf@linaro.org>
References: <20231129155738.167030-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231129155738.167030-1-krzysztof.kozlowski@linaro.org>

On 23-11-29 16:57:38, Krzysztof Kozlowski wrote:
> Document the Qualcomm X1E80100 SoC Low Power Audio SubSystem Low Power
> Island (LPASS LPI) pin controller, compatible with earlier SM8550 model.
> 
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  .../bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml     | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml
> index ef9743246849..ad5e32130fd7 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml
> @@ -16,7 +16,11 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,sm8550-lpass-lpi-pinctrl
> +    oneOf:
> +      - const: qcom,sm8550-lpass-lpi-pinctrl
> +      - items:
> +          - const: qcom,x1e80100-lpass-lpi-pinctrl
> +          - const: qcom,sm8550-lpass-lpi-pinctrl
>  
>    reg:
>      items:
> -- 
> 2.34.1
> 

