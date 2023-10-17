Return-Path: <devicetree+bounces-9305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AD77CC931
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 726122816D4
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DFC52D05F;
	Tue, 17 Oct 2023 16:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ITveUndR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3CF2D03A
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:55:28 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 377D194
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:55:27 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-32d9effe314so3528701f8f.3
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697561725; x=1698166525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ftpCJDEdsDB5dCJBNigeh4u2CwwsQDpIP22iPNCSJXg=;
        b=ITveUndRVn1zepCf7A018S6Tu6IUDRWisiCSKJ87Yqb3olj/BTZhyXk3N96gkbWvYw
         sLyNyeZxxZ7vB3MGodjNFOYj8q5sVHF0A3Q8+XzgWT5VCOw0bAKA3CL2+T2ncddoNFNJ
         47nvuYAA+lx6MrRisNcxBGpWFTNpqyzXqTySatz2L/+AAtwxO4rm6iI3n5UYTmJaoiEC
         Ee0OhMdKdh+HB+mpDES4ksely51qbrCWlaxc9xVMKkDPePdNxoaXDvA97its7Yl4+1eb
         ZTaod4xDE6E9vvkHx/rFOGkDAsDwTZvvLVLMxj5kYfAz/bZ0eXf96dxEooxQBbCea3vy
         vuLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697561725; x=1698166525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ftpCJDEdsDB5dCJBNigeh4u2CwwsQDpIP22iPNCSJXg=;
        b=VlIOQMEYZl3AwV43wbsKWIg8RQOj6/rWiyhEygvAweNBE3nr4nnAgOvZSwyrCXnI1j
         kozNNjPwAQUqaffsIjwcoLM2kWMVzJKYP/JsYQsvHdv3IBK0fDhQhEFHuFJuAFW8qrL6
         YvV1jjODVgnxmbk15E8+QMXvQlscJ6Z/NtOZ0pwl7bHe8ouJEpoBnFq9zR9wYPcnUmrI
         EYRoRR7Tgmnv/n0IXltrJtRluLtNS7Xh7fHy3Plj4nPIz+VGBsRfvdub0NE2hoR9IsME
         LAVREaXBw4gHeO01YLeQ8lBoEo9ZsNV6f1NqtnjaVTpgZtDkAbeHnjVIycfQi/BdpXrq
         eX9g==
X-Gm-Message-State: AOJu0YyOENGSmHVn5RLfE9+ogT9zoYX3LocBz396YgmtEk0TQo2cdZre
	hkhlY2sMioGy6V9awlcg57RgIA==
X-Google-Smtp-Source: AGHT+IHMl59Jk4YUuZjuQRK6HRmz5pn9wzYG6wEN+FOrtPk6CwGNwzicRSRoxuLJuwl2CmPJSImqHw==
X-Received: by 2002:a05:6000:8d:b0:32d:c69b:99b8 with SMTP id m13-20020a056000008d00b0032dc69b99b8mr1481237wrx.35.1697561725621;
        Tue, 17 Oct 2023 09:55:25 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t1-20020a5d6a41000000b0032d9efeccd8sm164668wrw.51.2023.10.17.09.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 09:55:25 -0700 (PDT)
Message-ID: <2f22ed28-47b1-4a92-aae5-b625ab4ad731@linaro.org>
Date: Tue, 17 Oct 2023 18:55:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: ipq6018: use CPUFreq NVMEM
To: Robert Marko <robimarko@gmail.com>, agross@kernel.org,
 andersson@kernel.org, ilia.lin@kernel.org, rafael@kernel.org,
 viresh.kumar@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231016175532.2081344-1-robimarko@gmail.com>
 <20231016175532.2081344-3-robimarko@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231016175532.2081344-3-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/16/23 19:55, Robert Marko wrote:
> IPQ6018 comes in multiple SKU-s and some of them dont support all of the
> OPP-s that are current set, so lets utilize CPUFreq NVMEM to allow only
> supported OPP-s based on the SoC dynamically.
> 
> As an example, IPQ6018 is generaly rated at 1.8GHz but some silicon only
> goes up to 1.5GHz and is marked as such via an eFuse.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 9aec89d5e095b..49f0e6aa4b5bb 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -96,42 +96,49 @@ scm {
>   	};
>   
[...]

> +			cpu_speed_bin: cpu_speed_bin@135 {
underscore -> minus sign

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

