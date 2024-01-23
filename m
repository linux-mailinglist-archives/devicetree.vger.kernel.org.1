Return-Path: <devicetree+bounces-34348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F7D839758
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:10:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E4C32892DE
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1248823A3;
	Tue, 23 Jan 2024 18:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZgBFiqNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B4F81AB8
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706033383; cv=none; b=ulhKCZQhmEWTuvuTsMtQOZXyJIf99Rqhh8D5cDS+KAHRiVzcVBFLjwk4gfUGu07I7Kviymko1ztu/62+jTjBcubSIuGMTLOgE4YpK4MgMdbe1sVp5mpl7epz9TA7XtxI8cytq3qlPRDRqeXrrfjeWaoA8VijR7iD3LAeTYFbE4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706033383; c=relaxed/simple;
	bh=rbL2CuKEPfhYPRUKnKTCYlD5HBaIevd0hu+UdJ0LJTM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dp/OR2eZCkPc+NQslgHN4C6Aq36GGEVavEsseQCd2mQHjCjtY/Xb5TOOrBW0+KMIJcwauaWuUTwJ1E4RGTvhJ2PGzGM72A7SGC7uVKmiBxyKkOZw3qgqselr9Hv7cH6QLwcRhtrVaR9emhgH0B26yVmG9vCVLBA387rT0kBP6CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZgBFiqNI; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50eaa8b447bso5021618e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706033379; x=1706638179; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QZN6uzlZ6X9O8OT09FqEaEZ9I2AGFnhu8FJmaqkLSSQ=;
        b=ZgBFiqNI7RtRbR6KlgNG7Vj0XwkLpIW4fYRt3Qa93Eehb8jkYqvM6ihbrq5wsh/CAB
         zrvqzJR5AHjUrRV9vCqQizAhwMbSsNu5jYBKChkS/0JUGLdvZN38Xv1726nI6Igt1reM
         aSogAm4zYY9RcLQDr4QIPy7VPUz6WgnridxHBYUsSvjsJND2XYuiKgbkb7A1xWs4QQTM
         DA1a7JYNGYv7gVdMq0QxNcOEVo14TPE+UVupIvCVYeDB6+QxnEoC6bvDZydbolQTuIbr
         Woz2JClnECD509chlgwIHW6m2AaqxMCE330ckCbtfX8HFw8g6Z1k8HiZXZXeKiHJ+fGo
         amCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706033379; x=1706638179;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QZN6uzlZ6X9O8OT09FqEaEZ9I2AGFnhu8FJmaqkLSSQ=;
        b=S+kHAGDXwuAIl/dYBVZIsWloQyZdanf+DJhczfxVYLtT1HGzbfL4pTlMI/G9duI8xw
         SzujJsEwk0RbbMCXsstWy70NCp0R0zwDi1gDIEg9LqPBqC8E7j4XmQsxkjq1aKHaIC6a
         8WqzJW7M2BtsJTPBJRA6mcxaXNc0Vrj0tQrCw+Gkdm4Dwh2uLFoAvWJMpj2G0q4J3OA2
         b5SnVyE17HFWmnfjoMEOODxF6dVRLu3HDM+pj9oxhLEkFeK6pvEi7u1Q6CbW8NpNe5/z
         5EbYGqHMEVlQNIbyLb5XMCAGBuyo4vpDHI8FupIoU/xqLByTEFjNzxCVxfKoEFSSA7lr
         4yIQ==
X-Gm-Message-State: AOJu0Yx5S27O1XRJPJ9hKWFEribgFvE+TltXhV3QygsbstVNGVoA1+ev
	OqWOwlZfJEQwpXiD78s3jIi1CVymriIxtWyvmCp8fd75kqqV9W1HOl15DklqgQk=
X-Google-Smtp-Source: AGHT+IEAox1Ti0aslRK2tKFYxgZQeO+haDl9IHXbMvt8AwqlGHnVUlnn1ehrKT2Oh+/WKAScnOH1tg==
X-Received: by 2002:a05:6512:3e01:b0:50e:45d7:eee7 with SMTP id i1-20020a0565123e0100b0050e45d7eee7mr1887070lfv.26.1706033379038;
        Tue, 23 Jan 2024 10:09:39 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d17-20020a05651233d100b0050e8e88b529sm2344518lfg.237.2024.01.23.10.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 10:09:38 -0800 (PST)
Message-ID: <b0f4236a-c87e-4d50-b1a0-42ed5b015b86@linaro.org>
Date: Tue, 23 Jan 2024 19:09:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/11] arm64: dts: qcom: x1e80100: Add TCSR node
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
 <20240123-x1e80100-dts-missing-nodes-v4-5-072dc2f5c153@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-5-072dc2f5c153@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/23/24 12:01, Abel Vesa wrote:
> Add the TCSR clock controller and halt register space node.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

The former - yes, the latter - ?

Konrad
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index be69e71b7f53..2b6c55a486b2 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2606,6 +2606,14 @@ tcsr_mutex: hwlock@1f40000 {
>   			#hwlock-cells = <1>;
>   		};
>   
> +		tcsr: clock-controller@1fc0000 {
> +			compatible = "qcom,x1e80100-tcsr", "syscon";
> +			reg = <0 0x01fc0000 0 0x30000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
>   		gem_noc: interconnect@26400000 {
>   			compatible = "qcom,x1e80100-gem-noc";
>   			reg = <0 0x26400000 0 0x311200>;
> 

