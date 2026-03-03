Return-Path: <devicetree+bounces-270431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMcTH6O9pmlDTQAAu9opvQ
	(envelope-from <devicetree+bounces-270431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:53:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D436D1ED015
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1530E31297A1
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EF45386C1D;
	Tue,  3 Mar 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="evIDzhV5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JodixocS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D1231F9AD
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772534914; cv=none; b=uh5N1+d6ikOKRfcdMqn2SsqxDdixBVFxt/k/EVupuQErF2lAdLCpHSfNRaMpks4bMsTeQ9fUKM/xjWTom3vWUOzQx7yEJBPDvoiindHxaIG3ucrjZhnlMc6bpdoqTgX1CYOil7OB9+qwSH9aRR2XPCm7Fqg74/DgD+Nf6lcpcog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772534914; c=relaxed/simple;
	bh=nrWpKQd48afY00OFiatizmuanmw00CZhoBaHeRVDdO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a57U0c/1biBMlYmNQ2WoReqiE3s4U6dXi43UfPOkYW2Qp3WEbHyWqcNdx0TCOw9USK6Bu2bakabMTwomUtZtaBGbi7vJY2i4ePdq96qYrLqV5+FPhiYG0qylSLNrYD69ns7d5H4Ubh6tvO9AandwdB2J6ZwtaDm+KgiMI0POY/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=evIDzhV5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JodixocS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n7IA582439
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:48:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mN4nLOuJbFcw0IPzg1O3D6bf9NWPfW318GG1pHfKwhE=; b=evIDzhV5+AI+JL2t
	sXSeIoq++IsFVrWvTsksEZE3VL19GXVhVjqSP0mp2EsW173O4L/03QWgtSoUSl81
	RpzioIQsTCahrdChkGPojI3TtvO7T/BjsfEdMMVsJqMKqzuPonECY4xIsPl0rR4k
	bBvxYsihV2KJmPWW5wPPycCm1n2D7H/GxX5OzVZsn1vqO/fiFX3ZDm2KrfIGymMl
	9ELd/PtZ36zIzuYVv9WRGlWEL4BIJFW1I5caqeviYPfJ5xfMnERtCR7cO3gySVo9
	7V2Yb8C85DO4Lg3/2PzSxCrbw/Eqv5JTt1yUFmyt49kvB17fUideQqa7iYl/eEkq
	upbtgg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnh6uamq7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:48:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb456d53a5so487143485a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772534912; x=1773139712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mN4nLOuJbFcw0IPzg1O3D6bf9NWPfW318GG1pHfKwhE=;
        b=JodixocSFi5zT2Q2zEtCwSFMkvpKq6LuMFXgkzCeV3iACmNQ49x+Yw565/zSnXS4VE
         iHM5UIHArKDCWYgP0JrMLCjl0nLxquOYQuCDWQIz1gNxwd844cuFIYPEsyv9jE1IJa0J
         BnzpZg4wEwf60h/jm6sKK2Hb8uZ9+5JfFK2IiXI0U+9M/K1o9zw0RexWC0+3sb12J9h2
         moQmOYXSq45E7/SwR/HhpifBF+LZnvFdGfNHdScHhpAL+gXSjrQuJxLCbvYtkdGdZa4j
         dE40t+F4VT18wcgVERv52nZu09M1tghLVlB7ySU4l4l47L3W5k5clSGSoZD+iBlamxIT
         gmag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772534912; x=1773139712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mN4nLOuJbFcw0IPzg1O3D6bf9NWPfW318GG1pHfKwhE=;
        b=ZRxCvw/7Ww7x7hFfp0+X/FtHg7WPUchlt3ydOBXNoZ1L7uXmS71q6mOl2y7T5u59Qj
         WJFvCHecIp6UXxn86PZL5508GRD0jC0jbVXaj7/6KwJVgmA0Zxllf1osW5HBb/0XPenu
         nX/EK7dko3fQG9J3OxbfJBMeYgre78S/NJ8k/Y+TKAddEcgG8YrJpRcGBYGLc1sMT6Pu
         2Ee0BhPO6jJG6B5TFDHyeQikIKo/B09TuqB+cEpvvz5wo0Nw3cV+/6KsBya8OB9p0PZh
         PDvkVM8dqNfdYV2YG+YjyPUiNWTYjyMEqgWP1uJaxsi8aUzzf7XHREQBdjYv5ACuJxDC
         IDFA==
X-Forwarded-Encrypted: i=1; AJvYcCXEKnkXedXCR7VrXzEkOwaqRaKQv4KlyEZLL70z9IkEOr/lJragSLZe9piAvBK/InYMOLFePqabkDMC@vger.kernel.org
X-Gm-Message-State: AOJu0YyrPT1Mo4c3YpmGH5dgDy0Rf7SVzPZu68jNq3qN+Y4Plpnnczl2
	iLTFl+XmqV10yia59rSRvvY4FaoVjzuG86SFhWcSLL8Zney5XYRfbUKpHOjrS6j4WcH/dX3zT1R
	feZP3E6dxJXYTbKJSeaGxjY6tfAXU33GjfdO6bLZnSmhC2F0+t3EfqKbaM9BPEFQH
X-Gm-Gg: ATEYQzwLyv390gpC0hGW6Mehksrw7jRq/B6kcqMzTn/Diow98G4DHoCVNlPY59itFad
	102m2lZA5TKSqnSdonc/rbObKLkrlEj84ClChy9QzXI7+1l9D1pEXeKg0aclZOWJjYeqL/cQ40H
	ADJzoxPJfDwrqnQjTzE/z70Np3iB3YMxQT2zrk80RyHsAuXVXG/6gGCiWEWAY4Mki6pxMdc7pYs
	3OdW7LbrdpOkWEVmWKWKa/vFhKkc6XJR3N2PGYCZTI+Z9AsfQUwqZw5ywZNTuctf2mJHavy9z1s
	Zubcx43HF9tXTVTLqGczsK4rNgfnNfHp1vESbtzyx8gX3uynTXTk//cqCGJtoDvemIHzEYHy8fN
	M8M/6vXzkvKczuk0p/RKkeDPxD3x/NpimA3hqxIfHKuW1qK8GqUU+I/3nS7sQYKctTQcQ1lWIgS
	iI9KQ=
X-Received: by 2002:a05:620a:4405:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cbc8da1ef9mr1472804585a.0.1772534911710;
        Tue, 03 Mar 2026 02:48:31 -0800 (PST)
X-Received: by 2002:a05:620a:4405:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cbc8da1ef9mr1472802785a.0.1772534911193;
        Tue, 03 Mar 2026 02:48:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae93357sm569909066b.48.2026.03.03.02.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 02:48:30 -0800 (PST)
Message-ID: <78d08114-d573-42be-9cff-39c228c68848@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:48:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: sram: Describe the IMEM present in
 Qualcomm IPQ SoCs
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
 <20260228-imem-v3-1-20fbcc1a9404@oss.qualcomm.com>
 <20260301-secret-exotic-nightingale-80f55c@quoll>
 <4cf9c98e-767c-44d3-9e71-bcc790e83997@oss.qualcomm.com>
 <edffecfc-ea3a-4c1e-9e72-58c7c134248e@kernel.org>
 <d3de0b25-861a-4261-8d9b-a3785187bfdb@oss.qualcomm.com>
 <6606bdbc-95b0-4adc-92e5-cad70d250cee@kernel.org>
 <33737c4f-b668-418c-ab03-f27ed3b6fcff@oss.qualcomm.com>
 <cc30861f-1e10-41d5-87a7-496e18bd358e@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cc30861f-1e10-41d5-87a7-496e18bd358e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA4MiBTYWx0ZWRfXyk2+Wxl8FD49
 cF3hnWC3GqoUOZXSeIsTd19s5E9yMZhk6AewWffr49E9EqX6oqkr1nz1+pbRKLN+zqYWeCkM0Bb
 lPpGozHdhJmexgULX/i5PdFIQPkcsU8+j86WWo4qCfilju1+VayYGCL3wWYM9UMDOvJNcvES4wi
 k7V/uysYIV4lzk+jYVU6CF4mGIllzgYlpZlzax+nKOtNeWKetIRc16GGOgtVPby2f+GMkZsX7m1
 vTqwOm/cWOew1zZqkN0MT7uAzHEzimoI/NqZJ9v57P1KyNHyptAWzZBw4fv9nCn12MdogVXc2+E
 erQnkuyvNOwNd1oHUU4KlDkbd66i82Di+YpdyCtqEy9k+gL6taqoWamcM/S5+xM8IQ5sPdQWtF8
 Re22XPJqtMrK4IhkKM7hIci/kzBWWs/xTJe4miD+47FYLkkXd2aNKSONiET89JWLpL0g86B7BzS
 4ZpJACCifTZAiiIcKvg==
X-Authority-Analysis: v=2.4 cv=MuhfKmae c=1 sm=1 tr=0 ts=69a6bc80 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-F42I2y-Sy8dTl6WNdAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: m4uKRoYD3Ff-pMTiP4n1dmUuWKq_dPRn
X-Proofpoint-GUID: m4uKRoYD3Ff-pMTiP4n1dmUuWKq_dPRn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030082
X-Rspamd-Queue-Id: D436D1ED015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270431-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/2/26 5:33 PM, Krzysztof Kozlowski wrote:
> On 02/03/2026 15:56, Konrad Dybcio wrote:
>> On 3/2/26 3:54 PM, Krzysztof Kozlowski wrote:
>>> On 02/03/2026 15:10, Konrad Dybcio wrote:
>>>>>
>>>>> Also not accurate - "sram" is not the reboot reason, which has node name
>>>>> called "reboot-mode".
>>>>
>>>> What I was referring to is:
>>>>
>>>> patternProperties:
>>>>   "^([a-z0-9]*-)?sram(-section)?@[a-f0-9]+$":
>>>>
>>>> where the 'sram' (not 'smem' as I typo'd above) is obligatory
>>>
>>> I know and sram is not part of "reboot-mode" name. It is "reboot-mode"
>>> in existing binding and DTS, not "reboot-mode-sram".
>>
>> In any case, I believe it'd be good to drop that requirement
> 
> Ah, and one more thing, the syscon-reboot-mode is Linux driver with its
> own Linux requirements - syscon - so probably not working with sram
> bindings. That's another reason full binding should be posted and tested
> - I speculate it simply does not work.

It won't even probe, we talked about that a long time ago on a similar
occasion

https://lore.kernel.org/linux-arm-msm/f6b16d1d-3730-46d1-81aa-bfaf09c20754@oss.qualcomm.com/

Konrad

