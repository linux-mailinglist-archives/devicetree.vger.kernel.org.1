Return-Path: <devicetree+bounces-2710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A6F7AC385
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 25F52281D02
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A059B200BD;
	Sat, 23 Sep 2023 16:14:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C631D547
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:14:37 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BECD519E
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:14:34 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4053cf48670so25184935e9.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695485673; x=1696090473; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vflvz+AATv6d9uy0+n/CPOAt3NEI1Og8mJmqlW1xhco=;
        b=Nf/8o4t4Hin9O42VZaJp6ZCHPNKVq8reOjmV9t4RkD6fbBYZGF6J+1L+9GJE4oDwNS
         HNG32SydkaTWcwion39XSyGSo/PHho49LKglTiGdxHyG/qTL0T9PcKsPJWG5TIw7QW/D
         bjywnEUdsPf/XtRefMsqP7q5OimTsKjwFdYFYU1xv3QXdeSn7GvnUXhVe2wir6vFezPE
         tkX3CpPJgyrv40dtEOoaYhw2bf4DmkcZmN2t22JaW1tyl1l+y4XZSdyBwAoFHDl/WM7F
         OOq/h/MAIdaKe/G8gR/DxlTVVN2i4FClxKDo2c1Nc6cTVbX/zXmmxtx9GB98Avd/+/HA
         U8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695485673; x=1696090473;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vflvz+AATv6d9uy0+n/CPOAt3NEI1Og8mJmqlW1xhco=;
        b=fVRKV5p5P9hPx6IdDcS3l9UharAyXL5hoxdiQAwbLm/F+xgG5m5VnUl+SmbSHvBk/w
         DUIcyiNRZefah+/RUj/8V8lmvF3c4XWt5FPOHBVAxzwkbnT/vAQZ9bZxSkD6+uZKMZAZ
         ATQMnlPWw025R+VRjnOPl7/wlHRZUXxM7XncU2E3e7RhPFW7R9cRl7tt4Y4EWsNGG8HI
         hyvAPxh3Th1HG4R4cx2apG6JmjBaq8yqR51qriEGBXav7wfOjCscBBeF/9O6O/xzSQ5v
         iB9q5hwNW1h01ZG3lVfvGcSLX+tDXwuUqT57nteXvtOdWEz47qeP4IXOMR8mHlOg33u+
         q3pA==
X-Gm-Message-State: AOJu0Yz9rQSCOb0R+eNbmQM9XgB9odqYBEGKns51fEo6/AeKxeXJ5Ed9
	VUJauv+iFLPD7JTd5FBGMoL9Gg==
X-Google-Smtp-Source: AGHT+IGa/JXt7k/sD3brA21YU73JU7T0XX5PP5dASJHJGNUDd9u/dTh6dZgbpssUlNcWDJ3phTImNA==
X-Received: by 2002:a05:600c:2282:b0:401:aa8f:7566 with SMTP id 2-20020a05600c228200b00401aa8f7566mr1692261wmf.26.1695485673156;
        Sat, 23 Sep 2023 09:14:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id f17-20020a1c6a11000000b00402f745c5ffsm7608479wmc.8.2023.09.23.09.14.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:14:32 -0700 (PDT)
Message-ID: <197aed7b-8698-98b8-5761-afd03fc6aae7@linaro.org>
Date: Sat, 23 Sep 2023 18:14:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/4] dt-bindings: clock: qcom,camcc.yaml: Add sc8280xp
 CAMCC compatible
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com,
 sboyd@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jonathan@marek.ca, quic_tdas@quicinc.com,
 vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230923150045.1068556-1-bryan.odonoghue@linaro.org>
 <20230923150045.1068556-3-bryan.odonoghue@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230923150045.1068556-3-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 17:00, Bryan O'Donoghue wrote:
> Document sc8280xp camcc as a new compat string with the same
> requirements as sm8250 and sm8450.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../devicetree/bindings/clock/qcom,camcc.yaml |   2 +
>  .../dt-bindings/clock/qcom,camcc-sc8280xp.h   | 179 ++++++++++++++++++
>  2 files changed, 181 insertions(+)
>  create mode 100644 include/dt-bindings/clock/qcom,camcc-sc8280xp.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,camcc.yaml
> index 81807b8e0d24..456d304cbea8 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,camcc.yaml
> @@ -30,6 +30,7 @@ properties:
>      enum:
>        - qcom,sc7180-camcc
>        - qcom,sc7280-camcc
> +      - qcom,sc8280xp-camcc
>        - qcom,sdm845-camcc
>        - qcom,sm6350-camcc
>        - qcom,sm8250-camcc
> @@ -127,6 +128,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,sc8280xp-camcc
>              - qcom,sm8250-camcc
>              - qcom,sm8450-camcc
>      then:
> diff --git a/include/dt-bindings/clock/qcom,camcc-sc8280xp.h b/include/dt-bindings/clock/qcom,camcc-sc8280xp.h
> new file mode 100644
> index 000000000000..867fbd146ee4
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,camcc-sc8280xp.h

Filename must match compatible (thus follow common naming scheme - SoC-IP).

Best regards,
Krzysztof


