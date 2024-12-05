Return-Path: <devicetree+bounces-127625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 632189E5D1C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D97AB1882C63
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71FCD22579A;
	Thu,  5 Dec 2024 17:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LmpzgA3p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC5A225768
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733419816; cv=none; b=T76l9355UiRiKDvneWiLOd/f7GaNDR1yeT0PYc1d0/rScl9gBg/+xsjgpExDcSJr09Zpw4N8sQOSA+TAdmI1bDGLqHhmW0DgA+dJKPvqIkVyzk+VuaG1V6ZsSPJd6BIabbUC3ihOIDeFhJyeGQmAcNqyDzCIsAsjH56RPL+4AJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733419816; c=relaxed/simple;
	bh=oRA1uXnvpsmjJQDCBwr+QMnYjfUCn926pHr/Oj5VxTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QTDoxICBdj0ErezNlELuwfENhoiM8HUVIwjeI5j9zU9UY+zScLwGVEEmCRM/mcKIWpoXOCa/0lz8Yy+ovspKtvznEjtto4QjzuxstZ9FePJdwNem/ahXAiE+JGt3wzado9T5x9TIHlHEtHMCNRhuHChgQOQd55KigXG85V3nXP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LmpzgA3p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B587nS4031023
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 17:30:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AaqtZOlfrn0s5WOa1v+zVEs6LfsFYydrC3W6W40E/bI=; b=LmpzgA3pcNpMy9CB
	VYfrvB4ziiUIsaFs8JBWG9lYuCr7+OwNUciD5v0+/eezBK+gojEkd3HIrm9zaKv6
	MXDnun4k4pl3frdE1wtTMNevPdyio6F0HBDykcdjGMQai96Nw6zwLG8P2nsBA1kR
	PbGZz9Xuy17upHmQHlHiuypX1fbpiS5kPPIjZOlwJO/1VH8O41pbHUwx6RkjrFcj
	j625YK4XgCUppXvS14a2dTo3Jjmwph0tBzX3n/e7Gof9FqhQ7cSugDvxEQjqgS6S
	pz9rT990eBnVrEbb/dl0FliNRMJifYdhAXbSSWe4zw34qboPVPZFOx82ZkQ9kLON
	lwZHmA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w910dhw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 17:30:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-466c4b8cab2so3021721cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:30:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733419813; x=1734024613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AaqtZOlfrn0s5WOa1v+zVEs6LfsFYydrC3W6W40E/bI=;
        b=bFlEu9UQdqfDonOQE4BI76L55VeW554WY3H5hbCJiMxHR0K1aF1NBUjOOWjfhvzwOQ
         DsqLYxpJowWUNsXcpZs3ANAdrjLEbpghXtloQx9cDTLY9IMOSErTbAFXn82C80QxHYhD
         Rs2H15Pez+WuQfYCPsfgnUXJ2Pufdh522owct4za6WqLnMY/hd9hAqfPT9aydbWnXU9J
         uLp3/TRTgzpcUECe4DtMByLCDek8/JBuuvzCYHY8nLTSFwTOT/aevN2JGHBCK18DYyci
         DxBKABgG2IY89XqjzDyYTliy29PeChDXWzGvpsRhVH442raXLRMPT8vIqEg6NqNZBXww
         TLmg==
X-Forwarded-Encrypted: i=1; AJvYcCWqRm5iMn4DxSuP6RHCXBYxI8D/C0DreRqHA3E5zmc6sUooKxOmtplTqUObU9/PgKEBJgw0N4TBWNZi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywevh7R6+3nCqrsgQrzh+C68s5+9JA6eCkxfhu/VUMmykaQvHoo
	wSxV+i3oyF1A3rrtkAMeZ2txKQdXkAJtoS1yFFyZmEPqKxcAOLYZT6xieQeixGd6gsAWJ5l8bky
	LvbhUsTIIsRQKwCG+K30see4J7IFYqK0T19mW3vGF4fEjPSUg9pwQCxpPcgbS
X-Gm-Gg: ASbGncvanbUkzaJLU/4Yn+NBRSaG9THe8cE1VQ8EZ6rMifETyWbjSI9aVArMxdRi38N
	kFJd0pHFJQkh0T9qIAwwQ7xzT7cIAdhw7w9ODAz/X9O16rvt2QVokKVLAG8ZSbtTWgVjCCnImc7
	uiGwCdnQTbpA5+GRx8K5xYHGLVM8LtCoyG2TIu7HFzUQO6SJ0PUG8dNmh4Qhqm0kF80uegeKO9N
	hssoE8ESaSTawvtVPV0GFo7m/skgAeyYrOc7nB5vlr3nGmVQ4fGoE/S7Dl/LKxlan3qbEzVITsk
	dLrFfZNWGNnn2sJP5aKuUJ2fNRok6Bg=
X-Received: by 2002:ac8:7f07:0:b0:458:2619:45b4 with SMTP id d75a77b69052e-46734ce0fe0mr99831cf.7.1733419812705;
        Thu, 05 Dec 2024 09:30:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVXY2uZ+6FfU3SZe7AmGKYUL4OMFBVbnlBIZtVhOo7V9MP+Fxh/D8gWbwDaEuRWz8DmAjjtw==
X-Received: by 2002:ac8:7f07:0:b0:458:2619:45b4 with SMTP id d75a77b69052e-46734ce0fe0mr99491cf.7.1733419812145;
        Thu, 05 Dec 2024 09:30:12 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c799181sm1074740a12.70.2024.12.05.09.30.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:30:10 -0800 (PST)
Message-ID: <249fb0aa-5624-41cb-8a3b-c2e54dba87df@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:30:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: ipq5424: configure spi0 node for
 rdp466
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241122124505.1688436-1-quic_mmanikan@quicinc.com>
 <20241122124505.1688436-5-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122124505.1688436-5-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5YG49xVM8jj01Md47BJMdH9mUtLcnjHp
X-Proofpoint-GUID: 5YG49xVM8jj01Md47BJMdH9mUtLcnjHp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=990 bulkscore=0
 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050128

On 22.11.2024 1:45 PM, Manikanta Mylavarapu wrote:
> Enable the SPI0 node and configure the associated gpio pins.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 45 +++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index d4d31026a026..6256216ca764 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -23,6 +23,36 @@ &sleep_clk {
>  };
>  
>  &tlmm {
> +	spi0_default_state: spi0-default-state {
> +		clk-pins {
> +			pins = "gpio6";
> +			function = "spi0_clk";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +
> +		cs-pins {
> +			pins = "gpio7";
> +			function = "spi0_cs";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		miso-pins {
> +			pins = "gpio8";
> +			function = "spi0_miso";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +
> +		mosi-pins {
> +			pins = "gpio9";
> +			function = "spi0_mosi";
> +			drive-strength = <8>;
> +			bias-pull-down;
> +		};
> +	};
> +
>  	sdc_default_state: sdc-default-state {
>  		clk-pins {
>  			pins = "gpio5";
> @@ -57,3 +87,18 @@ &xo_board {
>  	clock-frequency = <24000000>;
>  };
>  
> +&qupv3 {
> +	spi0: spi@1a90000 {

&spi0 {
	pinctrl-0 = <..
	...
};

KonraD

