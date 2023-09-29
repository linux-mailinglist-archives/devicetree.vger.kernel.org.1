Return-Path: <devicetree+bounces-4622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C51697B34AF
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 100DCB20A0E
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CA94F13A;
	Fri, 29 Sep 2023 14:16:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ED64123C
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:16:17 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB9C11BB
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:16:14 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4054f790190so132489355e9.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695996973; x=1696601773; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=00JIa3i2YsuwYBTn1xiPk8aPDl3kS4S8pu4PM2POaUI=;
        b=hrW7w7JlgqYDLBetKemNzjp7x4cVc2MXWIalfba5IePCjFNGq5u8kb9crDeEghFxka
         W10sAS60DlA7JRIfVdbMJoDGSUxMw5ppzU80O2BZq1VUwzhC33oBHua0N7n2cCVZ7lrL
         lcHP78i4Hy0nD50rrUNs8RpfSumHaIAOJHsG22QsK0P+lBMW2quYgWEot68PmyqzmzJi
         cI2lLnIbKAamYmu2vkWAWrFUAlhU+Sr2QL+XBYnMtwaF1uUyFXFFEMoO+U4e/b0UrgEJ
         8kJE0JuJ6RF1CMxA55wbWuKngtsq4uVBAqBNOohNaRPK3xpNauattMaK8SdTcJkQK3uZ
         BWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695996973; x=1696601773;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=00JIa3i2YsuwYBTn1xiPk8aPDl3kS4S8pu4PM2POaUI=;
        b=mcAE3y0GmJJ5hU+I2+0RSfG5XVND1DEIdowWs6R/HH64L5hl05Ju8ZOQiF09Czxf2w
         QOU7PKkK1nqQ2wE3p5nBqrjNw/JlN4lv3zV9VCmzVLuUVnuNmi6qLvITNjYGuMEzZfIs
         I5tAWuJVFGCbyE8akoNgCDdzNpwIHq/y0PC1Ahn6vcyF/uuVsBiNnp7JWn0ReDp1DZMb
         GLZymhsEoGfrV8ctlv9ecVWdRp3k/2QoGvJzzrbBuG6pF9Y+ghMbyHi87U0i8HA6OTC2
         SVrFEXwbHhk94Xc+okwmPzraQ1ke1wVDUINul0yxNSX/dPW/NU9f7wQ133jfa02rLunl
         2PYQ==
X-Gm-Message-State: AOJu0YxGK+XS3L30hl0ZShGqorzqnqzkXcNXGOGZF2AEsegp+nGYnLR5
	RYUXWoNEYMun5wCbpfU0ApNkGw==
X-Google-Smtp-Source: AGHT+IG61tSL0NxdNazcc9PmRAuQGFsDS5CNv2jnP9lZj6UbJ/936yH9/EvOEDuRV/yyAsqsm4f9Cg==
X-Received: by 2002:a05:600c:211:b0:404:6ed9:98d1 with SMTP id 17-20020a05600c021100b004046ed998d1mr3845184wmi.41.1695996973349;
        Fri, 29 Sep 2023 07:16:13 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n24-20020a1c7218000000b003fefb94ccc9sm1520894wmc.11.2023.09.29.07.16.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 07:16:12 -0700 (PDT)
Message-ID: <6b201582-4005-4d06-819d-356dd906b28c@linaro.org>
Date: Fri, 29 Sep 2023 15:16:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: i2c: qcom-cci: Document SC7280
 compatible
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230929-sc7280-cci-v1-0-16c7d386f062@fairphone.com>
 <20230929-sc7280-cci-v1-1-16c7d386f062@fairphone.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230929-sc7280-cci-v1-1-16c7d386f062@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29/09/2023 09:01, Luca Weiss wrote:
> Document the compatible for the CCI block found on SC7280 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index 042d4dc636ee..158588236749 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -25,6 +25,7 @@ properties:
>   
>         - items:
>             - enum:
> +              - qcom,sc7280-cci
>                 - qcom,sdm845-cci
>                 - qcom,sm6350-cci
>                 - qcom,sm8250-cci
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

