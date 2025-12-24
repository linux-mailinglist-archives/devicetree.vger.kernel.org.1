Return-Path: <devicetree+bounces-249347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC91BCDB3B3
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 04:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AD0B301F26B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC9F2FDC2C;
	Wed, 24 Dec 2025 03:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="go9K74CX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RoA3E5nu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2F22E06D2
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766546216; cv=none; b=knxNMoetFWTDStZhq68wkI0YtcRXlA4V0w/i1lOInb/kYJ+A4HevTxv+POmr0eA83ETwLWJG2S6ivzXNBSTJcSwUE3AZGd6PsgxTKy5AGfK787DgDKkEqSkH6m95xMBA2mQoMCQImxpshRd64WlBgkhMe0NdjKyJ39CXuCJz3Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766546216; c=relaxed/simple;
	bh=jDy18Bl8S7lV1ZpdQ7ZoPgkwfGh4GA3WGjNchgjieio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G/KMuAXxmWucYFhhXqLSac3qMXILdv9qwoH3yGw7ut+5M1vX2qLBFQnLG7ZWOFYlZ9Sqe3NwOIrkJbBYsE2uCKZQnWN/Gm8hV/bfYaqjSvz/1K+q4C4+pB1QHWMag/GLzuky/qLj5Bn1TO/GqmLwUzjEiqujpswh+rx3Ao75aNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=go9K74CX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RoA3E5nu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNMrYOE1850684
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:16:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Nk0WsZK8CkSWt1r4TFyPVt2eoNtbZ1f8MIJx7t15O4=; b=go9K74CXkJnh9R6C
	XTWY3Seqx6ORTystgebgOMWuMSUaktgVr/n67GGKrlBaZQ0Qo+ItWzBQK3dfY7I4
	KdDH6twL3+3uk/lykPkcSSSfGAcOsZiby+BO6/aCHFWIB++NWOUFb2u9I9EUt3zs
	KfV+ssT9UMTOFBzg0Boz3zxHdKQd2Ih8fx/DQe1mYGGA3biykXqG0vtTtISYWM5Z
	aEkQfHXF/v+ui6w/yIFwdnPYOtRbncxJsF1RNJQjx2N2DqXM/9lTrWFd66D+z9rN
	9Cn8o4pLwIqJ9RyMsHHYHoHAI/4/xOTs2dzOJNy8+6AqnO//hqdoNC1uKF2GUMBf
	OAa4zA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9ct7q8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:16:48 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso5451639b3a.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766546207; x=1767151007; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Nk0WsZK8CkSWt1r4TFyPVt2eoNtbZ1f8MIJx7t15O4=;
        b=RoA3E5nu9L0CmBa1M0223FOOM/8+guDPDod/+N9VQMHiXNOPGuD4W7H7LRqryABIts
         oNf0h2HIbZGrCGPTYk8O7vEk8mj4ZijcV/kNwnzVfnCYXlWOv5ZBFF0RU1SEvaaA7BXa
         u5/zl6Ao0MPk+FeptIBjZXtP5lD81TAdTfVFBXSVLqEIZQZBa1W8SIdmKyaCHb3zlyCp
         rf6whEg8bTq/arOoaEiMN60aINpaUfbft28l8hD1hyTiq8RKJ7fzQi3/l9cYeh5F+19J
         5084cdokUV9hPdg+lJkR0kJoIfufSlWwlCMyY3kqK4hWMlaFvHoWu43NcDzKwybgWosf
         PcyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766546207; x=1767151007;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Nk0WsZK8CkSWt1r4TFyPVt2eoNtbZ1f8MIJx7t15O4=;
        b=Pnbr1EcsuMfhgLVFeAhMSOyYnWZaK4rz0+rg01ZOk8Oy6V9vXey//L8wIynpkhS2QW
         3gtVxpRoXp9VTLWc9ksbIl3JM114GQLhnszUMk+N6dvRQw3+LkBx5bhrzsHL8ggF+AWY
         Gb3xLAMwIsM3mpCXsHLd1oJS9jubzQIYSsfoluIULYLQa6aOAm5Tn+vJMeXM6iT9ZIF+
         fUN8FctQhPaCaIsNQFPsmi3RO839WKdBCl5cbSuwQ6MhDxPyQeX7bYx7/5Q0VnFumyxM
         LGZJHjJ79TXxhOmXEhbg7Xn7TryejJaxmgYmMDupLvExR1czBXqY15kDct0u+K9UduJa
         EPpw==
X-Forwarded-Encrypted: i=1; AJvYcCWf2hbzEyUvTuYJd8ReOAKCumKIuhH+GpaSgAeeDf+qb0rZhSsDXPYzHZAhG8koODWL+FZNr8nuBouy@vger.kernel.org
X-Gm-Message-State: AOJu0YxeLjFhOeOAO5+EECp66NT+23NPZKnnDRHzxBOVXWy6LaUa/etm
	tqRUoAAohdFDBdhLGAQ5A0zVUJQkdglq0N4OlFD+azbAjy0NCPp0gC0/ynQOUn5SLcyzrgbDtAC
	FWiVAOnw4hk2NBWA9tgx4SSDNTrQztY2b0Lw8FNF+K02JhgXRBRfPpsd/3s7fy6Yr
X-Gm-Gg: AY/fxX7udcn+OtQrkMSEnfFta4nG7C0LMMZ0yD3B6QvvvTgMzzAm+lFZhiXcebB09vO
	PoQ1WpUz0nLKDBCnLBCg7gdu4xe0z0oSasSAp3BtHWXAIaetCNGf/7U1Mv66Q8oHio9ctwfm0PB
	+YCuTmlN24hlA3TxkF6TFRd+vpasFB2aMG8/ly1hOkPiwDPQ0SDrv9hlg2xhjBphcGcbLPax4Vd
	Sb6Pq1zS7UKYU5u3Msv5DWz/+21nSFnsLcjM/UM8a/wXL0kNi2OfgHakRABFBkCdS+dSIXX9uIn
	U8DywO/Ivxq2VJ7oBp6ZhWSA2h0ktdiYlnaxhlns5AtDGDlroovn9oFDXZ/7h7x9WWsXM3gHkUK
	6Fek8R7DLsqYQLuRaAgKAf/QOyJoxO1PpVPUyldbSXr5fzE/iVubiN0xcpO0wBGOs20oz5NdrQj
	Wr8yP5
X-Received: by 2002:aa7:868f:0:b0:7f0:61d:d092 with SMTP id d2e1a72fcca58-7fe0d7a28a8mr15002386b3a.21.1766546207295;
        Tue, 23 Dec 2025 19:16:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRektK2ratYvVnkQdAMzu6czAfpp3g6ScKADB4adV5uIh/oLuTQWgDuu/FCxCDHzGN/eSLgw==
X-Received: by 2002:aa7:868f:0:b0:7f0:61d:d092 with SMTP id d2e1a72fcca58-7fe0d7a28a8mr15002373b3a.21.1766546206785;
        Tue, 23 Dec 2025 19:16:46 -0800 (PST)
Received: from [10.133.33.224] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7a84368dsm15288617b3a.2.2025.12.23.19.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 19:16:46 -0800 (PST)
Message-ID: <ae532ff4-1a96-4dc1-9fa0-81305624c9c9@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 11:16:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] dt-bindings: remoteproc: qcom,pas: Document pas
 for SoCCP on Kaanapali and Glymur platforms
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
 <20251223-knp-remoteproc-v3-3-5b09885c55a5@oss.qualcomm.com>
 <20251223-furry-mighty-agouti-a222f7@quoll>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20251223-furry-mighty-agouti-a222f7@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mzgTBx8C1f8iU1Ag9XbxKuFIfCvBhIIZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAyNCBTYWx0ZWRfXwWq8aIL8SAa4
 5wjrXTUPyMCW4Jiy/Bpl95L/joCHFbXk4ROnPTchhNw6a6xbBTrHhdbAQ+7uqATTdfOxRvLEmUf
 5zX6JUTcuwSVzDODfrO++vnAUkmdiHBkM6rdGRlqYuAVC24PHnsgVQEqvI7u5aC3Pw/R7t6a0Hi
 dYZltxLAkqgTiLnDT7rzatlKlmhDAldNyFepwCo0DBr7LwsCECDzVfUx7aXdDptzLoJJvdEz/lV
 3DxsXjRqud23dhd7QVvY4eubbAYSscFUBq6IZOdTvhJXQyPV9cmJcTEYYyvcXFMbbX+hHS9tFCA
 TQBnk8NsZIyQB15ly0CwsDgfikebTuNZScaF3FUVcRlHAGeIZ0X3uAF3/ieiNpJhYC8CfdGlehZ
 WAOlja/ILWu6wFkjn+GUMhOBO4tJu3s0QqnRT/+dzo1woi09JJh6vmogweJSfu87NbSwjk5Zdsc
 7cApp4X9LH247xxB3JA==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694b5b20 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=dRLHVvS3EW7BnV4jGykA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: mzgTBx8C1f8iU1Ag9XbxKuFIfCvBhIIZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240024



On 12/23/2025 9:29 PM, Krzysztof Kozlowski wrote:
> On Tue, Dec 23, 2025 at 01:13:49AM -0800, Jingyi Wang wrote:
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> index 63a82e7a8bf8..149e993282bb 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> @@ -33,16 +33,22 @@ properties:
>>        - description: Handover interrupt
>>        - description: Stop acknowledge interrupt
>>        - description: Shutdown acknowledge interrupt
>> +      - description: Pong interrupt
>> +      - description: Wake acknowledge interrupt
>>  
>>    interrupt-names:
>>      minItems: 5
>> +    maxItems: 7
>>      items:
>> -      - const: wdog
>> -      - const: fatal
>> -      - const: ready
>> -      - const: handover
>> -      - const: stop-ack
>> -      - const: shutdown-ack
>> +      enum:
> 
> No, no. Stop doing random changes. NAK
> 
> Now you remove strict order (see writing bindings) and claim every
> device like SM8550 ADSP PAS has any order.
> 
> And it is now de-synced with interrupts. Read writing bindings - this is
> clearly described there at line 90!
> 
> You can only grow existing list.
> 
> 
> 

the interrupt for soccp is defined as 
"wdog","fatal","ready","handover","stop-ack","pong","wake-ack"
while other pas could be:
"wdog","fatal","ready","handover","stop-ack","shutdown-ack"

so grow existing list is not work for this,

In the v1, got your comments to adjust pas-common.yaml for the interrupt:
https://lore.kernel.org/all/861b6ede-f168-44e6-85bd-10cf04dbcec7@kernel.org/

and in v2, interrupt are moved as part to the "allOf" with if-else and
also got NAK:
https://lore.kernel.org/all/20251030-venomous-apricot-falcon-b3fd64@kuoka/

Could you please share a example for us to understand how to maintain it in
pas-common.yaml, not define if-else and has strict order at the same time?
That will be very helpful.

Thanks,
Jingyi


>> +        - wdog
>> +        - fatal
>> +        - ready
>> +        - handover
>> +        - stop-ack
>> +        - shutdown-ack
>> +        - pong
>> +        - wake-ack
>>  
>>    power-domains:
>>      minItems: 1
>> @@ -55,13 +61,21 @@ properties:
>>    qcom,smem-states:
>>      $ref: /schemas/types.yaml#/definitions/phandle-array
>>      description: States used by the AP to signal the Hexagon core
>> +    minItems: 1
>>      items:
>> -      - description: Stop the modem
>> +      - description: Stop the remoteproc
>> +      - description: Wake up the remoteproc
>> +      - description: Make the remoteproc sleep
>> +      - description: Ping the remoteproc
> 
> So every device like SM8550 PAS has now four smem states... without any
> explanation. Read writing bindings - what does it say?
>

This change is similar to current interrupt-names property define 6 interrupts
but has minItems: 5

-  interrupt-names:
-    minItems: 5
-    items:
-      - const: wdog
-      - const: fatal
-      - const: ready
-      - const: handover
-      - const: stop-ack
-      - const: shutdown-ack


I think this should be "grow existing list" you mentioned above?

Thanks,
Jingyi
 
> "... and define constraints specific to the device."
> 
> "DO define properties in terms of constraints. How many entries? What are
>  possible values? What is the order? All these constraints represent the ABI
>   as well."
> 
> It is your homework to read the docs. Not mine.
> 
> If you want to change common list you must define strict constraints for
> EVERY user.
> 
> Best regards,
> Krzysztof
> 


