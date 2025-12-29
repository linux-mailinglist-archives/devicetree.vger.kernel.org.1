Return-Path: <devicetree+bounces-250252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A83CE73D6
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:43:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67429300FE3A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 475612FB093;
	Mon, 29 Dec 2025 15:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XeMGwU4j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T5J/6A0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCD01A2C11
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767023003; cv=none; b=lPp54bwAH+3Tisz5J59ICuq77noD6s8uU3+lWp6cTD4cF/suUoG3YKRuxXjQwLjaj//OF4S/NVjD28md+dqz8YIFmyKQ7Y7KdKzm5OLgCcjfeY/f7Csbsh/HPrgeVxhLdQ8M0isNJKowgOeNWllkaAa7HcZlXSag/9jr2IZAGDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767023003; c=relaxed/simple;
	bh=KyDA5jPbitptgL8V2pPJ7YAiOEfGG065+97UtlBDPwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UpO3f71q6c3vGVcoWA7xzust+p5RWWU9ot2MPOtFRjeyyNBuhV4rsMC5dFL2pt7ezZ9jTdx/lfzzFWIs/g0hKHn/SRRsY1otgP0IP/E60kadIvwZTrlAwSEhicA7wxY55yUBLKiOWNhUxn9/hXVP3A74NPRxJNwu5Y2souS9b70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XeMGwU4j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T5J/6A0B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAavRM3371288
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:43:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tDPZx1B4hbN1p8L7tZRDpAuAg6RUpSWIFhPjpfL2tQc=; b=XeMGwU4jp+mQjeAd
	pMvAeIWNMCKYZlcJJT/bIDE1yOXUnFYFS7boNhHpcXtafjUo7V1nFY5R3foeh2Jm
	BKfvotKU2wEQfr2JFrYcv5fZZKnWPyJyIBMVlPcxr0wicAxPwFMOa+UKE0d9VE85
	1yfh2w5Y/Of3eLozY+Qg5tLCJ1jP41o6bdY99c9l2B7GMvAWI9zR09xOJWbkyy2a
	fPmZ/rq36dQApWPnyzCE1K7lTjjT2nPzXNwZagtvPSra8n0BlH2kSGkPkAQ4rrZ1
	kG6T9zj435fWZBVQ5xtZloMxkjmpA/1Z1AbOudI2Y/GQNOc/qzG/fDZ2ho/8pk/P
	+RCB2Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba4tnvxdp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:43:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927208so41267291cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767023000; x=1767627800; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tDPZx1B4hbN1p8L7tZRDpAuAg6RUpSWIFhPjpfL2tQc=;
        b=T5J/6A0BWG/DvHt22pCuLA9uh9sHNrZuPIE1MAxPGDz0Uc/OcsagupvepDmptPibIT
         k0iVQcUz2GvkX/Z0orAPloEC2IYPhOw/sQWdJbU5jlZkQhqcd7lo598/dS+nMx4TaqzF
         X20y1WdD+AQdZaIruGJnjVlfdFIOjaBnbr+AKcxP1Ahadf7kVzQsglb72X3sAwFPkYUw
         SLmkOxa/UUysppaDiDEOf57yH2wPatc26GAP0kuS4M9zpL+pRA7zCOwhEwtKFvGzgjKw
         HR2a4S3dhFP+QGkO2zJPWHUlGzNGQ0WrKYkL6qz4g+EZYOnegONe6CgPsLgn+e0pK8oo
         PonA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767023000; x=1767627800;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tDPZx1B4hbN1p8L7tZRDpAuAg6RUpSWIFhPjpfL2tQc=;
        b=f3ud0XAJfxm/aJw/UgogbglKa+fza8bJbyuzFU+f1rjujQV4ME8V7L/ahz/rnD5F/C
         myilB89kjjMS9N2fmUVkQyWWIotbv2srVCDfApNcrwqJcfv64Nrv8AWcxSaC2V4SH2vU
         ZvkuebB9duPNA88rgaFs46AtmRmB+LvGyPhhYRZBPERo/J5qIteKjJLjR7jtytI4ilj4
         sdQwjfaC+LHp+kJElhOik3kowgVX9+E867cPHN5wYYkewhDWB9ny5gr5oTVDibDzWqla
         bDgVNH8NrKuwuJKRmw297tgBGQWLJRnXvLKg0LgRGTE57DLmsNMD8i8TZ+nmf8lz0s4P
         pHzA==
X-Forwarded-Encrypted: i=1; AJvYcCVqAbOdgPrxABZnyaXKC8NcJSGQoiXJ4eWLMaNkLe90RC7jVvK5b4JGSj5oqvMz3zZ+So/lmmP8H2Hj@vger.kernel.org
X-Gm-Message-State: AOJu0YyojFDX76XQ8fSfDmnqcDhsEtBW5fVpwidLhe0l00PL4RxbXpHx
	OvFzZ/vmQoTOtpjymL90iEFtejnuhVGUWjRcNZy40kDfSc2mPdVHUBzTDvLlCGxiNY9P81to7X3
	k1BNiATbpqY9L87DNKC7A/uIoqhNuisi0GdWe5NBK++e1LRmgTufUPtNbpcGh47b2
X-Gm-Gg: AY/fxX47jATn1+P4l+fVgJ3/IEVOBf9dIPQlu/6EhnAF1+VaKtMlD/uklwUY1MIWy+L
	E5w8tr/Fh4xkLJM5Hw0Bx2eMsHEMMvHn2gTmvyXxXom52q/0u9CYrp2i/3Z6mqm1dge6p7Zud5O
	ItRmXfht4wP/9G9NFag8MGrolKxiX6VHW2yVpkTD3hZVnBS0XOjTybmHeNV37CWSaulYi9GH1jd
	NumBpqMvspbIEWWcvdMvJkU3tNpdSCpRYXP8FIhZZYFm0jC2nPIkSotAVm02sceHHnfMOvxRzWn
	tKvwZmtD30X2/VkNcmZVkdxxR6sBvWFroV3Iru4R9Zzx8RTyPJNzPy7vIQK5Jw6l/22D1Dz74Mp
	QTqC9f28k1H2XlpHd+xtE8iewrBNic3OUqZn8LRMAWTZxgPb3IuPH+jEbi9+/Fjn9Ag==
X-Received: by 2002:ac8:5a46:0:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4f4abced018mr342115941cf.4.1767022999982;
        Mon, 29 Dec 2025 07:43:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4GslQPK0btiYKcbqKhdOiyHZI65pBxoO4J3Cjlea9v68qz5mTSWi+lMtSPy2Ny6eH1xPqGQ==
X-Received: by 2002:ac8:5a46:0:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4f4abced018mr342115521cf.4.1767022999558;
        Mon, 29 Dec 2025 07:43:19 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b90f53c16sm32305340a12.1.2025.12.29.07.43.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 07:43:18 -0800 (PST)
Message-ID: <98e90787-885e-4e9f-a854-4a756e33ec9f@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 16:43:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-tama: Keep labibb on, so kernel
 can disable it
To: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        "marijn.suijten@somainline.org" <marijn.suijten@somainline.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251202-tama-labibb-v1-1-f8f3fda53d1d@ixit.cz>
 <ed0bdcae-6fa1-48a4-9618-e0ac09097f9e@oss.qualcomm.com>
 <e3590c98-785f-4774-bb57-04c65cf12d21@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e3590c98-785f-4774-bb57-04c65cf12d21@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=G+YR0tk5 c=1 sm=1 tr=0 ts=6952a198 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=YbIqboIzxJKirXsSkAcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 0AgUUblKjNYYw8nEg4egD_q2m4NUbRam
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE0NCBTYWx0ZWRfX2gN9kKfof7a3
 6NSdcwrW6KW3TpSguF2IetXhJPUDgoKkV6Hsy5h8K29tEAuueMHB8AVKV0lIyW+vW3ZTU/Ddph1
 +x5njSJ3Rs7QaNl7U6goIs9fcVazSV10hJAZ+XvenPjSW5IzSIAomqk2Ek8rNEfeYiGhMGwOx9Y
 wQRqF39KQRBuL3ZrttcZTspF57HLj+UdZMY+jnlQKaXr+mfhyPZqbs45E5blzi+TljKRE3vj7Cn
 KETSyybvRRDhM1GrZ1hRqVL4UofHASNcccqYKe0IySV4x94VbFq/HJtC+7FCYIS85ysH4q1U9QC
 IoDSJnC3zXodeqPvDkUXs2SUV8aXnlmdVLwoxNPYe1EfykjzU+xU0pkQDGFeiUd8/MXfXW5Yof1
 rVyy4kAoIlpov2F0y1F+VXlPIr7d/VGHfUzWqL49JGzvEx94wcudzhUIGM4MRa5mkGeThP0IsEe
 mf0f5MD9H0tYMebrfeA==
X-Proofpoint-ORIG-GUID: 0AgUUblKjNYYw8nEg4egD_q2m4NUbRam
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_05,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290144

On 12/15/25 8:07 PM, David Heidelberg wrote:
> On 02/12/2025 13:55, Konrad Dybcio wrote:
>> On 12/2/25 12:31 PM, David Heidelberg via B4 Relay wrote:
>>> From: David Heidelberg <david@ixit.cz>
>>>
>>> In case if they were enabled by the bootloader as part of some
>>> reference/common routine and left hanging. Linux will switch them off if
>>> they're never used.
>>>
>>> Discussion about it can be found here:
>>>    https://lore.kernel.org/all/20251130-oneplus-labibb-v1-1-bb3653e43120@ixit.cz/
>>>
>>> Fixes: 5dcc6587fde2 ("arm64: dts: qcom: sdm845-tama: Add display nodes")
>>> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> ---
>>
>> Perhaps "keeping it on" is a little bit unfortunate in that the wording
>> collides with keeping the regulator's output enabled, but anyway
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> So, friend fixed tama-akatsuki against -next tree and having labibb nodes there crashes the kernel, so it seems disabling labibb had some reason.
> 
> So, please do not merge until figured out!

+Marijn could you take a look?

Konrad

