Return-Path: <devicetree+bounces-226313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF793BD70C8
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E910A18A4684
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 02:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC21B303C8D;
	Tue, 14 Oct 2025 02:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j8gnlcHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314EB303A3F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760407960; cv=none; b=dE2n50BJwkXH0CAA385GaD2oRWXoR7hUWeZPWhKM8DtSstNK6rYFgRrZITjGsW1imBWu11yn4TB8nyG4XdAKtCadirMGe77zF/fU41SVdyBrr2xCD2lSkMbl44q50EeQtFyqRnFhRnxq88Ww2fgB8vJhulGGjMdLxyh1ySZKN5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760407960; c=relaxed/simple;
	bh=dZ0o8gmckY6rxJxNnA+9DhSm4fDov9EDAmj2Dlk3h1A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H42N1qKPvyNrDLEJfkYBvxjeYdfX4Qw9gQxMz7stYSILImzvyehsvjzHCZzxx1SRInEeNrIRfQl/hVhrmWLitrPHawXYm/8NwW1JaAa9HHApWWH/M6Z4vIhN10mAkOBclRE+4wt9GMfR5njoGVHwFUc9BMJ4kjzj7h4XqKMXPw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j8gnlcHi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDLN8003554
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:12:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D0lOk/NcTeNYZ+rZud7vj+3w2lY0WDQ73Jso4LKOB7M=; b=j8gnlcHizbYvJum8
	Kex6wTX9yqOUU4P+Ui/4433j9CRG4a6gkC7icUteLJaC6JVVMwJvBsnITlJfVtiW
	gLIP7kLjhB0jIStGrKWjTTXmy2y2ykjbMWCgiqi4wOAW7LXVsJmIZ3R1kPjYJqsK
	WdHfcbLjr63d9Hng602av2LvF5ILYikwbWPnsM6ZFYsWSOp1AfCyeNHu/IdvXBua
	pzonkVW8VPJd7p/QEZPTQKPKzG4B6J5D8aXPukEvyotlCZm0vPwCtMjl1IPn3CD1
	bFX4t2Cc/ioZjHrBlHSpaU5suoRP/B823OZlKL9s5Td7HqRxZZ8PnfNCWMu9s5pn
	fU7Xlw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0psdj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:12:38 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33428befd39so20668701a91.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 19:12:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760407957; x=1761012757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D0lOk/NcTeNYZ+rZud7vj+3w2lY0WDQ73Jso4LKOB7M=;
        b=NCgRbe3SIdjkGfGZkP93/cptOlGvYXL05aNXq5DbYpH8TDiFnzDOHneE3j7hWcKeHI
         7aC74AO3wUeJYra9qRVQ7ZlZ8D3UpMtvQ0p4DhCI2TE5nAs1rqkQ3MTrcab/FigWHhlV
         ANAFymtVUlxc3DF3WAzgzZ5o2hU8DbnGqt00+SDRHYOGLZOoRCu23kIcSV45c9ziFbGh
         4WjXKAF1oQhvFCMxzsraq6XJa1uZUYajIHs6Jx4gC8ku48OmffsczeBVqyik7YXjiRHi
         S2xFJJp7qN3EmD1XFPeYFkuQfHykXqBuStFAvvXBsszPL4sS4xq7xNq4FQKXuaTJGSd1
         bmLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsKs0zu3GCLI49u8v+c5EsTk2GYNG4Jv+kBvCGJD5rB40B/jkFR1/3Cu7o5OhRvZmCeHHL6cvhOE8D@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6yMsuBjCBGi6SQkKcPhUs3XIjGMRA9MTvx6DPJgW5FYkgWkgJ
	vlFxwlJUdLgSblcLJJYiM8mFqISAs3O/GXSgtxkaMYeTQRG1+OoU+VPFjtzmDb66EIcS7IzlTUB
	OAA385zWMXPszteNiOBTE4HVx75ZoRKJ0X2NMKKv9pdgVvxiHScxqENOZ98U3qRSQ
X-Gm-Gg: ASbGncv4uR+mokn68dBR8Ubigz6W+5ZdQdf8rP/69DK4JG4TUQ295kFfcg6TtQmul3P
	4QxKyP2UaCBw5pXz5dCOF1maW+AyBOtVxal8yg1YPyt0UCK3f/RpRSumaVNjPESkxI3VHDlwWB0
	pxhfyVSnM1rNRxOQkhLS3WAnl5fIGB7SeSuoAPtDoPuRteYJG5Xo2n/A8QoZRDZ1fN4cjydyDMZ
	bwzuR6+nNb9IR1SdpRYGl5928fRzT5WqeDsWOPh5JjT0Et0jX2JNUwD/oYm0uJZtm/mNjJ35Vei
	DFcy7TGyZbKl17doZB4U14es3We3z6ePIExaxM3LW+VNLg4S5Qtl0nX4FvLSjAmSt+hXur4Vg6t
	N8HxqpTHnjMNOc5i6l93evKiji+jMgxFvwWU=
X-Received: by 2002:a17:90b:3ec2:b0:332:3d8c:eca9 with SMTP id 98e67ed59e1d1-33b513a1e6cmr33075531a91.33.1760407957156;
        Mon, 13 Oct 2025 19:12:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE65yjJCx1wFZNMlx2LX749Bsa1eRsElAuiu1yH85h6pf7w3J7S6qmbL2DLJjNDglyATuJXRw==
X-Received: by 2002:a17:90b:3ec2:b0:332:3d8c:eca9 with SMTP id 98e67ed59e1d1-33b513a1e6cmr33075490a91.33.1760407956674;
        Mon, 13 Oct 2025 19:12:36 -0700 (PDT)
Received: from [10.133.33.138] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b52947843sm10647419a91.1.2025.10.13.19.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 19:12:36 -0700 (PDT)
Message-ID: <ecf617d5-7a53-4e61-9741-f8e2535ebf66@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 10:12:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
To: Krzysztof Kozlowski <k.kozlowski.k@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-2-611bf7be8329@oss.qualcomm.com>
 <CAJKOXPc57_0pJ2ZWf2cKSKAcQMc3S_mHKQxJDzWH7t=mgim3CA@mail.gmail.com>
 <5820a9a9-4474-4c4d-905c-0efd9442e5e1@oss.qualcomm.com>
 <o6dzhmlicwiezmxlb5uqitx7e3pjpyuhbjqfumivbdkru42hvn@r4ksfa6m5nd2>
 <540b1de6-c959-4911-925f-8163f5fa5147@oss.qualcomm.com>
 <fdfzoemfxdz2p622hvixpaznh2n22hweit2e43plfu2kdd6kad@reulvi4vs5v4>
 <cdc01b6d-370d-45dd-a3fd-9866d2a5f36d@gmail.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <cdc01b6d-370d-45dd-a3fd-9866d2a5f36d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX6xuQuLCqNOtJ
 qwC8J5ZADa09veiwEDIZQpA3MetqbtB+ZHcDciWQRKUKZkSI8s8v17kTsLcPcTVZMWxvTRn5f+n
 FpkmokBuT/5BHCNaaaVJTe6zckRzp0h+PXDLBUvGiyAE9YLl90Fm2mkKFFxJosFeh53ue042fw9
 FBiflLAGjwG68Fh450b4iOt5YTmmbItwzAFPSKuT8zrQFfaZKq1HKdLO1RzAPHmKxQmxdFGW6S1
 QuycAX2sJNKlr9kzQlzONw9IFj31GmS8eGYDgwYHdD3cbvMpQgqshoIbxe4ik/q50eTggBjgQ6I
 PXStohO11I+Mdc9nlV8F1mDoXMig3jBcz1L7ZqjazHP3UPtHKHyk9R5G3DvE2TtG5C+E7AS4IQp
 O4LvDPG0wC7SET3tFaeYBIrMw21fpA==
X-Proofpoint-GUID: x96Dc6UjXEXDYH7q5Ii9_B9Foc46ncU5
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68edb196 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Z4Cr7gmSjbT-dz-ffA8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: x96Dc6UjXEXDYH7q5Ii9_B9Foc46ncU5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/9/2025 6:29 PM, Krzysztof Kozlowski wrote:
> On 29/09/2025 19:03, Dmitry Baryshkov wrote:
>> On Mon, Sep 29, 2025 at 05:41:10PM +0800, Jingyi Wang wrote:
>>>
>>>
>>> On 9/29/2025 5:34 PM, Dmitry Baryshkov wrote:
>>>> On Mon, Sep 29, 2025 at 02:20:54PM +0800, Jingyi Wang wrote:
>>>>>
>>>>>
>>>>> On 9/25/2025 9:48 AM, Krzysztof Kozłowski wrote:
>>>>>> On Thu, 25 Sept 2025 at 08:37, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>>>>>>
>>>>>>> Add remote processor PAS loader for Kaanapali CDSP processor, compatible
>>>>>>> with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
>>>>>>> interrupt.
>>>>>>>
>>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>  .../bindings/remoteproc/qcom,sm8550-pas.yaml          | 19 +++++++++++++++++++
>>>>>>>  1 file changed, 19 insertions(+)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>>> index be9e2a0bc060..031fdf36a66c 100644
>>>>>>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>>> @@ -35,6 +35,9 @@ properties:
>>>>>>>        - items:
>>>>>>>            - const: qcom,sm8750-cdsp-pas
>>>>>>>            - const: qcom,sm8650-cdsp-pas
>>>>>>> +      - items:
>>>>>>> +          - const: qcom,kaanapali-cdsp-pas
>>>>>>> +          - const: qcom,sm8550-cdsp-pas
>>>>>>
>>>>>>
>>>>>> This time maybe without HTML:
>>>>>>
>>>>>> This looks wrong. This is not compatible with SM8550.
>>>>>
>>>>> Could you point out what is the difference from your perspecetive?
>>>>> it is the same as SM8550 except for there is one more interrupt,
>>>>> which is also described in this patch.
>>>>
>>>> I'd second Krzysztof here. Your description points out that it is _not_
>>>> compatible to SM8550.
>>>>
>>>
>>> Here is the binding for sm8750 cdsp. Fallback to sm8650 but describe the
>>> difference in interrupt:
>>> https://lore.kernel.org/all/20250221160036.159557-1-krzysztof.kozlowski@linaro.org/
>>
>> Interesting. Let's wait for Krzysztof's response then.
>>
> 
> 
> Because it is evolution of sm8750, so it did not go back to old design.
> from three generations ago. This is compatible with sm8750 or with sm8650.
> 
> 
> Best regards,
> Krzysztof

sure, will fix in next version.

Thanks,
Jingyi

