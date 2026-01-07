Return-Path: <devicetree+bounces-252289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1FDCFD370
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 425B4307EF85
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA033090C5;
	Wed,  7 Jan 2026 10:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jqp/MPgQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HdIVEJjU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B1730748B
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 10:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767781622; cv=none; b=Dajo01fsxpgnZ66lasuIZBWliRXf4pdQKgeAjhl3b4zJ8qVqqj602rsodTtXG1JEaGJ5d+0Sz8Mwk5uHwI3EjzmHluVdDbbnw6PEqLURqUj2bBEBlu7nCZyzFisYKH/luJdsO6a8hLxNz3Wg8rgbMkEtXqwyVsMNx0je/l2pVe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767781622; c=relaxed/simple;
	bh=nAlxEPy66jHLATL/E6dGzMkhG4O9SvR9Kl5Cyg1cIKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CM5tu2w240e8ociF+5oHvf3kmWXOndnC0NVvbCzBi/urAh3xlQz4aA93u5dSgXzSO+hJmqQUM02BIp7n5XH/5l/mHgqpsteCjKIhTW5Tm7Rw+yIWP4FIZoQGpGYqY+GWUFmCcrBo1y3TA/oYGRXM+fugZQ3ETAaXFd7ylIhcWg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jqp/MPgQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HdIVEJjU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079jA1P4137369
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 10:27:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/LjmVkkOZpX5LADayFjABETmQUSoP86sdabSMHPA01s=; b=Jqp/MPgQxhquJqwv
	PCCIfF4tbrmhb4vWQwPoQKC5HS/CqMpJ1WIj9Rt+2yqGmoAt/4s1Naw+1AtlxRub
	fgOeb6P92AJSmt1DLA24iJOiO7D/vHsqg1nA4n9nmb2Ap9aGiOmXzGqqHjkAqqd4
	ivKMkA6P/IYg9Q/F1jwXKSyXoAquxZmXd5tjL5yHERcJ+EbNLgvEadrbAU/wap2o
	OToj4D7K+h6o9I4UPLIcq4DRGGGbC8i6vYsNlicSUx07n0krTcfDr3Og1+oFmSKQ
	RnLjlGfZa+ET+Ufec8GY0kTZWdNxv7YtgO6W4/i9TLHzCdEXUwRbS0IpvnBAgSVm
	/7uZ8A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh66e2x1d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 10:27:00 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c387d3eb6so1680760a91.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 02:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767781620; x=1768386420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/LjmVkkOZpX5LADayFjABETmQUSoP86sdabSMHPA01s=;
        b=HdIVEJjUgkUb9DSwy1xQgolw8756IUoOIOwZ1mN6or6Rci93KrqdYhBIGnh2rT2QLz
         jiCUVYa5uzMyHJnf65ZKoOdPuYZI/KQIT1oQoZ3Z7hwjWE7MNd/WFMJFx+pMXbXOuj2I
         tIIHV5B/y3Fayz3kASyHekvzSUZyk/bD6k7DOInL9PBlO6xUa4qAdvrVt3N6MIpr2Gee
         Ah5uNItFEGU2pLlY4eMIUkr0huLpVq6TAWSiXPgcTVtiha2mVjQbdfSz4NLU2wVILg3V
         DWcPRu5aAm/sALvdqPKfokq16bYLoDjxtMzmmTLUdqgd+Q71frBnmFLloG9OtWSuM0yO
         0pRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767781620; x=1768386420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/LjmVkkOZpX5LADayFjABETmQUSoP86sdabSMHPA01s=;
        b=jw1vol+VI0qHg77G0gqIEP1wnWLJKJ4fK0d7VDE9XAuboGOpK1o4pOBol0Q+9Ho07d
         WayOEui5gN0i5GDHCUiyBnNp68GdfZCVwNci7rCN/AVq2H6zszH3BXJsm9kDuUTkLCiZ
         m8Ju8W6BkCwPTLKOyk0RAqzrUI1UMAfIhYPCa6sdPXxp/MNfiIN8pbeA3Powq/1JRdJo
         LDDX0520Y/ZOCd0SDbn3VQhrkgbICOrcV3EI8WMkW8xe/9iQQwC+7e1Zeu4eVSI5+MPw
         UjgnMXjy95sySHtJA36Ae8j+7I0660Uf5+9t0yYo2lKvb5NBapV7uMSJ+P8HaoNRgMGh
         Ul0g==
X-Forwarded-Encrypted: i=1; AJvYcCVr9ZnpXj61/j44h6bzME/xbAAKlEbMRYTUvhY00e2/EXsyfirtYAsWWOSbkvmdMtJi9GbMYUys9rCY@vger.kernel.org
X-Gm-Message-State: AOJu0YwfKtQNrF2C375qSFUgSVppYRHdzA7rw8S8wGBu0U2R6NaBS7gT
	dF/Z9rcy8lW0xGDox1oXyRWM1o4d8jLv88CdPOswuRR0j0kZP9OvvV7o5WmdwmiDsPfMFL5MLmL
	b/DsFvtSbRzndtJx9OJxHdFc3jhizZ3PTmitLx2KvBDGni06zkB/Q0nMWzY7NsDnr
X-Gm-Gg: AY/fxX7Jpyf4Z92khKmhLsd2IGMmSNylWwhhmPs+xOL5VMIf3sY/JB97QEdzH1DW2WR
	7ZWfYX5U1CQnU75S0WNkQeNdyOi2hCoDj1NLkct7CMT1hCYR7gKHe3e/Pnt5xtDt0u2Qn7Fw9Hh
	Etf8hfMKFVcoNbvCCnHNenT7pLGy/u2kpi1m7kfcHckL4LhYTmG3QrwdQut0tjjN/sXviVcyJHn
	8MPka9Q27O2g+7wupLAh/bYEdo1rhwT1m51IYKZFnpc2F9acAwnfwyJj4iU3R1nLws+yD3yIzWD
	u41vdvQQHouyENzqIyso7M3RKwAP+uRHiZijtQlrfjnu//4W26iWV9T9zr1hnbtQTbrI/5jQCxY
	SCLUR1oIh8H0fltl6bOrNi9A9ANH69xouMaNVeojJ
X-Received: by 2002:a17:90b:510b:b0:340:be44:dd11 with SMTP id 98e67ed59e1d1-34f68c27d70mr1945013a91.27.1767781619656;
        Wed, 07 Jan 2026 02:26:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4UB/GM7QQS/K25Cja3XQ1+qCMI+Yzn+arvKbMps4Bhq/+f6bhyoSx4Y2XmBVqknRMcB9O5g==
X-Received: by 2002:a17:90b:510b:b0:340:be44:dd11 with SMTP id 98e67ed59e1d1-34f68c27d70mr1944994a91.27.1767781619198;
        Wed, 07 Jan 2026 02:26:59 -0800 (PST)
Received: from [10.217.222.97] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fa78f71sm4624658a91.1.2026.01.07.02.26.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 02:26:58 -0800 (PST)
Message-ID: <f1f23093-fc26-40a8-99dd-c159d53cb85f@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 15:56:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: hamoa-iot-evk: Enable TPM (ST33) on
 SPI11
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251112-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v3-1-39b19eb55cc3@oss.qualcomm.com>
 <55eb7543-7b88-42e2-bb11-7c54c4e59801@oss.qualcomm.com>
 <dc500814-3b1d-4cf9-8f73-6fd71ddac28f@oss.qualcomm.com>
Content-Language: en-US
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
In-Reply-To: <dc500814-3b1d-4cf9-8f73-6fd71ddac28f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA4NSBTYWx0ZWRfX4B8Y8gRac3PR
 8YDQ8S6CJoxVm6C0tFwUcAlICVqMPCj0cD7Uda99PhL7q1GhZijyPAAnyDityTtnAgN1nFPaEn8
 jaJ/u4eDZeUTHAy0CDNdxjMJG0PamWXOI0HLqwJh5++GocURYqLhAYR6zrvae8N73O+FdkHO00G
 BT2kvNGCWB177gI2kI/zWpZt6h91ufchXROxlVHvBXiAES5aS3fgiFNfjG92bNkepXoVSVrKZ8H
 Ajt0uM0WZx6JfbJ095ARr+P2fum0KKhPjTEYobWomXlfH5CWGSCncRV6225PeqzKyWXlB2e9FuY
 9EHBAY01C0oq/rLCuC667vhWlFfhS4pGSOZo6N2ExGPmDSHIVX7XjIu0KTu5dQwsEJu2oj65gil
 EIW8fkrUrL8LlW0Knq/HpoYDZ7uX7FJCv2Mn1VZAMSsLXxGVDyxpXAhXurNKuk6UXgDdFstwjDG
 KiJh9BH331FT23w74Fg==
X-Proofpoint-GUID: sOCPf9Htj1jLrp5ikzVGnfMg7xzDrMa8
X-Proofpoint-ORIG-GUID: sOCPf9Htj1jLrp5ikzVGnfMg7xzDrMa8
X-Authority-Analysis: v=2.4 cv=evHSD4pX c=1 sm=1 tr=0 ts=695e34f4 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=9IewMXa7Ph_V3uKePnAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=zY0JdQc1-4EAyPf5TuXT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070085


On 11/12/2025 4:39 PM, Konrad Dybcio wrote:
> On 11/12/25 10:28 AM, Konrad Dybcio wrote:
>> On 11/12/25 8:42 AM, Khalid Faisal Ansari wrote:
>>> Enable ST33HTPM TPM over SPI11 on the Hamoa IoT EVK by adding the
>>> required SPI and TPM nodes.
>>>
>>> Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
>>> ---
>>> Testing:
>>> - TPM detected via tpm_tis_spi
>>> - Verified functionality using tpm2-tools (e.g. tpm2_getrandom, tpm2_rsadecrypt)
>>>
>>> Depends on:
>>> - <20251106102448.3585332-1-xueyao.an@oss.qualcomm.com>
>>>    Link: https://lore.kernel.org/linux-arm-msm/20251106102448.3585332-1-xueyao.an@oss.qualcomm.com/
>>> ---
>>> Changes in v3:
>>> - Squashed patches touching the same file into one.
>> Doesn't seem to be the case
> The author was referring to a faulty previous revision, not my
> suggestion of coupling this with the dependency
>
> for this change:
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad

Hi Kernel Reviewers,

just wanted to follow up regarding current patch. It was reviewed but 
hasn’t been applied yet. Please let me know if there’s anything pending 
on my side or any additional changes required.


