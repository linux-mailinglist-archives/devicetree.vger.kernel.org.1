Return-Path: <devicetree+bounces-244627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F58CA72C4
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5800230113AD
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9B03191A8;
	Fri,  5 Dec 2025 10:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ir6dk6M0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OHLOLsZC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057B72F7AD6
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 10:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764930788; cv=none; b=i7GmpsW/9V0O1ZeUGaQkjED7WoEaiLd6ln2NQqJCgT+lhnrlrQA1XiRudMLVFbw7oYxIhZ+zN4HZzvIa3wsj18dayloEdNhIxerxGVPZlZCL8i5GosFCg0dl4e70DhQsOzh5jJN9rbpILjEx8Lw+z+yP/maq6u4I6tttzqJp6iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764930788; c=relaxed/simple;
	bh=idMLmOICrPcDIMYiWn3R3aY6XiJobzNee7mxzq98YbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JY8wIaboET6zTtI11CA/h4T6+JlBBP8GptyaaVvVHVla4Pz5BhV8+epzoNMQOouBOjMKtw0QoOmnnCAmhXeFU800eob1Jg8tIbHM9EhEmnLD76RMTyL7hDXPbYmrYQlFjuxSqdcvvSuE0QKrawqdu03Zu962abBXp59vWvECrSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ir6dk6M0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OHLOLsZC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B554HkB3529435
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 10:33:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ugoAT51597Z1qdSUskJpMWyCSA/05zjeSfNH84OH32s=; b=ir6dk6M02iux1mVW
	ONNhd4Y7nrWFH9CYRNkRGS3bV8hbnf1oY1pQ1dPakFGtl7MreHKR5dr4MhU3oHsa
	CHjzqu18bNzzfkh3N446/Inn+LxrM6UBth5d60640YJfW8LkKRtjmnMOsgk8NFaL
	NbKg8uK1j9nePnd+p/cseKhixC2/WArbKQf3bzeOFZcWxGHaMFlNF9Qe+1UX4uRg
	8sU4VjKzEdtZA2n0X+AYEJ6dt/doRrxKrBsi3HgVbNcCgDZJCdJk1JhCJw5HBU/5
	yn4yylvYWK8D2qfAvfOct0MN7e31kcV41tREjJ99TNVDZzbo08B/szouFBBelna8
	q9rbJA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aurwvgv8g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 10:33:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b1be0fdfe1so66083385a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 02:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764930780; x=1765535580; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ugoAT51597Z1qdSUskJpMWyCSA/05zjeSfNH84OH32s=;
        b=OHLOLsZCmHuryIKiL7nFLgdUYO0Huv8ZYASZDFIm8vazKKrnHPvP6QNUPi5mB5Pl4i
         7iTqru+0/gvTKd+bKgePgvSLSImDNl+bVGoU+ufTFNTA71RyEKTC5rLjfOTtSQpQxY/2
         tQXMhgeaaEJndPliPWdMW3sB/pGCTNvDPIaxq5sIkeowgb367IAj6ovCYJGp6ebKtT21
         aM9U0O5V58Y+7axA03IZmGC8PQ4f3IenALzrUo6RiNc3nRWkgApwBfoCN3BRx09moZsn
         u0030t9d4kRJqaQYEVOKlsCoyI0uDc5wVSLLO/3pqtaF9d4Zcy432tB8ynRLy7jVixSj
         u3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764930780; x=1765535580;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ugoAT51597Z1qdSUskJpMWyCSA/05zjeSfNH84OH32s=;
        b=BzN/Gu6skYiQ5mi9nXd1dkST+i0iaNsc2EpHGpsCGUv16KDsrSi9FuFCrm8X8Z9MCA
         jyrmfcAIKCQF2/7DR2V1LDI54namV5Hm2bohSd+FvubvM65OsY/Yo8viTGenVWZOGUYP
         Bn5sqPYRzu1IWOLLxTM6l4HMGKGpQoBbNKfvy9JWO7pokjeCeZtYXdym4lCoUm7y0Nl1
         AZ6y4fJanKdf4AobT1Q61JovsIFstQDs4uDjnzWWJ3kUSnr4rQRhi2Av2PfgU+mU834V
         wMEkau9JR4mMGXPDrCS3740fF0ucnliR47YPXW094dxsq08sJDusnUlVlg5U11Va3gJi
         VQQQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2/P0pbEZ7e4aBQO+3KZ0/Nowck/s8N4pVc6Buyr35qrPCy9kYqpBmIMh9+nD4N0n7BRuGA5j5X1H0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz60+6w7dCk/bpBePeDjgGaBG70ki/jku5JG9AlYFBCCmH+VU60
	afOVU58M+L+nMMC9cwdlolU5c8L2GZu6Ds3PsvT4HMRO/JsOxoEQSBfqCBgtTIvOMlx7UdD4wWo
	GXEKb82BP1tRCRKzT76qhR4v/fxhmlWCnbFdBUMlqq73Z1ic8J+PyIcbTg87iYikf
X-Gm-Gg: ASbGncv58WiQL/f7li2SVbbc4QRKt4R2MgI1FWrscfraUye+GWKHyBQm0s4w8THt7JW
	ezlWANMDcNil++nDZxjhQeYP4GVzrn72lfnPPhmeVve1IUiiZNfxM2yECISTlDEfhyk6nQU7eF9
	3dT73cIsjgKahST8N3uw1+U6bPTeT+6yyWcqtcv9/eGeZFHBTopRrButiWuCS5KhgTdK8rnpzRo
	5UsbnAvUE7lRJBFMHCD2UItL+FPgLullVRz8Fh5MqmNS29xEWxbRboBTNfoz4zL0HjTJ1+g+OUz
	gNNQwCJane/kD5WiIQK5eTke+oBabg5DXHHRnQKjk2KGDFUj7LYiYHvLKQCf02Fe2AxTBrQV5q7
	kAO3WLnEhTe1iK5vup8cAXemmBvr4UeYmFh+5Lyqg1+YFY4PKu8SophtCni9g5vvT8Q==
X-Received: by 2002:ac8:7f08:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f01b3b1c39mr83308131cf.9.1764930779942;
        Fri, 05 Dec 2025 02:32:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOrWRamMFl6oYqXXHY4sG3dBkTgNbVzJXDE5kOOeceEZCCLvZMNJJmI3WJdbRzoWwi4qPqaQ==
X-Received: by 2002:ac8:7f08:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f01b3b1c39mr83307941cf.9.1764930779587;
        Fri, 05 Dec 2025 02:32:59 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f445936dsm339845966b.9.2025.12.05.02.32.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:32:59 -0800 (PST)
Message-ID: <a6561d3a-87c8-4a1e-bf1d-f7ac390f8424@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 11:32:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100: Add crypto engine
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>
References: <20251127-crypto_dt_node_x1e80100-v3-1-29722003fe83@oss.qualcomm.com>
 <08284b5f-a6b4-42f7-95f5-28161ddcd356@oss.qualcomm.com>
 <31d09e5d-7dd7-407d-af25-c5d1e5c9c431@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <31d09e5d-7dd7-407d-af25-c5d1e5c9c431@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA3NyBTYWx0ZWRfXw/YQEOkMTawX
 2Z6ztlyB4TN+QD4MHJC+riu8F7IKU8DzYTvIIeCmR4ov/dM0khX6F3yM6IY8M/7l/kt/bdHFGf0
 /cDrNV+dekrUkQpWJirnSWlC0WPXrssevjO4De7bPinC5SECb0fkyS9qtyJW4EOj1UYE+wY4LYh
 6PErnJW/dsC0cC8ai/5YG7naovNyNn9GWYrzyFEWkjwGUYJwvmoSFI84NYuMzZFyimTZMXpRIRf
 Wpxy6C9pmvYEgfAX08zm2MgQN+LJwPGxnzi7mMeOXBrTHf/dmpQK3xTlTeK/o9mxcnbKIhsMmyp
 k9YZ8Ro+cnvxQocq9QCFRp/Ub98GYRDvrfaFi9O6yMC3LpTyiMlAfrPQDM3FQXEIApGPIptgMRX
 4VFQnwkIfog/R7z7/L+bW9+TbThaaQ==
X-Authority-Analysis: v=2.4 cv=Yd2wJgRf c=1 sm=1 tr=0 ts=6932b4dc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7Whr2EFx4CRF9O1MSvMA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: NEX5ltBTCaxE2oSKv6_7rtL3iXeaxEuJ
X-Proofpoint-ORIG-GUID: NEX5ltBTCaxE2oSKv6_7rtL3iXeaxEuJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_03,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050077

On 12/5/25 11:28 AM, Harshal Dev wrote:
> Hi Konrad,
> 
> On 12/4/2025 7:14 PM, Konrad Dybcio wrote:
>> On 11/27/25 10:43 AM, Harshal Dev wrote:
>>> On X Elite, there is a crypto engine IP block similar to ones found on
>>> SM8x50 platforms.
>>>
>>> Describe the crypto engine and its BAM.
>>>
>>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>>> ---

[...]

>>> +		crypto: crypto@1dfa000 {
>>> +			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
>>> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
>>> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
>>> +			dma-names = "rx", "tx";
>>
>> one a line, please
> 
> I did not quite get this comment, could you please clarify a bit more? :)

dma-names = "rx",
	    "tx";

Konrad

