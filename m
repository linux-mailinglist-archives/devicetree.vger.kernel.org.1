Return-Path: <devicetree+bounces-164796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDCBA82642
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 15:26:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74B8E1B87212
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 13:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36F8325B66B;
	Wed,  9 Apr 2025 13:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JcQzuWSU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B257255E55
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 13:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744204957; cv=none; b=H7ec6fJSMUYAkR23RRG3TeGGYor3GDoSM9bGpiUEmuGPC07vUUCjhR/0ykRU0cTzDTNYDi4pVgikajiWXhRy2gm94VLHhBLYuWE/2LjlSz4WeBdLINF1mBeKL4L3TvZbhg8uzse1ZcEewZkTXfjhjYd2hxL+A19xHWWxG4iD4dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744204957; c=relaxed/simple;
	bh=zX4CYBgkdc29p/d5raDLjcdhkjA/VM+yjkA51ipJEMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZbPxQQp5BGnAKRBRbcUTCWoWaezHPfa1ywQaQMWgiHxzqmE1OtDZ9zNfMKr7Fn/KvinSFcacQn/5oeCIHOoPLYk1Xtj5TsBkw4Dvr+iPm74r76sPry5kHfQB7PWoMiX+YOo8gKjk7ODM8lgDYDsWtNmxG5bldxvP31BpGR+vA/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JcQzuWSU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5398S3On023665
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 13:22:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oG97pdlG3/MhaV/Eh1XXDbmemJdCv3MUuOAbWpnlMxs=; b=JcQzuWSUjcAF3JAp
	j8DfR3LIJMa6R4pvXTY8dHvEHrvGHVohZC2mRyqD43hG/VyNm5hj6m3cTRrzZnit
	Q4auc9lcw8EI4HGQ/LWZOKGViH1GMS0XtoIPI8gvvaCiQ5/Ljjkhfmbv055i4wSH
	1JNNjPsn/QuF7Q5UU5BnwKefXWMYbjura/MQDDP4uxcr8aWAUcQhUfjrGk5NYvaK
	1l2Wl4CtHZHXzUrXewSZYz/vWxiYvfOWFmkdYVzcjnQ67oeFwWbQ7dVtD8a6cESS
	DJ6FjoL7UDTj9zEmSUhAv5UagQnafBbPLn0zgXMTLqU5T52U34sKia4W8+A8xM9V
	hQFZng==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd03hst-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:22:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476783cbdb8so17007471cf.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 06:22:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744204952; x=1744809752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oG97pdlG3/MhaV/Eh1XXDbmemJdCv3MUuOAbWpnlMxs=;
        b=RX15Wz2itCN0xKKt+ZaBrwCMOxVI/76F7K2RhaGJLFH//HYjuKB/D9GS9z/JW0tp4Z
         1t/RR15Ga0p1JUG+2sF03jiZhfxUzPg7QyEFocqTF6txptGPZUExgUpyOJlHawlwQMGE
         WFbqXCYNGw/96KUV6mEBwSTqyPFOon7OCjwgfFS62z53YE8ESQHcCAIBY/0KfgigsqLG
         qvyhXNCaNkwTEOR0EmdN1vsEvvtZ2jzCjzpWizs/DEsKO93EbNb8pAEn/ihTOeH7dbjU
         DBdbLEEAQ4JfxVCeSkbpPTnJJ8UDnKLKjvHYFZ6UBedR4gIdGYzMzamNitb5QQrX8CIS
         SyYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBgnKYVvbgLimrRw+Q2MoPOZl2rsC/MXdgvpkcWXrZQ7+55ksOD7dnwbVJlM2NDREJbck3E5yXcGpb@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjf9oXhn3Swe3+ideA42fXIbxuh6ZFVGllcg9ch+6v/CfX+QiB
	OOBTQvAwzZMaATcJwil7PAQs7LRMa8qAOO7ERUftJCirSiVSFgfv6Wj2KDlP3gwEgKcF1JCVPrj
	FONuB5Sl/qndTelKRdDfOkjh7Uny/+n0VnwbUEqWPgozlqcU/G2oop3ch9FEA
X-Gm-Gg: ASbGncvBXO+13gvaIrHp7YxfmEINY+sCaubs8fKLhgGrXfiBKVcTFm2YZAjBpDFU/uz
	2LHP9HVgo/U1yt9HFdl0UvTeqkDFlENykm5rg5tHIMlUUDDwyxEdxr418u4F+qPARtKOXaKaKGu
	B4JsY+4dEhCyG96aQ8CmMWQCTg4nLEpvuH+zfONdKHRMHG33RJdIpv+/RLYjZoyF5SDA3wkGZ64
	CSTdJ0F+ovG39SfGxobbVfg6XIIehxpfB9Us5vnrXIsLu5O9QYtXRvG0ZncWC6mp4F6y7taAzgw
	rO2QPUxiHadlbrdIi5dERaC7HXErMUj68yKedVAhzgEePO7VY1xvB7fH2j5flz7QMA==
X-Received: by 2002:a05:622a:19a7:b0:477:e9f:7530 with SMTP id d75a77b69052e-4795f35494amr14732641cf.12.1744204950994;
        Wed, 09 Apr 2025 06:22:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYtvvTpAbOq+RwOTgPOW+p1fvx55yA5PRtcriKzpC7QJsbRuHC9EleyT/a6UkABJje5rKgAA==
X-Received: by 2002:a05:622a:19a7:b0:477:e9f:7530 with SMTP id d75a77b69052e-4795f35494amr14732121cf.12.1744204949672;
        Wed, 09 Apr 2025 06:22:29 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f2fbc2cf69sm799686a12.37.2025.04.09.06.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 06:22:29 -0700 (PDT)
Message-ID: <a79eaaa9-0fe9-45d9-b55f-ba2c327eaaaf@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 15:22:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/10] dt-bindings: PCI: Add binding for Toshiba TC956x
 PCIe switch
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-1-e08633a7bdf8@oss.qualcomm.com>
 <20250226-eager-urchin-of-performance-b71ae4@krzk-bin>
 <8e301a7b-c475-4642-bf91-7a5176a00d1f@oss.qualcomm.com>
 <385c7c77-0cb7-f899-4934-dfa58328235a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <385c7c77-0cb7-f899-4934-dfa58328235a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -EfEqbNxTVsaKW9O5HWY-0lFPgDQWrJk
X-Authority-Analysis: v=2.4 cv=Q4vS452a c=1 sm=1 tr=0 ts=67f67499 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=o148c7v5wAakItcUyVIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -EfEqbNxTVsaKW9O5HWY-0lFPgDQWrJk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_05,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090081

On 4/1/25 7:52 AM, Krishna Chaitanya Chundru wrote:
> 
> 
> On 3/25/2025 7:26 PM, Konrad Dybcio wrote:
>> On 2/26/25 8:30 AM, Krzysztof Kozlowski wrote:
>>> On Tue, Feb 25, 2025 at 03:03:58PM +0530, Krishna Chaitanya Chundru wrote:
>>>> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>>>
>>>> Add a device tree binding for the Toshiba TC956x PCIe switch, which
>>>> provides an Ethernet MAC integrated to the 3rd downstream port and two
>>>> downstream PCIe ports.
>>>>
>>>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>>> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
>>>
>>> Drop, file was named entirely different. I see other changes, altough
>>> comparing with b4 is impossible.
>>>
>>> Why b4 does not work for this patch?
>>>
>>>    b4 diff '20250225-qps615_v4_1-v4-1-e08633a7bdf8@oss.qualcomm.com'
>>>    Checking for older revisions
>>>    Grabbing search results from lore.kernel.org
>>>    Nothing matching that query.
>>>
>>> Looks like you use b4 but decide to not use b4 changesets/versions. Why
>>> making it difficult for reviewers and for yourself?
>>>
>>>
>>>> ---
>>>>   .../devicetree/bindings/pci/toshiba,tc956x.yaml    | 178 +++++++++++++++++++++
>>>>   1 file changed, 178 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml b/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml
>>>> new file mode 100644
>>>> index 000000000000..ffed23004f0d
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml
>>>
>>> What is "x" here? Wildcard?
>>
>> Yes, an overly broad one. Let's use the actual name going forward.
>>
> ok I will update the next series the name from tc956x to tc9563 as
> suggested.

As per internal discussions, 956*4* would be the correct name for this one

Konrad

