Return-Path: <devicetree+bounces-209807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F69B392CC
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 07:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A06C368628E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 05:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADB60264FBD;
	Thu, 28 Aug 2025 05:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J376A0hj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E02AD4B
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756357946; cv=none; b=q8fslwKF/nf3adsgwQgX0+w6IlM3fw3paO+oxG9Z+ISfa7G07VUrRzqjv31LzpZK4o0puzcEI8aHgVXHEbvGSOPoS+xcpagumaKZPMnEZIoYvEJrXs8RNqzrISUOwuHfEV70cCKLlKKQavKwUtDQXkPxpg9/kTb31uslc0uZ3sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756357946; c=relaxed/simple;
	bh=clAMrz6KLy6NUqRmVn9yJ6X0kICZUVETZorxJPhYsiw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O2jIvmsQcSpFwm648qZ591TMa9qSaV3hZghBGZBTQKmaWkrnihiq0a7iOLEYCFK05WtFmwnlwIinA2oNbo3HgxCNP27xrWEfYD3Um07JIYDsMtJ8EwRQXDSQiU+UPJcLgkf+oTEcrrX+pWZpxf15TVP6mMAiSmHKmkBOj43HDuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J376A0hj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RGQeAK031174
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:12:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	usCl6mH6TNDrCxedB4k41lYzPFlB63q5zEaGSKGtmmE=; b=J376A0hjMF+USnNY
	+Cyg1BTQ5zLKQ/NTOVCzyaC79PdE0+gHhv4fOKrlCf289/kFLzatyOAtJ/3BQa2L
	j6SQrl9/39KpMtUJkgafiE0hzciUA6KOBlbaFUC2ZLzNY+J4fPIt/WWKxmkh9+Xy
	1IQBFr22A4P3JUtQ20gg8rRbKO3VVZ2HZjCslQCp/tzzPHTp4XWRSl8gIEdFfyTQ
	U0+TuRMUQqkABI5+jaqGq7QC6N85g6iIdOApGOPAvRp/t89IVtG/kJH3H/G3v2Fq
	5883I1mUUSfV5F1bLUaJz7zmTlUROiBzws7gSuj8FUatn47aO49mLQByCrSR+szj
	tM17TA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615pvrw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:12:23 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b47174b3427so504632a12.2
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 22:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756357942; x=1756962742;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=usCl6mH6TNDrCxedB4k41lYzPFlB63q5zEaGSKGtmmE=;
        b=g5LBV2XPnyKd2QAO34XspRAYHYxMwqkexF4rhDNevEohL4Cuqzwxlfia9JpfpHAOdQ
         MutN/EonJ5thKKFeK5BUR8NwS6uUHxDA2Tuo5I3e6JbmelGp+p2KIy13DgynXem92YKI
         JjdM503WoAP+NFb/qnI4ekX2Knsb2j+CJp+SIwByxES+SnD703Ao6GZNH9PemjOB7F2x
         UZ9lqw21rhP8NuPbXmf6telnSTz9fHdFvvUYzLQib/NmzvsuJdjhyirMPj6F4eM8Gion
         aMmzzm0Cn1VOQNHXXGK+4rreXx1Bwr6hzS5krf+mctBy30yIyZoRB2DfZ4DRs9S73CcA
         EGcg==
X-Forwarded-Encrypted: i=1; AJvYcCVS5DsOwlbH09+44h3AWODA5cy7+Opti9H0ufLtgUS4sUPE5BYFoi+8wRAxXESsnyyacBFxMl2qfzyV@vger.kernel.org
X-Gm-Message-State: AOJu0YxOSyNUm8o/hmS+2PyjXvc0M5ouor2/TI1POPS1Xi11aoGqb13c
	DQG0uXVst1uMp9itawiCv5qF+SEPsR4qOqRes1IiKSYsj+nWLt9LnXM1uhJ3PEZcz/UfUqFHKLC
	w74vt8zjsjFL+cPoHWTexkyQCOS4WECX2zZ8fCGOFdin/w1m70Clsb/SNZdvcjtMk
X-Gm-Gg: ASbGncvFInyTIRW6Zd1+bkmPVgZDXBa92hxWTq4Pr2slcmO6h7s+9bj695V7rZJhlBc
	1hE6WH1vFZM99YfNNFi1/tMzPHaTyYRPh2yjiwjRSsss1E/qaf4Q7tMtVEpMdln7eCxPPAoozDi
	l2sQV/AVPRhJqV2jpruuvWHcIF4YInLH5AfvngIrhbbw4pu7xrAdyMWZhi8G7YbSzKvZacRr0vu
	+H2COrPh0Lgivi50ntCoE7aJGYM0MfLxZjD0NXBWEf8+zke13/5sAEvD6V+nnBVNrBJYCAw1MJH
	JEfblP3YJeDg/xtVqIa18pfPO+IsHi1yFIMKax1qUuKn2fEPv/odC9kRJUrcRe+Yp97HTR9gw/p
	acwj1jCNxuv8oaluZkPxBlktkNJdubMlaMBk=
X-Received: by 2002:a05:6a20:939e:b0:21a:e751:e048 with SMTP id adf61e73a8af0-24340d7bb9emr31194783637.35.1756357942467;
        Wed, 27 Aug 2025 22:12:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh2Imy//naH19O30FjkWLd+lhOsGWdcbs2fB+COXPig7IKKsbqvmFGL0Zqk34EsrYRm2Ayxg==
X-Received: by 2002:a05:6a20:939e:b0:21a:e751:e048 with SMTP id adf61e73a8af0-24340d7bb9emr31194743637.35.1756357942007;
        Wed, 27 Aug 2025 22:12:22 -0700 (PDT)
Received: from [10.249.30.180] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b49cb7b5ca9sm13008126a12.0.2025.08.27.22.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 22:12:21 -0700 (PDT)
Message-ID: <4913e937-3892-42ac-8145-cc9c2364242c@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 13:12:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>
References: <20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com>
 <20250827-add-display-support-for-qcs615-platform-v7-2-917c3de8f9ca@oss.qualcomm.com>
 <yutyrfb73wbxlweoq3mc6ezyqr56snzmznw3k6mcbc56fpfayg@3h5jwymlo3ol>
 <0c2a4877-d63b-4650-b7d4-a06a2730c73c@oss.qualcomm.com>
 <zoogyjua4l6e2bgsvxx7w26n6v2hwnp2pvkizzzsds3c6cgaag@2bvqdl2z5ds6>
Content-Language: en-US
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
In-Reply-To: <zoogyjua4l6e2bgsvxx7w26n6v2hwnp2pvkizzzsds3c6cgaag@2bvqdl2z5ds6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfX0AgRqh54mwM9
 qag7h+TDFovgrzIarvJuHqarruw0V7XBT/SG1IkaMewC1nF4moUbGsBKBaDRTiZfbV18FPUgntM
 QEGWgXlGUCxYQjAxDcF9hitbB6MLjuznr7+YqKupONMRi1rmiaG/XSK7qGSBtxFGPCXW4+2X0XD
 qKL79e4vZ5OrEfGx1G7l7Afxi+o+syurvYi6et4IwdADkT4j7YkjpqBCEotOSH6s+2OrypnTMkx
 B5RqcEPo4LoYr9FUsAxJmBuOs51dXyQkzAVAqT12CQOPCDG/sBQ4oJDyB8EBAd1SCV9GKh5Vee3
 qCRarRcrPNU1+pXVb+GNwQ/DTf1xu6llUobxzt6TyP+DQX36vli7Yfji6baWC8fzyD/DNICKZpc
 I987XCDn
X-Proofpoint-GUID: PHm_fXz0L5HrPCA71nYKtKXNkYJQcayt
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68afe537 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=V-We5vXZukcDR5633V4A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PHm_fXz0L5HrPCA71nYKtKXNkYJQcayt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034



On 8/28/2025 12:41 PM, Dmitry Baryshkov wrote:
> On Thu, Aug 28, 2025 at 10:57:41AM +0800, Fange Zhang wrote:
>>
>>
>> On 8/28/2025 4:01 AM, Dmitry Baryshkov wrote:
>>> On Wed, Aug 27, 2025 at 09:08:39PM +0800, Fange Zhang wrote:
>>>> From: Li Liu <li.liu@oss.qualcomm.com>
>>>>
>>>> Add display MDSS and DSI configuration for QCS615 RIDE board.
>>>> QCS615 has a DP port, and DP support will be added in a later patch.
>>>>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
>>>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/qcs615-ride.dts | 150 +++++++++++++++++++++++++++++++
>>>>    1 file changed, 150 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>> index e663343df75d59481786192cde647017a83c4191..f6e0c82cf85459d8989332497ded8b6ea3670c76 100644
>>>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>> @@ -39,6 +39,76 @@ xo_board_clk: xo-board-clk {
>>>>    		};
>>>>    	};
>>>> +	dp-dsi0-connector {
>>>> +		compatible = "dp-connector";
>>>> +		label = "DSI0";
>>>> +		type = "mini";
>>>> +
>>>> +		port {
>>>> +			dp_dsi0_connector_in: endpoint {
>>>> +				remote-endpoint = <&dsi2dp_bridge_out>;
>>>> +			};
>>>> +		};
>>>> +	};
>>>> +
>>>> +	vreg_12p0: vreg-12p0-regulator {
>>>
>>> I should be more carefull when doing reviews. I thought that it was
>>> pointed out already and didn't some of the obvious things...
>>>
>>> First of all, the nodes are sorted. By the name, not by the label.
>>> Second, there are already regulators in this file. Why are the new nodes
>>> not following the existing pattern and why are they not placed at a
>>> proper place?
>>
>> Initially, we referred to https://patchwork.kernel.org/project/linux-arm-msm/patch/20250604071851.1438612-3-quic_amakhija@quicinc.com/
>> as a reference, but its node ordering seems a bit unconventional.
>>
>> Would this revised ordering be acceptable?
>>
>> ...
>> + dp-dsi0-connector
>>
>> vreg_conn_1p8: regulator-conn-1p8
>> vreg_conn_pa: regulator-conn-pa
>> regulator-usb2-vbus
> 
> So... Existing regulator nodes have the name of 'regulator-foo-bar'.
> 
>>
>> + vreg_12p0: vreg-12p0-regulator
>> + vreg_1p0: vreg-1p0-regulator
>> + vreg_1p8: vreg-1p8-regulator
>> + vreg_3p0: vreg-3p0-regulator
>> + vreg_5p0: vreg-5p0-regulator
> 
> While yours use 'vreg-baz-regulator'. Why? Don't blindly c&p data from
> other platforms.

Got it, The revised format will be:

+ vreg_12p0: regulator-vreg-12p0
+ vreg_1p0: regulator-vreg-1p0
+ vreg_1p8: regulator-vreg-1p8
+ vreg_3p0: regulator-vreg-3p0
+ vreg_5p0: regulator-vreg-5p0

Let me know if you have any further suggestions.

Thanks,
Fange

> 
>> wcn6855-pmu
>> ...
>>
>>>
>>>
>>> [.... skipped all defined regulators ...]
>>>
>>>> +	};
>>>> +
>>>>    	vreg_conn_1p8: regulator-conn-1p8 {
>>>
>>> Tadam! It's even a part of the patch.
>>>
>>>>    		compatible = "regulator-fixed";
>>>>    		regulator-name = "vreg_conn_1p8";
>>>
>>
> 


