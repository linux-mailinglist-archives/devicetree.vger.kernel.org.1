Return-Path: <devicetree+bounces-265721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEMOHU8Lk2nw1AEAu9opvQ
	(envelope-from <devicetree+bounces-265721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:19:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 114CC14349C
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C5A23024177
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE9430DD08;
	Mon, 16 Feb 2026 12:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uh59LdEx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fYxYa3rs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0F530BF5C
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771244345; cv=none; b=S73gEWMeyD6NpHyTqTNS6LfrVXTC4d7GQhIeA2YcgtcXGzqR7r+4GO1uuxeMWhLmnP1IFpmWBM+TJq3TXamVPqw44LZzJdtn0NIDumU1q0z+iGOUhftpFoLQmxQthnCsQrh3myfO/BoPmylR3kFdvliK7vSg/L+/sm9h2//eOro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771244345; c=relaxed/simple;
	bh=qF6sWr30Kr12NDVrl+Ez+nQNFEANHqIDNqXDpkPuGcg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A3wd2rVhd2QjmCjRrHbZYmekHnC5Z3yjMYxJxC2MEOxkHU4NhajfbdKq4SbAjsDKT781Sq3w+4pCK0peygigEbDl8iJ6M+8vHZAlPk4ojNVnEz12c2wFitqu0XlYc5eVe9+akzQieQJ5hjFT7hOGM1x1b2BenLfUUSL5lSuNmRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uh59LdEx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fYxYa3rs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GA5Qjd3240052
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:19:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AEKTw5C+zxMfo68DsKgl5OTHrBuzxHktqkQD1FRSneg=; b=Uh59LdExsjjW+4ph
	elmCKKMRYPWMCLO/wUH14+zwM8FyvqJxThXwAbJvO6tp+Sv8eyeH1wx6zw7E7ZX7
	9ztG0jHIyM8S7R2otOr+oTZzn1qzC5dYaZlZobHt9Ab8ltBclU+MlbkMJP4rv3JC
	6i30wLUPRceW2cXTr7kIxu3J6n6zw3jYXcwy460/ERu/GW2DjIO8Dx11mANi/aSA
	RGXYd1HC3Bv/H0W76tDWOxg+2kRIiLleN9EAqOn//tMceV3lHnp1XnNi0hZASjd9
	Dv3aRS2NTB39HJyU/42qBNDku4Z4H47IuhcTroSwCv9+PhK+qndv7GF/JAEN8Rsu
	65DyhA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caj7jcam3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:19:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c7177d4ab4so212066585a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 04:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771244342; x=1771849142; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AEKTw5C+zxMfo68DsKgl5OTHrBuzxHktqkQD1FRSneg=;
        b=fYxYa3rsCr1OW7v2r5hDPfoXvLHVn9lJeqm1RUuiYYUUxEfRybmLYKtuYjNqtSD2Er
         xI5CM7YPxXPdkIDNS55xXOICqpYTtfReJB6J5opmtilZE3vd3/ifGr/KfFu6Bs/bxMgP
         2TJtpaBN928hSUrYMzmaOCNGXBtpBbciqBKP/DTQIbL0Qeh7/q4RxfCb3Mr6fVxSJDZs
         iP7kGqZxXHaZ36Gobg9Yn88ViFhxJqO/O9AxZK2lp7KaL43gr3/HNoTh4wz+ihEXE3oN
         6bqxgZBJzepPGUX/dGr8qKyuP3GFfGN/FTICj/FTWBm0LC+snqoMbFGFUrbDrUP8w8dS
         hABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771244342; x=1771849142;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AEKTw5C+zxMfo68DsKgl5OTHrBuzxHktqkQD1FRSneg=;
        b=LqFJzpdwMNH6+clC+F+5lGGM3ohnHBfey9vnstY/cunXyf0Oj7JuTWp8Fz4J6sesGT
         3FJeVkXl0U27uLiY8BCU/uQZj3Djh03jHntnJlggNRyZKsE1JjgSkFW40Lp48PbQrcZf
         dMRqaOu79mKCknwo9uVgA0a0ZjqTdmqLK7zKV81/SluI5o3ZHNYM525wLHfJf6/9Qa3b
         hbLeAJr6OlhMI5exHNk2uKPzdUiA+SkN59X44gtanHGtsGXC6KD0Rdyl2qpo81sEZ40u
         hkcnHjCJqPOhBn1NaR5XWtmW8Y9t9W+Ibge7of3BsSmolMFerITAYDu813I02bc6F7AU
         x0qg==
X-Forwarded-Encrypted: i=1; AJvYcCUe5JmY+DzsOz2zYV+47KhiqrrAbjkm7AFG8nBm/mSKGnQ6stlGrTykwmzEEvFdGsBc54n5GxPQLE+i@vger.kernel.org
X-Gm-Message-State: AOJu0YwwRKgfGX7S3IBl1WtKuMrZROwu7jhVfcQqhL//xgaGl/4ouvV/
	srndrcvu1CefW8Gxumv8zHHP9JTu3Hu2d5l+KJhFmEa0V1hOs+d7h3n1Mq4YHlSaM0l/fgNQlEe
	VmUdAwjRRK4VD+xAd1YSdOY3gozEIbcLT3epo3i1ZF1zSH2w4p5a3XhA5OLfuicxj
X-Gm-Gg: AZuq6aKSdY4jJ2YihkTt57L4KdA22cG2KhG0atzJ4QskwW+zGaPsQ5LkVNyarlfDPVr
	4OgvCWQk08Ibay8CTUw/efGybyjkwE8oWeGfauXwNPe8akouJo7tXbzUbWe2bF9Ck/GqsEjPkh3
	Z/bpuSaTjb+1ybi4rS7giR/0cRhtAP4O6AcAuws5ckS2CuF5KnaMm5kOQf/aidRO4F50ZoTptKd
	W+9B9C8KE0H9HH28hZyPqZvc+Sn72V10ZSHwSCR+HLqAh3Q3f1P1COjWcC6JbgON/AdWKaQwGnl
	WIXylzv0kqwbUUTrirg1bM2hZzkeOx9xFVwBCjw1UgzndUOLeMcAy3s38pzl50j6rypSIi90Bl4
	vWg+ZBT3PVprc7GA96jil/l7EPAZOAYuqvnK5JE33xQVfDxQ5DiJh+PO06IK2uYLdGydyz5vcIo
	jUtEI=
X-Received: by 2002:a05:620a:2941:b0:8ca:2e37:ad06 with SMTP id af79cd13be357-8cb4090d491mr897414985a.10.1771244342203;
        Mon, 16 Feb 2026 04:19:02 -0800 (PST)
X-Received: by 2002:a05:620a:2941:b0:8ca:2e37:ad06 with SMTP id af79cd13be357-8cb4090d491mr897412085a.10.1771244341538;
        Mon, 16 Feb 2026 04:19:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc766519fsm241141666b.48.2026.02.16.04.18.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 04:19:01 -0800 (PST)
Message-ID: <3ecb8d08-64cb-4fe1-bebd-1532dc5a86af@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 13:18:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
References: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
 <20260211-enable-ufs-ice-clock-scaling-v5-2-221c520a1f2e@oss.qualcomm.com>
 <bfbe04db-bf64-418b-a75a-88879bf0bf2d@oss.qualcomm.com>
 <aY7MidG/Kcrs83O9@hu-arakshit-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aY7MidG/Kcrs83O9@hu-arakshit-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dIurWeZb c=1 sm=1 tr=0 ts=69930b37 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=ZkWj3vqgG5hmBBxJETsA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEwNCBTYWx0ZWRfX02wWl43QL4MZ
 oR2l+dLeq6843bCvNnIo7SKH4IRebWGXS79xbohWcDr14Oq8CXhGzWGapinr9gOOAiksxfjxZi2
 jER7/O/c5CIjITnWhLTbH//KxBmvWEw5agFYEvlL9h2PWTQ+0yt+61PPbOcb8QyZ/VCSF4eTnLK
 lp0SKlJ3zfOv6HVSpFv80gQcCRygBj+PLc5vlK14zhh+Fr8WANLRaMwLQ4iSoGpOkiwCxYxNx2z
 Wsaz9IfUlj+0lxSCew0JY/rDLKSf7r3E0YKwzdnuS81LB7YErdNryEKAwqW0BiTS0A6Ms8DtDAr
 boQ8eVDyMaHV4pQ7Zuf02Gh4C8Vw4x+v2L/516Hedck1EBl1JzT60ZoCKH/D2m7GapNrNQRxpwQ
 lFexyUSpIwAhB7l+rMYAaUffO2OUTkyFNF/mPiTEcX4bkIzWZirq7oyF07a1ih6KMBzY9EsM0wP
 6UNwUa00OACxog1hYWA==
X-Proofpoint-GUID: jmuTo-RVu_LCJx5aBI--JiNMIzL6bTza
X-Proofpoint-ORIG-GUID: jmuTo-RVu_LCJx5aBI--JiNMIzL6bTza
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265721-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 114CC14349C
X-Rspamd-Action: no action

On 2/13/26 8:02 AM, Abhinaba Rakshit wrote:
> On Thu, Feb 12, 2026 at 12:30:00PM +0100, Konrad Dybcio wrote:
>> On 2/11/26 10:47 AM, Abhinaba Rakshit wrote:
>>> Register optional operation-points-v2 table for ICE device
>>> and aquire its minimum and maximum frequency during ICE
>>> device probe.

[...]

>>> +	if (!ice->has_opp)
>>> +		return -EOPNOTSUPP;
>>> +
>>> +	/* Clamp the freq to max if target_freq is beyond supported frequencies */
>>> +	if (ice->max_freq && target_freq >= ice->max_freq) {
>>> +		ice_freq = ice->max_freq;
>>> +		goto scale_clock;
>>> +	}
>>> +
>>> +	/* Clamp the freq to min if target_freq is below supported frequencies */
>>> +	if (ice->min_freq && target_freq <= ice->min_freq) {
>>> +		ice_freq = ice->min_freq;
>>> +		goto scale_clock;
>>> +	}
>>
>> The OPP framework won't let you overclock the ICE if this is what these checks
>> are about. Plus the clk framework will perform rounding for you too
> 
> Right, maybe I can just add a check for 0 freq just to ensure the export API is
> not miss used.
> Something shown below:
> 
> if (!target_freq)
>     return -EINVAL;
> 
> However, my main concern was for the corner cases, where:
> (target_freq > max && ROUND_CEIL)
> and
> (target_freq < min && ROUND_FLOOR)
> In both the cases, the OPP APIs will fail and the clock remains unchanged.

I would argue that's expected behavior, if the requested rate can not
be achieved, the "set_rate"-like function should fail

> Hence, I added the checks to make the API as generic/robust as possible.

AFAICT we generally set storage_ctrl_rate == ice_clk_rate with some slight
play, but the latter never goes above the FMAX of the former

For the second case, I'm not sure it's valid. For "find lowest rate" I would
expect find_freq_*ceil*(rate=0). For other cases of scale-down I would expect
that we want to keep the clock at >= (or ideally == )storage_ctrl_clk anyway
so I'm not sure _floor() is useful

> 
> Please let me know, your thoughts.
> 
>>> +
>>> +	switch (flags) {
>>
>> Are you going to use these flags? Currently they're dead code
> 
> I agree, currently they are not used.
> However, since its an export API, I want to keep the rounding FLAGS
> support as it a common to have rounding flags in clock scaling APIs,
> and to support any future use-cases as well.

I think you have a bit of a misconception - yes, this is an export API and
should be designed with the consumers in mind, but then it's consumed by
in-tree modules only ("what's not on the list doesn't exist"), so it's actually
generally *discouraged* (with varying levels of emphasis) to add any code that
is not immediately useful, as these functions can be updated at any point in
time down the line

Konrad

