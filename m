Return-Path: <devicetree+bounces-267314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yISGGJUfnGkZ/wMAu9opvQ
	(envelope-from <devicetree+bounces-267314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:36:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C8532173FFC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:36:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B509730027CC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8146C34EF02;
	Mon, 23 Feb 2026 09:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gz58tQmR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZSmwvoz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E55F34E75E
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771839379; cv=none; b=riOOOYkKdhDTl7wQm7jKLk2s6u0DkZ2gQ5xYRD2Zi3aoj3plicv802BYEcUODSji/qquhMlk7QsPfCDb/aM+nmwVjk7/fG65uK2Ak2n+Oi6lgI7f+d4UYfK4pwi7jk8/bGp/NoBX5gQQvGlFedu7khsun9pKJiQihkkk4kqWyDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771839379; c=relaxed/simple;
	bh=atAGju0p/Xxb5dMVewM+6bW3D/1du1ZkwKdyzISI90Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=trqJo3qLEUKxvtv9WxpSSRGmHIrWwjvU4UtIUbWWZsA8iKFiV7UgiZsbvD88vYLxhpcV6isu4ukRuKFictdO/iXCaYNt6ANyJ5Dhk4lO8U+N6jYWY+CgH/9S9ZYfomZ7r9zeqxRRl5HSgj9Y4mB34Tntb0hMvc2DtMhi1n2F5CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gz58tQmR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZSmwvoz6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N9WCrk1518366
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:36:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SYGjE+XjICFU+//eucHg+2ZzKIQx8dcU/7z9xFG21vM=; b=Gz58tQmRE/iJoV8k
	J0/JttB64qlBpYibGzTX6Zn5lv/n92CMIVAqWDSrmeNiPudLmBZN75cDy8J63hLK
	4DbriMib5EMSLZJLTX4O/1w+RUaUZJ68L/+gA1xYOyAv4Tg9C+7cuaqOWXONE1dj
	d1FSCL+joohBZKHLtbC+GMbCo2XZv3MPl7NBDnItZB9GBGFB4FpG0zKgBW4jGvHN
	bZkSaUNboM+Jyw15QjRwbdIi5R0kzPy7D7BQwYyoboYcEWonC+ptc7Vvwg0jJwsm
	NS0SuxWkESi6z/2lIHAoPx8GtxgNmpSkRpCOH1woyhA+WvZro+4bxDWHETD3B8DS
	HFtj7Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u9v6xw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:36:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a8fc061ce1so348253775ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 01:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771839375; x=1772444175; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SYGjE+XjICFU+//eucHg+2ZzKIQx8dcU/7z9xFG21vM=;
        b=ZSmwvoz6mSV1PnfBL7Sc89Uib1tZQ5FOir35bPD4H4gWNvuGjZcjVcUolST+F8zxGb
         wOnwO3wviW107x9Rw2bi9iLUoM2B+JilXP7AQZ5yfJuTlxQiwNZ8+fgEJizoqr0qlqJ1
         PCZrhkZ3SjeeixI470EUREcGAPtfRq5AUk4gSkX6tGOWxruP8QbUju6FfRRvdrs/fgNF
         za4LvzSz8OQHrBs/NNUNI0UF65nTxQ8CPMpJuHOMKacgqGDfm3bTVGiGVsoXQLJPKmKw
         rm2v3wRFbKwEVUDlHqQ+SoYfSLGLOUXJaD7yrLIsJJC9wBf6/ppIW+553asY/R5iNFu5
         qsuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771839375; x=1772444175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SYGjE+XjICFU+//eucHg+2ZzKIQx8dcU/7z9xFG21vM=;
        b=UmXdalOw0+96JIxonFGjS+72DsuMgHrM+mP9QxlRAwOFrzn0Oo3ZeAGgW3XuWgGfY2
         Tvl8+2hiKYO+r1FvfWLrQnfo43NzAEXMtpz7a+X+2+wegg6ToDnqL9slliHfP9z8u67E
         JMLR5S0r5UTnQzChr5N4Tr/VGnj6K2RnK1SMKn6b35l9gklztvP6qqqtIYG8+hFEBcK5
         T5vo17hEIxuJo1u6NT9CU0wT9dSd+4c8g3yhI2mSHKGcEk3/QilXUuLbgtUXIPjWhVXR
         ctPIAYRwOmYDZSC3aqbjmynhCokN7bMJ2Le0UyBP8aLwvYZDcEzMO3M1xYWwObsQB7L6
         hQxw==
X-Forwarded-Encrypted: i=1; AJvYcCXyveV3VkQ+Phf0uMRytj0gR2lzx6PLa+Ndz27exjzi3y2bgPWqjrDoukd+OiV3rBBexJG2emjR0plu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/q85ohAfE/JCbap43WLgfHPELOlrmqSrN3Cihvcn8hJRQRAd1
	wltlLskKlKI7OuOJIaiW50bKB4wnSN0vTXgb81/56VdYPC4uw8KMEMNYkQ/x11wLf6dPtO1dZ14
	n72LvL2z6w23J1TxNUK2f9WC/ngFcKjMPEdMyVoHerjygcyU2N0T7fqBSMvSsI2zp
X-Gm-Gg: ATEYQzzMYk7gGq7i5qUpQ7cNKeegPAmsyBeLWcBO7yglHUTYzeNWziYBoilTQeyPnN2
	g45HwyVtSLclRwD7NbLfWafPBi68aSM0y80F0UbAqs25GhVioGb/U61L+3L2uIkh9MWoQFnh9YB
	LKuVzlnSmgiR2vDceo7wOweS3jYxPIWApcAKp/fJd6t9SIeuUinRskSq6H7+74Ggq3rWnZE5nLz
	p1E8L/WAjr93I7q47eHM8VcbHZDK/Piayv0PdXsndREEQutQHIlP1zXraJIh4ErPN+PM63lDPMn
	bn9C0eok3bZVtV6B/EpvYZu96ophG7YOtHyP60J8LBV8eicjUUzMC8WBOWBAel/kmewvActVHfC
	67Bm/BbyFA/yCAHVyNvxVWiWGndhi3LAlmIP1vp9U+cbsiFwzOBLPDaRl7XKXgT4JBiiZHoG4o8
	1JGmrGTT8JH/DLgtT8g4D4/QJ+vri/1SQxKFS6Fw4=
X-Received: by 2002:a17:902:cece:b0:2aa:f0ec:3701 with SMTP id d9443c01a7336-2ad743e22cfmr80923395ad.2.1771839375146;
        Mon, 23 Feb 2026 01:36:15 -0800 (PST)
X-Received: by 2002:a17:902:cece:b0:2aa:f0ec:3701 with SMTP id d9443c01a7336-2ad743e22cfmr80923205ad.2.1771839374726;
        Mon, 23 Feb 2026 01:36:14 -0800 (PST)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503d406sm65521675ad.75.2026.02.23.01.36.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 01:36:14 -0800 (PST)
Message-ID: <ffecf0ae-f826-4690-8ec5-c19011f2c50b@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 15:06:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Glymur ADSP
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-2-sibi.sankar@oss.qualcomm.com>
 <20260205-succinct-honest-badger-52e1b7@quoll>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20260205-succinct-honest-badger-52e1b7@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4NCBTYWx0ZWRfXwT4dIJNHvrVk
 GDKItB7GvImhi4lY3B3sVTYpP+UOioq+aiji06kPO1IGtm/sJDrF2HgiTyRvsK0M06N6e2AUw+a
 r7qxy0pD+1qElF4lQuicw5VaLZqvxkJhb88W2BI/layjCEeP8lGm1Wy3XjmnLe+wB0fUgrBUmz4
 tp9C/vm1TUebJHXGkgt7do3zHDk1I0LIOvhu5PzH7yPPUcix21g5K/nsBHvW2wnjeiZrFxkEfWB
 9Zfo+o7BRVZnrk2XrT390h3mfuP554Iba/PE8kauXXSTWqoOF853WttjeXgiD/JEL0cXM+3wwLJ
 9K2dfVRpt6w/oorydrr1uHaJyl26bjTXb9+aVGEp+b1i2SFpaeAG+W5IhVR5Tn4hgNpdx6PxOjL
 G/axqTtDeqpYcHi+hRL91CDoAsrgSJnaix+W2v/YzsGLzOwM4y3Vrhbd9VbNIsTrnhB0U5iHCoY
 Up+k87m4BQeGkmqVZeg==
X-Proofpoint-GUID: 15lN6PC4_m8JEE1rxrIW3H7OQhnuZg7F
X-Proofpoint-ORIG-GUID: 15lN6PC4_m8JEE1rxrIW3H7OQhnuZg7F
X-Authority-Analysis: v=2.4 cv=RpDI7SmK c=1 sm=1 tr=0 ts=699c1f90 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=njHKLakQ8Vn3IMBtrbEA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267314-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C8532173FFC
X-Rspamd-Action: no action


On 2/5/2026 4:04 PM, Krzysztof Kozlowski wrote:
> On Thu, Jan 29, 2026 at 05:43:54AM +0530, Sibi Sankar wrote:
>> Document compatible for Qualcomm Glymur ADSP PAS which is fully
>> compatible with Qualcomm Kaanapali ADSP PAS.
>>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>
>> Changes in v3:
>> - A few variants of the SoC are expected to run Linux at EL1 hence the
>>    iommus properties are left optional.
>> - Link to v2: https://lore.kernel.org/all/20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com/
>>
>>   .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index b117c82b057b..fb6e0b4f54e8 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -29,6 +29,7 @@ properties:
>>             - qcom,x1e80100-cdsp-pas
>>         - items:
>>             - enum:
>> +              - qcom,glymur-adsp-pas
>>                 - qcom,kaanapali-adsp-pas
> There is no such hunk... I think this continues my comments from Sep/Oct
> 2025 that creating such patches, with multiple dependencies makes more
> difficult to review.
Hey Krzysztof, Thanks for taking time to review the series :) I'll give 
some more context here to ensure that your comments were followed and 
this is just a one-off. This patch was held off from the dependent 
Kaanapali patches since it wasn't clear at that time if this SoC would 
be running at EL1. Only with that confirmation and given that dependent 
patch was on the list for a couple of weeks with Rbs, this series got 
posted out. -Sibi
> I mark it as not applicable, please send when your dependencies hit the
> tree so I can review it in proper context.
>
> Best regards,
> Krzysztof
>

