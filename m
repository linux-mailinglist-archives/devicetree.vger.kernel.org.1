Return-Path: <devicetree+bounces-9750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 526BE7CE554
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:51:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E6991C20A31
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF6733FB3A;
	Wed, 18 Oct 2023 17:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s82zJd5Y"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B83B3FB2F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:51:47 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA10311C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:51:45 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-504a7f9204eso9476149e87.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697651503; x=1698256303; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gHJSF5X1nkWgGuo3YQxKlNnSL2Jb3AlzWdUDQa0ejrA=;
        b=s82zJd5YurNSHwIlkxxXvaugD8+71EV9KMohp5SjSHngLsC1Rn2yM5RziwTJ7yFafC
         BfcHav6U41G6MpSuahq5sprt+oHC3z/fVr5IolHlC1bEw5DxDEOINIBTYgapmsEb9Q51
         v6lsV6HNDZ+vUr/HDAQ6dQsXMZdmdKf7RZp9UID09OPMyhBPLqdDf83hvQr+hi1E9an/
         DklhOjEqat+97H32YIpZMI7U4p3fqR9ixORxITWDXaQfnmb6dZtcWlL8Web2JfjAmNlH
         qa0KEzm9YJpAKxLLqPEkP3ebBZAeGR+a3RKgYFR0FU9pQOt49E/RWqBYI1ocx04kmdH0
         yMvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697651503; x=1698256303;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gHJSF5X1nkWgGuo3YQxKlNnSL2Jb3AlzWdUDQa0ejrA=;
        b=Glisg9knc7X5H4TUSN0lvo2V9B5NimaMsv/rixt1Gd+AB71hV6WXKaDJuh7NjOmyeI
         t01qhkZTZjHMVrQPb2qMxWfhmH1GcNHcBybMzHWy0Q/HGvNw8B1rTFtFDdqHoKIFSZL2
         u+X1fmykesgUtxPl675IxslQ6ReTnrV3VjvDvc7QCVs8U/xB8VnS1sqIX9QMdD9riJ1v
         d90TdcpVmNbOfIM2T7yU1JJvOAEH1VrM+qZ9m6TJWTEQEAJDTp1F47uZF1rMOWPrnd3b
         scSRHdRMt2N3TmqFNmr7eSbq7ZsY5TZbfkPknZWY6MHVNpX4qQTEPOuAxEzb7LbLFkL7
         D8AA==
X-Gm-Message-State: AOJu0YwzyjlIojvCj+y26GeDEZhfIOxQU5sMSZfmF/2G1vlUmG8UD83d
	PuMY2tpdmaf1NL4DeXcWW5ZVfQ==
X-Google-Smtp-Source: AGHT+IGp5OwXk3ooeeFdICyeMDEnuecQP80Ve5odqVSAvaMAzznXCIvH5bx9jBx+HtZf6/Le6CMARA==
X-Received: by 2002:ac2:484c:0:b0:503:35b3:aa31 with SMTP id 12-20020ac2484c000000b0050335b3aa31mr4419418lfy.27.1697651503384;
        Wed, 18 Oct 2023 10:51:43 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x25-20020a19f619000000b0050797a35f8csm779407lfe.162.2023.10.18.10.51.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 10:51:43 -0700 (PDT)
Message-ID: <b1926ed8-fbe2-4428-aa23-dc4279553417@linaro.org>
Date: Wed, 18 Oct 2023 19:51:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/8] arm64: dts: qcom: ipq5332: populate the opp table
 based on the eFuse
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
 quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
References: <cover.1697600121.git.quic_varada@quicinc.com>
 <fbd343f731973f532496c2ccfe65e6b487a14db3.1697600121.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <fbd343f731973f532496c2ccfe65e6b487a14db3.1697600121.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/18/23 11:29, Varadarajan Narayanan wrote:
> IPQ53xx have different OPPs available for the CPU based on
> SoC variant. This can be determined through use of an eFuse
> register present in the silicon.
> 
> Add support to read the eFuse and populate the OPPs based on it.
> 
> 	------------------------------------------------
> 	Frequency	BIT2	BIT1	opp-supported-hw
> 			1.1GHz	1.5GHz
> 	------------------------------------------------
> 	1100000000	1	1	0xf
BIT(0) | BIT(1) | BIT(2) is 0x7

> 	1500000000	0	1	0x3
> 	------------------------------------------------
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2:	Fix inconsistencies in comment and move it to commit log
> 	as suggested
> 	Remove opp-microvolt entries as no regulator is managed by Linux
> 	cpu_speed_bin -> cpu-speed-bin in node name
> 	Remove "nvmem-cell-names" due to dtbs_check error
> ---
>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 19 ++++++++++++++++---
>   1 file changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 4206f05..a0dcba3 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -91,11 +91,19 @@
>   	};
>   
>   	cpu_opp_table: opp-table-cpu {
> -		compatible = "operating-points-v2";
> +		compatible = "operating-points-v2-kryo-cpu";
>   		opp-shared;
> +		nvmem-cells = <&cpu_speed_bin>;
>   
> -		opp-1488000000 {
> -			opp-hz = /bits/ 64 <1488000000>;
> +		opp-1100000000 {
> +			opp-hz = /bits/ 64 <1100000000>;
> +			opp-supported-hw = <0xF>;
hex literals must be lowercase.

Konrad

