Return-Path: <devicetree+bounces-178928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AA5ABE068
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 18:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B5567B3A8F
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6633E26B94E;
	Tue, 20 May 2025 16:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nFmbxmKu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC75726AA9E
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747757848; cv=none; b=niFf8/wcluZkVtZODmy9zrjLmAlgvfbxy7X0qbZ1K/RklZ2zMpt3JiftjOlsJWsalNey20rZASacgSLaZV/WAjL8c1IPtX3KXZxP7gMLdH9i2Jr1C5lrgIou78umsG/MywmWl06VqpJMicin9wqmVzwPARd/zgETd+8OJCp+/0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747757848; c=relaxed/simple;
	bh=eo2ll8aZP6fB5Qmh625oasg94Q1ESOBYvDMW/Yk3xZ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q63zk+B32aRZwPh+7DQswIlcH8n+Bm/q/3vaPSdv2uCpBQw4/yD7DQAFvK1zKc8kVLNKCTxdJ2vsrwmbRtvB4aqyLCxmmoQ0ioTeOTi4Ru1iYOttUSIXZCLpQSpniTLHfcz3VX7jkN4/P3yXl5pKtRo7on8NuVzgTQs0p3hf08Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nFmbxmKu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K8IdPL014092
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b5DHEtpnOzGMRu3IyuKVwLv2uJQf2egjT6GFT5/7JmE=; b=nFmbxmKuKf0MajPi
	nbZFKIDahCZZWjKC4o4z+C+7Uwtmbo5b8w03GI+Qci8WtxU3iiW1jVPgVT59J7h6
	FWmXZ2yXvrk9ZUn/1klNHUtOQLeT107IQiAunmnZfX/0078ASXFr+kGPLt5kgsUG
	LrEMTczuuMupPVwEQlxkZopsAdRlPDAFlzqmih3Smh05TVZ9PUBXMRb1lPKQ+/FT
	wShnPkPJr/vpG5NAmSgoM8P3wU2wsJyuDAHrnXLlESkJ2sX10ejLo86/0D/yYbNz
	Hr3FSNyz2zqlBiG6Zs8fW8rkoQUpvO89MujXGK37ye+4a1TRwHESZF42HIUQWhEj
	23DJ1Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rbt22st2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:17:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f0c76e490cso14862166d6.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:17:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747757844; x=1748362644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b5DHEtpnOzGMRu3IyuKVwLv2uJQf2egjT6GFT5/7JmE=;
        b=BakBfa8gkOtKJ+3iSAhB1viMmcqlJ01H9Q3CG1JUwWbBcmWQ9FKzdpht/Qv8k2llqT
         wS6oieHAe+/sgraPGyPBHmQiJQpCcAtWQbVwsZndwj6hOQLtIGFhdS3WCk4nMLgntixX
         6O8xqcy4m6AlcLbP4SjOV0JSNipPsl/aaE7PlmNlqW1zhEwAxLxz0dDhvWu68NusVF6S
         GfSvksmfIB5bS3DqTxpxamL/gjbMTr/hWeyF89ZHRiqDsqCamCQIh2WqBXUY9qt37uUT
         Hzf0vX/vNv9x48osSBhDb9P90w3/j6yAAPX5JcmR+yhr9Fh1I/y7Gd1qBsPyxzlpkEb9
         qyOw==
X-Forwarded-Encrypted: i=1; AJvYcCWq1NE8sO5/vWPOgQ3FIKFkdNeSJ87l2gKoEymoUz1TPaIBovIe3OC9JRQRCFWZysScxtlMVN6YFjCR@vger.kernel.org
X-Gm-Message-State: AOJu0YzNz3AS1X+maL/nIw6nfD+cqXBWlLXVfmxcGa4/BOY8QOiQN/nR
	555vTlWiSUqsQZ8UReVTXw89oHe2C8kP16iVUtu7r7m/CmOTvQ8jwbCYBwnLjwS8AIPxcqwnbwM
	ATfcFic1qmsvcEWrKHwKV0yDeV3Q7/XnMWivNaFuj7l6iRg0DEcudlr8uI5ORXgEp
X-Gm-Gg: ASbGncssDpbQOsqlJ3WTHfw2krPtvaaUP3clsYdmylGu+cilMrc7GDeQ1rLD0aK5/KG
	tcFWTl8BIdpmvG3TiLtLndQ+3ed1bweHHMt48mIAs7HmGhpH9wukOZ/JRia5ZrnHob99Hi+9qNG
	a74HbGlQVOQdM/AKZh2U6zzi1gv4jTtzrgBJCYI2OH0BfhrfvIbpM7nAQvAHhYVXDA4qtEUMY9l
	RcEiPXII+DvdKWOg2UQGzJ0kx5282i8w7/rtYNsSGWDVk3MlmgW0Y1AwpbmgMoRUTMZIN/zVAfP
	pLAlS1THiFf7GfT2KLuDBCF/cUapANI94gYaGKczORGU/4jHmS5Rd5rsjQ7IoAcJYQ==
X-Received: by 2002:a05:6214:c67:b0:6f8:4719:c2 with SMTP id 6a1803df08f44-6f8b096f394mr86190706d6.11.1747757844472;
        Tue, 20 May 2025 09:17:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5E3avK+19A9Td517SGCLdTYA2yrGFAzKGrj13CJfDGLAXTQvQv4IifqqVvRyOTiit6RWrBw==
X-Received: by 2002:a05:6214:c67:b0:6f8:4719:c2 with SMTP id 6a1803df08f44-6f8b096f394mr86190426d6.11.1747757843833;
        Tue, 20 May 2025 09:17:23 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4f8e40sm739096966b.183.2025.05.20.09.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 09:17:23 -0700 (PDT)
Message-ID: <78314d48-4220-4d1a-a168-74268286fa2e@oss.qualcomm.com>
Date: Tue, 20 May 2025 18:17:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: qcs9075-rb8: Enable IMX577 camera
 sensor
To: Wenmeng Liu <quic_wenmliu@quicinc.com>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vikram Sharma <quic_vikramsa@quicinc.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-i2c@vger.kernel.org
References: <20250514-rb8_camera-v1-0-bf4a39e304e9@quicinc.com>
 <20250514-rb8_camera-v1-4-bf4a39e304e9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250514-rb8_camera-v1-4-bf4a39e304e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzNCBTYWx0ZWRfXyvvrFW/OiBIv
 LpRoUcDxxB8beby1gETZQNKrqtb4UzobqBXZIYTbGdYOkp46plMmOHo+PPqapb7ersD2V2GC64v
 VMLX/F1TtjNeJWVwFwHGrbwdxPRM+PbCsYruY2uxauKV7dQY7ZRCHylyxhjQwl8opBMqVp8Xuia
 vaBYiczuH4PM3295mQc9RSSiFqGPPFdroiC+HzxipGpjVo5AP6OyH6j/fvuivPAFAqEFFzBaWLH
 SS0CFQbmPMrEWPFT09dhriJsjo523Qet5bOcp0qvQaMtb3P4URg0vISzHYBtA2rwMLft3P+9j3w
 QOOwWDh3Rvh6MI4Hqk0QeWUguVvze42yhR0ZOtib+Z+PkN0Rd8rbpqmQLKnpwt04cCAoHqZYSSN
 7du+8S9DSLwBVOD83Ap7OjDDKgQBo5FywkfIXRc30r+cFpWYIHN5vFdTrAA9R8n690TbJoi9
X-Proofpoint-GUID: nZaJm5-cATG7fXYQ6quCcnQrrDQgJXuW
X-Proofpoint-ORIG-GUID: nZaJm5-cATG7fXYQ6quCcnQrrDQgJXuW
X-Authority-Analysis: v=2.4 cv=dISmmPZb c=1 sm=1 tr=0 ts=682cab15 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=PwJnW-PDuis0shpFSnMA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 mlxscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=853
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505200134

On 5/14/25 4:40 AM, Wenmeng Liu wrote:
> The qcs9075-iq-9075-evk board has 4 camera CSI interfaces.
> Enable the third interface with an imx577 sensor for qcs9075-iq-9075-evk.
> 
> An example media-ctl pipeline for the imx577 is:
> 
> media-ctl --reset
> media-ctl -V '"imx577 '0-001a'":0[fmt:SRGGB10/4056x3040 field:none]'
> media-ctl -V '"msm_csiphy3":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -l '"msm_csiphy3":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> 
> yavta -B capture-mplane -c -I -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video0
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---

[...]

> +&cci0 {
> +	status = "disabled";
> +	pinctrl-0 = <&cci0_0_default>;
> +	pinctrl-1 = <&cci0_0_sleep>;
> +};

Let's keep them enabled

> +
> +&cci1 {
> +	status = "disabled";
> +	pinctrl-0 = <&cci1_0_default>;
> +	pinctrl-1 = <&cci1_0_sleep>;
> +};
> +
> +&cci2 {
> +	status = "disabled";
> +	pinctrl-0 = <&cci2_0_default>;
> +	pinctrl-1 = <&cci2_0_sleep>;
> +};
> +
> +&cci3 {
> +	status = "okay";
> +	pinctrl-0 = <&cci3_0_default>;
> +	pinctrl-1 = <&cci3_0_sleep>;
> +};

the preferred style is:

&cci3 {
	foo = "foo";
	bar = "bar";

	status = "okay";
};

> +
> +&cci3_i2c0 {
> +	camera@1a {
> +		compatible = "sony,imx577";
> +		reg = <0x1a>;
> +
> +		reset-gpios = <&tlmm 135 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default", "suspend";
> +		pinctrl-0 = <&cam3_default>;
> +		pinctrl-1 = <&cam3_suspend>;

property-n
property-names

please

> +
> +		clocks = <&camcc CAM_CC_MCLK3_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK3_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		dovdd-supply = <&vreg_s4a>;
> +		avdd-supply = <&vreg_cam3_1p8>;
> +		/* dvdd-supply = <&vdc_5v>; */

Please either add it or remove the comment

[...]

>  
> +			cam0_default: cam0-default {
> +				mclk {
> +					pins = "gpio72";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				rst {
> +					pins = "gpio132";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam0_suspend: cam0-suspend {
> +				mclk {
> +					pins = "gpio72";
> +					function = "cam_mclk";

Don't you want to park the pin to "gpio" in suspend?

> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				rst {
> +					pins = "gpio132";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +					output-low;
The GPIO framework should take care of output

Konrad

