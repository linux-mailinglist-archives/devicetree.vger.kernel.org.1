Return-Path: <devicetree+bounces-244275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3104CA2FE3
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E20C7301E9BB
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D713074A2;
	Thu,  4 Dec 2025 09:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ETC6BYax";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OZnNWpQg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2680E2C028F
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840581; cv=none; b=TEUP+j6jKYfuHNPCUiP5t5ktZ2EdeD1c7vJBEGGQ7Yf1jS9YaiIoKDOqmHHjS/bfxQmqk4/QyUMxgF4m7kK2igfTtE+4plsBiKD24evT1afVqVpySetGVU7WGzcMtkCCulB/V72Gw+bqD3BP0TUT0OjNY6K8agzvohI12Pq0RZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840581; c=relaxed/simple;
	bh=OUGbZfPoDKX93V3r/tvbNbwYVAVpf0/w7OZMXrIiBJ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X39ae3ch971n7wtdk37qEOa73cJmpouP2BE8pUbSZdWVtUxHqOtJUrKSRyJSoKqwb5y59tV74whXGI7wmB1CHrHjTnIOa0fsKQbXNPPphlXwnbpbDg8YvOHZsctK8I/LnymmwwMfcN4j6A/Q358vCXh21AaNwSEVi2qRT8jIbnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ETC6BYax; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OZnNWpQg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B476Yq4516631
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:29:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	unIHf2bLbiUgKgdZ9j/dH/WmTNgmy72TLalZZX9Pogw=; b=ETC6BYaxzg5F3HR8
	UiNhSQUFxDv9gBs4HiRRhPOtnbNxORAAfBaQa0dxYFCrrtv9gVTIc7VMH5H7+MKy
	O4OG2tB8AiYpn8YQu7BwplB+22Skx1faisvQtCP9mmdoW/ZbWB2sQsk8RVVM97/F
	sux6WgakNdhMHjVrCoFM4XLTbh9fmK83znckLlLAxxFvULHLkb2lYAZysXUmwGtR
	6fHrHAPWhtBxM0cUXsyn9rGnDnouPvdpP39AlRcvWZZP1Wy6zIHZs0rvuzh9kQ6S
	q2gkXLh0ndxkUJ79UifqnBpokgMmjX86YviFqH8UFXSVaL64AlI47rbpM3SuRbNF
	XrmvoA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au5m30efh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:29:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed5ff5e770so1296191cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764840578; x=1765445378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=unIHf2bLbiUgKgdZ9j/dH/WmTNgmy72TLalZZX9Pogw=;
        b=OZnNWpQgQHq9Lq4ieYMrimRZDmomNoH9eNviAmPd9F5iLbL3hI7bCZvWh9A4J3p/vq
         heUFB8oD+HsSTqDPCJF/khX2ca6l1Z4LcqhvMAugjt6UZ645ybugABbw83BA8PaUqAEc
         WwHwAB+VXyIYYjeZe6m5jQ5eMZ/w1GHEsT/ZSF/i6T3lzYS+PffeaCA9W0CqWAnA1TPc
         9UHMF0mAIta1AHHIQ2NSr4qQFRUwFx3nnr+lUhh7Mf8w0mZJ3UF0WRkS9RKvB7kgyZDR
         ap/w+QWPIdXZPgBZ1+meEN3ERF97dXJPIdePqN3vpdhFMcoIhO1rJs4nEH6JFuD0s5xx
         3B7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764840578; x=1765445378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=unIHf2bLbiUgKgdZ9j/dH/WmTNgmy72TLalZZX9Pogw=;
        b=EFgzZhbyRWG9LpGKEmQshfY9nVVQKMdpy22BF9jv0tX/xzMO7ss4trO1juAOg2cGMQ
         sfnRAV0cRuTGW3VgQxLjuzECUVqzVssRfQKJMPG8SdimrKWbQmQxpR4C3xDNwL6pwKHf
         z2BIuPzLpB4Wsbr43Pi5qRiFz69jaETl6IUUmSJVFyUlodVkuM86axn05O39Z7VLwbsZ
         FIsaCHfAGGxwXCuevoncfB8wYY22pnMJEySEtETc5foejvkMwbkrckDXzY9lKZXgryVn
         x4YZpfI5tO0+ReBNRMC9sayL525KJgR0Cbf1jOSlFSfichMPGK1vWYjjUkVONSoENPT/
         AtCA==
X-Forwarded-Encrypted: i=1; AJvYcCXIghsGam+qAUIAEQ5Z08cqOme0IClFTNaycpMCbEKkMpiWYU6VyshgfWyn8GtqhIX4qat0CMCwi03K@vger.kernel.org
X-Gm-Message-State: AOJu0YwCZA8dXKcXhh9H6whuPCsQjjuxhEOCgw5yryu9y5nE311FMGEq
	YWCNiRetX2a6x/9iAVqec6njqhMqmTBxgabjwB0LzC8kuUAmcaCoqrhQ10lCRcLBCWP5v+6Dxqc
	oLrSdygq3nwflSbOKCi2XCP48AzJnt8pGMKHA/7AY30I4T5mt4Tai7X17AmlU1F9e
X-Gm-Gg: ASbGncujPgMc4aNRLkJJ3AJymap22Cz3oZOwHrPCAG0qpbYyw8ZpllEhOfM3CUi+JGT
	vyORhOyEvk1Wht9RGkkhqgvvyHVKnsTeeHBa5TpoG998y9EJu3NtaqN2jg/aEk50kbWxC5DyWc9
	/2U7J7O/4KXXoZ268vvfU2q1XqX9BhcbIxoDHmA1EpFJVL9XYCUJJFYK9Mgq/sxkEhtYg9JZVHt
	M0ZuSQzYNzx3LuZIUjgRLjTguFmAgWwB809CkABvd3BjdCMNSmPB9x656cGjtCkMreT0LlME8lw
	46RkjqzF5hxNNk3BTWu3bjDTIx3Ly1J/afbCblJp8MqCP5aL6Q09vshhzLrfqM+HIjL+Gxol6Lb
	lcN54s73eCQXFkFteEbmDk2TLbK1jtqGY9eSlr/tKSE4aFo18W9L18MVZuDpz47LHOw==
X-Received: by 2002:ac8:5793:0:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f01b0b0959mr46305651cf.1.1764840578386;
        Thu, 04 Dec 2025 01:29:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFmWJJcCfG7Cy5tFaCOZPMPZvEVSgfUyJYtupxfO2ZUtQKd8azbDaBAGnvDPz39Cxu2XF9rA==
X-Received: by 2002:ac8:5793:0:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f01b0b0959mr46305491cf.1.1764840577963;
        Thu, 04 Dec 2025 01:29:37 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975c88sm78004266b.35.2025.12.04.01.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:29:37 -0800 (PST)
Message-ID: <71366611-980f-4991-b7e4-f3713b70be6c@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:29:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: qcs8300-ride: add anx7625 DSI to
 DP bridge node
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20251125013302.3835909-1-quic_amakhija@quicinc.com>
 <20251125013302.3835909-6-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125013302.3835909-6-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iCrehq3Xks_HrEsbSIUr6WXE2bTgXxSt
X-Proofpoint-ORIG-GUID: iCrehq3Xks_HrEsbSIUr6WXE2bTgXxSt
X-Authority-Analysis: v=2.4 cv=esHSD4pX c=1 sm=1 tr=0 ts=69315483 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=rm2exvCS1sBdD0tWXWIA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3NiBTYWx0ZWRfX4sEEq5SM643W
 fV3xdMFXKX9Py3crGljOZlxiC7S5N6TN7j7QsV+PQVGPLMvDrrdUpc33U0pYG654+1G6cvBmeRv
 week4fSejS/KBTiysSYqv/tjsuG8DGGB57m0Vlr1Q6VjcqZlmbEIp75Ml7e7VD0IeF6+k9qBOKY
 QxkttUDKkxlxCVHokPA/++UnkK/Ea+y3pAW7kRh7nrs4PdHom5jJBL7qA85SQPFFSlVGo91vwKx
 XSnCdOXNwHoqo0ORHAOKdoQWnC9QvsXpm7Kebnc65lKVQJ1zEEZIh4S9dLpIsvpZa5UYIWf90Xd
 t/z6cMr9C6seHj6n6yQpuuVp0P9XdUYXzeWRQmSkzLaC5tzW2N/Q+yq3P5zu7LkyvXp2xVMrc4C
 4IEyGh081uGGcHNiabsA9pMvH5aFnA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040076

On 11/25/25 2:33 AM, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device node.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Couple of nits

[...]

> +	vreg_12p0: regulator-vreg-12p0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_12P0";
> +
> +		regulator-always-on;
> +		regulator-boot-on;

These properties usually go at the end of the node (e.g. x1-crd.dtsi)

[...]

> +&i2c8 {
> +	clock-frequency = <400000>;
> +	status = "okay";

A \n before 'status' is customary

[...]

> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						dsi2dp_bridge_in: endpoint {

Also before the last property and each following subnode

[...]

>  &remoteproc_adsp {
>  	firmware-name = "qcom/qcs8300/adsp.mbn";
>  	status = "okay";
> @@ -419,6 +574,21 @@ dp_hot_plug_det: dp-hot-plug-det-state {
>  		function = "edp0_hot";
>  		bias-disable;
>  	};
> +
> +	io_expander_intr_active: io-expander-intr-active-state {
> +		pins = "gpio93";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	io_expander_reset_active: io-expander-reset-active-state {
> +		pins = "gpio66";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-high;

This conflicts with the ACTIVE_LOW definition, plus it's generally
handled by the code via GPIO APIs => please drop output-high

Please also keep the entries sorted by the GPIO pin index

Konrad

