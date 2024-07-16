Return-Path: <devicetree+bounces-85973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2811932076
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 08:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C883C1C2123E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 06:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB8A9182DB;
	Tue, 16 Jul 2024 06:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VGzei86E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002B5208A7
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 06:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721111685; cv=none; b=JTnA60Xq7JTHcF0uisBSbs3UQACVRY8zLgsHXjIWwk07TzSLDsM7+Ix0DPq1NSUmWygsowKJ1EOmWLSs8Z+N8lQR76f0Hqx8C1kef3n7GluAmAXELXo98BrUSJ9/uDU/Pw6joAW0tKKSWknEbVQhXwGZe/xrIphWYh61xqmTcac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721111685; c=relaxed/simple;
	bh=2moDoSuL0feU/Ud+nMJnoCeDYDR+zJdas8CMFSn/fmc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kV5ce57YCgARTu/medq02OpWCYGag4Xzyktsr7PLt0uv3ozIb0rTOqww9WUZqo9a0ZpMSp43jH3zUi+3Y9DYjSuth6RIYDU2S6mQHq8L4n6tsToB0uiKNrZEyVR2aueu7g8gegFHnK4oozaWl6/Y3qbfgWS6h9Fa4HDGf6FCcac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VGzei86E; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a77e5929033so613773566b.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 23:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721111682; x=1721716482; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sgcDO57GphpKwD0e+EoKnOSME/1Lz1/BfCxYrGM0TkQ=;
        b=VGzei86Er0lqXAxt3fxF8Y/96TFK85ace5Ws1JBVf8kZbMXzNJL/bXoueGPxidQf8w
         HMFS4dNwQU2w3pHBRixwO+xf5x84WeUqmpbPPsj4E2LywKUyDbpWxLeYTyVl8Q6bfsHj
         RsZWRMKjh7pRBd6h1eyuK+fgfCAALEOI9p2J0c1kg2ml1zq5ce+G7h/8G4kZAsWKG9H3
         IqNu1zITXbLMsvtt2DZhWxDSehcwbV3654XBvcL1KsBYXEjDDSD5Rr3f0HLmvcbUNxXH
         q3IHtcU6xHk3wHEne6W5qB+/Ok1i/KoXpKwLKQDNHGFCQUJg1Y4aqxnB/A/ffzyWHsGo
         f16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721111682; x=1721716482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sgcDO57GphpKwD0e+EoKnOSME/1Lz1/BfCxYrGM0TkQ=;
        b=P8h9Sr6uYo75HoQ0QmCVR87nY9oh/DB9o5ZYNEhCSkZpfFsIIsxy25ifNpIHbClORj
         uOwiTNxD5bWU+5q2iMHMt91uhSA00J8pLCjpEoEsn5MDPq9SM2iLhO44RNLkzdIwP9TK
         cRE+wS+sCJXNwO5u1cLXdLtDECPCPgFj7Ff5Rh+gdID0Nz7APOnAukGJqmb+9CFiu37+
         pvl5l3zxv1JVbLxSJK5jM4/+2/3eEpQjZo8VD8Lkl/qDMUFBoasQN3Wk2BspmEOdqW9O
         EXncNCQH4Dcw8/KfDeaiFjU0v7Hr5ibs35WvcDLdSHaIif46i7ojxUARc8HqYLdD/3ii
         sBaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXIrAelxkNg9dLiRZxJQgCeZOpOMID6yzcKv+M1pqahsgKe2bBqE4EsawT6Ek2O9KNU4muJY5jscdqcqdjlhvmuUWlWvW6vV5IyQ==
X-Gm-Message-State: AOJu0Yw2sUZ/8YB59E19xzt1vn7eBrYGSkgHes4bCpATujFnL0IWnEpL
	6HkLTK39UVDtdkms+hKpCYJGCtvCE4qOhdz1I0XD9cAorVjP/A7pdSg3tjlnKEU=
X-Google-Smtp-Source: AGHT+IE8Xbm3f79fnRudBr52a0Y6Tle4M5tf3i4tQUU7c6LY/2lCasDzVNAVlzLAYkSHS6sr3rJR0Q==
X-Received: by 2002:a17:906:4ac3:b0:a77:e2e3:354f with SMTP id a640c23a62f3a-a79ea435fd6mr75288966b.23.1721111682296;
        Mon, 15 Jul 2024 23:34:42 -0700 (PDT)
Received: from ?IPV6:2a02:8109:aa0d:be00::18f8? ([2a02:8109:aa0d:be00::18f8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a79bc7ff8e0sm273293466b.145.2024.07.15.23.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 23:34:41 -0700 (PDT)
Message-ID: <0ef30daf-67c3-4c25-b202-1312a2b23b1b@linaro.org>
Date: Tue, 16 Jul 2024 08:34:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: disable GPU on x1e80100 by default
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240715-x1e8-zap-name-v3-1-e7a5258c3c2e@linaro.org>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20240715-x1e8-zap-name-v3-1-e7a5258c3c2e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 15/07/2024 21:17, Dmitry Baryshkov wrote:
> The GPU on X1E80100 requires ZAP 'shader' file to be useful. Since the
> file is signed by the OEM keys and might be not available by default,
> disable the GPU node and drop the firmware name from the x1e80100.dtsi
> file. Devices not being fused to use OEM keys can specify generic
> location at `qcom/x1e80100/gen70500_zap.mbn` while enabling the GPU.
> 
> The CRD and QCP were lucky enough to work with the default settings, so
> reenable the GPU on those platforms and provide correct firmware-name
> (including the SoC subdir).
> 
> Fixes: 721e38301b79 ("arm64: dts: qcom: x1e80100: Add gpu support")
> Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> Changes in v3:
> - Fix the status property name (Akhil)
> - Also keep the GPU enabled on QCP (Akhil)
> - Link to v2: https://lore.kernel.org/r/20240715-x1e8-zap-name-v2-1-a82488e7f7c1@linaro.org
> 
> Changes in v2:
> - Keep GPU enabled for X1E80100-CRD (Johan)
> - Link to v1: https://lore.kernel.org/r/20240715-x1e8-zap-name-v1-1-b66df09d0b65@linaro.org
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 8 ++++++++
>   arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 8 ++++++++
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 3 ++-
>   3 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index 6152bcd0bc1f..81d7ec82a845 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -637,6 +637,14 @@ vreg_l3j_0p8: ldo3 {
>   	};
>   };
>   
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
> +	};
> +};
> +
>   &i2c0 {
>   	clock-frequency = <400000>;
>   
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> index 72a4f4138616..b3521ec4879c 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> @@ -606,6 +606,14 @@ vreg_l3j_0p8: ldo3 {
>   	};
>   };
>   
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
> +	};
> +};
> +
>   &lpass_tlmm {
>   	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
>   		pins = "gpio12";
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 7bca5fcd7d52..8df90d01eba8 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3155,9 +3155,10 @@ gpu: gpu@3d00000 {
>   			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
>   			interconnect-names = "gfx-mem";
>   
> +			status = "disabled";
> +
>   			zap-shader {
>   				memory-region = <&gpu_microcode_mem>;
> -				firmware-name = "qcom/gen70500_zap.mbn";
>   			};
>   
>   			gpu_opp_table: opp-table {
> 
> ---
> base-commit: 3fe121b622825ff8cc995a1e6b026181c48188db
> change-id: 20240715-x1e8-zap-name-7b3c79234401
> 
> Best regards,

-- 
// Caleb (they/them)

