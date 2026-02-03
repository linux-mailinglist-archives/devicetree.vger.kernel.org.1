Return-Path: <devicetree+bounces-262143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFwPKwzDgWmgJgMAu9opvQ
	(envelope-from <devicetree+bounces-262143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:42:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BDBD6FB2
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 578DA300ACBF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE8F396D2C;
	Tue,  3 Feb 2026 09:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="la5sT9TM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IdkkKBBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C178B38E13C
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111730; cv=none; b=Di+HlGzDdG+84dh2ONm8hOkk7mXaJmWmgHDzk8b3mLDd+b5xHgyAIlIYX8WwdLSOX3LNG71x7EeIperPjQikrrwvL1LhgVpklBA6ek0FZBBu3G4dr9EzeMDKKh2OiTlP9p1YkU1tFSJsTNVjqa8N/MEAeVJsvGP2v/25000W8KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111730; c=relaxed/simple;
	bh=k8KVh4NAJ/fElB3F7VsMP60IkOQppv/J3GhQuEreSPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ijDBb/nQlG0Bt9jFp7vH9HQ+1IlSYFRrc+t7JOKXMCrK/RLRhmfYhhB5yz5Xuovd7FoJXefUdK3ZMvkRNBLxs6+JfFxb1T4sibIcypsZyR8P8z22IiAktpa+vY72bGw2+BRt9GKl63bQP0wX25ZKUnRZwfL4L4urS1U2fG7Ok0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=la5sT9TM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IdkkKBBl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132QqKc3386846
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UIlYTEBvQtkwYWZcv8IuffFYb2FhapRL1ZNY/pZvKmI=; b=la5sT9TMzGm8ZbQW
	JymcOwfpFGrAspnNB2zxFw4DAbMoDk26kDcDaKxDHVpM2eFsjqx3i80w1kd4PtmX
	LUbwj6PeYkZWKUlC0gcF/RxnR466gyrw1LFeRb2XfyVqJe66wRbJgpz55JraFlmU
	DMVYxOXOF0GVVMmvhVc+1rLiXRAo1Q2yeHK9I2G0Pb6msjud8emAnHhwzb1jJWj6
	F61Mcz08RxX8T5KjLdqzuW/q+TOfW0tdloZzqGyvzILLPp/qH2XDnqYJfc7Nx5QN
	sQYmeffE0NDBLtqXlbEOEN5aMm+1RRa93FlFtyc5noS31Vvzjf+v8cmsV9indpI9
	oZeq2w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbty6k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:42:07 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8234ea73bdeso6807956b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770111726; x=1770716526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UIlYTEBvQtkwYWZcv8IuffFYb2FhapRL1ZNY/pZvKmI=;
        b=IdkkKBBld+4/S6ECXDWPmK2cA8EcUaB9KnH9V6I72kefBef09EDn/CTnt0WcY7QrCt
         qZng0Gv+6MRjwSV8y4sV/1elioyNtu9/c77fuvrU60RwdHueXNQLfpaeu6LEBuY7Sobz
         KSDP6Lo3JbraydQcO4YJ/Hl0onAd7b4VwaMxzmBiTEDmPWWniJxU0tcXTvQc5QnaBljK
         fc91IFZHYIgLR2vGRtMeiUOAFDUHH7WJrSmhN8L08/XdxtAWMZxTC/7ymbOpiQyuDhaM
         KVdm3vK67ZQRvyPWODjGgZFZhWVkm99W8tFJHM4iYDY1CDuPmwvysI2N7i4EBCeDcyJc
         nOxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770111726; x=1770716526;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UIlYTEBvQtkwYWZcv8IuffFYb2FhapRL1ZNY/pZvKmI=;
        b=GXRhayeepXI1esrmeNDf38xp1dVFwiXI440fUFZJmmWCJAvuBkuNl/x02pT1DikSiJ
         PTvXJp9SQMiX7LX45seS5SpNDdH6WERrtCMWLKBzG56vKxD9Z0rX0x8Vd1rpGT5gtq1h
         mFVAzVk/xPRNP2eHqUmGO7aBa6mB47Kl5EJ31jveOPtEEuL9+0GS+/g6XJxVsGPVeNP6
         iFbPrIw+94LLKZChX/gJ+Q7JzTBj9mP+UbwQe0drJoOogshsDrHhRLTvnPoxoPFB52G1
         tu8+cp2pjkF+OrLdhRQpU6t55RUDVbajdog9YHaFdZFZRmg8Gb1iw/A12NiNoNwHh6KW
         FYZw==
X-Forwarded-Encrypted: i=1; AJvYcCW6/E6kBMUeamg1LC6e/Ly2QclHoABKUUqNfQk7ANqncmtx+K/5vn85mbLcD+7BoUqaeQZ0QnQyaXrH@vger.kernel.org
X-Gm-Message-State: AOJu0YwUjxgahgLUu4xfLsZWx1tlLptapUqxXnV0sgDkKLdxDCGakG7O
	FPtS5qTl/tDL3//aR955HEu5OUHVwE/tMV8KPbsKQEkbs5CD5K5fVQbIkE9imv0YjUCFsasRQzD
	uVd/JiTu/xzMxwcvfLjplocgzzvqb4PzGiCWTJSmUTMsdJqGkV36wckJzA1FBfjeAnkDxyHjy
X-Gm-Gg: AZuq6aIqpnxp9CNwA6ywTau0QgiTtgz2/IvUqjXEx5HRl3P+kGFM13ilq3l9OeHDAsf
	jpoW4PGSWwueeqEWH08wGgdeMkAn6VTnxXMiA7hMK39zWqK4XL9NI8qCkhAkyiiG1FzdyaeZPQZ
	r6aNPcWY+Tl2OTOauDN19aC6JUFac6MHcI7mnZLeVBeTbVx/1TGwd5pPBBHt8DGxsBgyPCK9sij
	qYrg9XcqXwix3zXLIRCF89kP+9FV7/s97XFOBTYHXqKPGdTZNwYF60uYBsb1XTWO3sDXEwvcMpn
	kn1UWwdk1P46NELdte1jmg9RE2nCV3R6+8VM1vFZtkMFg83AEfZqK3adk6HaFAM2F9vUidcV2VG
	A5MTBq/PlubhpmEnScYfORWRa7beZ71p154tkNg0qKF8FFqN893gwxDO5tsBDI1VMdHyFMSqoOg
	==
X-Received: by 2002:a05:6a00:10cf:b0:81f:9a5c:5b95 with SMTP id d2e1a72fcca58-823ab98212bmr13637114b3a.68.1770111726406;
        Tue, 03 Feb 2026 01:42:06 -0800 (PST)
X-Received: by 2002:a05:6a00:10cf:b0:81f:9a5c:5b95 with SMTP id d2e1a72fcca58-823ab98212bmr13637082b3a.68.1770111725913;
        Tue, 03 Feb 2026 01:42:05 -0800 (PST)
Received: from [10.133.33.97] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c22672sm18151053b3a.51.2026.02.03.01.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:42:05 -0800 (PST)
Message-ID: <09605e0f-6975-44c9-8f27-4b4301c412d2@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 17:41:59 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-binding: document QCOM platforms for CTCU device
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com>
 <20260203-enable-ctcu-and-etr-v1-1-a5371a2ec2b8@oss.qualcomm.com>
 <6019b38d-3a15-41f5-989e-1f576c327446@oss.qualcomm.com>
 <6c823646-9085-409e-a692-ae3e77347742@oss.qualcomm.com>
 <5911fe77-fe2c-4321-96a9-a1b6b3b5d1e3@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <5911fe77-fe2c-4321-96a9-a1b6b3b5d1e3@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: auNcrtcKfRukDMmq-dycbW-EKdxyKv2j
X-Proofpoint-ORIG-GUID: auNcrtcKfRukDMmq-dycbW-EKdxyKv2j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3NiBTYWx0ZWRfX0zkqo6jDTyZF
 V1qIEcsrT9NXIKRjKLYn/4jRAZd88bnGTji6kGWOtUgI8RKP/kfNpfUZZWLkwFAC1IBKi2Xz2Th
 rNr3RepXQwDRFj8H4MTHWc4xDOkVktYh8UVy7skqL6FxUngN+4f5XUo9erCSevvzWWzqJH4xgMZ
 l8C9NfHx1rcnafZ4aq9VnjY0o5Zwp+24kaapcs78D5yS058BU/R7hMiippkQsGXgV1e6cLELP6O
 nTbybq+bXiXF/s8URtjgjvtTJLR1DY8ndO+7IMpINxuNu32YyuPrt9UEKcGs9VImvvoeVqbetlB
 C0vjHW3/UzmA7PT+tAVRSNDXLIHW8m9ejt3JN+6Ik+FKJyakwV+mVIr9YSsa9IGNurZLeajb3Vx
 bvDGereZsnzBoxhJTKwP8LbaCl9R6ZrUDtNHdPpfT9vV054tA7GZlMF1MFOMylWV/KCVPlTjYUN
 DNXbrKG+pr3noE7tcTg==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981c2ef cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=wkLu1GTWYP2ahK5n7AMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262143-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 69BDBD6FB2
X-Rspamd-Action: no action



On 2/3/2026 5:31 PM, Suzuki K Poulose wrote:
> On 03/02/2026 09:00, Jie Gan wrote:
>>
>>
>> On 2/3/2026 4:50 PM, Konrad Dybcio wrote:
>>> On 2/3/26 9:08 AM, Jie Gan wrote:
>>>> Document the platforms that fallback to using the qcom,sa8775p-ctcu
>>>> compatible for probing.
>>>>
>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>> ---
>>>>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 4 
>>>> ++++
>>>>   1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>> ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight- 
>>>> ctcu.yaml
>>>> index e002f87361ad..68853db52bef 100644
>>>> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>>> @@ -29,6 +29,10 @@ properties:
>>>>       oneOf:
>>>>         - items:
>>>>             - enum:
>>>> +              - qcom,glymur-ctcu
>>>> +              - qcom,hamoa-ctcu
>>>> +              - qcom,kaanapali-ctcu
>>>> +              - qcom,pakala-ctcu
>>>
>>> Platforms with existing numeric compatibles should continue to use them,
>>> so that the mess is somewhat containable
>>
>> Sure Konrad. So for Pakala, I will change it back to qcom,sm8750-ctcu
> 
> Why do we need different compatibles for the others ? Are they not all 
> compliant to the CTCU programming model ? i.e., sa8775p-ctcu ? or even,
> a generic,
> 
> qcom,coresight-ctcu

Hi Suzuki,

The platforms here have two ETR devices, using same "data" in driver. We 
also have platforms only contain one ETR device and we need create a new 
data for these platforms.

I have proposed previously to have generic compatible for CTCU device 
but I got comment for preferring use platform-specific compatible.

Is that acceptable to use qcom,coresight-ctcu-v1 for TWO ETR devices 
platform and qcom,coresight-ctcu-v2 for ONE ETR device platform?

I think it's better to avoid annoying dt-binding patches for the CTCU 
device.

Thanks,
Jie

> 
> Suzuki
> 
> 
> 
>>
>> Thanks,
>> Jie
>>
>>>
>>> Konrad
>>
> 


