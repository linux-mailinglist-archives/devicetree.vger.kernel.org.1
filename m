Return-Path: <devicetree+bounces-238049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FD6C56C12
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A58F63A86AA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D8F29BDB0;
	Thu, 13 Nov 2025 10:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WFzpN/8L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XddouOvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D643AC3B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763028225; cv=none; b=U6dDIzHcOCbNngnFsF6JwoSGxE+7yBmswbZXPjLaUHMnsL19WIx9fv8z3UgBEmvcu4vKzpH4HJ12Q81srIAoeZ82wdt69l+a1oOmFKQnLOiM0Qxb+LGTI5seAOxwvoYVbz329WdsZkisPKzPXzfJlp/2x2+sZT3oyUynSSol+qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763028225; c=relaxed/simple;
	bh=dEcw+0I+vO0UuFiqr7VwvuITnF9Yg8q9eC8Dr76mNKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LhUVdErx5w9BzBnCwzwGwfKcTJ5aJYq/A8hyCGUw681cFUxW5bf9IXE/MbU8DW5CeWqjSmqRXj9FtBkSVJ9V2aC4ZsO/I+jqzm+cNg2tv4rIaJj1nIIy929wQKempMTy8kf3t8hzaRiQYRh/qLg50uVuuyRpxo5kOBi5ZBLK1Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WFzpN/8L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XddouOvY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD6rV323875166
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:03:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YxTyZ9hwpv7rwMTUN8iaBGWZWPpXDh3gYiJvFL3xir0=; b=WFzpN/8LhLcwDl9j
	28swf2xP6nkuNPCM1E7z107LhxViqfzcfxjvwCWkFU8J3YQaBBDL8zKaIO3tqH+j
	mN4mImA3u2NovRo6HY91IDlbjKgSPtlSeufAgD5KokoHw7C0WfskNsLBp7TPk5Rc
	n+s2+BVpEflE2M2S2DbP98pAzWNlAYIZgDVGGliiKhaOymDfYFcT7n1C38Oa1Vu0
	0V5o+l1NNyr1wwedaOyPGkBk9uJCn8DjZBm4zmVCeeKCSBAlkFximWf75DT4zo8d
	bNbRkRiVN4GPeVQk8hvdv0sgr8H+bAC13TNAN0uzH1x9CyAmj2rszNW0uW/EEBkB
	th+sAQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adaeurked-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:03:42 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3436cb61f20so163345a91.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763028222; x=1763633022; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YxTyZ9hwpv7rwMTUN8iaBGWZWPpXDh3gYiJvFL3xir0=;
        b=XddouOvYTsif8KnCxgBUKOcwID/vnRQtd0Fm5oVFjaeOvxDwKWyKWdRzjyYvbsIuLK
         TIwcIThvjOUtWW+tqUgE5VMKZRro2AAILioUKCWyq+qnBlfcO+3qK2C5l2EdBvhv2WBF
         jaP0iYkAWDg/QrjZut0q2KFJhc1jLJslpAJsVobRwqe1uRWBOwPL/bAKj9fvT0nA3sqG
         8W6uBaKJ0kV83JGmg0GlweHkkOuDUZmYQeZjdhtiZtplz/Z07CaIfanQ3KcvixSEIV2v
         UHUHamY0g4L0iNZ/xVdLeyY49ubEMjx8gmYAmvUh5yqHMX5B54JC6WM1zZd4m+DMatnp
         iJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763028222; x=1763633022;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YxTyZ9hwpv7rwMTUN8iaBGWZWPpXDh3gYiJvFL3xir0=;
        b=XfNf3cIY6w62+yWuz8U+kAwaYIkVcMFvnAmLszyyeD+zuDMNO9kqqDa1sjgjKqJLRp
         ew21vg9iPc/4hTA/xJcQVHm7IiXM2xqxH2uEu4gaemBm+TS/TrYe6Z2Nkh3AkKkyerGI
         AXbKSUcysb/TjcjnzBLzORy/441UGuP1gMcAIwrt0gUCLwPO8AG0u4kmb+ZQWk22adus
         /h7516SIWIeKOAQkA42RqDM2lDJJBMtvNHLbu3AqmMd8AQRJtqtYignJoqodrcXhTjJv
         ayZ+XqfXaqU4J8ojvSX2/whNpK5abP7QP19eTSQntOCxdjpqr65CyxpQKypjtaHFslrT
         YBxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVURLv5uwzG8nifGiYJcw5W7qobEtSMFz0jEujg4Nf8oYJVo86UwMUoQEKFgVp/Y/Nw/7Xcqhp7iOxT@vger.kernel.org
X-Gm-Message-State: AOJu0YxdUVkodpgKN6blRjX7tnK05OyiowigNIpvCeUU1hEaB97cC2G4
	zPUDY0FnW/XsWB1d2CLXzEhPbJDo2I/HWSWgVw9HecyKo776aGsq+N03U5lhQ1vT63fC6MGnlcU
	WHanbZ6SxcdGSEc9P8W4k9abkAXTjcDHAzEoynmOTA4JnASw7aIPG3KHphziPrZDV
X-Gm-Gg: ASbGncvn61iejwSEgoqD7IbK7USOtiGglcG8nyx1r3FqtC3zRcuxyOx1YC/iNbaRTkd
	MxfZ1BK623/N0EIpcnnbmHBv41NIjvU51O49833ksBl5/IkcKsRA0LKfF78xR2nmwrzw6bhC3yQ
	LuxXQZXHBp1cOdxkoE//liRET6qtD9yWyy2sOLJI0uwq/sqIfluTaEeUCtHXV0EXgoJPDTc63Vr
	jQ4C3RXsUdRjnqVHCdt5Oocjx1qc/pwMfi8Af1gDuFSzzJpIX472ZGNLkaX/OJ7FAJHfDO2pu4w
	z0veeaozRAM7AO4lmO6rHk1aeUKJ+Ed/4XT8dLepGnOxzcR5IcFjfLVY77w5vsD14AYnU/bCmza
	FO/wqjUoSM/kFIwSROV/9xyJiHzaGsvqYnujGYjAu5FKQvfbWzmmTamAbxhQRzw7A
X-Received: by 2002:a17:90b:384d:b0:340:b8f2:24f6 with SMTP id 98e67ed59e1d1-343ec6297f4mr1335568a91.2.1763028221947;
        Thu, 13 Nov 2025 02:03:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGoZOPTOR/HrzqDudP3rHB4TKrpHRH2JnNFOwtNBjOkFoeqtBWNbmE3tFW5d75lbSNejA2kw==
X-Received: by 2002:a17:90b:384d:b0:340:b8f2:24f6 with SMTP id 98e67ed59e1d1-343ec6297f4mr1335531a91.2.1763028221226;
        Thu, 13 Nov 2025 02:03:41 -0800 (PST)
Received: from [10.133.33.55] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-343eac9864dsm1174018a91.3.2025.11.13.02.03.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 02:03:40 -0800 (PST)
Message-ID: <bf706156-1413-42cb-a463-803063c347fc@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 18:03:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: qcom,tcsr: Add compatible for Kaanapali
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Lee Jones <lee@kernel.org>,
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
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <br3fmilhh7fihv4atnf4olvy4w66z4p7sh4ypicuc3766ky6tb@pppfdynfhfz7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Bp26I-llAHkCfR4CRUGtPL1maE1xupnT
X-Proofpoint-GUID: Bp26I-llAHkCfR4CRUGtPL1maE1xupnT
X-Authority-Analysis: v=2.4 cv=JPI2csKb c=1 sm=1 tr=0 ts=6915acfe cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=UpH33N9-BHK6NiP4hkQA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA3MiBTYWx0ZWRfX+aqZCLL5c9FR
 gQjfpfxXJGmnSFoacbjJA9o1f+KxJMnkbMQ/Ile14DWKksk8jltbWxjb7dgbVQZBUrLuleKLALz
 6W4bqCUTXJRMsx9I8nHA7Z/QFuPXapUyf1B3nKEUUBOAPHoQz8+qYZvGYD2cSK03aK+7n5Lfnno
 JG+2JvIjxlz0qZGNy2fube1+JrMpkvAL/RyiNKIkCwNgFBd5uvioqlP7iY2WVIFTsmDaXK7vPIW
 dhlJQexCr+5hSv+9xC0RAFtyGLIfuTG7mj+oTUI8Qfn9qalKrWzLET98EjetG+8MEEXkl/d1ZWw
 JqZcjLs4kSIhnZrDr77nzNH8/cPURDaYNj5DvI59V7pgcs/TVmJTgIRRSDlRiKyUytbRytADOCb
 vd0LW5IG8vnFXV3NHxkSX/I62jGPpA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130072

On 11/12/2025 12:05 AM, Bjorn Andersson wrote:
> On Tue, Nov 11, 2025 at 08:27:17PM +0800, Aiqun(Maria) Yu wrote:
>> On 11/7/2025 12:24 AM, Konrad Dybcio wrote:
>>> On 11/6/25 11:16 AM, Aiqun(Maria) Yu wrote:
>>>> On 11/6/2025 5:06 AM, Bjorn Andersson wrote:
>>>>> On Tue, Nov 04, 2025 at 01:35:01PM +0800, Jingyi Wang wrote:
>>>>>>
>>>>>>
>>>>>> On 11/4/2025 12:02 PM, Bjorn Andersson wrote:
>>>>>>> On Tue, Nov 04, 2025 at 11:34:25AM +0800, Aiqun(Maria) Yu wrote:
>>>>>>>> On 9/25/2025 7:23 AM, Jingyi Wang wrote:
>>>>>>>>> Document the qcom,tcsr-kaanapali compatible, tcsr will provide various
>>>>>>>>> control and status functions for their peripherals.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>>>>> ---
>>>>>>>>>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
>>>>>>>>>  1 file changed, 1 insertion(+)
>>>>>>>>>
>>>>>>>>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>>>>>> index 14ae3f00ef7e..ae55b0a70766 100644
>>>>>>>>> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>>>>>> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>>>>>>>> @@ -48,6 +48,7 @@ properties:
>>>>>>>>>            - qcom,tcsr-ipq8064
>>>>>>>>>            - qcom,tcsr-ipq8074
>>>>>>>>>            - qcom,tcsr-ipq9574
>>>>>>>>> +          - qcom,tcsr-kaanapali
>>>>>>>>
>>>>>>>> It looks good to me. Glymur didn't have this functionality verified yet.
>>>>>>>
>>>>>>> You spelled Reviewed-by: Aiqun Yu <..> wrong.
>>>>>>>
>>>>>>>> Remind for review.
>>>>>>>
>>>>>>> No need for that, reviewers will review when they have time.
>>>>>>>
>>>>>>>>
>>>>>>
>>>>>> Hi Bjorn,
>>>>>>
>>>>>>>
>>>>>>> But that said, most modern additions to this binding follow the common
>>>>>>> format of qcom,<soc>-<block>.
>>>>>>>
>>>>>>> So I would prefer this to be qcom,kaanapali-tcsr.
>>>>>>>
>>>>>>> Regards,
>>>>>>> Bjorn
>>>>>>>
>>>>>>
>>>>>> qcom,tcsr-kaanapali is used to distinguish with binding for GCC:
>>>>>> https://lore.kernel.org/all/20251030-gcc_kaanapali-v2-v2-2-a774a587af6f@oss.qualcomm.com/
>>>>>>
>>>>>
>>>>> So, qcom,kaanapali-tcsr is the clock controller region of TCSR and
>>>>> qcom,tcsr-kaanapali is the non-clock controller region of TCSR?
>>>>>
>>>>> Sorry for not understanding that earlier, but this doesn't work for me.
>>>>>
>>>>> It's a bit of a lie that TCSR_MUTEX is a separate node in devicetree,
>>>>> but it's always an nice chunk of 256K in the beginning (or end in some
>>>>> cases?) of TCSR. But for the rest, there should be a single tcsr node in
>>>>> DeviceTree and that one node should be a syscon and a clock controller.
>>>>
>>>> I've been dive deeply on this tcsr block. And actually the tcsr clock
>>>> controller part is a very small trunk size(0x1c) of the tcsr block. And
>>>> this block have contain other multiple purposed sys registers. So maybe
>>>> we can have a more discussion on how to have device tree node describe
>>>> this situation? It is not straight forward that to have a non-tcsrcc
>>>> related area being described in tcsrcc.
>>>>
>>>> What about option 1 (tcsr_mutex + tcsr_dload_syscon + tcsrcc):>> tcsr_mutex: hwlock@1f40000 {
>>>> 	compatible = "qcom,tcsr-mutex";
>>>> 	reg = <0x0 0x01f40000 0x0 0x20000>;
>>>> 	#hwlock-cells = <1>;
>>>> };
>>>>
>>>> tcsr_dload: syscon@1fc0000 {
>>>> 	compatible = "qcom,tcsr-kaanapali", "syscon";
>>>> 	reg = <0x0 0x1fc0000 0x0 0x30000>;
>>>> };
>>>>
>>>> tcsrcc: clock-controller@1fd5044 {
>>>> 	compatible = "qcom,kaanapali-tcsr", "syscon";
>>
>> Remove "syscon" here. Not need for tcsrcc fallback to "syscon".
>>
>>>> 	reg = <0x0 0x01fd5044 0x0 0x1c>;
>>>> ...
>>>> };
>>>>
>>>> What about option 2 (tcsr whole block + tcsr_mutex  + tcsrcc):
>>>>
>>>> tcsr: syscon@1f40000 {
>>>> 	compatible = "qcom,tcsr-kaanapali", "syscon";
>>>> 	reg = <0x0 0x1f40000 0x0 0xC0000>; //align with the whole hardware
>>>> block design.
>>>> };
>>>>
>>>> tcsr_mutex: hwlock@1f40000 {
>>>> 	compatible = "qcom,tcsr-mutex";
>>>> 	reg = <0x0 0x01f40000 0x0 0x20000>;
>>>> 	#hwlock-cells = <1>;
>>>> };
>>>>
>>>> tcsrcc: clock-controller@1fd5044 {
>>>> 	compatible = "qcom,kaanapali-tcsr", "syscon";
>>
>> Same here, don't need to have "syscon" here.
>>
>>>> 	reg = <0x0 0x01fd5044 0x0 0x1c>;
>>>> ...
>>>> };
>>>
>>> Is there anything wrong with what we have done for x1e80100?
>>> ______________________
>>> |             |       |
>>> | TCSR_MUTEX  | mutex |
>>> |_____________|_______|
>>> |	      |       |
>>> | RANDOM_REGS |       |
>>> |_____________|       |
>>> |	      |       |
>>> | TCSR_CLKS   | tcsr  |
>>> |_____________|       |
>>> |	      |       |
>>> | RANDOM_REGS |       |
>>> |_____________|_______|
>>>
>>
>> Second you! We can firstly have a option selected for kaanapali, and
>> then other platform can be followed or fixed afterwards.
>>
>> Here suggest to have option 2 which is remove "syscon" from tcsr clocks,
>> and only add the whole "syscon" to "tcsr" whole block.
>>
> 
> I think you misunderstood Konrad, or perhaps I misunderstand you.

Maybe let Konrad help to explain more here. I thought the chart below is
very clearly indicate the tcsr_clks is only part of the tcsr block.

> 
> This is what we have for Hamoa:
> 
> tcsr_mutex: hwlock@1f40000 {
>         compatible = "qcom,tcsr-mutex";
>         reg = <0 0x01f40000 0 0x20000>;
>         #hwlock-cells = <1>;
> };
> 
> tcsr: clock-controller@1fc0000 {


It is not a clock-controller start from 0x1fc0000.

>         compatible = "qcom,x1e80100-tcsr", "syscon";
>         reg = <0 0x01fc0000 0 0x30000>;

This is what we have a discussion initialized here:
"qcom,<platform>-tcsr" is only a tcsr clock controller binder, reference
from [1].
"qcom,tcsr-<platform>" is a common tcsr block. reference current binding
patch.

For below hardware block information, is it really a recommendation to
combine the tscr block with tcsr clock controller all together?
______________________
|             |       |
| TCSR_MUTEX  | mutex |
|_____________|_______|
|	      |       |
| RANDOM_REGS |       |
|_____________|       |
|	      |       |
| TCSR_CLKS   | tcsr  |
|_____________|       |
|	      |       |
| RANDOM_REGS |       |
|_____________|_______|

[1]https://lore.kernel.org/all/20251030-gcc_kaanapali-v2-v2-2-a774a587af6f@oss.qualcomm.com/


>         clocks = <&rpmhcc RPMH_CXO_CLK>;
>         #clock-cells = <1>;
>         #reset-cells = <1>;
> };
> 
> This is exactly what I suggested above and Konrad is asking you why
> this doesn't work for Kaanapali. The addresses are even the same, what
> is the problem?

The problem is the current patchset document a separate tcsr block as a
mfd. While the suggestion here is to use the tcsr clock controller
binding to document the whole tcsr block which is not belonged to tcsr
clock controller.

> 
> Regards,
> Bjorn
> 
>>>
>>> 8750 was different because someone decided to stick the "TCSR clocks"
>>> into the TLMM address space, but it was a one-off
>>>
>>> Konrad
>>
>>
>> -- 
>> Thx and BRs,
>> Aiqun(Maria) Yu


-- 
Thx and BRs,
Aiqun(Maria) Yu

