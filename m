Return-Path: <devicetree+bounces-1641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC9C7A7376
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9A191C208BB
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 06:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DDD963B2;
	Wed, 20 Sep 2023 06:58:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEDD53AA
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:58:18 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D59E92
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:58:16 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2bffd6c1460so54438691fa.3
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695193094; x=1695797894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0wrCOVhLC2r5zAg8aEKZ+Z8LShRgLvtb2yTC7pbk7TQ=;
        b=YQiMcdBV9Ocw5NEAxkdBv4TlHAOthCsVhiIrMOKfVs5cJI7pvixMp6eJ26/ixtJdy6
         TVm7q9AhxJLv3NP5GTLOYorEPcxjcNWErVx931jlp49iJ4fPvTCCmJpvogrL4vPmml9C
         qFbFtYzq3+ufRpB2jPy4Duh2Hnf8meaBL/vVwJvDymvGyFPvUz+JtoJUheIbZEUL/bJF
         uAeqxQov0NiQlyRiT458cVdpZ4ONNcDMdKDY6RQLKcdrvNHFB0fpYVOz1ZV1EzGdO+z9
         GGKuE1F31Ft5PNTxFim+XFj82ivuI5jxi1dB8mjdSkFwIsddDkpBzBSAx5NJK5S2HB2t
         ByRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695193094; x=1695797894;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0wrCOVhLC2r5zAg8aEKZ+Z8LShRgLvtb2yTC7pbk7TQ=;
        b=XEPVNAwOheMnRdXcQg4QmEoQCMlr6Z1UOpVfslDpBliqdw9/so8LQzWJxAmrrNc0Z8
         qbYCDt91IE3SBNuGMEL5mTpM1LQ/O04dOdM8IsPHV9AV81VxX/fXEu+o7NmtljeNjtMH
         lJ6RS0jtdgxj16Gi0QE3XQvqXEerDEUKw73Pm+Zlp8BmivBeRaBUMKXf3qFEI8SM4UaX
         0jhrNWNmOuV3ff1OeW9uvzLJVc7PQIFKlC560Etj6aARJRo0p83Sh58c3x1d3KlL3rgP
         JuoajtN69FZxjErzKISYv0AnufO8sSuzsEZ1CwTFEnooPa8kwCiZwnscW8V3m4uAvLnW
         6nFA==
X-Gm-Message-State: AOJu0Yx9ModoSKg+qijg7fs882Ao0MqT85VYDH+jaEPtttrFlXB1QKyP
	uyk35+ye86fzIQ0wJxQ/XcL/nQ==
X-Google-Smtp-Source: AGHT+IGGRGWJd2RdfNcTxy8s5cuxAYG70VTNMg3Wae8gXHW03xrfqtu1s97T1TvazYsLDmqBBx8TpQ==
X-Received: by 2002:a2e:924d:0:b0:2c0:300a:82ed with SMTP id v13-20020a2e924d000000b002c0300a82edmr1360955ljg.7.1695193094292;
        Tue, 19 Sep 2023 23:58:14 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id rn5-20020a170906d92500b0099bd5d28dc4sm8839120ejb.195.2023.09.19.23.58.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 23:58:13 -0700 (PDT)
Message-ID: <d2f6bfbb-fd08-a551-51d3-f81d9237e060@linaro.org>
Date: Wed, 20 Sep 2023 08:58:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 1/2] dt-bindings: pinctrl: qcom: Add SM4450 pinctrl
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
 agross@kernel.org, konrad.dybcio@linaro.org, linus.walleij@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_tsoni@quicinc.com, quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
 quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
 quic_ajipan@quicinc.com, kernel@quicinc.com
References: <20230920064739.12562-1-quic_tengfan@quicinc.com>
 <20230920064739.12562-2-quic_tengfan@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920064739.12562-2-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 08:47, Tengfei Fan wrote:
> Add device tree binding Documentation details for Qualcomm SM4450
> TLMM device.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>



> +    properties:
> +      pins:
> +        description:
> +          List of gpio pins affected by the properties specified in this
> +          subnode.
> +        items:
> +          oneOf:
> +            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-1][0-9]|12[0-5])$"

Your driver and gpio-ranges in example tell you have 136 GPIOs, not 126.
It's v3 but still counting GPIOs is incorrect :/

Best regards,
Krzysztof


