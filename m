Return-Path: <devicetree+bounces-2661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDB97AC152
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 13:44:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B3E092820FD
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 11:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D11315EAC;
	Sat, 23 Sep 2023 11:44:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC738612E
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:44:07 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2CC819A
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 04:44:05 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so11130546a12.1
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 04:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695469444; x=1696074244; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vla4OZsvqD5RmSyqkNtWVp3bfdJ5jFtYYQ5MrELcXSM=;
        b=nDbEAVteD7aGdLtChPEt/+FkeMGFRMhA1Nd/qCP6CxF202JZWaq+YPyIYDUT0GzGFW
         HLB3R5r/nn6/j/FJi7p6T9ALwPRXEeJOrYRywbYT8RKeO9prvdHu/7QcwPd+ZmqSYwTt
         huVEP4SFaDkhQPZtyqFlsTfJx4qENLp1XbNhFxj5ChEEclciuqR56QcKzRP1i9hISX+h
         3uRJx1VqodiWx+C+Yc3cN//klaJ+7mZDXvIX9hH8ZMaukf/clQue/1KVjo9ecFKdNYSF
         DLZoNiiGaqTjfHDxqTiKOw+QXkjkEG1OGgk4aL63DfnSIT5k1zaOH+hLqiUa/Da0hKH7
         1DfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695469444; x=1696074244;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vla4OZsvqD5RmSyqkNtWVp3bfdJ5jFtYYQ5MrELcXSM=;
        b=CYK2Aodb0LAImhEWK3NIRDMjDFssQONB53Tx5f4sV0+A6w1sPdAdpwX0Kv1DDSYDFM
         RC4Jb1bY/0qBwdWwcPRTrEw8G84OAwhNYlVM9G7jz8l/ULX62O0lYOKjcygUHEOreVvi
         GTPEXt1P6lhPsBN+Jkhnq+Spiz16qLFk2PQTQlXcKF7THVlvqVGcZ8620Sjte9s9kLDm
         TO7zJ8u9Jh+XYVCar9dGqGy68l+PHGZ33wIJ6BQloF14Ho8bApocQnNElZ7ndTZB+2YS
         fO4f//V+Mude4jMyUIGi7HbeT8S0QntjfAKvbQLIVlzZwVTF/F2PtM5qA2nXK0AMZLva
         9E3w==
X-Gm-Message-State: AOJu0Yz4yJd2+ioG9Ix/hF+91p96xcUmQtZV4Rc7I1MWgKw5iFpv0n/h
	r4XO//3NYrXoI4xbA83TJiCvcg==
X-Google-Smtp-Source: AGHT+IH6goftz+deG7oSTeTuzwqyw9P8c6mgIH9qR63I1IV/ch6sI7RIzn2uujDg7rQtq/HyjVsX6g==
X-Received: by 2002:aa7:c158:0:b0:52a:38c3:1b4b with SMTP id r24-20020aa7c158000000b0052a38c31b4bmr3444238edp.15.1695469444353;
        Sat, 23 Sep 2023 04:44:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id s3-20020aa7d783000000b0053116e45317sm3274449edq.44.2023.09.23.04.44.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 04:44:03 -0700 (PDT)
Message-ID: <f4fa94ab-78fb-d01b-7188-c498ec3053ff@linaro.org>
Date: Sat, 23 Sep 2023 13:44:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH V3 1/4] dt-bindings: thermal: qcom-tsens: Add ipq5018
 compatible
Content-Language: en-US
To: Sricharan R <srichara@win-platform-upstream01.qualcomm.com>,
 agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 thara.gopinath@gmail.com, rafael@kernel.org, daniel.lezcano@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 dmitry.baryshkov@linaro.org, quic_srichara@quicinc.com
References: <20230922115116.2748804-1-srichara@win-platform-upstream01.qualcomm.com>
 <20230922115116.2748804-2-srichara@win-platform-upstream01.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230922115116.2748804-2-srichara@win-platform-upstream01.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22/09/2023 13:51, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens v1.0 block with 4 sensors and 1 interrupt.

Then why do you allow two interrupts?

> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  [v3] Added the tsens-ipq5018 as  new binding without rpm
> 
>  Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index 27e9e16e6455..a02829deeb24 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -44,6 +44,10 @@ properties:
>                - qcom,qcs404-tsens
>            - const: qcom,tsens-v1
>  
> +      - description: v1 of TSENS without rpm
> +        enum:
> +          - qcom,ipq5018-tsens

You miss now description of interrupts, like the other variants have.

Best regards,
Krzysztof


