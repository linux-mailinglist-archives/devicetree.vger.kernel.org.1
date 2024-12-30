Return-Path: <devicetree+bounces-134777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB1A9FE899
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 16:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CABE18831B7
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973CB156678;
	Mon, 30 Dec 2024 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FRfDawiJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AA42E414
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735574213; cv=none; b=fBT8dTDm6MUmEClg6Q6CRkLrHxvh33TA9sU4Lbkk0RLfPFa6D1B7NxF4W9ySzpb/mDuz8sTVn9QSQdpmI3xKbmZN/LKhQWS7MASss1fuY7FQbHldnjPqkI4n3s26nlKx7XY06vy68yBebEm+UeAWCCaez9xPPBqOezh8JLNH8bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735574213; c=relaxed/simple;
	bh=cESGrFvAGxkkex0YppjKAhs3MtN02KoV71JXR4XcueI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ORZre3mcxMS+38Mr0sqUHmiQ5V9d03EbVGMvx85iTjxjYTmmDkAAibkoc265tzWybfudx54m2dmURC6SM3l04DICyL+M/Of5Qdw3SJixkOlu4jQ0xhpZXNAVWZr48+jfv3k9rE/uBwdmXrNsHIWjM/QEkjo4GxJA5x/rsaMLEdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FRfDawiJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU2kD1a027066
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:56:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HjBxPqanZ50c9hJIABN2mfuzMRYJ+0FTi98PGnwpwxA=; b=FRfDawiJUOdBVJmB
	zUV/EFbrSASrayc8OR/GpeaZlij5/2toWq/Wkjeh8Wy1Vh2gzTvlV3uzd3NFOO6O
	q2q6HmKtyzsGnxetbbpghfs16UK7hZiH5mNsgMN4gH1FZpgilOLQqOYo529hIJcs
	xvYM91UEfWOoCHauCfEtmyBGmYgniO8y82hZuFEl0sCTPztuys7aFbdLnaT68P4K
	uJxfkAKMyQfDcEkGv/nWC5/AuVmI1T0JICgdPHSaXlptBzWKcHMvRbNUd+b+Neki
	vuzEXWsrttDYeHw9/YPi0ynEqJ6+oaMlV11ynMMiyQTv2+RDt4jHkU//m4tSR/Oc
	9EzjtA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43uk121h30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:56:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8f77bf546so28961766d6.0
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 07:56:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735574210; x=1736179010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HjBxPqanZ50c9hJIABN2mfuzMRYJ+0FTi98PGnwpwxA=;
        b=GHqIkAhTJby9WQVb0Tkd2PuTGUowlbsi9m9RrVPqmeiDL9RvKeyLzKVKfRkuObboEo
         rytSYK8UkjwcpJWVRUcOLRNqUzTcyx7dqQ13JUDIafSaVt/q2+jYIT0cLFdVRfXWu6Pl
         p6LasQuVjju8jKi2eECTAKBVqWtLAiP5mHxOXXqIBHoGmk8PpfD2DQbRaQVpVjMYtkkz
         ELYZ0cSoXkyCypstr52egeUmrSwDRkkciAxuhknKjE3MAZnTnvUi9Lj1duPcs/pZnnDm
         dEqEDhW0hXm8aD5/sP3vODDTmfBZy6jcYcPJtRrj1SifuKosQfN8IMCYPmwIUEIZd1FJ
         CB9A==
X-Forwarded-Encrypted: i=1; AJvYcCWvQNh5Jb5AbZkEqnc+6HH11KtfqLUCfZ2Ooqo6BsyBYw4b2+9S9U1trOBq4ZzxWwMMtUTY2vQrNI2R@vger.kernel.org
X-Gm-Message-State: AOJu0YxYdZg67ARCEW5P+vydniGtBob01LwXsFB/RQyuwEJcrZCaowzj
	12A0xduqLwIOLCwldOUiF14PNxws0yoTB1rz4qTkQTW9+mco/gOF0N/6awrD4IFe1Xv8lEWSsp3
	hDg64IncNH3ZqCa0LGo44pGra/CI4xZPc/jxpMXO2P4K4eRv+k1fHgfFGgslv
X-Gm-Gg: ASbGncslbtjADsomk4Kaw5O8YxkpvxbEKIpqUPImWiBm1Cq/J3BIy36yKAfj4et4rOK
	9IuEWprjFG40s/hUsdUvr2D93g0eKXCDHxitDUrfBADdHYZL3AUIFkX0EHjc+WhdAQETCidMOv1
	Ys1z6A4xLNg5Ey692yXqKIP+DHwdjb/jsousAU19nYIPDRQ7OBljoKP1G2YTdLxP06MB9Awl3i7
	qhq7SZ8t6JVRn1OedqQ4TFSlS+KF0JUm1BryhcRinEnQRPBEFci0wOf2DzMVvcJZTPYxlYRG25P
	CXp8jyAqQwjMaV+DNmRvMSrpTog+shFObW4=
X-Received: by 2002:a05:6214:518a:b0:6d8:e5f4:b972 with SMTP id 6a1803df08f44-6dd2330be97mr206417546d6.3.1735574209906;
        Mon, 30 Dec 2024 07:56:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGraYK0dC19dwJBVdbanIIEVLltBQ5oTnvfz29YJtTRWS+nCyM02egVunM9LI5c2rfWljD1Hw==
X-Received: by 2002:a05:6214:518a:b0:6d8:e5f4:b972 with SMTP id 6a1803df08f44-6dd2330be97mr206417226d6.3.1735574209379;
        Mon, 30 Dec 2024 07:56:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06607dsm1491416066b.186.2024.12.30.07.56.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 07:56:48 -0800 (PST)
Message-ID: <7f297ec0-fe67-4f5e-88d2-f55cadfea62d@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 16:56:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: Add support for clock
 controllers
To: Imran Shaik <quic_imrashai@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>, Taniya Das
 <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com>
 <802d32f1-ff7e-4d61-83f1-f804ee1750ed@oss.qualcomm.com>
 <57ce6574-b8e8-4523-9a97-6946fad59b35@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <57ce6574-b8e8-4523-9a97-6946fad59b35@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: oUFbIEvmksMF5pA1C2DlCiMzqksBILQi
X-Proofpoint-GUID: oUFbIEvmksMF5pA1C2DlCiMzqksBILQi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412300138

On 6.12.2024 7:39 AM, Imran Shaik wrote:
> 
> 
> On 11/30/2024 8:07 PM, Konrad Dybcio wrote:
>> On 14.11.2024 12:05 PM, Imran Shaik wrote:
>>> Add support for GPU, Video, Camera and Display clock controllers on
>>> Qualcomm QCS8300 platform.
>>>
>>> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
>>> ---
>>> Please note that this series is dependent on [1] and [2], which adds support
>>> for QCS8300 initial device tree and QCS8300 multi media clock controllers respectively.
>>>
>>> [1] https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
>>> [2] https://lore.kernel.org/all/20241106-qcs8300-mm-patches-v3-0-f611a8f87f15@quicinc.com/ 
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 59 +++++++++++++++++++++++++++++++++++
>>>  1 file changed, 59 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> index 2c35f96c3f28..e43fada4acb5 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> @@ -5,6 +5,10 @@
>>>  
>>>  #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
>>>  #include <dt-bindings/clock/qcom,rpmh.h>
>>> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
>>> +#include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>>> +#include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
>>> +#include <dt-bindings/clock/qcom,sa8775p-videocc.h>
>>>  #include <dt-bindings/interconnect/qcom,icc.h>
>>>  #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> @@ -772,6 +776,20 @@ lpass_ag_noc: interconnect@3c40000 {
>>>  			qcom,bcm-voters = <&apps_bcm_voter>;
>>>  		};
>>>  
>>> +		gpucc: clock-controller@3d90000 {
>>> +			compatible = "qcom,qcs8300-gpucc";
>>> +			reg = <0x0 0x03d90000 0x0 0xa000>;
>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>
>> Missing AHB clock
>>
> 
> We are re-using the qcom,gpucc.yaml bindings for the QCS8300, which doesn't have 
> the AHB clock. Hence, followed the same approach as all other latest targets.
> 
>>> +				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
>>> +				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
>>> +			clock-names = "bi_tcxo",
>>> +				      "gcc_gpu_gpll0_clk_src",
>>> +				      "gcc_gpu_gpll0_div_clk_src";
>>> +			#clock-cells = <1>;
>>> +			#reset-cells = <1>;
>>> +			#power-domain-cells = <1>;
>>> +		};
>>> +
>>>  		pmu@9091000 {
>>>  			compatible = "qcom,qcs8300-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
>>>  			reg = <0x0 0x9091000 0x0 0x1000>;
>>> @@ -882,6 +900,47 @@ gem_noc: interconnect@9100000 {
>>>  			qcom,bcm-voters = <&apps_bcm_voter>;
>>>  		};
>>>  
>>> +		videocc: clock-controller@abf0000 {
>>> +			compatible = "qcom,qcs8300-videocc";
>>> +			reg = <0x0 0x0abf0000 0x0 0x10000>;
>>> +			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
>>
>> And the ones you reference here and below are not registered with
>> the clock framework.. 
>>
> 
> Yes, but these clocks are kept always-on from GCC driver probe.

Ah, ok then

Konrad

