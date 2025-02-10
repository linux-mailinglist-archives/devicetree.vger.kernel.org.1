Return-Path: <devicetree+bounces-144824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E620A2F604
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DF0C3A56B0
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D1818D63E;
	Mon, 10 Feb 2025 17:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EW8jg51k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED29525B698
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739210122; cv=none; b=N80pMyy92cjRntvWj97Zdj+deTPGkYLm7Cz9YdfFrGDl9T+NCR+GKsO+5ahzMpaIReGypFk5ix46kYL2dqQaSy7srZjmgoyyFqyZHSFV6pWiJkZ5LqGEUlKtcmIwujsaeJADDAc7DS+7yy4Drkh1sW4f16zQvJ7Avutqjxh9jB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739210122; c=relaxed/simple;
	bh=Xtuj3LhBpTfDYY7N35r6nKZxVkwtKPfhFYvYKZx69zU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BQFoiZ7Ao82KUjIpZkYAXcWubD0Q+g51LkN/ixA8MifWDW6JjoYnJUf8R4Os1UvxbggvztcFMI6M4CECY7IIiezd/M9uBewMVzEoL3wD0wcIGowUjBA8PhRw4w33Dn/O6Dw96Ju0wfAumP73yqqevNh4CK7smR+prDU0QP1HC4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EW8jg51k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AHVvs5006169
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:55:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vwmP+K49vLFoWTm1+BQsLhgb4jcUsR7Wv1P0YiFY6zM=; b=EW8jg51kZCQm/06f
	g2LBdx7NdR7L7OV1GKmHFyEag4o2a0uTgf4ctuAWkB47fMZEtA9kJI/4iI9aRy28
	fiX45OqVlyeDrMWjGWtc43Z8u8+NxQddZ0iFWHoR1eV1POutocxhPg6Mg1/CpXYf
	HG1i8FtCaNhNG+KC8OROw3p7hxCC+Tc2BWtET/eHjXN/0y8G3R57xzDRuVD+ZAws
	ppvne2fkf+nitpFVGmQCePEs1oU5gWWOYy6uGBqPRRteh1M4hvE+WZ/E4/hkTZhf
	WdpOUudWlj4vGmU/qIh2/6N8HSytIBzaFDLLE2G3M/9yVX4fSNuLPtwzVxtJv9VB
	j/1TVg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe5msh1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:55:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e44a0bfc3eso2866776d6.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:55:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739210115; x=1739814915;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vwmP+K49vLFoWTm1+BQsLhgb4jcUsR7Wv1P0YiFY6zM=;
        b=ebXO3ngWWi7YL//4R7Dspz4A+CATWTOtO0Y6OTtZJqX944czP0joO2mg1kIC7gvuOj
         Ag0/162LsUSaSvv2fnzYhv1mpGyqKNuHUFkMuWAluNQ8pxhZdBbIf+HjPpahJ2xEqiJ/
         yOnJArw0g3nn+iH/Dnc0yLDK8kcS1fqBFRmEkq5cu880RDB/sdmdWRjOQ30vYyFq2pVT
         68q4MGsTIZYpHQdCGftrExHa4COYtEgOoUw+5LO7x9iNt8u+XHgnfjDJomUEy7m6AfOz
         XRXGfXomsvio1cBaNT5E4jBgh2KBbAV8WWKdJEWqjWQRO4ud0oFUOi36MLSOG27KoyN7
         XVGA==
X-Forwarded-Encrypted: i=1; AJvYcCWWTjQgnppbHJP7En9ud+H3R3Xw7AJ8yIvdwZIJ/rFM0RIplsJrlrvXPdW4q6XbJvMp5iqjUtBLD/yE@vger.kernel.org
X-Gm-Message-State: AOJu0YwrqiVKamcxaPNsbADzzyByEzWYV1ov8gEEe19DbLZCKDtUUe12
	6dgCI7Uil3ABEvWPAFrbiO7DVg+C1DrvJHWGiqsJJN6CKInBcl6vvWNvedHITrvBfvb70JDeok2
	ybEdy/5pHsSEkrJ5n6JcvBTM6k48xBiUSwRMbDw/ntxPOfrAbkjjTwc2iSYD6
X-Gm-Gg: ASbGncvLfvbxAKi0YlLscAaQaFn32u6KjPTQxxmzWxzpWPucEiQN7Ftt+Zbv7yVrhGK
	jYClmY23RXo1qaP94WC1TE30jryiYxdAa2VzFx0t6eulKs2QfY7txg3TovBrhqJeKyZZW8qkAXq
	S0xbgcXJ+/tSq/w4TeZDNG7WDnxoKxp6EvTGJq4M2JmhMw203MRwYhfiTfy9oJvd339+XALOwsf
	ixO4+GJ+OGraKQ9l/Cq/Od9L+p0Q7S/TnvNYCFe1qD2C+Yh1YZ+MbhcpLRPJXVa6WbWUWsZAXjB
	F27U/+spDT3+1M7BQXMmKNDMU738wZvSXLcKgfqMObFk3vNZJkD6255g800=
X-Received: by 2002:a05:6214:57c1:b0:6e4:45ab:4de8 with SMTP id 6a1803df08f44-6e445ab4e5amr71563586d6.6.1739210115222;
        Mon, 10 Feb 2025 09:55:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcQI77AtK3XAfbwGcc1HufxPK/2pOXxHvbUx2968NuCHJKTTrF1581V6eIEUMTwI2i68TdlQ==
X-Received: by 2002:a05:6214:57c1:b0:6e4:45ab:4de8 with SMTP id 6a1803df08f44-6e445ab4e5amr71563496d6.6.1739210114868;
        Mon, 10 Feb 2025 09:55:14 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7b12d5f49sm415599866b.73.2025.02.10.09.55.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 09:55:14 -0800 (PST)
Message-ID: <8d23002b-64af-47a8-8b41-e533e3c13223@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 18:55:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add 'global' IRQ for PCIe
 controllers
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        devicetree@vger.kernel.org
References: <20250209153940.3489-1-manivannan.sadhasivam@linaro.org>
 <173920411963.477096.6458317590653327676.robh@kernel.org>
 <20250210165802.tbvzx4qjygzdsk2f@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250210165802.tbvzx4qjygzdsk2f@thinkpad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: e39MouKqUOuNAhZkGx9XwNnygdqv7V3o
X-Proofpoint-ORIG-GUID: e39MouKqUOuNAhZkGx9XwNnygdqv7V3o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 mlxlogscore=791 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100146

On 10.02.2025 5:58 PM, Manivannan Sadhasivam wrote:
> On Mon, Feb 10, 2025 at 10:22:43AM -0600, Rob Herring (Arm) wrote:
>>
>> On Sun, 09 Feb 2025 21:09:40 +0530, Manivannan Sadhasivam wrote:
>>> 'global' IRQ is used to receive vendor specific events from the PCIe
>>> controller.
>>>
>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 10 ++++++----
>>>  1 file changed, 6 insertions(+), 4 deletions(-)
>>>
>>
>>
>> My bot found new DTB warnings on the .dts files added or changed in this
>> series.
>>
> 
> Ah. I didn't run dtbs check. Please ignore this one, I'll post along with
> bindings change.

I'd be grateful if you turned interrupt-names into a vertical list in the
next resend

Konrad

