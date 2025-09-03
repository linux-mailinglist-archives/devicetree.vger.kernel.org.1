Return-Path: <devicetree+bounces-212314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0C4B42599
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7B5E3BE757
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5899F23D7DA;
	Wed,  3 Sep 2025 15:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mRKl18PC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00181E1E12
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756913630; cv=none; b=EaQR+I1WJz1FH722Vz9ACFKicNFNAdbYbSxpojXx+aHGQueTxFwtiVDxApOtAGjqL4NkAyzdmK4UjjI1fnkZat/2V/bgj+LR31QfTflAMEL/YiVwQtDdUbcmRdpLUdqN/NezCB0RSDI7IkXY1/nNJuFh04Qv5GMXpiHMn0VB8/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756913630; c=relaxed/simple;
	bh=xO6iAnignT0uPUWlfXo2NngCyqiMjodQj+U6s9rd10U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YYziTHZ3AtzJuBRyKjS3dZPqb+vYr5jYATXsxrO4rVk1AbLVu8724MVe9puFU2h5qcl8ea0G/VkLXcmmjUseXAFqaHj0CPX/X5Knt4Y1Q8pQckA2dPEN/BGUIJeiDD4EmQ7Bh4UfXfcUZJxKpNKJo2tc+VoJJrSHDODYrd30piQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mRKl18PC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DxA9s005586
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	18o1iHxtl5lTw0Ly+5dz1N5tWp+vbDygIfwrS6qTOYE=; b=mRKl18PCkjiiZrjF
	RK5cDhHOTeFBUGNaLF50985gAUPoKy0UxpWGyefJ/sIymAFf9WdrsZAvBGysKlZL
	ogiYrL67EsG/NDKsyv2D/2YyeA8ZAXXglAo1vppSAZ4KMdVWXVzZP0uFT2kC9njE
	QJkiDe9jZk+J7xcYcUwICfIwE0lMk4sXFh/gXB9jrJMF1KyDr/qu4UlqyRQ/STiQ
	rVh6q10wu9HngwX5Ir35vQ8xCcVWY4BM653n4wK14w7SvJOmJcT75oD6f8ey23UK
	SyGxuNtnf3SMY591WQwDVi2Ng2a8+Vieb1aWog1FVGfwl+yldEo8irqlQUxCv8jP
	Sl6RJg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjm57q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:33:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32eddd8a6so37561cf.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756913626; x=1757518426;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=18o1iHxtl5lTw0Ly+5dz1N5tWp+vbDygIfwrS6qTOYE=;
        b=fYgRoXXFU6cb6j02ESyiY14j5jaMCPtcBkvrIzVmWXhC8eCsOpT9Hvy941GXKxO6YO
         dH1klcZ9lfiioxZL7jjzeou1PjHeT4vHApIc95dYD12QBWqtWyDEM658JlxPtiwqz9hO
         lO8UGETQqTIs6+Fu9aQ79hQWMSGeWqgIdjXDTA2hSH3zQpCJCmMyrROadmJCzmvuySdf
         Rb2Qv4jEmg8P66J4i3Z49Os34vkBf56u3UlM5Z8NmT1puji8sF7rW/FJQA9VjjyHDOhW
         Rehm64c8G1Cd7X736SAI/ZYzrVTK5QGn9Yq8ui8mASxJCVA7VjSDNF7pCcYua47DZFPI
         5u5w==
X-Forwarded-Encrypted: i=1; AJvYcCVTbAtG2WHta/xANjjCsYwsPpTYFytgJ4VV0oCwvQm32y23MqpKtf+knC1Zw8lIF3kZDC1tgonZ5njT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxuh9oms/rIm4QZO0aSYn0q7mMr4MEgwn3VCNSNLRYae+FdDJM
	plBvNxYZo5qLszUwAbk0OVSA7qWyb3CTdNnqKzGfNF4H/hrVsohBVSw1DLLK4DIcn0GuIYSE35R
	39GK6OPK41oz/Kj9fgusi/sbx6cxBeCVySiWCpP+cHZjNRnV/R/qsClHgboB23Dus
X-Gm-Gg: ASbGncuAJ/pXjLBQTRYhKytTWU92fBnIj/4I6yxeATtcWoVwwVqTrBRyhFOKlDzbhnA
	vi+vWFLtWzPz3/Og+/MkJtc6CL7ClXf4U/Ejgt+Af9V6qBF9kbpBMqHC/ieLW2Pnwip/l4yhQgp
	ustGwCZU0ErOXb4BHLqGQOaUqBKosxR06IpBiyk/vuPfhZMO1qKkVTdOqxuFtdDEX14h0pUbB3M
	oUQcwTKTDY5uOeCEpRX0YBVa+diH6+DQerVSlWmTAVQfQUA1kcU+uhDgK702oDaJdXQovh90E3O
	0AOin3w88f9oRbq/I8T+EkHQAWabnU12zd4jgDWYT5/spdP8yZ0f12SE/2RRTh4K5P0KUoV3klX
	cKoxSn45mtwXmQaKtM/toKQ==
X-Received: by 2002:a05:622a:295:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b5a0fb5d27mr3955851cf.2.1756913626374;
        Wed, 03 Sep 2025 08:33:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHL1vuGWMGXs2GJGdTf4JnsvsnA4SogcFyon1Ve1Y6vNl70a0aW3lgP59SAzB8uqaJmkyQcnA==
X-Received: by 2002:a05:622a:295:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b5a0fb5d27mr3955501cf.2.1756913625820;
        Wed, 03 Sep 2025 08:33:45 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff138a8c1dsm1235771166b.99.2025.09.03.08.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:33:45 -0700 (PDT)
Message-ID: <f34c72ee-971b-47e8-8d49-6355b2660925@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 17:33:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 9/9] arm64: dts: qcom: Add MST pixel streams for
 displayport
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
 <20250903-dp_mst_bindings-v8-9-7526f0311eaa@oss.qualcomm.com>
 <964a58d4-ddb6-4c98-9283-1769c0f11204@oss.qualcomm.com>
 <rfhqfbx4q3kl35ktzaexjjshzosv4a2tkjthtvo24aoisrdvj7@i63a55qx4mnn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <rfhqfbx4q3kl35ktzaexjjshzosv4a2tkjthtvo24aoisrdvj7@i63a55qx4mnn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b85fdb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xrVuZHS62xsaktVfuFIA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: Bn8ojhXp6a_9LC90LXlYKW_EbOSAxq_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX1vbboEf3AiV3
 OzgJljfgL8TVjrHRtGVKxCbWnfV19Sv2rmd2TwqoSEIN60q1VhFwJjEmWvjiGqQB+Q8FSWDJNj9
 nGK/32Gsx2vCUkbFhDpWVwJagLRJgse4PVMkuGjS6iLVd0Z+WlVzZt9Y7f5AzjPiW7eA8XSieJu
 lgD5q5rr54u443kgTiU0z3NanrO+eo16jarWKyLq+4OW1KI46ph0GOcsTVXV2HiEU15uWE14RwH
 GsVR2rGqKEb69dfl50ycaRCoViaZRF+NJPgG/dfKN1VoMiruFCwhFOf+TMqAIq3zz6gUevITT1K
 GOHQmAR+DjqsWjCdvxe/FB9NJ9QBqlqpLclRy8uyiALd0nTHHHnXhSCZyCn5FcBsVCLe9JrCz4h
 aWqdsHoP
X-Proofpoint-ORIG-GUID: Bn8ojhXp6a_9LC90LXlYKW_EbOSAxq_Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 9/3/25 3:58 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 03, 2025 at 03:41:45PM +0200, Konrad Dybcio wrote:
>> On 9/3/25 1:58 PM, Dmitry Baryshkov wrote:
>>> From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
>>>
>>> Update Qualcomm DT files in order to declare extra stream pixel clocks
>>> and extra register resources used on these platforms to support
>>> DisplayPort MST.
>>>
>>> The driver will continue to work with the old DTS files as even after
>>> adding MST support the driver will have to support old DTS files which
>>> didn't have MST clocks.
>>>
>>> Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
>>> index 70c87c79e1325f4ab4c81f34e99c0b52be4b3810..e6a7248040095077d6f98d632f4e8a1868432445 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
>>> @@ -3241,16 +3241,20 @@ mdss_dp0: displayport-controller@ae90000 {
>>>  					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
>>>  					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
>>>  					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
>>> -					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
>>> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
>>> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
>>>  				clock-names = "core_iface",
>>>  					      "core_aux",
>>>  					      "ctrl_link",
>>>  					      "ctrl_link_iface",
>>> -					      "stream_pixel";
>>> +					      "stream_pixel",
>>> +					      "stream_1_pixel";
>>>  
>>>  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>>> -						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
>>> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
>>> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
>>>  				assigned-clock-parents = <&usb_prim_qmpphy QMP_USB43DP_DP_LINK_CLK>,
>>> +							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
>>>  							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>>>  
>>>  				phys = <&usb_prim_qmpphy QMP_USB43DP_DP_PHY>;
>>> @@ -3319,16 +3323,20 @@ mdss_dp1: displayport-controller@ae98000 {
>>>  					 <&dispcc DISP_CC_MDSS_DP_AUX1_CLK>,
>>>  					 <&dispcc DISP_CC_MDSS_DP_LINK1_CLK>,
>>>  					 <&dispcc DISP_CC_MDSS_DP_LINK1_INTF_CLK>,
>>> -					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>;
>>> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>,
>>> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
>>>  				clock-names = "core_iface",
>>>  					      "core_aux",
>>>  					      "ctrl_link",
>>>  					      "ctrl_link_iface",
>>> -					      "stream_pixel";
>>> +					      "stream_pixel",
>>> +					      "stream_1_pixel";
>>>  
>>>  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK1_CLK_SRC>,
>>> -						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>;
>>> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>,
>>> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
>>>  				assigned-clock-parents = <&usb_sec_qmpphy QMP_USB43DP_DP_LINK_CLK>,
>>> +							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
>>>  							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>>
>> Something's not right here
> 
> No, it's correct as far as I understand. On this platform INTF3 / PIXEL1
> is shared between INTF0 / PIXEL and INTF4 / PIXEL2. So it is
> counterintuitive, but seems to be correct.

Eh, I unfortunately found confirmation for what you said. Hopefully this
doesn't cause too much extra pain on the driver side

Konrad

