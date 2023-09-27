Return-Path: <devicetree+bounces-3790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 831117B0229
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 34FE0281E56
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 923AC156EA;
	Wed, 27 Sep 2023 10:47:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FDC1170C
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 10:47:15 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A669180
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:47:13 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-530fa34ab80so26117960a12.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695811632; x=1696416432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PQ3dRWFSzFn+xxVwVVaoy7t/aSLLVEtHDoJ4V/iI1zg=;
        b=ZcaiorcXKf6of8oh7Y4tGgStw4rvHgTNKUqc5fNNOED1wG/ovpwOZcuwBB2fO1K5mt
         mT6yLp+J3AkHzFtq53FCjX9o8fP1udBd3/3q1G1NoMEuJkX0Sg+CtoF66o1m+r7Q6R9M
         KRTVz12RYv9L1YiUkBr/XzG6xgPIp9Y3VF7Kh6K6kzHrlF6rQrHl26uyv3udOJ2y0vVg
         KKNdq/2g7zUC/ToWbDHtLfq6CFFMejstg3pcHu7qeW+tfs0aZsMUFR4YrN00UVGd+Sgt
         0mfPiE8s5+nM4M1xWPcD8WzAzO1zvKnqcJ3Ervckzy2KW4wfHhkaWihRBfR6MuUq6wml
         Gk8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695811632; x=1696416432;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PQ3dRWFSzFn+xxVwVVaoy7t/aSLLVEtHDoJ4V/iI1zg=;
        b=hpE45H51aT3KVEKt/N/V1U6oY+TT1h5LWam6hHyQoXdY2EYMbbDFUWzk0hhFaYcpaB
         cXk76OJ9TSqAO7ZEopG/2ga2nMi96JBhE4vSZQ4EkyDO5PG0aPttUIPjUbuDNTZbPJiz
         RydoQyQMPUD42SFL5U4ISdya4pFztK/AwlQ8Ni18HUzINuIMEYkjOFahLMYyIXwRJOLq
         DNn2o46aKHWK1vToYTsxFa4u2Zh/Vx17wvjJEfr7a1a14S8HvU9Swda3+Zo+An9IfySe
         SRQvbCYCGKuA/uL5hmOaelK4j4cE+xMpCkLU3OC41et7KybNGmQrRdkXuIXLGrN+Ph2e
         uJ5Q==
X-Gm-Message-State: AOJu0Yxto3EqWfMU0OS189/ogpqUUMOZLPFY9o0sOc+K7FhZd8AIP6To
	UJhgpliLWPm78v9D824x8nL6Sy2JJyonpYD/6qK21Q==
X-Google-Smtp-Source: AGHT+IETV+6cwPeaHCYHkCp7qDMiBWINene2tNDTs1LgDTmUSv8Os1xlNfbkHXrCpiodmdzKX2cmKQ==
X-Received: by 2002:a17:906:c144:b0:9ae:513f:a4f3 with SMTP id dp4-20020a170906c14400b009ae513fa4f3mr7899469ejc.32.1695811632037;
        Wed, 27 Sep 2023 03:47:12 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id k5-20020a1709062a4500b009934b1eb577sm9212009eje.77.2023.09.27.03.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 03:47:11 -0700 (PDT)
Message-ID: <35703a29-5c5a-47a8-9a4b-04953dc3faba@linaro.org>
Date: Wed, 27 Sep 2023 12:47:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: Add interconnect nodes for SDX75
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1695720564-2978-1-git-send-email-quic_rohiagar@quicinc.com>
 <1695720564-2978-2-git-send-email-quic_rohiagar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <1695720564-2978-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 11:29, Rohit Agarwal wrote:
> Add interconnect nodes to support interconnects on SDX75.
> Also parallely add the interconnect property for UART required
> so that the bootup to shell does not break with interconnects
> in place.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
[...]

>  		scm: scm {
>  			compatible = "qcom,scm-sdx75", "qcom,scm";
> @@ -434,6 +448,8 @@
>  			clock-names = "m-ahb",
>  				      "s-ahb";
>  			iommus = <&apps_smmu 0xe3 0x0>;
> +			interconnects = <&clk_virt MASTER_QUP_CORE_0 0 &clk_virt SLAVE_QUP_CORE_0 0>;
0 -> QCOM_ICC_TAG_ALWAYS (dt-bindings/interconnect/qcom,icc.h)

Konrad

