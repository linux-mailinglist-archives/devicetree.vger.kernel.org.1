Return-Path: <devicetree+bounces-245555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8E7CB2219
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 08:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F145300C5E8
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 07:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3CFF2E4257;
	Wed, 10 Dec 2025 07:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XUPv0jtC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HrioXzWE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371AB238166
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765350016; cv=none; b=U7oINtCh0rR5ewemsY9QPcNFiFeZG4A+1CDnitB99u2lLcqI2XOWBOFdnaz40g7pOkKS3Dr1d3EdpL/B/MZiKqlJpWzYuwGnoZmRY2kzFTHYgG89rR3UVWYagudS76n16rV7XtpP7xYSmnniYe8AaEgQRz2RCOYaNNC7DhHYqgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765350016; c=relaxed/simple;
	bh=rUmcIlJPM8NvWL3GHufkoMzIIX7U/SolxSRdXeA4icI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oi1+xP5wQgRGcDgopGdofMrYxVr0uG+FAHTmhlSY1B8nPkPQikBn3bSJRrjXsR/RjSUYq05j8cFA0c0Ix9ZiS33obR+pBtFPSgiukPGaMX5Qv/Y633Qri82A/HvQGhgDCk89IoCUjz58P278UibK/pUuURPanzyKIiIGI7LUDD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XUPv0jtC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HrioXzWE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA6DlQB2351644
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:00:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KXXmJgIAlrzTswFyFBD/MVsLVO8F+Y/m0cm8jzVc/lw=; b=XUPv0jtCs4KX7TBO
	5cYJgr4sw9J5U4//NDv6y7buEEi1zkCZSq/Hl4KEuDhH/qEuQdKXcua0zujMl2Kd
	/zaH8RXUfUfgkIEpBQiHZuT8WmE/v6i+Och37c28iepFzo8ITAdbyMwnliBZAORJ
	5b7et8FDsU6GpXnoSPbh24o0r8bhDg8Ju1+EK1gxrcs96UZKEE/ILz8SEEQkE+n7
	aNs8ZjSaITSBy3Wpin3CQuHnWVFd3F8MUW4m0UJe6TDrt8c0X9fbbonokPVrAm1D
	5l7v8TkX+4MLYjNZNeNkvGfBT+p1XysQEUBi3a2MZqKQnh67tEAKYXQyvsARJIYu
	5fhbuQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvn4hgmt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:00:13 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7d5564057d0so17209378b3a.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765350013; x=1765954813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KXXmJgIAlrzTswFyFBD/MVsLVO8F+Y/m0cm8jzVc/lw=;
        b=HrioXzWEy3H9zl6mD7yg1vCWayPN9trHQ8ntUXZBTRkZw4SPT+bMvyiPRD2mbJZaVN
         9QyLfSFb9x7pLPKO8wb1S6P58tzIEOZxWyBCOC7VxCntd3su7CRkK2f2c3uMmfupzItq
         D5mVE5XnVcNDTMjJVNzI8ag8Lhk5ul+jZwZGXnbdaNKsrFU1VyTJDhyOuVsnWVbmZ4Oc
         hCdKZ6cXjfI4heorD4XqF1Nf94W57QWf1AVFwFRPQ7B3o3ADjXMic62xKczFTtubGDxq
         uPZTiSmMVT1/eCGgdpdNqgxpvt3emJiyIlcPOWAPdIFGLuBGbiE4gqDRFVOWQZVAakbn
         WoKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765350013; x=1765954813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXXmJgIAlrzTswFyFBD/MVsLVO8F+Y/m0cm8jzVc/lw=;
        b=UChU1+usKHemy5HQr01RHSqL4ZTL14OM29x3kmpAb8EKSsXrfsDPFc2lQV8V+tL0tY
         a+41GE/Hc6T+tG8YXJSVFCh/vdXKeSMiNXzaO4UGpjpDUgnnoj4MdGEhO2pFgeAPG4gS
         q+TttHGrnMCwkIe7NUqjQoLd1WUf1XXeXaV9bezObeLtTryPnkX3GCpTdOh8GYugIOOQ
         WvRw4gfmwz1XBlIUWaz4zob3T9YI1DQJGvelZ4bzlXw9u6wBUVNlGJWmwsURrPMdndo+
         NB1ndiBQjDDMtQgs56/jvjNQJoYy0Q5iFBxU0/sOYqsrF4Ot9zpKRCxVA9602D/b9V0D
         KmEg==
X-Forwarded-Encrypted: i=1; AJvYcCUA3Kvz7XsrPDPLicefblQYtgN8BdNp0sd2mRxHKAYPm5fhbFP9Gf3P/QIbyVUe7xwRe8ndvRlOm8Kd@vger.kernel.org
X-Gm-Message-State: AOJu0YxeWhy6qLRMCjGfk0lXBDp6kHxSh11+44lEXUCu5ShSmfBLfLYr
	sH5zDPbj0c+zlOGB5eovoaDxstQR8tc5nWBWXduJoKR/ZbhzoMCkEAMtHskCC1QIYfKfSZHhXem
	JyKbmGt21wUrJ9coaYsALQOHtVkGtyuzWBbYMR8qL/m+2PXAuA9lJUyAdduKYYIEK
X-Gm-Gg: ASbGncvthXA+MWPbwI8/XlVVBQpc3x5Bb58mL+NP+/Hbv7JbXHmv/wEuILrlvvBlrqu
	XsKrWcoJa+J5rXClsYrM/FhfGK2NkDR5cCYyaiP93urat/7LIQ6VREWouN2HbKrr6izWcmkCOGC
	0EPDIocqcLIkDWwyLUMju6l2Xc5KfdgtDN+dWrDMH51eUp4jNU4AFh1IshRdVL/YR3b+KIuLGVs
	MY9TRhJhhj1CpMy039hcYyBEqx82txiTAClfskTZnJ9wmz0zC+p3ErvgSOle/3mhycmIqIzXoUP
	9T0x+kx/9iBUAw7sifzOwRDmFpC6ILMD/x6eQdKvFST1bUuUUhw4zXK+CbKmswpDStJySFQHPEl
	b+G0FmmtXI21jX2IRUWq7ikvPB9ZXtIWLTiqq1Oc=
X-Received: by 2002:a05:6a20:9148:b0:366:14b0:1a32 with SMTP id adf61e73a8af0-366e2eb8437mr1455317637.64.1765350012875;
        Tue, 09 Dec 2025 23:00:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWagaxJnC96AYCNL0/D8CTLUP5DQ6UVBIWEeINoy2090Julw4wBdbucvsVEIc65wrN36wFRw==
X-Received: by 2002:a05:6a20:9148:b0:366:14b0:1a32 with SMTP id adf61e73a8af0-366e2eb8437mr1455284637.64.1765350012439;
        Tue, 09 Dec 2025 23:00:12 -0800 (PST)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a2d19492sm16643326a12.31.2025.12.09.23.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 23:00:11 -0800 (PST)
Message-ID: <e4a7b827-9687-4952-9625-16df3a2bdb8a@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 12:30:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: crypto: qcom,prng: document x1e80100
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
References: <20251210-trng_dt_binding_x1e80100-v2-0-f678c6a44083@oss.qualcomm.com>
 <20251210-trng_dt_binding_x1e80100-v2-1-f678c6a44083@oss.qualcomm.com>
 <bd5e550a-bd31-4785-ae95-f14b28c6ff7f@kernel.org>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <bd5e550a-bd31-4785-ae95-f14b28c6ff7f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA1OSBTYWx0ZWRfX3saAJkQhxU+q
 PZ7pVvniJfDvK5q075chVPIZx5zW8LxNfPLoCf10ftu0ket5NNHlWwjd8BGDhkkANdDx7zq9x21
 oBdBncYK2kkOYy6pOpvYfYAYPYnrpQDq3jbSRLG0+dmfKzS1D3r9kdGzk1FKYXws4eDBU/RqNUa
 BEaDZ6nDpSPSnLqgo1oiKlG1ctgFzu/G/cDflj/IEOTKUyJUVLa6VcQONtHUBpxevRv5rpSv5uV
 Gyuy1we51FCRv1cKXFc7/ui9ISgriRXeEVjixEmbDl8UjiHE1a88dhQaxZJNoIa1tZ1Q5klVT7U
 Ocv9osUue5fFWZpPAY18eSbN3lmxiJY8rdSMevJZRLW/ud6+Ssckb354WFzbIps0VbkiEHnQNeQ
 064BDEnIBrB5z3hG7cytSNLRGXmTLw==
X-Proofpoint-GUID: zMnfx2bldwc8ISsSx9rcZD0dO4zTvHls
X-Authority-Analysis: v=2.4 cv=EarFgfmC c=1 sm=1 tr=0 ts=69391a7d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=LOCgFY8hBHcYmJJ69lAA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: zMnfx2bldwc8ISsSx9rcZD0dO4zTvHls
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100059



On 12/10/2025 11:14 AM, Krzysztof Kozlowski wrote:
> On 10/12/2025 06:36, Harshal Dev wrote:
>> Document x1e80100 compatible for the True Random Number Generator.
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
> 
> 
> How did you test a binding? To remind - kernel tools and make is not
> testing.
> 

Thanks Krzysztof, looks like b4 tool just auto-copied the tag to all patch-sets.
I'll remove it since there is no real 'test' for a DT binding.

Regards,
Harshal

> Best regards,
> Krzysztof


