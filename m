Return-Path: <devicetree+bounces-237070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D91C4C6BA
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 09:37:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AB2B04EE8BB
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 08:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3112320CB8;
	Tue, 11 Nov 2025 08:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a+D8nEqF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cH4EDZrM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1446332145E
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762849807; cv=none; b=asK3RQoaQ4OaKKXKMEFGu2GHZeaIDqHIZb5In/1KM8vEuy+1lTvChV8XRB93qsiu70nTAJmain6/qX5RvBEYRsRP7VfHqAekZulGjEBrk44l279e/TWaQnFSshFs06oZV1MnVmWFkNWwSlyzh/uKr1a3bVobBXZdM4HRWjka154=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762849807; c=relaxed/simple;
	bh=IFjVXyWDgG00crKvCM2l2nnLUPzhXwIEDzrUmmqin44=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RwU5LeBCEyyQKj5YzJ0hZyfpws4AoJ6LoZ3NeDsrAwIKF+sArd9wUDRC/AEtzpHxj8dcFIocFCHWY56w1tqysath2jL+TGKYB6oILIug0cxi1UIsfewn3XeqtBxJO60tvIJFf/042E216NMoAIxZbNxw8ktq+Oc495Z6Z9rr6uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a+D8nEqF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cH4EDZrM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AB588a31229743
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:30:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NxkzJvIRec0YRU/t8Nf6/urFDe3bQa7PQHKJ01H3THU=; b=a+D8nEqFR0XCgf/F
	rAEeFaa/GGms5nRtDZn5aRhvFxsnXN0ZLTxSygSV2T7Hf/8xVVHmykRjAD/bn/TA
	wuWhpAs2VSRU2lVIqAQmGI/SC9TLcsR9Tp2vQUV+wzJFJTlsQcLwJeZtjTmUaWit
	wHJ1831gxRU5z33+lQ+f+nczpN6WCFRFliqz9cUMYv4nNKeS++DVPzF5Lhm9Gkjx
	sf/2n9nm7nfZ41jJ25g6UXGeHE80VC0oyugOzNVlncor+8jQN209Ko1yKiSsky/n
	Hh04Xy6aW0eP/NyF4iClSA4ZN0UpjbENnEKxI2KJLfNbJlxbqEPzqdxCYIkTTRIG
	kA0iLA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxqw0j0v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:30:04 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b55443b4110so523324a12.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 00:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762849803; x=1763454603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NxkzJvIRec0YRU/t8Nf6/urFDe3bQa7PQHKJ01H3THU=;
        b=cH4EDZrMjCMkIxkble0phvPh5vE6iN3YlV1m9dGyOV1oKCT/xUEJ6ipMbkTXWFlzjx
         Ffg3Tk7ll71Ti1zR22BSoiTRnijQmzZdwIPp8EiqB4nL9FJWx8eNPvddm1efxw7nsLEO
         hPlyM6Zsjnx8ZSeaFLeBvn6vL7V3r5GbAfKch+U7WQbQerA4/8d+VNpW/5Y1GvxLGupL
         t89MZKxPUX7hc1yBS++iYsRpiKeVpjvp1I01grNvt7z+uVkiqGy6sunwSRIoMOdQweza
         ILbwNNVcn4jCNzz+XvWJSX3WXuOHqhFkPVu3piVkeiQxLznPQ8R1R/lX2IaTBP7NP2+C
         PDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762849803; x=1763454603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxkzJvIRec0YRU/t8Nf6/urFDe3bQa7PQHKJ01H3THU=;
        b=NSTxKW0RyQDkS4T03dIgxvPm/Rn40ctxPpmuotV+K8AYyjvqCHTw1rxfQcr656VxxO
         Om9rlAnFdoXGtt5pjmUvB2gbHXObng6aH2tXcTU0XtaXFA+KBIyDTHaemQqxkvQuinCh
         xBnGCHSFHaMD+1i46UA8y8dSFithjydX3I2by0Nr8SygUF20ceT77HdEuZO/aYccIsOa
         ch7MdP0YQK5YpxrwPfxzEvhmBtAOdP/OuA11i1iPJeadmcbwmMnd3OnmV94JAymiipoh
         lIbA79L4tcRCnr6FGn9mwv6DTQOt3gxNnaBt5u27G3xAunjLGRfApZ1ynyl4t/c8d6mY
         KUmw==
X-Forwarded-Encrypted: i=1; AJvYcCWeCTXOPw3MZQKSF2rrQ5qp0VgqO737qVYV+i/T9hCgASr4VYZx2yuvtb9pBsETO6Agfm13EYbPdedC@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh4OMTqdeFWEoe97pwb2c9EHzmIm7TZf3N33RBvV+fGbwjC1EK
	0gj7tiQ5a6nvrigiWCAjjy15q61bh9J+0oa1DimiE9ahbSbsRQZY1345ZuX5hPVXEMiwN4ZtSQB
	5/5uSoK73uBBLxXFgQ9jgX12F+GLwm4TsE4vNvjGwrw29aNVUlu0VEGEYsDC0zovY
X-Gm-Gg: ASbGnct+pg7IZi36WDA9oPMmwYKu04c2v6dISeeK35KmTz0zcRb2pPeSRBI7u+8hHcK
	2D0qYcPtqXmSqBqVv0nYHCOHl3zmgPVk4X7IKSpzeqgLZ8r95E8QbGHOG9ywnc7hM7OAxYR8wY0
	BhdU+UL9pF5ew5v04UizUaq40+nR23j5ckkbBI8fFUepau1aNumYe7H6oTCcTWoSxDkRWX+EGOP
	vHiflcXueo6WsabJ5ePeSTfbKnk8bv1Y7faKHKPA8fs8sQmWNeOqmqfayaXZx8Ygl50RwWtDXFP
	z/y0Iz8lZRcNE1z/5IMVYHo7DzH+kOYjSRI/juIchdrkear7sP2XUsm8u7VfX6MPMTuDA90jtHf
	SnRhAqkVSoeXBKXBV9Ivh/Ytiy+IAKob5Lslhh6GmvrI=
X-Received: by 2002:a05:6a20:430c:b0:342:a261:e2c9 with SMTP id adf61e73a8af0-3579a57ad80mr3102822637.8.1762849803173;
        Tue, 11 Nov 2025 00:30:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEuhb2GGhvE8OZGJfSKk9DDBi2oTQ4tUBBW8s8pA3ACUuriomTebsLbkZBpIa15zbib8ASJvw==
X-Received: by 2002:a05:6a20:430c:b0:342:a261:e2c9 with SMTP id adf61e73a8af0-3579a57ad80mr3102772637.8.1762849802611;
        Tue, 11 Nov 2025 00:30:02 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c953e791sm14749002b3a.7.2025.11.11.00.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 00:30:02 -0800 (PST)
Message-ID: <5b1f8204-1f49-4061-aa4e-f6dfe5ae2a0a@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 13:59:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
 <20251102-knp-soc-binding-v3-1-11255ec4a535@oss.qualcomm.com>
 <20251104-glaring-rebel-pillbug-a467ca@kuoka>
 <790ca394-cee2-412b-97d8-c6416b843010@oss.qualcomm.com>
 <b6717831-1840-4b9a-aade-ab2248e3f75d@kernel.org>
 <9ee07db9-508e-4c08-8f79-6ccfd9b646ab@oss.qualcomm.com>
 <6af33c1b-5b95-4efc-b429-5bfb9ee7caeb@kernel.org>
 <8cf870a8-706d-4514-a87a-a69b64521ab5@oss.qualcomm.com>
 <f539b21b-cfe8-4055-9620-4d5d8d108098@kernel.org>
 <9d80b581-5d3f-4b95-91e7-c73c113b0976@oss.qualcomm.com>
 <c2o4iouc6sm7frcq64jmvxopv3eqvrjxievwwhiwqw6ptwfok3@4qmpfy4yij4m>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <c2o4iouc6sm7frcq64jmvxopv3eqvrjxievwwhiwqw6ptwfok3@4qmpfy4yij4m>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA2NiBTYWx0ZWRfX/d2vsDq7f2VI
 OSonoGeAmscfBJKuVFN/urv4j2DeiytbFHivhEtHmgYGpr36/NHgsZjYyiSCQpvo6GHdCM0wsra
 XDHcjK6kKYJnwGJokS1YihCbN6ZLWOI5FcZpS3JxEQt5G1DI0vftnz8eyDX3Sd1aKwKZE8sDHzH
 iyvVQg4986blvc6/BX5iytCYTYsdd90oaaJI36mGI5af7pZlOzkhL1fjqPY9+pVjVDNXUn8ePVf
 Ah/PTtN5/9Ymrc6lsxTkk3Fi817EkQ9NgHyn+JnggzrF2rCLHx/GqWdLinyLl5ero4DKs7f5uKa
 q9Y++vuCN0TJiEEjd6MpItWfPaIOl2aQC1tVOv6eRnIc6PlKExqdhYBVWEPvb1R9zmLcGv+fcED
 3l0JLlrIcVolP6HK40iQh4vZ60IJHw==
X-Proofpoint-GUID: GrE4UI9yxIaJ1x7oY0Wwyt4CMQSABrEr
X-Proofpoint-ORIG-GUID: GrE4UI9yxIaJ1x7oY0Wwyt4CMQSABrEr
X-Authority-Analysis: v=2.4 cv=CeIFJbrl c=1 sm=1 tr=0 ts=6912f40c cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OHlQOMkkIfFZTL2-Co4A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_01,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511110066


On 11/7/2025 1:54 AM, Bjorn Andersson wrote:
> On Tue, Nov 04, 2025 at 03:58:27PM +0100, Konrad Dybcio wrote:
>> On 11/4/25 3:52 PM, Krzysztof Kozlowski wrote:
>>> On 04/11/2025 15:38, Konrad Dybcio wrote:
>>>> On 11/4/25 3:37 PM, Krzysztof Kozlowski wrote:
>>>>> On 04/11/2025 15:35, Konrad Dybcio wrote:
>>>>>> On 11/4/25 3:26 PM, Krzysztof Kozlowski wrote:
>>>>>>> This I got, but nothing here explains why you need generic compatible.
>>>>>>> To re-iterate: there was no generic compatible before, now there is.
>>>>>>> Writing bindings and numerous reviews from DT maintainers ask not to use
>>>>>>> generic compatibles.
>>>>>> OK so let's not worry about a generic compatible. IMEM exists since
>>>>>> MSM8974 and it only had major hw updates with SM8550. They don't
>>>>>> impact the software interface though, so qcom,msm8974-imem is OK.
>>>>>>
>>>>>> There's a separate control/status register address space for each
>>>>>> instance of this IP (usually far apart from the actual SRAM pool),
>>>>>> which Linux doesn't have to care about.
>>>>> Just use qcom,kaanapali-imem - that's the first device here without syscons.
>>>> So we don't want to move the existing ones over?
>>> This was never discussed and this patch did not do it. You cannot move
>>> them, that's ABI.
>> I see, I implicitly assumed this would be a sweeping change.
>>
>> So should the Kaanapali submitters simply send a version of this
>> patch with:
>>
>> - oneOf:
>>    - const: qcom,kaanapali-imem
>>    - items:
>>      # existing big list
>>
>> ?
> We have 33 cases of "this is just a generic Qualcomm IMEM block", could
> we just make it "qcom,imem" until there's actually a sign that it's not
> a platform-independent block?


Any conclusion / further feedback on this would be helpful to move 
things forward. Thanks in advance.


>
> Regards,
> Bjorn
>
>> I'm not a huge fan of using kaanapali as the fallback-going-forward
>> since it's literally the newest platform on the shelves (or perhaps
>> not even on the shelves yet..) so it's going to look funny when
>> someone comes up with support for another 2013 soc.. but perhaps
>> that's just how things are supposed to be
>>
>> Konrad

