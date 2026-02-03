Return-Path: <devicetree+bounces-262142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEUNAQfDgWmgJgMAu9opvQ
	(envelope-from <devicetree+bounces-262142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:42:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E125D6FA2
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A20EE3111DBC
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3ED3939AD;
	Tue,  3 Feb 2026 09:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="meyQE0oa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cmhG/llE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60D218C33
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111408; cv=none; b=Bidzmodjgmgp/PUXjQqSw7IzyFmi/xlII7+fRoXAHodxYfcVf3jTLNpUvUWlYB2PLMl1LPs2D5UD7+WeC2W266ONI8zNrqNnr+ArmGIhkPTdAGTbCYYhoj0SPh4cMxLsl6laSX4K9kObN8pJOWkiG2SiSDDXClT0kVLuHSZ0gpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111408; c=relaxed/simple;
	bh=Kn6ZVggv33TTn/5SCh+Wj4unpFmhCWkYAtgKLwZ3cpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=svlXTI1rvBfqVCqCx82mEn8L89NAAXYVQs0yvIHVIZC6qr9/+9UcGKtz57zdscjdrP3IF5kzmR/DFm5kW36ArLHB40JS0zjfz9o42q9+qUj0nAycnGXUWPfsqq6SZrwcBCUEfvGfkNNGt5qulSxQV4iiXipwb0eS3IsfQvLe6YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=meyQE0oa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cmhG/llE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6136RHg02848626
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:36:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FEwRyRc+5T8fGGzh4rUpKLJe0ns6o5092hg1qa+GDBw=; b=meyQE0oaIWG/+sYD
	G/z8VqvDxxIGCb5echv2KYcaQIe0Ml3dygx1aYGm5yX2KVBsIRfpxH4NyLyqEgo4
	f4kVOs8hBy9mcB0Dxly4ETejWq7rL8m6ukNBhppImrnR8hvlqNspCBu2aLxqQCI4
	za90q0uZverfpQmidrU4E/Aa7YBZPwDXuk1ElFOs9WnPfcDbdn4AjYEm05YOlAjH
	GKLKfsPVcQwlNv6L//y3ZlH9RHV+vEsinMumZoGTfT+1In0LF+Sw4vrepTgmBv9J
	gUHlt/DZyZAor5b15Ri77QhgwUt/hnvNQoNUpJMEw4cgN9/g76P9OEjxhRVw4K40
	t/3bfA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tqtkuc2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:36:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c536c9d2f7so156644385a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770111405; x=1770716205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FEwRyRc+5T8fGGzh4rUpKLJe0ns6o5092hg1qa+GDBw=;
        b=cmhG/llE9zkpnSEf9u6q+KM7SUGrRXTSG0ucvOIN9CBee2977UQWbcXJkC3DugAFKU
         VOdAFBGw6LchUIiE3mwpqK9wFJQ5jImHQUfn1r8EKvFl99LG+3zaMAkJw3nuIlT3xb3m
         YRqOPFCmBnj6tVywqiZhOTBayKEK2CAA+vc+dJfuibNgagZQYSgBO0YVu9PFxTh2uZvW
         h7+ExbLrpXNFCVPAudTy8FNQ600JqQ2c940LckK28bHAUio9vTT//QzuKkd8+D5VQylV
         /PjYiMrluGTc6gqiF45op16EVLcW5res+NbWWSatcZ3G6/G4WIbunm5dINlDbiZkj6sR
         lfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770111405; x=1770716205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FEwRyRc+5T8fGGzh4rUpKLJe0ns6o5092hg1qa+GDBw=;
        b=oNmdIdu7Og8QODMJRcV3bAhGgRGYz3ekum/eds7CnVevH0ospGLFt6QPy9XOzaFGv2
         0GuWWIYo0fChT1MyzXn48TqpOrovTT28lJG2KpiS34VtnWhVRwkTqYqfjTzmeH2/QuGa
         F9NOYJo6HkSjVXBKT+11InYLzYRdPQjU8DT52e+dg+tvkF5fYlyg4W6Jo4vryHd2qDv4
         yN51v7tQzlV9F2zNtbqcBzdjuEo+I1D6B9vmauRHZZGe64D7eUPlLxl+Md09Dg4uDAx1
         pWSqNuWaKhs7nqMRZTwPAYiXGJ1ougf9vCRbYAw7tNxrXS1I5zS/+44zMLHG/o23OlQA
         ICHg==
X-Forwarded-Encrypted: i=1; AJvYcCVl5G3xn4/s13yf9rvHCHrosHUTnDaSGyzRY2ZzM4Hi6BjS7AX7pjMH3ChMXuFyY7PjltJMD2fF4uRQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp5jB3f4tNcXGdQ9j/AjHhe4u5V0HYv8KpeCE09DUEw1hPvu4S
	W2jPkSixmuVfLfkzDG7g8f6R14YdALilY0TKUreVce0te3UxFJFTvBA9pGiyAEIxmJkK123h/J9
	ILJPRPsHWutxhEPItO39DgDF+o3r7c1iTmKh/45GzFtBiK9vkmBN4x+jXTN2eqwhZ
X-Gm-Gg: AZuq6aLk2j0rBJ/hGUwirDZkBp+RmLjWnjFHvaU/cTUyO0unfAc7EIgW/0PDTee/XRX
	7fhIhgB5HZEn37INV/wAsFh5bJNOF8+lTpKw6CAzQ8y54wbPrt4OydzUqY9AcKTTE8On1/j9/k8
	1lRCwmIC6/fTk8LcsFqzjSDPD3VQkhTWgEzwEaQCPQNz00kZOo87ORdzBEB5u/irbMAeKldAv5x
	+VfvZ7cN+A2L2akY40SmTSZ6hTWF10jyUeo24y691qFIMrFcXxiCVn3uIE9YF8UoDvtSE71GiTj
	VMucCBTONm0NBZG5zVbvuZ1tmtWqnhpSlQIg+i4YJvOU4YBRgtuQguqagbTyAalmLUf0l4OdUtu
	J9z+RCNVPAMbhjJw5Bmcir/0Igkxono9BlZ9dP4V1ZQ3qxle2izFhj1qIhHvXLXkkFlI=
X-Received: by 2002:a05:620a:29cc:b0:896:ead2:a657 with SMTP id af79cd13be357-8c9eb131963mr1402436085a.0.1770111405314;
        Tue, 03 Feb 2026 01:36:45 -0800 (PST)
X-Received: by 2002:a05:620a:29cc:b0:896:ead2:a657 with SMTP id af79cd13be357-8c9eb131963mr1402434085a.0.1770111404797;
        Tue, 03 Feb 2026 01:36:44 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ddcf8aa7csm881056566b.9.2026.02.03.01.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:36:44 -0800 (PST)
Message-ID: <a74b8e61-6e15-400a-a7aa-d589f3545421@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 10:36:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-binding: document QCOM platforms for CTCU device
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>, Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
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
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5911fe77-fe2c-4321-96a9-a1b6b3b5d1e3@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=XP89iAhE c=1 sm=1 tr=0 ts=6981c1ae cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JA-vdinaGFA0ZwrEKSsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: f3R4_ffZ8kLg77eOAlMOXbG3MdQxTznT
X-Proofpoint-ORIG-GUID: f3R4_ffZ8kLg77eOAlMOXbG3MdQxTznT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3NiBTYWx0ZWRfXwdyvJ0i+0PD2
 GFEuoPl9Fch0OcQKZVAtfS0QfTYAdTh7xi6Hn3h2tiYQa6VqkDKGN901H0XCB0I6KglQ5dxdsDJ
 V53ICG4aJQLZWRvkjOtbTMC7fbRBtV/61+BIGVG951Y34Q0qJohtZGP+JwfTsqGyc8Et9mgwWlK
 1RQyTzlO0Sw+rRVPN+1xQ1bDHK5mTi0RBeaE/ezaVwgtviTJ/4E8UdlBR0Uot9zbQpaei765GPR
 iPyjgETzElbr77kIh6UYg2bV0M9BOELYCjIzMaiAOA05zQ4/Ond0CXlp4FSn9/qDTfLvKkSAUlc
 PE3+LrizHWNC10iR6hJpF5+xKv9sJ5tsd5prN+mW81Rje1DyRx9196+rodse051A3NsN4uscdtU
 wE/hlSPukA/9mm1hBeVY0M0PboSVlo0iBvy2+vy7JtZOhNx8LS5ICXIAwNHZCxa8NaQqinwKr/K
 32aDwRB2CwQS9oTtDIA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262142-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9E125D6FA2
X-Rspamd-Action: no action

On 2/3/26 10:31 AM, Suzuki K Poulose wrote:
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
>>>>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 4 ++++
>>>>   1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight- ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight- ctcu.yaml
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
> Why do we need different compatibles for the others ? Are they not all compliant to the CTCU programming model ? i.e., sa8775p-ctcu ? or even,
> a generic,
> 
> qcom,coresight-ctcu

It's a huge anti-pattern with the DT maintainers, since a compatible is
the only way to effectively differentiate different implementations (i.e.
instances on different SoCs) of an IP block

This is important for the case where a DTB is shipped as part of firmware
and can not be replaced - if some quirk needs to be applied retroactively,
we can look for "qcom,glymur-ctcu" without affecting all the 50 other'
users of the effectively-identical IP block

In this case, we're already reducing the impact on the driver, as that
only looks for the single fallback compatible (qcom,sa8775p-ctcu)

Konrad

