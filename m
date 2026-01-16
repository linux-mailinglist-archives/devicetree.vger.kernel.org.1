Return-Path: <devicetree+bounces-255971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90312D2F14A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ACDC8300FD7A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F78135C1BE;
	Fri, 16 Jan 2026 09:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A5jf/a/I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eENforfE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2349135CBD3
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768557212; cv=none; b=LK4fiK6kZvk7R5acwM3Sf2xM0d8xT/y2GC/lkpSo8zb/6ZeZMSCkfqNX65RH8lghhiKodqiWSSMEuWvA7/apVphkvDwT5Qc0FeVU0hHQ2zQxmoj2IUe8+CnMOY0N85OIV/q9d9kuQlsUxLJM3yFlpAzKEUAD/c7r90W2VcIhxI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768557212; c=relaxed/simple;
	bh=ge6ghaPRiNit0+4pAgxtBDe6NbdialyVuuknLaBpZBA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oaPTUDp+B/ibC8PkxE4ibEHE9GO0J+8B3u6Lsgg57QEfAVCfZhzhzAME3ZAYvK4jn8vGjr0fZeeTOupAzEzAcmfQvtzlsvJZ3Yk6vGPukpv8sjWBlhOFN/OJy2uWcWlkj3o3fkzu+IvOX7e6/ixPM1QTZgplYDmasqoWO+KWQ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A5jf/a/I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eENforfE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G7nuAU4016355
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:53:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ge6ghaPRiNit0+4pAgxtBDe6NbdialyVuuknLaBpZBA=; b=A5jf/a/I2XLuaGCe
	bFCOwQBJZnToyShg+U/cuxvuk9dgwGjSeYf8fnqr0P1w2A/gB0bSRwCyOdB4GI+h
	wOAMzhB4V39F3/FYpidkFqlCzgtYmS+O+lru7OKBa1EzTdwOepYVh/MNQo1WTqgY
	2Io1NgPKC5kjJJRf70UYt5r828hTmOTaGjZI+mmtxrNTgN74n7DUwEt9mwq36+ha
	wswOuwd1WyM44DI0elJuAJNt29XP18KzJ+G320GFBlumR4U+L95HyfljYIV69sur
	6R8r/n5h9aMogbqX5D7vua0tD8zzofL1JC+qQ0IWJm02VV7dcBwYuJ4AbRnW1TjM
	6P5rZQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq98y9nun-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:53:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5014549e7d6so6150261cf.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768557208; x=1769162008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ge6ghaPRiNit0+4pAgxtBDe6NbdialyVuuknLaBpZBA=;
        b=eENforfEAgCmTD2cBL44PxuFbo4v2DbVWM2a32Lwg3PHKcLqalpj+Bhr0Rpa6D2FUd
         k3SkejC9YJ7FLYvd5l5Hsb1S59kc2WMwALLAHY5uJzyh/q1P0IVP21K6g/qdISCSAVEE
         jH8lSWHOgLFXaE+ktK5zEmKGsWG0JBAO2OMPzs7y/8dZz19EUUJELydNOVoslbJXHAEJ
         NoGiSXwkJATus+7/FTbLTRWMtdF/jhNVczSNXurKfhFtdZ5NySzmjf26YIEXx7tkeZjL
         /2XaHh5dvhpqWLpB68sc3pMlPq/MojBFrorvMQuBJHlvDBRwE9nYFxFOUkWO0LHYrpeX
         fSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768557208; x=1769162008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ge6ghaPRiNit0+4pAgxtBDe6NbdialyVuuknLaBpZBA=;
        b=VdChJUgMwFIr+0qsS1BLEd/Slg0KEDwBoju6KZq6I9OLkAZzW/j9iVXKkZfsMzDE3k
         CNQcShlbPrFcjt6WN12V3tfUm6BY1V9eHy12fuckQ/LoKikZYfC4Zud+vqfQWCfTVfPq
         17He+ANnAW3p+PyqN4HWQUOOGd24gqDx8/8TSb56dckDUZLedNQsoZyyvXkUyMhJS/7x
         Q2qGTv2a3UqOaN1OxkKeiRxgqPrRn5lBOW7rP6f57d1Rx6uAju8KlLw59YNWfUSVYrjW
         V1lPmDoOoY1SecTGqI13EdbcUKFzk7zoXpHM2cFyDjb9wT7hLgk96xshwPH6G4c2nK0W
         JEJg==
X-Forwarded-Encrypted: i=1; AJvYcCW0GpPqM3ND006WIYwT3g0YWUh5+RnCidYWIFAq/BN2OLhvaB5VgGPfmjG4wT3neQfJbjxynHKg5zlw@vger.kernel.org
X-Gm-Message-State: AOJu0YxHviHRaGI29pnyupCBTV6fk+eKHQasDOQmHi2hwa0jclzNSGcv
	h2K7EEu0Zq1hZgVzj91g3COUMf6Qmj0ZmYp9C8+6W/o4QFEjhzGQtuts2ybHO1lgBia791dghTX
	GYAbA2SpXlAmFx4hpvALYvTNUadY1BV2Ep/YCD81I+eSjPsAggFdQ1OAu0ENDy2py
X-Gm-Gg: AY/fxX5z/oGB5D0mHaJSnzAD+sQOzNblido6Xg6TiMPmp1IBi+jENrohBamhesce3un
	PYzwohZyg01FOZkOaD1jVWKSj9T56kcR0gyrk8Ro6ArKmvIijoFY33WJ/GQxpSKUcPYNs7WXiHo
	tzobw91a2ydDv3lOuLKknaB8HGLPDhnuGJ3Wzv0h+IYMPh3PHOdZ/GhHGa3V4r6F7rgX5juh7oW
	QhQLi9LL4RR81dv0wuEHwswtjuqGZxl96yTZfdgiOBZvsrie1GU5+fJodlK9qNYp1SO9Jc6JnLK
	GMum/ay1EGqF3Ve1+aBBR7kG446ZSPKMp9i9INgcvyBSGe3TnFeFAh/uiiE3bUFrSFw17FmRHKx
	Nfi43CtcOUD3an0AfAFe9KyCPq8BA2tYOUiHvrbezs6SniLhUMSMmWK8Pw/BDopOnkd4=
X-Received: by 2002:a05:622a:610:b0:4fc:989e:f776 with SMTP id d75a77b69052e-502a161627cmr25289301cf.4.1768557208444;
        Fri, 16 Jan 2026 01:53:28 -0800 (PST)
X-Received: by 2002:a05:622a:610:b0:4fc:989e:f776 with SMTP id d75a77b69052e-502a161627cmr25289201cf.4.1768557208059;
        Fri, 16 Jan 2026 01:53:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm1933290a12.31.2026.01.16.01.53.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 01:53:27 -0800 (PST)
Message-ID: <253d0cbf-f65a-4f60-b874-4191e552c191@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 10:53:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Add Redmi Note 8T
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
 <ff8fbdb9-dd03-4811-b9cc-4ec0dabf9353@oss.qualcomm.com>
 <4cb609391559a88a4a6f1e2f550f8450@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4cb609391559a88a4a6f1e2f550f8450@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=FscIPmrq c=1 sm=1 tr=0 ts=696a0a99 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=LpNgXrTXAAAA:8
 a=OOYZNU6-2sxu1PXP_N0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-ORIG-GUID: dilDKKMIYgew91ZRc8Jg2DOWIPBqoG-h
X-Proofpoint-GUID: dilDKKMIYgew91ZRc8Jg2DOWIPBqoG-h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3MyBTYWx0ZWRfX1Wg20ptM/w5M
 9IKLmfdVteLkURXUjZxr1nDg0C/L1MbQnVemtFHkX7nDhl0EmAh2VB4a/0MZR44fufMhVCer65P
 x7KzsHIqe4lhoUCOT22uQ3LJ+Bg2Ar/2Mao1GNFgj6+k5bWlfhHfVAACExBUzkEEe7dAz9ODGv7
 ZKwq0eRB7jCzOhS5eVuk6NH6YlKaPSmM0NKHKqKYr4D+/T8Mx6hlNPF7W7p4+YqINq6cscaHA+t
 TJZGTZ+fRh5M7mOFByowXXhcG/9A2S0s/p5xVUM8g9nEEXtWbfJpD66C/mouqjPXPQCZwaFK0nr
 Vp67RCgZWV/lpwub1piY9IWFHc1Dm1N2Fwi/DHpgJU4grNuVo2gs82mchkzhzeg7yg2KzY18Kxe
 S3nuCPKlKSGlnl0felI2zNpKzStkXTyS7iu1kBzrNFHIX3KAWKRsnmJc1jf8Kc56vzboUNh+DVs
 XFGDWrItkL+VT55qiPA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160073

On 1/16/26 7:53 AM, barnabas.czeman@mainlining.org wrote:
> On 2026-01-13 10:04, Konrad Dybcio wrote:
>> On 1/12/26 9:13 PM, Barnabás Czémán wrote:
>>> Redmi Note 8T (willow) is very similar to Redmi Note 8 (ginkgo)
>>> the only difference is willow have NFC.
>>> Make a common base from ginkgo devicetree for both device.
>>>
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> ---
>>
>> [...]
>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>> index 163ecdc7fd6c..70be19357d11 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>> @@ -1,304 +1,12 @@
>>>  // SPDX-License-Identifier: BSD-3-Clause
>>>  /*
>>> - * Copyright (c) 2025, Gabriel Gonzales <semfault@disroot.org>
>>> + * Copyright (c) 2026, Barnabas Czeman
>>
>> Is there a reason for you to remove Gabriel's copyright from the 5 LoC
>> that remain in this file?
> The original file was renamed to sm6125-xiaomi-ginkgo-common.dtsi.
> I have not removed it, it is a new file with the old file name but
> i can add Gabriel's copyright here also, would that be fine?

Well you certainly don't seem to have contributed anything additionally
in this specific patch, other than splitting a source file into two
source files, so the rule of the land is to generally keep the copyrights
as-is

Konrad

