Return-Path: <devicetree+bounces-250204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5670CE6CF3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A18D23030DA1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F7E314B6D;
	Mon, 29 Dec 2025 12:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lTd0PmDk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UvX5xO8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F528314A63
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767013198; cv=none; b=b38VaR1AniWvkZWeCFq6pHxCaGSKk9bdRw3eZqz//wMEJju1xfrs+DRLSsk4Unw0N8GM4TBC2O+QzbAAd4XawXl/ReVI6r9/3ICmn0IRvUE+6fhIHJ9rhc9N7o18UVB7NXrRmo0x8R4OcL4pgOYPkmLlgGWWCuNFMDNf6YhQtS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767013198; c=relaxed/simple;
	bh=YrEYPEE2xkjlllYt2AQUqb1lEHwkSqeZ/XxhaXWYPMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hTv4CT01QdQP2DzvZmIqDW5CnbB9It71FesfF3YafulotNR5B1zi1O0e8s8p4ZWXS1rHJECm3q2i9Zpev6SPPfyx2cHmUD8ja4nmB0KX47IETovSyqrmDHZo/mFckX3VqChJWVYBwb7re0eorWO291RDS+aNxDUf1KlZ9xheQac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lTd0PmDk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UvX5xO8r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAhv6L013667
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:59:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lppzLRQziSn/ky3WLICm6U224lzuS0fkJxQVIlffnIw=; b=lTd0PmDknq/1RatH
	h5/cQH16XizotfIkDfvSdmBbZ+JHYLsk4FnlCD/k6jQA14oFwWTRWUhcGhi0KzQW
	GHiQnkqSKPS4QSv8BSLLsQY6HclL68UzQXQAq/aFMk0pboe9xRD9yldQ76UxVeik
	jpv+rFTL0z9jT69sUH/joQ7YagCAu3OUk5sDNsD18d4S1GfcvrzEgJKxJcteMH3O
	nlLvB5j4trPNhISwrCFcQOzG5kbZGx+t8lfGUs21y/bfAzBsXubxo/ZjXbxltbXV
	Nzr009lFIlaZRM+V4GqgO4FIMd1tSXn1zmc8v6jpgmtZYsGkPoOD7CTj0nzD9XdQ
	PgjuhQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7u5mavs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:59:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso36177711cf.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767013195; x=1767617995; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lppzLRQziSn/ky3WLICm6U224lzuS0fkJxQVIlffnIw=;
        b=UvX5xO8ro9qiWJR5RuC/rdu1Q8XhB/Z7cyJZkPr7Vz5EJ8nvxDvcgkfOwxGzJu4Xq7
         5SArgUtd0kEeA0K0N/xXQnYBqpEfGkrD5yaBgrluYAowRJOOmpUrAofu9ur7O0maUMmy
         vxa5SDP1lT1OBR3kNXE4ehX/EbaYEHd1sTCNoBKZ5rdCUSrxWHCD/btl+p90j/jT4pyo
         aspZrlLxqPNPmWH14X+yqLVb9s4bCcN7HsPUPHh+YeJqk4m95tKVtTaJSJtOBiJDpg3E
         jGFMXCRD5SVQP/s+OnkY1Q4CboqKa1NWNs698SLn4sqQ4EFalAqCJBqLcXL0s2pPPXiG
         Z5jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767013195; x=1767617995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lppzLRQziSn/ky3WLICm6U224lzuS0fkJxQVIlffnIw=;
        b=S54tm9V3i5Kg4ksQar3OsYMFULgvrzmR4Qva9xVN0FdFbYgglK+RNOzwClCqTOykc0
         wAtXhWo/Lshdk4ewPVhAEugKluBjSXI/MVpXQCVt9VCQFPzkOTeDR6URWIrJloEKCwpP
         VIvUAUqyE0+9QKZv9V5b3qkABm/mBECVeO1aFPyzR0Qyk9MEmIxGXmU9x7mTLwMg3Gan
         54YnyEgD+qGE05WmOeSZ+HXNHNcmad2+3KSMd9VX1e/cyvsef2A9TVIjT7jKoKPIToPA
         Nb9QrrHLk45faEf3TiYhc7Bqq2HtRLOmK/VlgNQ31cktwf3vpw82fZFQy3/pdMraWpeF
         UaMw==
X-Forwarded-Encrypted: i=1; AJvYcCXM88jx6Xx8lPGnQKzL8cDHAR0dzBO+mv+F8s2sxn76dnQudzJUCSikocaLbXzKQKmMw5SIhQv/EFhq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5hhz1kSPTG2PT8T2+wFZT80JN58bUyJZD9hgyIIIKxzneX9M4
	7FSiS2d/MJlssC6p31akg44XnQKfi205LVKQhKxXeygZf0/Z622KAm7/B3x1IEog0DKIU5YQDHd
	R7ULgSbZDBp/CPi886zXDqeB+DGclvoFSpmA1FtUb3k8N64jilgRyw2ARWo/SI1oOabHF8bMP
X-Gm-Gg: AY/fxX4gDySL0WH/OsBczzoiplhK0pFYyaLFtBKR1Ks6If1ZBsl3lgh1V4RV9Td9onh
	Pu+Gu9y35Tt/p2TV878UjZd+vA4iiwcd9J8fn7XmpP4YsrZMae6/P2tOPrz37+bkhfd3Fg4uDXz
	0DhzsAh204DhIf0S/LxKWFOkAEVtphVC/cr9jsrkNxKZ+EYNMa2GRGdHXEUHtMZxaktUx+LfSAb
	LtQyZZU1hglJ4QpBq1AJOPSm3MD5ArqsEWcySGAAeGOgyV2zSHsVaRezL4xhIo+wzFwe8rNqOsN
	lIeADBv2QiqNFH/lg7Q50QXvhSRcROA9Uw9Vek2jRUyQydmYZZ/Rt8h/bNqFP6HCtw1A92AiaOb
	YSAmEAZDtsAP+rVdSBq1lAth8pXzuWZTk7L1aT7czQlryuvjDbb1jf+UOJbTs8/9YWQ==
X-Received: by 2002:ac8:5748:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f4abd70338mr344999891cf.7.1767013194697;
        Mon, 29 Dec 2025 04:59:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGAFvw7pYcAmMdWf+AlSbzerMstrVknJrcdfgc1r62VyRUTXBOQAQ3md6CkH8xxI7RMqFzxw==
X-Received: by 2002:ac8:5748:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f4abd70338mr344999771cf.7.1767013194287;
        Mon, 29 Dec 2025 04:59:54 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f3ffbasm3359067666b.61.2025.12.29.04.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:59:53 -0800 (PST)
Message-ID: <6ea96ce8-680c-45ed-a48c-5a38394ae7fd@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:59:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sdm845-db845c: Use pad fn
 instead of defining own
To: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Robert Foss <rfoss@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251217-sdm845-mclk-v2-0-7028c2d09145@ixit.cz>
 <20251217-sdm845-mclk-v2-2-7028c2d09145@ixit.cz>
 <f86b483d-c674-4901-b2c8-19a535df4234@oss.qualcomm.com>
 <eabea4d4-366c-491a-bdcf-cbbfede66bd1@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <eabea4d4-366c-491a-bdcf-cbbfede66bd1@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 3WIQnJ2w19CVKOpihT8mf9ADsSs8lVkL
X-Proofpoint-ORIG-GUID: 3WIQnJ2w19CVKOpihT8mf9ADsSs8lVkL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEyMCBTYWx0ZWRfX6qTl+66hKUxg
 QAHhAehEv3fbevXgWZN0a2eYb30pmVyAVoMylZENg8QyE1rwLe8AUxeCJMUATZGg/WXlPdwuDrR
 dVIswDUcSoUXfeHNSNM2cu499XGwictfCePdMniTebOUWhXq/1GmtZ1WIgxhHuOhL03ydRed7k+
 Q7Md+jbrK07BEnkBD3Tw+YsZMHPgW++/b6BZ77lE7hTc/FZVWF5cIJEbGzzsfZYUIn+83vwHg29
 +cqqU6+n85HZir5e/zeChQOKh2HyBYtV/ruCTFFk3wwvgMn9IqWhx3NGQg6Cs3liwbVAHwz9SBv
 8zIxnGhbcGLs+1sUN9mHVi4HvvUMU3eAsvHsDfcFLUO+mo63yXVpAE+94BbIuM4GzC/KaeHECeH
 nqo1X7Abni8+H8J8Mfd4UPqomQlxeeBOXvpfAm3ArRBSeX04v52qiZmI8OdWTZOQ6usHd55RIb1
 BnB5/GEvSm3rsFoUatA==
X-Authority-Analysis: v=2.4 cv=DptbOW/+ c=1 sm=1 tr=0 ts=69527b4b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=K3Vwq5XXvu027sOeNUMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290120

On 12/22/25 3:01 PM, David Heidelberg wrote:
> On 18/12/2025 13:25, Konrad Dybcio wrote:
>> On 12/17/25 12:39 PM, David Heidelberg via B4 Relay wrote:
>>> From: David Heidelberg <david@ixit.cz>
>>>
>>> Instead of defining own pad function for master clock, pick one offered
>>> by sdm845 device-tree include.
>>
>> I'm a little bitter about the wording - the pad function here is "cam_mclk",
>> whereas what you're doing is inheriting a common pinmux/pincfg node that
>> refers to that function
>>
>> [...]
>>
>>> -        mclk0-pins {
>>> -            pins = "gpio13";
>>> -            function = "cam_mclk";
>>> -
>>> -            drive-strength = <16>;
>>
>> This patch changes the drive-strength (16 -> 2 mA)
>>
>> FWIW it's 2 on reference designs and Sony boards, check your
>> downstream kernel
> 
> I don't have any. I'm fine with this patch not getting applied, but I'll CC Robert who added the support, maybe he can verify.

FWIW this can be verified at runtime as well (running downstream) with

cat /sys/kernel/debug/gpio

Konrad

