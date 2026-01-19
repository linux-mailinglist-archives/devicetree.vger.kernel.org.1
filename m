Return-Path: <devicetree+bounces-256823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E1033D3A662
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:10:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 906C0300766E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDBBF3596E4;
	Mon, 19 Jan 2026 11:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pEC0Di5s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UvVjD06B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87EC7295DAC
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768821015; cv=none; b=ssBh4ZdaipsXKVSH9OLdUTcLpAZ3rNLKf3RvzSC4tY5ejp9z7+UjiywBh5ktuUaNJS2q95cFRU9EnoFQ132MFXSODK7e2ml06I25J3QkcaYL7biq+3XRFTjrM8iQmujbNnu9JeNFbtcs7HCvrOzI3CprNKePhYPasMrOXPAIXxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768821015; c=relaxed/simple;
	bh=V0m0MHpTwISEDdIXUL37sI27AUu7Yyp/OB7zrQQ6LGY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z6yYgqfFx3LT8qlnUD500mtR0JxXM9BaSrd63cQrMoFA5545VH/Nhm7Zftpl6D9QwsJMqSeh5/H+xlBgCLRcU20qiG8tpivp8QC/c6XlsLbfppUs+E9Urvcz9ON+Ro2HhoICGcFMrCWFrg1yfSP1ExNstksiZKUV/ggmLUOPK1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pEC0Di5s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UvVjD06B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J90mGu1904955
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:10:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DttoVsVsnphyHmkrHdQpNufXsWDFvVc7wHWJt7FQ3V0=; b=pEC0Di5ssb+qLjPC
	7WlgkKRytG3PmBAZbfizyAU74meg1OvOOhJtNDwx82G6v/VOVvTlI6ufC5XCm2Af
	qo45ZU4Mi/j0wXCdXThkGJw3z4rWWVfNcgHkZuvSXbTqTjSczvGAc+xMeTn8ZV3v
	fdyrRi4Ywb1a52zzkJZgShoLmCAdytiHB7+djfBSpz+A2e8+s+MXNyoLeiAfmJLD
	9waJbQ5VpN+A6NwlVbJ9TeIrRdteMvkJd4vL4UdiZLcMY1DQXgyBQWG8r/kUT+zB
	Gz0QDJKkBaXjYGlT5M6leiDFqP4SeJta/prnmZAdsLgm/9N+fc5eZPLxG5n7JLd3
	glvq1g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsgmu8nyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:10:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f77be4f283so10383921cf.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768821013; x=1769425813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DttoVsVsnphyHmkrHdQpNufXsWDFvVc7wHWJt7FQ3V0=;
        b=UvVjD06BNRvAHfcTqnyHPCW5kNVGwzBse8Hj3/OOc6ddWhhlijIz8AqDfdIMsqgaPZ
         tC6yXWxS2vkGpO6eKT3VA+86Otkr5KMXXA7lNhdkvANSbc56Yye6d3lHnrDx6tFiFlmY
         1XRLli3DIQPagSGS1nTzR8qo2wcntuXc5BLMDhARA2AFxLd1ZcdJYtvCIshAeuB4pQLo
         t2iWjE03svWUh+Edicwl1Ec8wa80xevoFOgZjl2b1mWD3OSYSaqQkxxhy3/3LIp0q6ib
         4+/FbJ8oY/ppjpSnSBedEKcIKKLzB83F+0/nR7p6N8J/JZHkM3CUH7c48/6yZ0B803pA
         1eAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768821013; x=1769425813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DttoVsVsnphyHmkrHdQpNufXsWDFvVc7wHWJt7FQ3V0=;
        b=FKALpgEVCNWlEQ1WmlgfICuVzwuzv8KSKR/e+jxMcrgWL+STZMO7j9fpCrT6PoIGet
         o/JSXlAtnaTmDHjnsZ2zx34lETiVvT9scxvF5s9h65M5z7LTbG54cru4kjEzn9NFJMHm
         1UYvfM5/UmPzhWvhPDsZnPqng0gAXB2uyUFtyiqHjPDkXY4GGVUQlqoiX9AJEPEWlvzq
         WkkxCJXu5OE1oMg5Svbe0g7JCI/TRUtkGxB1n/fI4yMHx6vUVpQB+YcQqGwmv3silgs7
         y8u7jkVUrW7Ozxbw7U9Ada5U7/c0jrCiXhLgJLzQ3+mIYuJ9HQJ1f4lj+z9aGB3Hl5qK
         wpKg==
X-Forwarded-Encrypted: i=1; AJvYcCW0ueSHSfVctuwcNy53SpMIfzZDPpitxOegUbJZmBFx3vBN6AUCCIuCujaPyprrkpYRerbdYeqT3rL+@vger.kernel.org
X-Gm-Message-State: AOJu0YzqoBmpHGzNv23AlAAHukhwrxahMNY6NTMMxJdLeU5gYC1gPrPq
	bK3qncXHX/vJ9B0PuUe43KFncyRjgWfU/GXAx8kAGEcv72OAnlrtEh2Ky/NkpqNTaYEi/3oIwE4
	zJFUffJyRNfJ5bDtwZLNXWV+DbP/pBAq/oSWul3P/ejLMYiQ+DsgD6VJfi6Ir9I1rXNgSq4i4
X-Gm-Gg: AY/fxX5tJrEE/E0tM5cbZaWaaPQnhID7m4RCJZ91/olBcYjyvParPXFuaC4lwbwo2eq
	4SS7BF05yxzrbTcKHKlPL9q03GwjQAD5R3baSMWd8BaD8Wa9nIdUqaCOkVXenX5nmuNsyqDYSDL
	FgtFhmRytkyVUt59DIL/XOBJZexR3DOKyFZHGmlP2vK2sH4Ingp5ZEnExus75UIDE3ucMJFscHL
	lfSgQXRL5xAXQOE8WmYj8JyvoWxddyMzJZmUt6TVwcg0rjhyB10pmpvnkggY8WNjP6wUc3R3Cj/
	3PnvYxsdJOX6iTjQ0HvZuw+daGVaVBush7xvctB6GcfmvY9IiCDN4tKT1CEENZCDASZEGC7FeEQ
	oHWkrsoMg4ecdrTT1YG/gmviPfa86Gu3IOt6uIIZH08y8xxuyIYwJ+aLrmHpn0Gi4fdw=
X-Received: by 2002:a05:622a:51:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-502a168dce3mr131051441cf.4.1768821012768;
        Mon, 19 Jan 2026 03:10:12 -0800 (PST)
X-Received: by 2002:a05:622a:51:b0:4f1:b3c1:20f8 with SMTP id d75a77b69052e-502a168dce3mr131051131cf.4.1768821012235;
        Mon, 19 Jan 2026 03:10:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm9989219a12.31.2026.01.19.03.10.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 03:10:11 -0800 (PST)
Message-ID: <e0147302-66ce-419e-b421-fe850f8489e4@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 12:10:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: qcom: Add SoC ID for CQ7790S
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
 <e4761a54-a172-4dfa-9223-0013913bea08@oss.qualcomm.com>
 <f41a692f-c3a4-4948-8179-4628542f90f6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f41a692f-c3a4-4948-8179-4628542f90f6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA5MiBTYWx0ZWRfX3pIzZHrL+ZiG
 oBP65q/kHl/4PJck8VkX65Tzv5BdPJl/sUUFyCOumIAvZ6r+9MY8f6XrkBXKhmv7Xs3TrwJ6MYO
 WU/knb2le5nYd97lwLOhSMRjHARqxK4wNmiw9/KYxjLPG6TZ+dyxbTQtQ4LO1sEXuP39+t1MqwL
 zTKAWFRDWq0165pTMvoFw00qmiiiPlIayfZqL3aGqdvNS1q7JduDGegV4jBTMtfDwvaFlVgnXkt
 ZGI0Gpe+frd1kV3/78Y6Wo8K5ZWC1TdY5Ns3mKIXnVc8KEaazx0qffRkwATZhhLoDpYdAAgV9Kr
 5afEFYhvp3MHTGX/WaRpJjt9sK4UQQ23CP1uAPowjLcLXQigZy+XyWuYSoiUeadbBkPfeM/qtCs
 kbwVqWswcx5709h14kGFxHQygzLSqIEEXWIGuYsXPKAQ7jj3aJ22zjGcIlcelISMg42/3nXFmI9
 SvGVvGTAPud72/HgZEA==
X-Authority-Analysis: v=2.4 cv=Is4Tsb/g c=1 sm=1 tr=0 ts=696e1115 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=hJn_KU6Ox1_rRmbKeQEA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: yeJv6OpdF7F5QjnReh0rovUaiFONlqgi
X-Proofpoint-GUID: yeJv6OpdF7F5QjnReh0rovUaiFONlqgi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190092

On 1/19/26 12:03 PM, Krzysztof Kozlowski wrote:
> On 19/01/2026 11:50, Konrad Dybcio wrote:
>> On 1/19/26 10:59 AM, Krzysztof Kozlowski wrote:
>>> Hi,
>>>
>>> This is early and first/initial posting for upstreaming Eliza SoC, e.g.
>>> CQ7790S IoT variant. AFAIK, there is also CQ7790M variant with different
>>> ID, but I do not have such hardware, thus only "S" goes here.
>>
>> If you're sure about this marketing name being assigned to a specific
>> SMEM ID, those *never* change after they're assigned, so it's fine if
>> you just add it to the list
> 
> I don't know if I ever going to work on the M (modem) variant, so do you
> want to document it just for completeness?

If there's no internal reasons preventing you from it, sure

Konrad

