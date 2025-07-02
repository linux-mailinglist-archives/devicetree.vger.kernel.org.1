Return-Path: <devicetree+bounces-192021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BB0AF12DD
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:00:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E70094E3524
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AEC42580EC;
	Wed,  2 Jul 2025 10:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rdojvwqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED82323E320
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751453978; cv=none; b=HV/snU0gY8sJ7JZQPowLdyB7LdEou+W4K9RxQrF6EGiSV3iMDVaUcVkYDXDNe2pgitR5MTUzFX6IW92bL351EeGzeGG+4/IoxA49IhhT7f6MWFblz1ANLqh4UKf+d84ORIAv9k34yIAtdmNklPXaaaMdg5cWa6o17yR7AezbkMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751453978; c=relaxed/simple;
	bh=NL5WZDSJLjYMpx9TL2pLWNNh4OW2ead/Z6PIBLBEMx8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QDaOuXi5TxrN3RKfjoVvaRlmzWe2FcdmLn55k0lJTNSitunmQ3MYPSz+vgP1GIypJbXUOFmIu1IYxwMC8vp27wFxiYUBamHkU7ei7Bc9Vxaldgpql80f/+0KUeim4ra/C1scUxfKrqScoxppCJDTo0MvnhWoyESBJiCSqLKuixA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rdojvwqz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5623fI5R010432
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:59:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u5BDQVhLvHH8BVr+x4dUYqKfZubZmTAaympRKgXLXq8=; b=RdojvwqzC6iQee1r
	GD7vSCM9H6GkLsfK7wl3BdS/2dioV2w1ZDOyesTq4dVdFpeVPPpc9Gpa090LsgVB
	04NhtLyj6ucRrN+Qegm+DNG+zrUhE9zwdoH9tvF8eeiETQV8DaDQ/g67Cv7xohGU
	gwaKmdPlI1oCJDhMPe6oY+Y3CUVMdUdHd4k0wJdoalUDjnsJr4fPHGtUlxQRK+rY
	2oSBOxR120S+iMtR8CkKR8Oa+qP34YX8Xh9hnU4FTJJjnh/T1O0lg0jgiMHt14SA
	1YQOHhOVCf0Slb4E9eDqqviOOoO60WdHQo4tE0nbiyPKJBuLKGHg34EPay4UZoDo
	6xboag==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mw3099yk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:59:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235eefe6a8fso49399765ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:59:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751453975; x=1752058775;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u5BDQVhLvHH8BVr+x4dUYqKfZubZmTAaympRKgXLXq8=;
        b=YoRpWyGxDAFxP/zHTiIDKf2ApWjXTLiK6nJuwND0QotmIZiA3f0KcYlPf8uh3tg8L0
         7JZajetxR5FxMt1vQCKeWPAVF6sVnHQ9p+tMPEEm+FpOJtYLVPBzIQaK7qSyBGGa5ifd
         1kgu3kKiskBGDi0HG+6lphNni6XREEt//SDls/r4QLlUvsfGyRxKDdW7JoQLJ/gIlAPd
         YRkBmw+9hLg7o8VOTGcvCBYXiQpDHDHdy9zxSu7qOVtrwkKHMGmE9rm0fTDqWTuEsUOY
         +HaFS1sXGPQcUN1I/ZLRlIKMFABZOLQXK9ihLyf1dNJIxqV6OPcxKcLcdS1CxasOPpLo
         QJuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgF5BRHaiNtb+hLmvjE+Zjipa6I1OGMr7rmG+Kg0y2ooCw4EL1baT29u/9M9+fjC7/dv1KhsVbq7ha@vger.kernel.org
X-Gm-Message-State: AOJu0YxpiodeQgUtbozlOCI31SXxq5S3Nvb64hQc/5rjhRcKoB652/if
	Y76ilmk+qOcZpb7pouZYaC3+yQYWVgp0lH7A5njQZ927Mitd3EkWusEP0ows7j2gHtIEgetCbh7
	YhDisopzQZSCpoAMMPQqAD8IT82I931P49jhb1vM4l5+dgmypW1vbjl4l71My3ODc
X-Gm-Gg: ASbGncuymvwWVZ9JJWAfQn8XRF0mEjDoXFJ/ByS91tkHF/HSlQT8zcrGbxY+xot/b9S
	b12ATvz9M3tvZ548ErkOCzryAL91ofwFkIarjIivtRbxWGklxOBAisk6AgTbFr/grpLclSj+MRL
	OqK4SvH7n58VcgH+CcJVWVSwVLYiGm+25Sr83pM7ZIzHby9YUFDaPqa1oYMfRDKa4rt7z7NMokC
	qX22qFehh9wx4VaX7eFSm3sycOqmASvB0bsmsrrg/1zzYGpbJn+B32YMBFEeJftWg3CYQ1JAbQI
	9xYUePz+7WWBa76OEwKY727el5B9vtGdpF9LHKRQ8x8oNPCUPebuqayWtaNtHbI=
X-Received: by 2002:a17:902:c950:b0:234:f4da:7eed with SMTP id d9443c01a7336-23c6e61fd93mr42616215ad.44.1751453975087;
        Wed, 02 Jul 2025 03:59:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFI1uiNa2DtkbC3czXuPd6JRMFL4J633cWnkq1CvMz4ROdmjIGLW4N8ll7TLtpVDulerN/hIA==
X-Received: by 2002:a17:902:c950:b0:234:f4da:7eed with SMTP id d9443c01a7336-23c6e61fd93mr42615765ad.44.1751453974652;
        Wed, 02 Jul 2025 03:59:34 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3bbf9esm128223125ad.191.2025.07.02.03.59.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 03:59:33 -0700 (PDT)
Message-ID: <b5481363-ab6e-4b27-8a5c-d766f64e5169@oss.qualcomm.com>
Date: Wed, 2 Jul 2025 16:29:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: sram: qcom,imem: Document Qualcomm IPQ
 SoC's IMEM compatibles
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
 <20250702-imem-v1-1-12d49b1ceff0@oss.qualcomm.com>
 <a68f46f0-8053-4d9f-96f7-55de33bb301f@kernel.org>
 <37695966-1d7c-46c3-9717-30da4e8d1930@oss.qualcomm.com>
 <e1424499-718a-41c8-b729-0ea96bb6a172@kernel.org>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <e1424499-718a-41c8-b729-0ea96bb6a172@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=CY4I5Krl c=1 sm=1 tr=0 ts=68651118 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=-s9buvLw_tBRhafl9uwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: qYogaulF1kvCApWwww7AVjZ406Cqvy7B
X-Proofpoint-GUID: qYogaulF1kvCApWwww7AVjZ406Cqvy7B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4OSBTYWx0ZWRfX2Q5keS5Vf33V
 U19XTxGS/7Q9Y4BpOmw3gu8/vlSgysmp3zjo9PvWjo3FSQeAKXKyDYJRFGh1/aep0C7Pfb+qdP0
 OswQMW4vSVg6akR3dVPxmEexCOzxckFSTQ/Ic+sn5O+jbC0/uV4/Le91eKg7dWwJuMtNsWbIxN7
 2QSIkA01L2vH2jM5P95wMVntPQkuc/DiFjPzp/FwQKC1ADRnTpVXN7i3q+wODnfNfioiPcg4HKh
 OF5vMUGxS3cYOAfxxk0Clzd4pSiwgVw9dLCv4BPMUchSBNutLwbckryIp+B9GJxdFROQ+pgD6Gn
 i38DVWn+KpdhX0wWC2xRgWkvHg/qnXhvat8bFWxpJvuLrI9uqc00lHJpxY00il4Si1zmK2Uah79
 GLFu6yr+eWOvWk1m6qCdd+nnXRXDrtKrxuHGHGC3dTFIYHe56xy3hh0Da4pqN3wRULdyBfgU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 mlxscore=0 phishscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507020089


On 7/2/2025 4:18 PM, Krzysztof Kozlowski wrote:
> On 02/07/2025 12:46, Kathiravan Thirumoorthy wrote:
>> On 7/2/2025 3:49 PM, Krzysztof Kozlowski wrote:
>>> On 02/07/2025 12:17, Kathiravan Thirumoorthy wrote:
>>>> IMEM is present in the Qualcomm's IPQ SoCs as well. Document the same.
>>>>
>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>> ---
>>>>    Documentation/devicetree/bindings/sram/qcom,imem.yaml | 6 ++++++
>>>>    1 file changed, 6 insertions(+)
>>> Where is the changelog? This is not a v1.
>> This is the v1. The series[1] I pointed out describes only for the
>> IPQ5424 SoC. Since I have added few more SoCs, thought v1 is the
>> appropriate numbering.
>>
>> [1]
>> https://lore.kernel.org/linux-arm-msm/20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com/
> But IPQ5424 is already there, so you reworked that patch.
Okay, so this should be V6?
>
>
>>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>> index 72d35e30c439ccf4901d937f838fe7c7a81f33b1..48e2f332e0e9fc9fa4147fa12d9c6c70a77fafda 100644
>>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>> @@ -18,6 +18,12 @@ properties:
>>>>        items:
>>>>          - enum:
>>>>              - qcom,apq8064-imem
>>>> +          - qcom,ipq8074-imem
>>>> +          - qcom,ipq6018-imem
>>>> +          - qcom,ipq5018-imem
>>>> +          - qcom,ipq9574-imem
>>>> +          - qcom,ipq5332-imem
>>>> +          - qcom,ipq5424-imem
>>> Random order, no, follow existing style. This applies for every qcom
>>> binding and you received such feedbacks in the past.
>> Apologies — I arranged them based on the evolutionary order of SoCs.
> Where is such ordering documented? How is it expressed in your internal
> guideline for example?
I made the mistake unintentionally and apologized for the same!
>
> Best regards,
> Krzysztof

