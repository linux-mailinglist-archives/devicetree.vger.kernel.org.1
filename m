Return-Path: <devicetree+bounces-251160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3F1CEFAE5
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 05:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7706130012C3
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 04:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ACC6226D00;
	Sat,  3 Jan 2026 04:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iwppwjql";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LxaSeYoI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35DA23E320
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 04:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767416246; cv=none; b=QDhly+n4Q/cqBnYBSzYz5WBawxmHhjkjPgKx+oQw9mQofjKboAD2YHVvtgshBN7ntVggOBWzxfsDWCzo5PT3tFAtVJsCdNDGwrGlzr12N0leC6UTpqisFasDjUrQjeBdY/s2CIrizc9FJwqwY0uSpqdMUeQJr0rK/dv7HHBQPOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767416246; c=relaxed/simple;
	bh=u94+Bfho9tqvWHNGoYDOZzfrVJAFa4Bq5Gf77WTLBv8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rt1nhHg52nR9aMT8qDARwr2iqkGwucQNq9uqrvEjMQ+aliHj1ENhukeMYJphb7KdiLUrA6l4eNkCSWbkpyT1JuDvvgs6xKIpe4+Sj41z9QcePcHWedS4/a979H3pTQEvlkFVgE9ztk1NeYyJyuQU0TF7JCPuuJe3G7skE6RYAMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iwppwjql; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LxaSeYoI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6030gVD72339025
	for <devicetree@vger.kernel.org>; Sat, 3 Jan 2026 04:57:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oN4MD5eeX0NtpPeAXRkd7NBgj0dt2642kWfawjx6Rj4=; b=IwppwjqlngEHwyGo
	Kll+CXrB1jUbW5bb3Oi9tT464zDfr2kPShf3osgqGKEtn2rrnNsR54VL5lN0gcnL
	u6np+jkouFgr9WtBYbja1geX9bgw56ZWU7c5vuePglY2Z2iCfOY4Iz3GWhagirHw
	0N26Ia2TLgmg4YpsDw8P6iz0pjW9ncOV7TFxTwUGvYUesKghjneuSY8rZ2PMJqMy
	hAhFgW839/lmqoOtFALYbm8fMqGN7+uufw/Cr3AF4ZHgyI61vKJVg+3rNiVPdOqE
	U5G7O8HbeRAfaAqrRTssboU0rYGZ0SVkb57cTYjdH0Fm6W9MSjdu+fHI6C9hxrCa
	w440IQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bertcg9pm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 04:57:24 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34abd303b4aso36452860a91.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 20:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767416243; x=1768021043; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oN4MD5eeX0NtpPeAXRkd7NBgj0dt2642kWfawjx6Rj4=;
        b=LxaSeYoIUAdhAUhFd55oQRcAzeObsbnXWljDiJHHPYvHotHTaBzA0fSs96WaW7hwNB
         0Hal+RrTwBpWAnV2tUYtIRXy+3zdJxZJaJXnZwAhFqhK0154zGSotFswlCYC3UeRvJC6
         HQ4RiWVnb/6Af4e/QgawhmG+BMW+5W4Qz+eJieEI7H4wVH/jcTW9g5f3XY+toGyuiO6Z
         vPi63bHFXCjXi40LSYFKvTXksTlTnSkY4603GUuWjY2rEmV0fQeuxgCQV+BIFVg0NLck
         1SRKnv7CaHucSZam4Ce68j5iMBmDVApBzRTgPDxsvYYsOI3G9V4315nKKD9PrqI5zGua
         bnKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767416243; x=1768021043;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oN4MD5eeX0NtpPeAXRkd7NBgj0dt2642kWfawjx6Rj4=;
        b=v2H4PiBQ22ixgRYjPtVt72sndu0mPqhld2X7i/P6nT2Qrn4pfj0CSXx0eAkD1sbYGQ
         SlYauqx59crfWZGbkRgiyWYKAR++mAzql10eG37UXgus/lEgg2sfwkB26wQFrWZEiOSM
         pCQ0lYI+IXv612cN0Th2QXx7xloDo8PoFVObxnAKi2Zd04xYZ6JOmNc9nrpZMacoaABd
         ot+jXBII8sYZIcVv/DNNQ8nM5pUf8t/9N5iaYHHshemCFOqr1uzU6xIXiimUsf9G334/
         6qWXmTP+JObe7xWEw31GH7r45rah9UZNpE6mB1k/ERspHF4sUFNxF8qUwjMhRbHsPs/j
         o40Q==
X-Forwarded-Encrypted: i=1; AJvYcCUt/hNUq+k6EhtwWrrjtftcwUWy/XmN4wjG3B7DeQ1HmiIix7/VERUu3Wkxp2LqSHIy+NHovK6s98Vi@vger.kernel.org
X-Gm-Message-State: AOJu0YwMBFy7jPWyDM0wmzxrFav/YY+aGcZRqbzQBNGP9gpGsrAW009i
	haDlnWe1kVjaDLD5JYS2G4VkMt6Y9aH65rNDEaBsl4TJKSpVxQg6vXFR9abUijL6zzWYiwgtxtC
	UTjyiy5H4Yqv4bnsqBM0FqSQst/O4sPm+G7iu/4cVsmroUTxXCPXlvBn+3+zNE/vZ
X-Gm-Gg: AY/fxX6L8stYBpxATpnOkx5hxi1OYZZKjwoIrFIw/dCiTtUG3ayzkpclG2W9mB1oUtP
	dpVt90XdL1X8J4iJ0n75LJxJiuoWgx2bZjljoYY/X3AolmEh+W/R6cx1O62aZZVd/JqZVhjcgW6
	1w4uH2O3KyL3isv/V/u3d0J9+IrhJfY98DU0l7Klh251sj9I47qtZitFTtjGk1Ph3uXARK7nsMu
	Yyeb1tGT6r8UKNdmewL3b8DjlPBGh3J2CTN4JGUf5V1CDO74PcTif/CrtEimFEimyvcN7qngLeJ
	rl/C+KqtcQe7ft1h93erz/KONqIfgKDG/qEd9bcZWgtZGm7jG1wX5zW0ZgStwQg4p/kCx1Z2qx+
	U26lpt/5Dr6f4z5WeksN1D46ssUiaYtrNVVq8Qw==
X-Received: by 2002:a17:90b:2251:b0:340:c179:3657 with SMTP id 98e67ed59e1d1-34e921eaecbmr35681158a91.33.1767416243285;
        Fri, 02 Jan 2026 20:57:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGM8plv5Og80aEyg/gcNA3wNYGBDpmdeoneNRbr8f3cn9OSV3XtH5CjB1pTvqIp0AGH4ec+Q==
X-Received: by 2002:a17:90b:2251:b0:340:c179:3657 with SMTP id 98e67ed59e1d1-34e921eaecbmr35681133a91.33.1767416242787;
        Fri, 02 Jan 2026 20:57:22 -0800 (PST)
Received: from [192.168.0.195] ([49.204.30.122])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f475f16fdsm625678a91.1.2026.01.02.20.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 20:57:22 -0800 (PST)
Message-ID: <c7c4096c-c27a-4704-94db-742db2d7d5c8@oss.qualcomm.com>
Date: Sat, 3 Jan 2026 10:27:14 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: qcom,x1e80100-gcc: Add missing
 UFS mux clocks
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
 <20251230-ufs_symbol_clk-v1-1-47d46b24c087@oss.qualcomm.com>
 <20260102-helpful-natural-donkey-9b5005@quoll>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260102-helpful-natural-donkey-9b5005@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: XhwZIJInGRLYkDFOBGdNSb48-72YQQf9
X-Authority-Analysis: v=2.4 cv=VNbQXtPX c=1 sm=1 tr=0 ts=6958a1b4 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=9rRkaxDsGNSyJgmPD8XSTA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uzcbP_6v65Lnz5JMdmIA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: XhwZIJInGRLYkDFOBGdNSb48-72YQQf9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAzMDA0MiBTYWx0ZWRfXxiny156eGsx5
 8SxJvbMo9UxVyfnyNDJLpKI7nbOoP0U39DnwcBYidPZREtwVbYpKf0aHz+CL6opEpxPFk/YS2Py
 9vmcfJwO8WnWlLb6Bc9dorBaWiUKuVz/3N1SXSF8HZgsItgb/30x0Evx1G2DIND+PGcmSisIEFe
 edxvb+5k6uBfCPKuJc9TLlNFKKql9Up1vcfn6ZI10DUpv9CbTjMngPrKZvvViC0UXNFZe71KbsF
 +GeKCCFhOSGGJFOfm1Gij91OlU4n5rOCGQvYGDbN/+wUwRIXoeUHfaIk5Ya+scAYfSR15jJPov6
 nHgh390GnHeUyvaEX1XUmK5KpLOQMl+ebGnAyGaURW/NyuvpBYR/bxuNwXvvVzrPCBpB9onqsy8
 qJrNWsYHhjaws1eLyr0c8fU9SpZ+4h+xGYAy/o88GdyWWrza3sH7l8qxVAoBArG2yrvLj37NqOz
 gYN9oVwfXToWXIOgAbw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_04,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601030042



On 1/2/2026 5:44 PM, Krzysztof Kozlowski wrote:
> On Tue, Dec 30, 2025 at 11:08:34PM +0530, Taniya Das wrote:
>> Some of the UFS symbol rx/tx muxes were not initially described.
>>
>> Add indices for them to allow extending the driver.
> 
> Please drop this. We do not add bindings to allow extending driver, so
> above is not the correct reason to do anything here.
> 

Sure will remove this.

>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 

-- 
Thanks,
Taniya Das


