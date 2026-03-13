Return-Path: <devicetree+bounces-275157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIgPMwf5s2nYdgAAu9opvQ
	(envelope-from <devicetree+bounces-275157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:46:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 761452826C7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16E643077238
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 406EC377EC4;
	Fri, 13 Mar 2026 11:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ottyQ+4t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ORC3YwAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613D779CD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773402369; cv=none; b=MTktMdECLMLb0M+WX2cSnuGBIErXHu2ErTggESbi7o2vJD22xd6xQ5E5p+wzUIWft5sQsltuJv65oqrZ+dvok31y3X/n6IFaJL4HWwTUIdd/esl7/XAJuBnynVVviZPo3YpWu7wrox52uaMPlutGxpmYSXvyuI+e3xv1jSlrr+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773402369; c=relaxed/simple;
	bh=p9gRUw/1sa+IWFsrR/fQYGevFbp+SQEbBTw0TZ645PA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GuREkhTC6gYmqky26rbFUs4S64Wvb5JTJAq1vBK6MPMwp6PKnNXRrmc7DdUGur39wkBnBAbYUPtis5dP6eaur9X5az03zs6gCmJwHxV25vmZxlDEOfYGDcPSkaZffe4lYew3tsM3rjcdl5wmA993x1GqDvGEN/eRGK94FXv/Vxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ottyQ+4t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ORC3YwAP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA83vw1749335
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:46:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EQ6rmuUSOwm1bx/rwcwQuU4u+z1BgbLoQv3BSEX4INM=; b=ottyQ+4tYu5wB680
	A79unT/3TpojUdSQQx0TmsybiGOQF0u+hXII1YgqqR4W4gYA648qRsjgK8QTbyAD
	YWi4UgXmcwudls01G7GZ1Gk3yvI6SPd21vOF+obIfujNXK4AfpXug8M98uDzS75T
	AgNfdRCnDrTRCVu2nGj1y5UL+ZDIwc7ipsAMLucDnHgLE4IqZEX1RAxmfUBRYeq3
	aFmHT8G7T48s102xoNZn6QAkGwjysnky1PannEqIuDYBuxswdXhLzb6PNP9iSu8C
	bjABis1E1XA6xqIlfFPH2d9cZMtGo7TBVgQ8GsTVxpMO3D0KPyYytSwB+zXQoqed
	xNepFQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6g97c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:46:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aecaae9506so10851875ad.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 04:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773402366; x=1774007166; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EQ6rmuUSOwm1bx/rwcwQuU4u+z1BgbLoQv3BSEX4INM=;
        b=ORC3YwAPGkmUp3oAt8KixazmJqFOEmCmPgkafFdRCNeONChCq/UQoafYZEhJ8lp4uR
         a49/hjeBW0weThTL898IunPKmXw/X5GVnuy/ABmhj4E9bEnErfTIQuOVHdxZzXMADtzq
         DOnPINhFqLugBdmD/kvQUnfShp13qLgmc8QqnDVIJUxUobWGzkqwURjWS0oTibVN1MLR
         8y7VjTyv3qAEdV5pGU9/0AcFM3DyXIfnTjp0Ymvb0dp2aElD+KlUb1TuW4GJpc3g50i+
         snlLIZmADIW9CCDAcn7jOmOnjRc0OHqC6j5ripaDtA79H+pEoL24ox7B9MexYroGUVQa
         09yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773402366; x=1774007166;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EQ6rmuUSOwm1bx/rwcwQuU4u+z1BgbLoQv3BSEX4INM=;
        b=Wpkykmd2pq2kcVQoS9u31G+q3FkwHd5fe2zUToFtVU32xTR1plxU1Jh01b6Ry9L4ge
         +rV+L/AbWOyk3sgd8musxQVdSCewBVWmHsNvpbvylhTVLqgX7RWbcc+woY4eq6RG00gh
         CBLFcFave+ckiRzd7NADHJIrsmU6z7A88albNR7Ke+l0YrYA+jSbafyeSjbzITh4ObxS
         J3WY9vbrzuUjpeNEJLOsexPupR7xJwxFMzmRmTBDw3OsjQlgScJQHcpjWLN5eOO27Fbp
         l/kz5zC0y0cq4pry3DOU0UzeIPOz4EpvG2df2MOusE/dP03iMIL8S8q7UOe7cOlzPI2S
         EWfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWDwwnqMFMDPfBJVj5WIj8ZsL2hOZdRKF1fKoNJspIlwjyVJ/TRN3+ohglhh8U01skvqPZqgBYoGGI@vger.kernel.org
X-Gm-Message-State: AOJu0YwpRUe9dX2b8Kx8/R03d8fZklC+sh62fKak+8f0Ji+AzaW897QW
	YIeU9l5/IyTIsw7rtsBtrFYWD0HW+Mvyz99g67VMvNcPH+1iCTNE8RdbL2ir2BoqVrirPk3ppob
	vTBjTGFj4rjhZC6z0Yc8182HXXR+bSXIjYhTtCryHURhiR3vYVTd7xBGOfdsFvSGB
X-Gm-Gg: ATEYQzx9yqN5L5e+R/uDw54QXVHwhSlhjJUhSYP+l6PzspcTa1jdOqtTZGSWyy9T476
	pX/Qyyah5jbEe1bzEssIdSmIwmqHWECpHEP6YvCrpp6idN491pr34AoUi+0iUJIA6m4FOSfx7mC
	ePHucFL1+tRxlN9DBAvOLj/ElJIRITfXXFMjZTAxvda8IuOWUSo6gAzTVzd9X0V0Vz9PcEGcP6M
	wrREENyLIBhesFLJqLe/JFRuBKa4FQ69ZUs1ZLPnWft1YDQavjMrNwFPiIxppHznUFlcMP5aXUV
	rtkWa4isGwE4BQmyG8dWq1jeN14mIh6OC9vuMoopPs7lQ2VAeGJsGHG++ELGz0vXPa1QmJwrm1g
	sJOrEFeXLhhKrdApjaejzWjV6x4H2FRlPvHVeaEb6vI2xWhO35rc=
X-Received: by 2002:a17:902:f552:b0:2ae:54e3:9299 with SMTP id d9443c01a7336-2aeba51229cmr56438835ad.21.1773402365550;
        Fri, 13 Mar 2026 04:46:05 -0700 (PDT)
X-Received: by 2002:a17:902:f552:b0:2ae:54e3:9299 with SMTP id d9443c01a7336-2aeba51229cmr56438565ad.21.1773402364893;
        Fri, 13 Mar 2026 04:46:04 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece83b35fsm23082215ad.80.2026.03.13.04.45.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 04:46:04 -0700 (PDT)
Message-ID: <fc3d1ef4-1a0f-41d5-a742-81305ee7f521@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 17:15:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/11] dt-bindings: crypto: qcom,ice: Allow
 power-domain and iface clk
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-1-b9c2a5471d9e@oss.qualcomm.com>
 <2ac2efad-3533-490e-bb42-f21c4e950277@kernel.org>
 <a2d6c630-e4df-4cdf-8b10-64d87d24bf8f@oss.qualcomm.com>
 <b2d852c4-9f52-4ad4-a916-ced19c599938@kernel.org>
 <972bd9c8-4671-4151-a3a9-d7eccdf83913@kernel.org>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <972bd9c8-4671-4151-a3a9-d7eccdf83913@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5MiBTYWx0ZWRfXxLFHYrS7kIyO
 tZJNJWsdD0JEMEELKBJTwH4EpxgzoYzxkOxVpxpK3Mr4jRLYwYLF9oXMXXfdgCKwloCzssRkS9H
 KinZTZTpNEmTNd7iIQ61KKMRRkCLhS/FPK2gaLhiHnWa6biQtJyYwZ1Y5He9RoP9xfbv9LiRm9U
 mQb6BKYVGY0wBXZGIF9vn7tPodDDPFpPzSbDNvcOSrTa/LLxDB6cGKfgJ5rcQ/OhphDPbWzbWcc
 mJSlrW9gJ/WRWyynqlBd/3I+sQrtHTjHB4M75WPQbM4Fgz7OBhoiBOSKjsrEUViSLfWdocjTxeF
 lJ8B/NZJOAPmDlM8xDv96ppsKHZhfZ3SOkJ0uqxqZHILaFblDax3pWnAHejiXvtZ4sUIwSBit81
 L1hgKHDM3b2jwMyrbiMMZScorosACgxqJUrOPPJiLq5qzglLBKuEySStkBGwr+yvcMCAKkXQd5x
 ZsnqjADQJDf8mYaKGHA==
X-Proofpoint-GUID: YzaPpr9QDarRdK-oUQuXc-iPXxyeQBpZ
X-Proofpoint-ORIG-GUID: YzaPpr9QDarRdK-oUQuXc-iPXxyeQBpZ
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b3f8fe cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=dbIX2S3wHq3ruR6a9lMA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130092
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275157-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,gondor.apana.org.au,davemloft.net,oss.qualcomm.com,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 761452826C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On 3/11/2026 11:58 PM, Krzysztof Kozlowski wrote:
> On 11/03/2026 19:25, Krzysztof Kozlowski wrote:
>> On 11/03/2026 10:37, Harshal Dev wrote:
>>>
>>>
>>> On 3/11/2026 1:55 AM, Krzysztof Kozlowski wrote:
>>>> On 10/03/2026 09:06, Harshal Dev wrote:
>>>>> Update the inline-crypto engine DT binding to allow specifying up to two
>>>>> clocks along with their names and associated power-domain. When the
>>>>> 'clk_ignore_unused' flag is not passed on the kernel command line
>>>>> occasional unclocked ICE hardware register access are observed during ICE
>>>>> driver probe based on the relative timing between the probe and the kernel
>>>>> disabling the unused clocks. On the other hand, when the 'pd_ignore_unused'
>>>>> flag is not passed on the command line, clock 'stuck' issues are
>>>>> observed if the power-domain required by ICE hardware is unused and thus
>>>>> disabled before ICE probe. To avoid these scenarios, the 'iface' clock and
>>>>> the associated power-domain should be specified in the ICE device tree node
>>>>> and the 'iface' clock should be voted on by the ICE driver during probe.
>>>>>
>>>>> Fixes: f6ff91a47ac57 ("dt-bindings: crypto: Add Qualcomm Inline Crypto Engine")
>>>>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>>>>> ---
>>>>>  .../bindings/crypto/qcom,inline-crypto-engine.yaml       | 16 +++++++++++++++-
>>>>>  1 file changed, 15 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>>>>> index c3408dcf5d20..d9a0a8adf645 100644
>>>>> --- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>>>>> +++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
>>>>> @@ -28,6 +28,16 @@ properties:
>>>>>      maxItems: 1
>>>>>  
>>>>>    clocks:
>>>>> +    minItems: 1
>>>>> +    maxItems: 2
>>>>> +
>>>>> +  clock-names:
>>>>> +    minItems: 1
>>>>> +    items:
>>>>> +      - const: ice_core_clk
>>>>
>>>> core
>>>
>>> Ack. I'll introduce a check for this specific name here as well:
>>> https://elixir.bootlin.com/linux/v7.0-rc3/source/drivers/soc/qcom/ice.c#L582
>>>
>>>>
>>>>> +      - const: iface_clk
>>>>
>>>> iface or bus
>>>
>>> Ack, will call it 'iface'.
>>>
>>>>
>>>> I don't understand why this is flexible and commit msg does not explain
>>>> that. Devices do not have one and two clocks at the same time. You miss
>>>> proper constraints.
>>>>
>>>
>>> I agree, it might confuse someone reading the commit message the first time.
>>> I'll re-write the commit message to make it explicit that even though these
>>> two properties are 'required', for the time being we are introducing 'iface'
>>> clk and 'power-domain' as an optional property to maintain bisectability,
>>> and that the properties would be made 'required' in a subsequent commit once
>>> the DTS changes which are part of this patch series have reached the top tree.
>>>
>>> Let me know if any concerns with this kind of commit message.
>>
>> So you are adding it for backwards compatibility? It's fine then,
>> although I had impression you are fixing something which is not working
>> correctly. New devices will need to constrain this.
> 

Yes, this is for backward compatibility.

> Except new devices, like Eliza and Milos. And then this should go to
> current fixes.

I'm not sure if I understand correctly, do you mean to say that except for Eliza
and Milos, new devices need to change their DT binding to 'required' with
corresponding DTS changes. And then, the patch updating the DT binding also needs
to be back-ported?

I'm assuming you're leaving out Eliza and Milos because they aren't supported
on the stable branches yet?

Apologies in advance if you meant something else and I have completely misunderstood
your comment.

Regards,
Harshal

> 
> Best regards,
> Krzysztof


