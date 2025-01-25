Return-Path: <devicetree+bounces-140906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 21872A1C355
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 13:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0977418899E9
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 12:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B27E207E03;
	Sat, 25 Jan 2025 12:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FiqXKMm0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C1B1E7C11
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737809515; cv=none; b=iNaWa3bzaWnNX/IVoPOdnkGKpgzmYOuJR0VI1i1r5BPUc6M0ssdrZu+uY4katzQ6/JpiXTrTNHdxmtCR9BJSla+sTPw1cLAd8Ad4Id/wAqNUV6Ieg06LQKEZzTKDqnzpMHJRP383qIEcLwIdOpRV3+HeHZbRQhEOThLBmd/cNZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737809515; c=relaxed/simple;
	bh=86QVJcp7+Wpb1h56kTcVv3nN2lg8fSxxUT5DE2OEIwY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kWLp7Phw7O++SgAwhpsA0d+zdwQkCE6NXdEZT2NYKQESIcg0ntLKWB2CqWVz8kb3ZZkv8MK3zaDI+/hIXrmsv5Dt/klD9ipNAtydTcTIJJgpa7npnprlXSzXLnFVVLPhLgIvcqOyACX7VQfOmRp1XztHuxUxJqV6CN6FuuDAb4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FiqXKMm0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50P9HB5I022834
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:51:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CWziA7aUdOr4gS8lvvWsqKbJ5Nzxb5TboxzkZ56gBtY=; b=FiqXKMm0wQShkz4q
	nOQOWrda0vMsz9UXlynj2imlecUhsyfA1AjKKzT3TfpIxHFKnosRakQogRolApnR
	Xc7AFDFACBEcQiL3Qzn2EGKmKChuLRcbU2Me8JrpxfKD07cAJhGjzhfWDbYppVxz
	g4hZUpmT0Q2DxCkKsEJMroa2HYdPtZYYD95fx+cNKE90FRjrcc/69UFwxQkxqPtm
	ysIalOZnBlYjLA9bIGTCfZ691n4lghATUUNTfkU/XxIx4O4V7MEojXvGZ+WPGQm8
	DEfYY8eF+JLXpCIp7FbR/75htxmWemu0F1QgbA+b0iaNqpBRP70Oc1i0d+XO2z9w
	A8bL+g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44cryr8gpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:51:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6f85325c3so45621585a.1
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 04:51:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737809511; x=1738414311;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CWziA7aUdOr4gS8lvvWsqKbJ5Nzxb5TboxzkZ56gBtY=;
        b=EdsfsKj6HdAiAGelPj1/J7cvhf3ay3I4Jnbrw0G1NpcqJBlBDBdysCCDnScSan/1J5
         xHAI50VPpkMMz00+DkLXqyZY34sL1NqF+J8UXbsjhImgxNq44LADvxTJuKnVnilV7Rk4
         kMAkl3m/auzVGyuixcS9L5jlKcNyaAKlJS+9AzxbreYmzQmPKP5Uzy7LJ6R+/EJD+yrK
         YshbEyibjUgvA81mRNEM0s3ZM2MDPSkVv5z4fbFv74913yQdMvN41jtzz/Qau6eXcY4y
         KwbDVKFBZMvh38RcqWFEaoM5AMURD3AqLq/rTkOk9W+NaEVui9Bc21G7KxWxG9j2D0ZM
         a5YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUU9rxBg+lr/iCnwkETVTvXGklTpsif3VLdOrfXOilPVW76mFYrHqFp3191GO/wGfn46UNiBljW3W5S@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/AF9Bdu6W/2JKyJRHAZQC7ENAYEZuyQ6u2rE4xYQW448ZW6jU
	D3MACebQcD8Iiqwl6X4yHSxARkF9CcvuJGKPhmk26UwWgqKjw3E3qQFqjUq3/plmTwU5aoAoBsi
	EHgtmQycdJCt3/IrdRRN67rmA8LtY6tXu76mWOXSUtXFwX1k+3mYvIUHgoJX6
X-Gm-Gg: ASbGncsJ9gYrXFzF7cqrIXKwdo/QbteBoLMUzcTEyRUgEvvN708m/6fmttCTbYzl8eZ
	xjDre3K9ddx6DWbmNo11UkCP2U/cosKyYj+WfhuO7JtC0gpvioNY1PCE3+AJxbbqOkyBxVd/wGb
	F7Q6iw8v73pVCeVn5fhfVdCqLH1nExQRe3A/bCejmDcKUwPxrz45sW+vzvDQNBUitaA0MSfPiR6
	RqqOJHZcIcg0LjMdDgYN1F68RKoNkQeGzG07LWPbNA00upM2W5UWKdX60q1L5ujn0FJRJf1u27Q
	5SUd3o2P+UvUaBKNWfbWNzPK7VAQD2A2Ud8eJ/qa3f20eGjtVZ3EaC4+hpU=
X-Received: by 2002:a05:620a:450e:b0:7b6:dc5c:de5 with SMTP id af79cd13be357-7be631e6b5emr2052212985a.1.1737809511537;
        Sat, 25 Jan 2025 04:51:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+UQrv1kM0ZKAZiqODKXjGLwGCixqQRdnXMHLQHxrdyBaXBM/t1cXrqvIOKkD+dJIF7eR9gA==
X-Received: by 2002:a05:620a:450e:b0:7b6:dc5c:de5 with SMTP id af79cd13be357-7be631e6b5emr2052211885a.1.1737809511100;
        Sat, 25 Jan 2025 04:51:51 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc18640df4sm2507590a12.48.2025.01.25.04.51.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 04:51:49 -0800 (PST)
Message-ID: <653c86f8-30d3-4ffe-aa2d-ffb37b7b5bb2@oss.qualcomm.com>
Date: Sat, 25 Jan 2025 13:51:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com>
 <20250124-preset_v2-v4-2-0b512cad08e1@oss.qualcomm.com>
 <79281aca-c275-4055-8d2c-d2407b0f9811@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <79281aca-c275-4055-8d2c-d2407b0f9811@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: oRTynW_epNt4OebBSpTRVeAkDTik-mNN
X-Proofpoint-ORIG-GUID: oRTynW_epNt4OebBSpTRVeAkDTik-mNN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-25_05,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 mlxscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 phishscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501250093

On 25.01.2025 1:47 PM, Konrad Dybcio wrote:
> On 24.01.2025 12:22 PM, Krishna Chaitanya Chundru wrote:
>> PCIe equalization presets are predefined settings used to optimize
>> signal integrity by compensating for signal loss and distortion in
>> high-speed data transmission.
>>
>> As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
>> of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
>> configure lane equalization presets for each lane to enhance the PCIe
>> link reliability. Each preset value represents a different combination
>> of pre-shoot and de-emphasis values. For each data rate, different
>> registers are defined: for 8.0 GT/s, registers are defined in section
>> 7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
>> an extra receiver preset hint, requiring 16 bits per lane, while the
>> remaining data rates use 8 bits per lane.
>>
>> Based on the number of lanes and the supported data rate, this function
>> reads the device tree property and stores in the presets structure.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>  drivers/pci/of.c  | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>>  drivers/pci/pci.h | 24 +++++++++++++++++++++++-
>>  2 files changed, 70 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
>> index dacea3fc5128..7aa17c0042c5 100644
>> --- a/drivers/pci/of.c
>> +++ b/drivers/pci/of.c
>> @@ -826,3 +826,50 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
>>  	return slot_power_limit_mw;
>>  }
>>  EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
>> +
>> +/**
>> + * of_pci_get_equalization_presets - Parses the "eq-presets-ngts" property.
>> + *
>> + * @dev: Device containing the properties.
>> + * @presets: Pointer to store the parsed data.
>> + * @num_lanes: Maximum number of lanes supported.
>> + *
>> + * If the property is present read and store the data in the preset structure
>> + * assign default value 0xff to indicate property is not present.
>> + *
>> + * If the property is not found or is invalid, returns 0.
>> + */
>> +int of_pci_get_equalization_presets(struct device *dev,
>> +				    struct pci_eq_presets *presets,
>> +				    int num_lanes)
>> +{
>> +	char name[20];
>> +	int ret;
>> +
>> +	presets->eq_presets_8gts[0] = 0xff;

Also please #define 0xff as a reserved value

Konrad

>> +	if (of_property_present(dev->of_node, "eq-presets-8gts")) {
>> +		ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
>> +						 presets->eq_presets_8gts, num_lanes);
>> +		if (ret) {
>> +			dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	for (int i = 0; i < EQ_PRESET_TYPE_MAX; i++) {
>> +		presets->eq_presets_Ngts[i][0] = 0xff;
>> +		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << (i + 1));
>> +		if (of_property_present(dev->of_node, name)) {
> 
> of_property_count_u8_elems returns -EINVAL if the property does not exist
> 
> you can then drop a level of indentation:
> 
> ret = of_property_read_u8_array...;
> if (ret == -EINVAL) {
> 	continue;
> } else {
> 	...
> }
> 
> 
> similarly above for 8gts
> 
> Konrad

