Return-Path: <devicetree+bounces-4898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD3E7B42A9
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:24:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F34A21C20C37
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0351182C2;
	Sat, 30 Sep 2023 17:24:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5098E1803D
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:24:02 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34100E5
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:24:00 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c189dabcc3so60637721fa.1
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696094638; x=1696699438; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MzpkS5WtBC86fJGuXY0GbjQIu9QUBdjEhDwmlgi2Kew=;
        b=sJArNkk2fydsFcToRYaN/3SyR8jZ5/eeeNw3On6Gxz+WaKtCN9npRsd/RIXHKKH7R0
         9l3ihJUqPGGsBnfBggqaosCeWcCV2K2u1rutCtuspm44jJm79uHEUIFWW3H5AJIyFj8+
         OLSxEZSGF6DLnMJ2XnklNRrwuC9CaEXZkuqYo0YKtIDDJbbIDn3SuzPiHj81ePrqureG
         mDCsNdnslgrPyXnQUdOkU3E/WMESYOKS4bfJop6jq0JxnxPe87aYOxGcAvsqCq69Gy2J
         qGaTvtqHI9hSXNUi4D54zu5+DE2QIeZZw5bS41CD6kk1oqPmK7Vtyi4gId9sV4qlp9Ym
         Lb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696094638; x=1696699438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MzpkS5WtBC86fJGuXY0GbjQIu9QUBdjEhDwmlgi2Kew=;
        b=aa7HbWDVmTF/pRo15RNZLgSS7Zk0UxT/XwqGLpQZ1tiClsi0+pwGNomIIZ2R4+pQKz
         hOQRfeIG+2nutBQ1wPC7YdxgPih+9v0Mj7t9uyMwYFYpZcf5vodEky7HFTY6k9jiPBv0
         zoHaItPFRaxA12rOvlW/2rx9HD870m+V1z+bvKh/G+5LdQHv2yI8u3Nf7Nd9VuOiPomA
         GzwzaXOF9vQuP+xsqkBndAU205weM/F8NVgOGygJJVe590F1CTq5ihEOs9d5ZGw4YxmW
         zxiKi7JcW1FWrt++Q3+y0aM/8b0362cydM/tIC2te75ooffQ3DcrMqkAbKdeY5kAVhr8
         nKUQ==
X-Gm-Message-State: AOJu0Yx5vdv+S0sV0TB+eA+SRGhg5YkDSzmm5jPBF3/MnpNS+fBgs5nC
	kghfUBvG84ottHRCcMxPPWdRuA==
X-Google-Smtp-Source: AGHT+IGvXNt7OngCsZTWxJNJE2rVMCZJDaC/Er1JEElLoCfYx28zdY6xhS+zm33ksmi5HfdxncMRiw==
X-Received: by 2002:a05:6512:10d0:b0:503:293a:dc1b with SMTP id k16-20020a05651210d000b00503293adc1bmr7471121lfg.30.1696094638327;
        Sat, 30 Sep 2023 10:23:58 -0700 (PDT)
Received: from [192.168.246.189] (85-76-98-178-nat.elisa-mobile.fi. [85.76.98.178])
        by smtp.gmail.com with ESMTPSA id z8-20020ac25de8000000b00500ba43a43asm3994414lfq.86.2023.09.30.10.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 10:23:57 -0700 (PDT)
Message-ID: <c0abfa16-92f3-41e6-afb2-e542131ae67b@linaro.org>
Date: Sat, 30 Sep 2023 20:23:54 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] dt-bindings: usb: dwc3: Add clocks on Qualcomm
 IPQ5332
Content-Language: en-GB
To: Praveenkumar I <quic_ipkumar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 arnd@arndb.de, neil.armstrong@linaro.org, nfraprado@collabora.com,
 u-kumar1@ti.com, peng.fan@nxp.com, quic_wcheng@quicinc.com,
 quic_varada@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_kathirav@quicinc.com, quic_nsekar@quicinc.com,
 quic_srichara@quicinc.com
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-5-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230929084209.3033093-5-quic_ipkumar@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29/09/2023 11:42, Praveenkumar I wrote:
> Add aux and lfps clocks in Qualcomm IPQ5332. These clocks are required
> for USB Super-Speed support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>   .../devicetree/bindings/usb/qcom,dwc3.yaml    | 20 ++++++++++++++++++-
>   1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index 67591057f234..18af2887b984 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -149,6 +149,25 @@ allOf:
>               - const: sleep
>               - const: mock_utmi
>   
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq5332-dwc3
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 6
> +        clock-names:
> +          items:
> +            - const: core
> +            - const: iface
> +            - const: sleep
> +            - const: mock_utmi
> +            - const: aux
> +            - const: lfps

Could you please also describe the lfps clock in the top-level clocks entry?

> +
>     - if:
>         properties:
>           compatible:
> @@ -238,7 +257,6 @@ allOf:
>           compatible:
>             contains:
>               enum:
> -              - qcom,ipq5332-dwc3
>                 - qcom,msm8994-dwc3
>                 - qcom,qcs404-dwc3
>       then:

-- 
With best wishes
Dmitry


