Return-Path: <devicetree+bounces-254387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E82D17A1E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E810300F18F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1E5C38F93F;
	Tue, 13 Jan 2026 09:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SfuRzeAn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JQaGfADS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E6236CE1B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296450; cv=none; b=sBPQfz/P86YY0imITLaCNHKa4wbYXJYRrwTBb8XW4EdDaHguzAviwZofjyE4SQhpC6WXXMfVCg7nbdXNMeeLTDmZbhG5gdq+PIUDKbNL92IhM6LPSoTgo3gZ5afG8Kvry3q05R2e5l3aBbQxyYxHEzqH3pXl+W0zg67wXOgcm8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296450; c=relaxed/simple;
	bh=Fz3cR76+MaQp/XIhDc9c1VZP14LpV9CinThbODOLIbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cuKm/8UMa72TXpTWmyDKJsXRTjBslYsMvM5lD/DusUGEMfk1JGDIEDFplXg/+jIY6ISK3CFBVZwT/7zcsudPttMJ8/DDZ2S5mg+tiguqYrGdpyAaTTXE0utM7nVFI8sv5Vm6N8VLPYT9+Ul8bHGZTAzbEeJTq4Xj/iAXLszFBRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SfuRzeAn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JQaGfADS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5ngdD3735288
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:27:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nl15lCV8+GTtshqVfCCdKPL5mfcUQeG7WRkEgB05pqc=; b=SfuRzeAnhaBhpHwt
	QGX7M2WiauFLwmlpcawn0szGh28DJC9ORgnPNXr0xWVlCwlz1bEPFK3ALJVaUjnA
	otJX7Kf58xcl7T5+hPuyNNirAZi8L6HOtegrxGBgVebf0BzNampHT/6UzbvpvDLu
	+LyA9B7LbXpEtF2W22cn6okBP087PwqXtj6GxbdeWtJ3jpEnrE17iqgyi6AM5MML
	isPNdaSGLVU3nWh5u8Kl2Zza8gqQUGDK5sLyTmy34V0UVqlOjULeCYJ1WmFpLjht
	wJJN33dZm3Y69jgrL3Y90Ko/AzormH4Z4sMpozC225iOziob7OVyfoiU0//Z8BIK
	8hlbFA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng878mwr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:27:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-501423e1faaso222111cf.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768296437; x=1768901237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nl15lCV8+GTtshqVfCCdKPL5mfcUQeG7WRkEgB05pqc=;
        b=JQaGfADSk5ZTNG9lYpDs/meeHDZpTlrHTNfy9MhJlQFL0lO/w9TzHdZFk1oCgmzwtm
         qrArqUzbl0BbEIW79iPe2cyWNhcdNKPfIfCLCSS+ynJN2dkS1PZcK9FgbpNA7RCVRruk
         Q+/+h/LS0KfMpf7hsqbFIF5dqWWhJW5t1JZPK2niMNjk7RR2k6UqbyAY2s8LVGuaCg0z
         59SU6DWBF/NDmWDK+oHLGHYHni4lBda/kw1pbtjkqsDhg7M6pd94P2hnVpMVYtXDFVzJ
         aaYX9CRGDQEq9mIqWLrWcN4SgOyATGZpNb7sb4DEgyI8osFpm1pmsmR4u/AGwTnlfdW5
         NAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296437; x=1768901237;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nl15lCV8+GTtshqVfCCdKPL5mfcUQeG7WRkEgB05pqc=;
        b=P6SXkwgG6+rm0mBfAZlTOzhFMVWBKCsJhHEJ2bHnujeQwmxnkjI8UrYQS8PSBECB72
         DvvZM6uL+cJOlXziN35whgUiciM9Pq8H1W6Of1UTfwagn4n2Ff+jkC+BITJdvhj8I2DR
         N3OUY0PKd6EnP2SexNXpToanF4jTKZn6rIYoZA7sH1UXiahzj1dk+GZOUqQpaJm/sQ9p
         p2QXh4vN9Foq6uC5H/goj3gQB5rnCuOrdQ7OgWPcBNNc6IYQL+mYKkTtVK/7uznfWBMk
         e0a4edpEdBLpSrYRo6ZR3JaX9TrdH5nx+2NCK2Wa2dWrlX+dFXLwrZXx1JNhYzQY+eAL
         GYtA==
X-Forwarded-Encrypted: i=1; AJvYcCXNy4/KvCa0soB6rjztli6cJx+KXDxKOb+XfTXXuympBThUkrTfRoPvASvhWZEmUSGakM4GffpQK+qM@vger.kernel.org
X-Gm-Message-State: AOJu0YyMnR82VqGtaLib6pGfm2ts3w7EfIXeCZej1oWoIfHz/eKZBIYJ
	WsvYyvmrTJHnOsWqSo+UUwX0+M1J/ENIcxo51+OoX5rpkRNDs+iKz4lIud5LLcnbI8NEWhf0vZA
	7hww6QuVlTMP75ZKeaoIa6Qc3LFpo9V6unf42n9j02jZqmJUjueUOMErBMwXEbGr96qbV2Zt3
X-Gm-Gg: AY/fxX7b4PlULUQh34x8oKRRENXdz4HBFqjsXl3b2yk24M8ow+Ykx/2mGgADuZbSRbg
	5GnJMBSzLbwqrl42WcoBVzfr1b8mAThujSpPdyIsoM+xL0Ppoc8OO2O7TnoPGWWe8wUaggWDPe/
	B50qKGmadhkAku+f74OtJhsLo93YYL083TZ/TWx0x/rwmJEphY3eo88Bc8UA2i9IYgnVdtqyB7+
	Cx1qLLrC1NtvV5lnFbxg1mhh7dJSmrPasvqFL4eCh/OA67HAVw2cG0b7AZCHHM+q9DhIx1VC2Rs
	kl+2NsByX/aaavs96ua9GEWlHfJoVPKeXLan5lOCDul/JoD+4GViH05v71MrP6io/S6vyM1k5BD
	20kZWLFHhJgcc+fvdIO+PJgxCH/DEovqwbI0sDbZSx3iCAp89V7MEApY0+45jX/CmPZk=
X-Received: by 2002:a05:622a:1391:b0:4ee:1fbe:80dd with SMTP id d75a77b69052e-4ffb490058amr225480831cf.5.1768296437239;
        Tue, 13 Jan 2026 01:27:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnlMTzNrNhcfpXiQVSIw1kY27USHt4pc+MMDCbypU4h5Ch0yyRWR5bQ0m9fiujeiYQv8MIfw==
X-Received: by 2002:a05:622a:1391:b0:4ee:1fbe:80dd with SMTP id d75a77b69052e-4ffb490058amr225480601cf.5.1768296436809;
        Tue, 13 Jan 2026 01:27:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b873051cc88sm286593566b.7.2026.01.13.01.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:27:16 -0800 (PST)
Message-ID: <6a4f7953-1db7-446d-ac2a-0870f4f3a260@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 10:27:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] needsreview! arm64: dts: qcom: sdm845: Add missing MDSS
 reset
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Petr Hodina <petr.hodina@protonmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20260112-mdss-reset-v1-1-af7c572204d3@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112-mdss-reset-v1-1-af7c572204d3@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3OSBTYWx0ZWRfX8WDXLz7ox9bC
 E9jBynun2YHnwkGB2J8N8h3DPwwrPSuVJUfClBf3Kye+8CD0xXO0CgiV0+6q2qh+JLZ7lGpixwE
 2IfQt0GQ1PAlFItk2JiSBM+kKTexS2msJ8pB8c7fqEUlPq1/fHsekEF2/2NLB/uzD2G3utVoV9k
 gn0MkMcBNm01+AZ6/JR6FmavW8Knjhe14vcAFtpsPNyXcsH7StSnF9RCJH3YnPFmhs8JttJK+1t
 GYZlkoIG9lFkdHTlcZCj7Qji161oLgo6DNOod4qVB+iPT7r4+Pj8jfU9fpl+hD7E3LUAT94MNjH
 FShbEjAh9GVe6UdrHLWLegYOPSan4YFyjVEBPOEQEKhKo8wF2A+nrvIgiyW8yfz6OxGmIjNx0HI
 5jhpqpzu+9fopQuiXq4JhQlEEklQLvotPKu/PChS/NiCWZZm+H168wDRkWyd8mMxAddoo/orBZY
 0P0Pnm41QijZFvlwDkw==
X-Proofpoint-ORIG-GUID: aOQRbgZrlF00nzkouxp5LBosgExXHTZN
X-Authority-Analysis: v=2.4 cv=IOEPywvG c=1 sm=1 tr=0 ts=69660ff6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=9UNV2iuIHs_NaximHYUA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: aOQRbgZrlF00nzkouxp5LBosgExXHTZN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130079

On 1/12/26 1:33 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> If the OS does not support recovering the state left by the
> bootloader it needs a way to reset display hardware, so that it can
> start from a clean state. Add a reference to the relevant reset.

This part is reasonable

> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> It efficiently fixes nothing for us (at least what we're aware), so I
> assume the state left by bootloader is good enough
> 
> I sending this as a something "which seems right" and works for us in
> sdm845-next tree.

This part says "I am only doing this because cargo cult"..

Generally this patch looks good, because it describes a physical
connection on the SoC for the OS to consume..

Konrad

