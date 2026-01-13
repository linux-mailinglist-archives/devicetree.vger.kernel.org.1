Return-Path: <devicetree+bounces-254340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEE4D17635
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2FD1430022C7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CEF33806C1;
	Tue, 13 Jan 2026 08:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jGbyjE/n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kc5YUaMR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676D33806B5
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294355; cv=none; b=YutcEfu6h0d7kx7nkYFOpKtuQqSSAQ0RvtFf8/C0M/x5kFLTEsNlVyLoma9uSdDUOV/2gTSdhC/UR41pHvx+R7ZCCOgX1fivbtxSclKG4bmdbNB0Sjy0jt+8PVfm7Eif/Yuw80rgZZxBUxAKDpYflL90MFn+n+Mse5vO7ZwydAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294355; c=relaxed/simple;
	bh=MYVpvlzSOVjOCvsPeYESexAjv7dAT3KEzdLpa0xc2IA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l+/SpSo6JF1pPm3oJ/MgGPBOs0BUaG+oUCu2hbSU/ztRFHnj0FIiTtO0ksNS13s1B6bE8KZRXNtag1JtcCG7REUkpgHFkFLON3VCBnyT6PtHxCTMfF2qGMHamSGHP/pPWy3gUsXb6x3P7JV8jW02gFCKCq7I8v6pgYKQnu6XvAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jGbyjE/n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kc5YUaMR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D58wGQ2834929
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	akSlLBvxW6+m4cNwEhhn8aCcDRvgKbnoX5vi2x8CPOs=; b=jGbyjE/nyE4cMI+G
	8+ZcKc3q19HIGMt7pNWhzN8Z1wILioluZDk4+YrzgFlf6byeJ/iz5OTfDB+frLmZ
	SE7fh4JC3Iw7wSXpIPahyy+5V9wzkKi39CWTPQMLZ9BalLDGt9w3qPdmN9MzmN3K
	70bp/cI5Q3Pm5hmQx/3ZPzC3JIYFbpcHLRy4il6ae0owMWNcjkD4ZoyEeHUS4SEN
	485FBV0jeGMQ9uaVcyxQiWGKRRMrnBEtnhSGVAiDevehBHPo4l/94rhPMT1pdqUG
	V4xuYBqqTeqU8hdT4YluvXJviJaiD/ns7gmJIARPdOrVxUT0/7sF8ur1sISgHEgP
	IAVkcA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfn9rkue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c523d611ffso7210885a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768294351; x=1768899151; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=akSlLBvxW6+m4cNwEhhn8aCcDRvgKbnoX5vi2x8CPOs=;
        b=kc5YUaMRuPM0+Xg1hYPyX/v6L4jCHcl0N0lg0/HcTvH9f9Qc+Bc3sjBHFqPa9lwtCZ
         elZIpZt25jyVLT/TV9UixFiw97IXYxsWUsRHpZYI/TKo9S6qz4PFHM2TQVF6Q6GfHM5Q
         LrwwrY0b0O/NohJb6jfUqcZuUVONgaw1KK0YWq//9SVCk3JFm9W3tLI5GhY+dxXbAowf
         +xjc+HulVjaz8cs7o9Bvl0oHDq1lVDTfTJwrDRGrYkC1rUmkT2tC9b6cnbbowgw4axbo
         xfz3O+5lfZxFqOq+M0GJE21PvuGOQXsoE3RJXQxHplx28yKi0Pdg3SY4VXU5+g2oQI6G
         0srg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294351; x=1768899151;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=akSlLBvxW6+m4cNwEhhn8aCcDRvgKbnoX5vi2x8CPOs=;
        b=jyYs2jiYIjzpctG/e+V4qqpb5ZrmwQ8IbBwCRy/C61kubcdhCndw/rWFBb7TkCgb+X
         nBWWty1Kcovq9TjqeLx9SIWE630FBdQ7+S/3qb9ttl6lLOLGHtzffUlltgsKAf+z7J8o
         JoYzbYBsHT0pmAxxWyo49jfnFUMdhX7evylRMNnjeZK4BgKSpMB6TWQ/c2M6U4TxdAki
         uUWyEvbBveWsnjrCTsdMGEwCelVLbT3k5P5USZMOjAfzBSiimF/VPW4jy99FbBgl4TEl
         +v33GR758L9co4n3loD9AUaUPtbku0glf5Qm6Y5Sh9mt10U6TnPdF5Vi8N7pSQRL7tgT
         6Deg==
X-Forwarded-Encrypted: i=1; AJvYcCVmpaYgcSu3p11YHz/8AWEFNsKaRY5QDe0lhz/gXALH6jHQXcbMGoM7sGMl6zs0zjmXrZtbpA59VWHW@vger.kernel.org
X-Gm-Message-State: AOJu0YxOk5lKjmbjoIJORrHI3aL2pTYl7ddPSryb8tlth3IDA3Mwb21C
	sRKcwbJuy/JMkEnlpPJhQliq4jxiFpPIawe4GSLm/weXNFNL2nl1mFIJgHCVSFVRbomiOHDI9Wx
	DYC3UUgehGDG7iWxXxj6OR5uPCK1DkDyEL2FxP62LoBWdzj+kZ2T7yqtEPoBroV0O
X-Gm-Gg: AY/fxX5T7rAGgEuWpf1MlwpIsW1PI+Jcbv+FKEbNep4USALHsVYTCBSp2m/NXEBrMek
	RLMjE1JGzRzjVsSzThfw8t4a6kqpwcquwj+oOonH/xJ3XruTt9sN7uZptCEP/iKNYDscG4KhW1r
	CO2qXkUTKK7MMQGJ8A1wf2sp6X/SERjDRT3Qu2jDshzpjUwjXWXq5ByRNEedHyOSptIjfx2Vgtv
	qOjAZMb1qe5eOQwVzpGqjY8Z1bohHU8xJ9IHcPbZJZYRU2hGlhqo4WqfQH0BJqe7xRuF+Z8zsnZ
	DqTPRKL1BygXbTW1KEeSDy1FJWvqDvVWlCdO2KUt6OBilNoVB4NZjlqzoMrwT/q+Z3dVRLqYfmD
	uTEAY+EX3XIS2Cz+duWxyjPSfmkyhIG3cuej4Nd7JmAaVtElWsLiolIhPp1lywFJrNZo=
X-Received: by 2002:a05:620a:f0f:b0:8a4:8825:bc6c with SMTP id af79cd13be357-8c38938b477mr1976257285a.4.1768294350719;
        Tue, 13 Jan 2026 00:52:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGe3HcVWbu4Z4k8wHtyc1vE5rWOAggNipetl5IuElZ4I9M3hRUy+qBAyoWR8QocyXaFxxBFIg==
X-Received: by 2002:a05:620a:f0f:b0:8a4:8825:bc6c with SMTP id af79cd13be357-8c38938b477mr1976256285a.4.1768294350310;
        Tue, 13 Jan 2026 00:52:30 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d683sm19788252a12.34.2026.01.13.00.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:52:29 -0800 (PST)
Message-ID: <69ddd3c3-e3a9-4dab-9c0a-4d5cb3763a5c@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 09:52:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Fix msm-id
 and remove board-id
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-1-8e4476897638@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112-xiaomi-willow-v1-1-8e4476897638@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: cgV56Rzoi-inXmeXTDXkhi3s5vPqSLZH
X-Proofpoint-ORIG-GUID: cgV56Rzoi-inXmeXTDXkhi3s5vPqSLZH
X-Authority-Analysis: v=2.4 cv=HN/O14tv c=1 sm=1 tr=0 ts=696607cf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=4Ix3DnIw-zF4zot3V68A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3NCBTYWx0ZWRfX2XYQSsqaqvyp
 25xjb6uvjqEnXIsrZ3/wL5qAdzk/LqEORRc6eUXc9hN6ouPJGKzQznq6LNUqNgzL2O1YmBEj0nm
 K3O/N4tTXievNWO4bvTzSvbFnB64ttDcc9Fp/Z9vFWl7gVroYpMSwlSMoEjSSoJRweQie2Doufg
 L9QucWvegmFv2wTJc+i2+slbo0Ry0QdgFNynL/L/81dJdkEgxfc7PygBZZKDDVZ7VWqyHoDY8wT
 To/kVUXOliE2L+6VPFbdWT5UD3uZkfe9xUdnks5lz3EfsQwv1r3qgFFw4oXb50U08csBcWRDKkx
 hdPe+0pIMNDhikAR9eXOXjKqUqCPOQbbPSxf9mPJBbFPuEsgtm8g/5JnSoZDXMIaI3LxquDv7fb
 ybWhtoR7N7OhTt1RjSp5flrulDOkOSzn4x3jAcVgu6Kj+UIn88bEPg0yXlpoTjy4QwfQ6fjXfyp
 0zposJ+VxZfetKryJhA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130074

On 1/12/26 9:13 PM, Barnabás Czémán wrote:
> Correct msm-id what should contain the version 0x10000 and remove
> board-id it is not necessary for the bootloader.
> 
> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


