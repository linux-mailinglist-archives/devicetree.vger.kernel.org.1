Return-Path: <devicetree+bounces-3569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC94B7AF4AB
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:05:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BF4C91C204F6
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E76849999;
	Tue, 26 Sep 2023 20:04:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE15F30D00
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:04:57 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80831139
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:04:55 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32333fb6beeso2607885f8f.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695758694; x=1696363494; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oDuSK4KGoNy5IBROwbpo5Gs9zMqpOACWxsw/hgKI19I=;
        b=Y9zKW0kFemT29oWCVhMEa8HO3N4zuEloGknPoMRplonwK1W6Wn5/TId1J3KupmNDUZ
         tRAgZD2okqOsg+4wOtSOM6I0aSuk41JSzA7pxf3ha7VLLAAzFjLDjobGYnD0rYHNxcxT
         AEQ5XiCyrRMZ6U+jSZbPzmNFMv9I4u7MsJvMH/5hsVNDvBuIy5YgAACyGT4YW/npU/fh
         gF0gLfaExMYyboEjMfv9s26pkhk7BUzf+vpaR7th46T6Gd4kH12UNXUz7lSrZwN+kBWp
         AV4y/ebwioe7H/9oTOQdR8IVO3ivRMJChmBrCjGE+aD9by6ju9sq+OQwQHhADCHBBrBt
         sQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695758694; x=1696363494;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDuSK4KGoNy5IBROwbpo5Gs9zMqpOACWxsw/hgKI19I=;
        b=NnExx5+s/dYUxvlZ81Iqx3KvfB5/1jLqxLG1s2L0nKNwDmWQaSalomIpt/4CJZt3BP
         2EETVfTrhxR2+THx9XwS/n09eFYzH+Li6b1d0gEDf2xobESTh4NYaE69bYDW54vRQjKD
         dtWQJdW17MT6LdtxhNTfW/FzwLnat/22Ex+3xpmPWfeOWcP5vxXC45mUvlE/8FvhrLz0
         nHt5JsRRTgIYw36vOWa5fNUc5B/S38PtdmkGmoRJywR0FqSBLEdtDzAfnKClfWEGdffk
         SM/c1w3KHF3SqtgwZ22IvLVWoy2N4YyMRgAPQlrJX5vupcZvWoNrP58EaeZ7kmpvsCpS
         9ITw==
X-Gm-Message-State: AOJu0YyUZ/TyHjR5zDUc05iS84q4lmnLb1ICy5WP8bSUaGp2vNKpFQw2
	f6qCfXqU4mJUppPI2mBuHjkadw==
X-Google-Smtp-Source: AGHT+IEq2S5YFKgDav65p1XenZETXWnJAWMoyizGalrJtdFoiekdF4QJFzS2G23idkhDiljU8kfKGg==
X-Received: by 2002:a5d:4e0b:0:b0:31a:d6cb:7f9e with SMTP id p11-20020a5d4e0b000000b0031ad6cb7f9emr9386196wrt.21.1695758693166;
        Tue, 26 Sep 2023 13:04:53 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id v13-20020a17090606cd00b009ae5e46210asm8169519ejb.99.2023.09.26.13.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 13:04:52 -0700 (PDT)
Message-ID: <28473da7-e194-4581-a1d9-6ef574d52ed7@linaro.org>
Date: Tue, 26 Sep 2023 22:04:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Enable tsens and thermal for sa8775p SoC
Content-Language: en-US
To: Priyansh Jain <quic_priyjain@quicinc.com>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_manafm@quicinc.com, kernel@quicinc.com
References: <20230926091154.25463-1-quic_priyjain@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230926091154.25463-1-quic_priyjain@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 11:11, Priyansh Jain wrote:
> Adding compatible string in TSENS dt-bindings, device node
> for TSENS controller and Thermal zone support
> 
> Changes since v3:
> - Correct the unit address of tsens node
> - Updated tsens nodes in sorted order by address
> - Moved thermal zones outside /soc node
> 
> Changes since v2:
> - Indentation mistakes are resolved
> - Updated offset of tsens srot region in reg property
> - Updated tsens reg property cells properly
> 
> 
> Priyansh Jain (2):
>   dt-bindings: thermal: tsens: Add sa8775p compatible
>   arm64: dts: qcom: Enable tsens and thermal for sa8775p SoC
> 
>  .../bindings/thermal/qcom-tsens.yaml          |    1 +
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 1096 +++++++++++++++++
>  2 files changed, 1097 insertions(+)
> 
I only seem to have received the cover letter, and so did
the list..

Konrad

