Return-Path: <devicetree+bounces-238077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 55501C56F22
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:42:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DBCB63422B2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B0A6331A7A;
	Thu, 13 Nov 2025 10:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BZ/mzdf8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V/igIplb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BA433120B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763030523; cv=none; b=Qnar+7qcR6Jmg5GY8Y3QfpYCoDA/lq6Iqy0l7R8BHIgpUaXtQOYn/k2ZrsHebuF6TEnzXTh/B2+9sZHhvjXNW3V1mA7DSfVsCoV3ORw5WMD73WNIiyY9ArEGpULuTWU7Mxegm9Afx8xJX7Le6+deA0aqh77MweG9eIuJJl6Kr4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763030523; c=relaxed/simple;
	bh=hXnD6LTmh4guVB4bmTUA8Fa8BRB+LUsKMsPfTIUEKcE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZZAoDQz2x+7/OabyoSUx4dwBemi+ieoJ8vq8DmvJXwOffXHgP9W/X8v3wULc6G2O45sqt/vqh6UX9r1JLpkArn74oK+lanx4so/rE5TevBGW51YqKmhQNtfaeL6Q7qeE8ieo+MW4JGIdtBde/VLpLU4ZIwX+WlFAJjSYp0qhdBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BZ/mzdf8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V/igIplb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADAHW2n4097322
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:42:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E/2GHGKMHH3/peG1/WgTL/Kznds7LnX+Rx8aV6ZmG/8=; b=BZ/mzdf8FsUTa5S8
	S2PuVk1AwG5OQRuzNiulTYOFRsh+hNX0yI3ePguikeODvXjPfGiTR72vgNNBCfb3
	WMycOihk6RzTTlbriof7ZTKm+8uf6u065W8fgzog5tty1v31cKnED+257k9XcGhv
	AsiF3gMiTlzFRn3ADtScIoeuXtG/ZCDQc8S1NDfdoo/YpE7N4VbA3NZfTN+VUmzG
	tTTk6PLKJCqpNmabG7T6qybBT3IK2BCJyq1fvm8MlE8mWkSv1QHgSoKJa2wjbZej
	RIl8i8/PVOsaL0QVr+WhOzgifa4xnrPN90jbZoX2D8xpqAC/PX6/Ldn2dF8u0r/G
	SY7RRw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4addetr265-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:42:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed83a05863so1766311cf.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763030519; x=1763635319; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E/2GHGKMHH3/peG1/WgTL/Kznds7LnX+Rx8aV6ZmG/8=;
        b=V/igIplbnyJkCBteF40UyjJ4zYpfKq+J/ZiU//itJZwAdPdDLIcz7FIskjke+NT/YL
         2RbVPaTfusguIsjOf+/XsyzYEiqwGTlaQyEH337lXJb/KioBUzgI6TM7V3LJDSr2XFMx
         Wex9wa9/gLDd0aWKYeuyFki4vT+gm8/RbTzQdOJrgoHIm5e/X0Y5s8xOcnxlUrwteJ6u
         +/ksSja7fFbqPUoqR+E2uNAQUgTl6Cs3B9xk2YDXLQvyzlTbyFdryZdsA8qJKfnrK9KD
         Cga71tIEtW84cpc4T7TPfrVNVTkdTiy2Awww3471lJjNswEYprdXV/x7CwOVLQtvHUAu
         5+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763030519; x=1763635319;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E/2GHGKMHH3/peG1/WgTL/Kznds7LnX+Rx8aV6ZmG/8=;
        b=anu3elUOkwFF/aM9OLV0xcbaV76oAmMppmZIIqPWa18JGaDbxZKgUpxzndG5/EYH9+
         cyR8pebohMNhyPnfxJ0isuHHli/zO4V8LOBzJMHSadJqSeiyCX8S++CTOvX9bOrlpjto
         BAKjBbPCP9iRZBXCgwFyxbtkN1OmCQl68dr9xL1+IUpWKRAxn4ToqA2WkZwlHKQAG/mL
         irJA3HLtI7yQSWX6uNiQz2aMraIrQd3f3Brsx9dri4K2B6thc58L8KZdwZbCz5OAH+iJ
         hN5qi7Rwq0H0VmR3nWjxVsxy3ijQL35HncQUyM8EErN24lNqJnqoa7ZkYk6RXDWALud/
         43NQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+0Ep6dsKXv1hTsnFftjMCkWmCqbS1P/4Af+CJwIrJhrI225snj/3FbfoWTFbfqyqonbxIpFYRAV2e@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwl9G6EGpordXki2aAP9STLxs6IGPoDJ7OxRZWOrr1y8fsRlij
	fZl15k4l+TB7FZcKiJBLkqH1awO4YyBH5sYeNHMKNBZ32dyvviwq1eKwDoL7ipbsLGOaKck3Gag
	p83uSryLjVIpItpDhRhRSHLnG8UIWGbAmY3g6K4az4Vf/5Ed6YUQf8Tc0So0LgpwL
X-Gm-Gg: ASbGnct8EAFHVVSBT5zn8AN3bsfOXu11l24cSnCjpdZq5TaBtIf18jiIfcZeSCEK2ZU
	lye6eHkYjDDlGT8CYwIDWy7jPl+yTxCwOq0cMAfw3WkAGskBPGm5fniEDI51Qexdm/fpmhc/9EK
	n8EJUG3XkK5FjHZhf3Xzj2KWZQtv8ohqYTVvethAJkT07/9Apy+Z3Sue+PC/Jh4mpx6WNQ+iQQg
	BDP2lydYG2lxp8Fxr1GAM1GuV8qwrUEKGwFQIEhtEo8f3AlOcvSMmOmh8wRBp8OMTBLyvkobsXX
	jUpzf5jCbuvy/507IRwXJGB6mMsjMrp1IvHkqWRtwcMnRaQcjv47uFFO75TJ6ZpKE2E9ZseFR+o
	Q3ovBM6q1InUjlZRdBZ21Taumjm6g3aOIrv9+rtoRDwIG8BTog1iQhjqd
X-Received: by 2002:ac8:5dc7:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4eddbc9b895mr53790361cf.4.1763030519297;
        Thu, 13 Nov 2025 02:41:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFrcl4+qTqOk0GNCNMWbcWMtXYz2d4n4q2FotMPgIrNQP9oX8JoqbWJTtwwS/ePssboaTi9sA==
X-Received: by 2002:ac8:5dc7:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4eddbc9b895mr53790161cf.4.1763030518787;
        Thu, 13 Nov 2025 02:41:58 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad41e5sm136107866b.19.2025.11.13.02.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 02:41:58 -0800 (PST)
Message-ID: <f0dc9c49-93af-45d3-90a1-6f098a036afa@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 11:41:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: qcom,tcsr: Add compatible for Kaanapali
To: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-mfd-v1-1-6c8a98760e95@oss.qualcomm.com>
 <b623c7f6-f28f-49ba-b6f6-25084117a6b3@oss.qualcomm.com>
 <l4mb5pi7kz7uuq6o3eueoxl2ngt2sdd6dv3kyudw6i54co5v5h@w6ya2nuas322>
 <ad00835e-bc20-4f97-aba6-e1b4f5e97191@oss.qualcomm.com>
 <f2q7a7r7quq6pplcn3kklwrhdc6hxa5zvc7osygshtyurwyvi4@t5iyragt7irh>
 <b5ecf5e7-4dc4-41ac-9b56-7c52afacb950@oss.qualcomm.com>
 <01de9616-825b-4fbb-83cf-e0bf91e8cf39@oss.qualcomm.com>
 <81174278-c3c4-4dc6-856e-b58aa2cb6fea@oss.qualcomm.com>
 <br3fmilhh7fihv4atnf4olvy4w66z4p7sh4ypicuc3766ky6tb@pppfdynfhfz7>
 <bf706156-1413-42cb-a463-803063c347fc@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bf706156-1413-42cb-a463-803063c347fc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Kz9OtlU_3QB47a_yX_jhHTU-VV0Ye65Q
X-Proofpoint-ORIG-GUID: Kz9OtlU_3QB47a_yX_jhHTU-VV0Ye65Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA3OSBTYWx0ZWRfX4Pecob6bUg35
 Zfs43en7veV8MGWyKm23R+KQWYYGjrb8lO862oKrMUJ7WofhPDoQ64Hb3N+RNqMlUzU7eQjlwnS
 tM75J58YRcPZPlpQWaZbGWDQ9SeIr90QNaZZqRKljxgNEFt3uqIx8Jrcsdjj8Ef2YTZpAdmvAe/
 KJQtdiISZ0l0A7Vpuv3B82tzDsDwe2TKZOZmUBW/zU5l3ZRTiicm+U+QSTL3LlMkNNSDCqOi4IO
 gKRjqAez98BD5mavMQ64DK4kkotavSn8PQfwhVmHQccSfeSbsImPqPdqwUvT7QmE9STwx7+FK1V
 zb3HqDylD8tWSq+qshJizALSHvGK3FDP6qBhity1kYyfVXopgxNISWUFtG2fXntqggMkfCvYFdx
 H1HQS/lxVV9yZ1AQG9ggJYhSQKu5LA==
X-Authority-Analysis: v=2.4 cv=QZNrf8bv c=1 sm=1 tr=0 ts=6915b5f8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=q7Qu6pG9dnr7vhMOZxIA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130079

On 11/13/25 11:03 AM, Aiqun(Maria) Yu wrote:
> On 11/12/2025 12:05 AM, Bjorn Andersson wrote:
>> On Tue, Nov 11, 2025 at 08:27:17PM +0800, Aiqun(Maria) Yu wrote:
>>> On 11/7/2025 12:24 AM, Konrad Dybcio wrote:
>>>> On 11/6/25 11:16 AM, Aiqun(Maria) Yu wrote:
>>>>> On 11/6/2025 5:06 AM, Bjorn Andersson wrote:
>>>>>> On Tue, Nov 04, 2025 at 01:35:01PM +0800, Jingyi Wang wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 11/4/2025 12:02 PM, Bjorn Andersson wrote:
>>>>>>>> On Tue, Nov 04, 2025 at 11:34:25AM +0800, Aiqun(Maria) Yu wrote:
>>>>>>>>> On 9/25/2025 7:23 AM, Jingyi Wang wrote:
>>>>>>>>>> Document the qcom,tcsr-kaanapali compatible, tcsr will provide various
>>>>>>>>>> control and status functions for their peripherals.
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>>>>>> ---
>>>>>>>>>>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
>>>>>>>>>>  1 file changed, 1 insertion(+)
>>>>>>>>>>
>>>>>>>>>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>>>>>>> index 14ae3f00ef7e..ae55b0a70766 100644
>>>>>>>>>> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>>>>>>> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>>>>>>> @@ -48,6 +48,7 @@ properties:
>>>>>>>>>>            - qcom,tcsr-ipq8064
>>>>>>>>>>            - qcom,tcsr-ipq8074
>>>>>>>>>>            - qcom,tcsr-ipq9574
>>>>>>>>>> +          - qcom,tcsr-kaanapali
>>>>>>>>>
>>>>>>>>> It looks good to me. Glymur didn't have this functionality verified yet.
>>>>>>>>
>>>>>>>> You spelled Reviewed-by: Aiqun Yu <..> wrong.
>>>>>>>>
>>>>>>>>> Remind for review.
>>>>>>>>
>>>>>>>> No need for that, reviewers will review when they have time.
>>>>>>>>
>>>>>>>>>
>>>>>>>
>>>>>>> Hi Bjorn,
>>>>>>>
>>>>>>>>
>>>>>>>> But that said, most modern additions to this binding follow the common
>>>>>>>> format of qcom,<soc>-<block>.
>>>>>>>>
>>>>>>>> So I would prefer this to be qcom,kaanapali-tcsr.
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Bjorn
>>>>>>>>
>>>>>>>
>>>>>>> qcom,tcsr-kaanapali is used to distinguish with binding for GCC:
>>>>>>> https://lore.kernel.org/all/20251030-gcc_kaanapali-v2-v2-2-a774a587af6f@oss.qualcomm.com/
>>>>>>>
>>>>>>
>>>>>> So, qcom,kaanapali-tcsr is the clock controller region of TCSR and
>>>>>> qcom,tcsr-kaanapali is the non-clock controller region of TCSR?
>>>>>>
>>>>>> Sorry for not understanding that earlier, but this doesn't work for me.
>>>>>>
>>>>>> It's a bit of a lie that TCSR_MUTEX is a separate node in devicetree,
>>>>>> but it's always an nice chunk of 256K in the beginning (or end in some
>>>>>> cases?) of TCSR. But for the rest, there should be a single tcsr node in
>>>>>> DeviceTree and that one node should be a syscon and a clock controller.
>>>>>
>>>>> I've been dive deeply on this tcsr block. And actually the tcsr clock
>>>>> controller part is a very small trunk size(0x1c) of the tcsr block. And
>>>>> this block have contain other multiple purposed sys registers. So maybe
>>>>> we can have a more discussion on how to have device tree node describe
>>>>> this situation? It is not straight forward that to have a non-tcsrcc
>>>>> related area being described in tcsrcc.
>>>>>
>>>>> What about option 1 (tcsr_mutex + tcsr_dload_syscon + tcsrcc):>> tcsr_mutex: hwlock@1f40000 {
>>>>> 	compatible = "qcom,tcsr-mutex";
>>>>> 	reg = <0x0 0x01f40000 0x0 0x20000>;
>>>>> 	#hwlock-cells = <1>;
>>>>> };
>>>>>
>>>>> tcsr_dload: syscon@1fc0000 {
>>>>> 	compatible = "qcom,tcsr-kaanapali", "syscon";
>>>>> 	reg = <0x0 0x1fc0000 0x0 0x30000>;
>>>>> };
>>>>>
>>>>> tcsrcc: clock-controller@1fd5044 {
>>>>> 	compatible = "qcom,kaanapali-tcsr", "syscon";
>>>
>>> Remove "syscon" here. Not need for tcsrcc fallback to "syscon".
>>>
>>>>> 	reg = <0x0 0x01fd5044 0x0 0x1c>;
>>>>> ...
>>>>> };
>>>>>
>>>>> What about option 2 (tcsr whole block + tcsr_mutex  + tcsrcc):
>>>>>
>>>>> tcsr: syscon@1f40000 {
>>>>> 	compatible = "qcom,tcsr-kaanapali", "syscon";
>>>>> 	reg = <0x0 0x1f40000 0x0 0xC0000>; //align with the whole hardware
>>>>> block design.
>>>>> };
>>>>>
>>>>> tcsr_mutex: hwlock@1f40000 {
>>>>> 	compatible = "qcom,tcsr-mutex";
>>>>> 	reg = <0x0 0x01f40000 0x0 0x20000>;
>>>>> 	#hwlock-cells = <1>;
>>>>> };
>>>>>
>>>>> tcsrcc: clock-controller@1fd5044 {
>>>>> 	compatible = "qcom,kaanapali-tcsr", "syscon";
>>>
>>> Same here, don't need to have "syscon" here.
>>>
>>>>> 	reg = <0x0 0x01fd5044 0x0 0x1c>;
>>>>> ...
>>>>> };
>>>>
>>>> Is there anything wrong with what we have done for x1e80100?
>>>> ______________________
>>>> |             |       |
>>>> | TCSR_MUTEX  | mutex |
>>>> |_____________|_______|
>>>> |	      |       |
>>>> | RANDOM_REGS |       |
>>>> |_____________|       |
>>>> |	      |       |
>>>> | TCSR_CLKS   | tcsr  |
>>>> |_____________|       |
>>>> |	      |       |
>>>> | RANDOM_REGS |       |
>>>> |_____________|_______|
>>>>
>>>
>>> Second you! We can firstly have a option selected for kaanapali, and
>>> then other platform can be followed or fixed afterwards.
>>>
>>> Here suggest to have option 2 which is remove "syscon" from tcsr clocks,
>>> and only add the whole "syscon" to "tcsr" whole block.
>>>
>>
>> I think you misunderstood Konrad, or perhaps I misunderstand you.
> 
> Maybe let Konrad help to explain more here. I thought the chart below is
> very clearly indicate the tcsr_clks is only part of the tcsr block.
> 
>>
>> This is what we have for Hamoa:
>>
>> tcsr_mutex: hwlock@1f40000 {
>>         compatible = "qcom,tcsr-mutex";
>>         reg = <0 0x01f40000 0 0x20000>;
>>         #hwlock-cells = <1>;
>> };
>>
>> tcsr: clock-controller@1fc0000 {
> 
> 
> It is not a clock-controller start from 0x1fc0000.
> 
>>         compatible = "qcom,x1e80100-tcsr", "syscon";
>>         reg = <0 0x01fc0000 0 0x30000>;
> 
> This is what we have a discussion initialized here:
> "qcom,<platform>-tcsr" is only a tcsr clock controller binder, reference
> from [1].
> "qcom,tcsr-<platform>" is a common tcsr block. reference current binding
> patch.
> 
> For below hardware block information, is it really a recommendation to
> combine the tscr block with tcsr clock controller all together?
> ______________________
> |             |       |
> | TCSR_MUTEX  | mutex |
> |_____________|_______|
> |	      |       |
> | RANDOM_REGS |       |
> |_____________|       |
> |	      |       |
> | TCSR_CLKS   | tcsr  |
> |_____________|       |
> |	      |       |
> | RANDOM_REGS |       |
> |_____________|_______|
> 
> [1]https://lore.kernel.org/all/20251030-gcc_kaanapali-v2-v2-2-a774a587af6f@oss.qualcomm.com/
> 
> 
>>         clocks = <&rpmhcc RPMH_CXO_CLK>;
>>         #clock-cells = <1>;
>>         #reset-cells = <1>;
>> };
>>
>> This is exactly what I suggested above and Konrad is asking you why
>> this doesn't work for Kaanapali. The addresses are even the same, what
>> is the problem?
> 
> The problem is the current patchset document a separate tcsr block as a
> mfd. While the suggestion here is to use the tcsr clock controller
> binding to document the whole tcsr block which is not belonged to tcsr
> clock controller.

Neither Bjorn nor I see an issue with this. Clock controllers are usually
not just clock controllers anyway. For example, all of our XX_CC blocks
also include resets, power-domains and various tunables which are often
not used by Linux

Konrad

