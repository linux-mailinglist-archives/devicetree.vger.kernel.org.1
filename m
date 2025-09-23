Return-Path: <devicetree+bounces-220474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8DBB96A9B
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 17:52:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A61519C4DC6
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 15:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14812641EE;
	Tue, 23 Sep 2025 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pCinNdp0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B622C8F0
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758642753; cv=none; b=ulSUeHWCmK8jgafWdg+SvTdNfMyaLjt6U46KGPFDRpjpJb+LCDNujNlVctki35EDDIql/9QgxErqWfLBDxQPH6J3JKKgiqSJjmW+fISRrDR+1IDR0R6QxgfiTQvZB0s0rQITK2ocpdryKNLRpzwvB/lrmuq6X9qHEjfj8Jw1sdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758642753; c=relaxed/simple;
	bh=CcpwlYGznwOeaJS/CyloewOqXqfoX9eS8cXkrWgOiE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P7x8BxNYU7eGdGOe+h7UdWMyFLOLMO/fhljL/3y22mHg0f0nsCubgXMJ+g6OcdFFB3cEtf49jUvrp/cyYl7KGjwYm2V+zWfdRwRpTxpeler0pkCVFc9AHwza6EM5bmhfc8ybPz7SDvkYTEvMB3tUtm7A2Ik80JmvYRXfnexzs88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pCinNdp0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8HFDI001998
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:52:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jnk1sjZqjciZj1NSs1no/CPobCh/tOcCuUO4swDNXRs=; b=pCinNdp0eSGl93PM
	AOAFUXYkdAKh9WWDaXUeMLb4SMbdw713sW+aBMr09W4+PgEL5VP9SQVIieuIQNAz
	EIZX2DkpEO6GRmBhFVS8bc15EpnfRIyztBybvPAjAIye/t7lfNdVRreNOEcXKnhX
	dwvqkbd4Zw8WK8mvsF/33QRMsqnsjWqAf4aEDwF3AqnrF/TxmFzMaiLIFCx893z+
	eNJTxTPRDqIb6iJsGnOJEc9oYihq7kNa92TEqqwJB/wgbcFoWzb5BE96VfGJ+NJl
	4hHugFWbed7E70FYEFXDD8iCA+DEkWmkfchw3IOGD1OXCmnyC8cXhq+zmOmS6RUU
	rYl1pA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fh30t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:52:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24456ebed7bso251415ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 08:52:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758642749; x=1759247549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jnk1sjZqjciZj1NSs1no/CPobCh/tOcCuUO4swDNXRs=;
        b=EmhTumpl6bXKIxkI18NR/iMc9bj8LNrpRj3T2JK3M5vNVK8L3HG+SSSvYWSXSYcrO+
         0cohPm8b6YFLi+97hFrLIidrFxemTyBjEv2EMFk7TeApXkF9PTdMCJkNSbtAJyyXgRIg
         zraOqNbvy4CqORvwzypsG1Z2flZ0ETWtTtjY6T41dP9LR3LNj+JsrRDTVJuPllLe5v59
         tClpRoxD9ZVEV3T5IIeDTie9hukqwLKqTynebspEqi/BnmpDL+aLHIYbs2UMbzxEyYJD
         gl8UHBlqjjYmMRvnVdS+56JO+ObnutWX+kJIGF0lhUMN8m2Di7WJAOxptbPVTaQu06Iz
         OL5g==
X-Forwarded-Encrypted: i=1; AJvYcCUp9q4JkPltGCTUKV3YlbGoHXT76UogRTEOsOl0ze0B/MCmUH8KcgWllullQe5k5C8IvZZsN2z1qWHi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+BrTD7P9n63WYuRYsBCzPJSzhxkOtDr8wJum6Xi21rVv0+GlM
	/4kiyedrAwxyNrw6uNzz61KZ/O1f/gzC6y9D+l5vwZw4FF4spdSAdKm+UPjcV3GXZGSjBmEf8DZ
	WjEjLWZyuf8ZmSPFl7IY8vkwL3bOHShzlb4rRsKtgtj1BCXNOsIfBTYpn3OFLld1t
X-Gm-Gg: ASbGncsx6LISrVQP1+j/SMZ79tuFbr/Uiec03AEj4JydyrUCR3Ore7EesVURAfFQmsr
	fioAtTEu3+uEpHoGrzgwxmesnITxdbDed4GpLcEKzPN/skvxYcGb5UNF59JTynPPk3XS6rC46Tv
	oGNyDT1r0sJdLkHHnIr3tQxJvV6F6PdPZOlTTycGw8FpUFyQvVX+n+jZa2EKdHlojROSk7osvNe
	wc7T09GBW7x3IWgs+NJfVaRbZgcW7ZKsaivLkYSZqeI55u8iIIbRN2nk65zKAGvDr6DZz89m5C8
	EPSoRbfo70quMfBvJ9UuTrNGw5IW4lT7qcBcTaTZmcnoXa0ijjLJVkMw0TQvMArom++aa4PQOUc
	9
X-Received: by 2002:a17:902:ec86:b0:264:8a8d:92e4 with SMTP id d9443c01a7336-27cd63d00cbmr36675905ad.2.1758642748609;
        Tue, 23 Sep 2025 08:52:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFY0gUezkzMH9Q3U378qYMV2WlHC0rAlDu3HjPX3f+WdGE++O8MRSpNyCPTDPF0+I3PqGqDkA==
X-Received: by 2002:a17:902:ec86:b0:264:8a8d:92e4 with SMTP id d9443c01a7336-27cd63d00cbmr36675235ad.2.1758642747958;
        Tue, 23 Sep 2025 08:52:27 -0700 (PDT)
Received: from [192.168.0.104] ([49.205.253.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698033c922sm161153415ad.131.2025.09.23.08.52.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 08:52:27 -0700 (PDT)
Message-ID: <23174908-5dc4-f4d2-3f3f-1225f999a227@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 21:22:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1] arm64: dts: qcom: qcs6490-rb3gen2: Add firmware-name
 to QUPv3 nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org, luca.weiss@fairphone.com,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20250923143431.3490452-1-viken.dadhaniya@oss.qualcomm.com>
 <cr2ehxr4udit6ddzp3pspsdrhtf4rpl5fzo6jakw2uo3gm7r6a@v3hwvkya62hx>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <cr2ehxr4udit6ddzp3pspsdrhtf4rpl5fzo6jakw2uo3gm7r6a@v3hwvkya62hx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: xtwnNQemZBbetN0FXWjAJ0UzWKVZICYA
X-Proofpoint-GUID: xtwnNQemZBbetN0FXWjAJ0UzWKVZICYA
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d2c23e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=RtG+38I8ePlRmB+m5sTI6w==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=DAzQPIN5ulxls2xLjgIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXy747M+sDremE
 JMgA3/+XhPB5XTLVLdBOck/YHbhbr72wZlz4m9+jbddjEcQX4WBQNx1rxA0mhLXE6y7W1b0A1qc
 fKlYzQq82BFBfHL5CZAuRlVWLu5SICn9tBijb3osaAurAV4g87j9ZUlhzHYIC0BD7tKo58p7LQD
 o+IrEF5XMkXa9cKiWay0ddxYqTYYF7vOaKnZTeSyIP1oBsQdpD4+S1WMh4z2/B2NOexU0BvJaxB
 IDVZgMANpnS7boNsR1SuOjux9gi/B+v9COLUYg37yfEbDYvnUuYR1t8YIV4a4oeLv1B/Nv1SJLV
 bZNOw3jfDBFoDQtHLSO0PZaPJ/bkim647W78wA+lWL0df7Yanvp7TrHWgHT9MYjkNYJxiy3VcOJ
 S5o2/eDy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037



On 9/23/2025 8:43 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 23, 2025 at 08:04:31PM +0530, Viken Dadhaniya wrote:
>> Add firmware-name property to qupv3_id_0 and qupv3_id_1 to specify the
>> QUPv3 firmware ELF (qupv3fw.elf).
> 
> Please start by describing the problem you are trying to solve.

Sure, I’ll update it and send v2.

> 
>>
>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>> index 18cea8812001..4e361580ddf1 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>> @@ -1009,10 +1009,12 @@ &qup_uart7_tx {
>>  };
>>  
>>  &qupv3_id_0 {
>> +	firmware-name = "qcom/qcs6490/qupv3fw.elf";
>>  	status = "okay";
>>  };
>>  
>>  &qupv3_id_1 {
>> +	firmware-name = "qcom/qcs6490/qupv3fw.elf";
>>  	status = "okay";
>>  };
>>  
>> -- 
>> 2.34.1
>>
> 

