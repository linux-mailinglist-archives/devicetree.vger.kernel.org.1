Return-Path: <devicetree+bounces-140904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75750A1C34E
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 13:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 449321889783
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 12:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7842080D2;
	Sat, 25 Jan 2025 12:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ks4wyVRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27F420766B
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737809261; cv=none; b=UQVcPLBH5O7fg8clszmghaotjUi2YKw7M4ky5QcCuk6JNqNM/O5HVH51QgtY8kutC2tsD/9g8HYZjGj9nHJAYtcXSLM6SXV4yYUJzwF8XpRD9skAL+QIZ4q65djNkTwWKTTWstky/sE5Lsn8TKjl8+jG+ulDwd2aXFMHlTFk18o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737809261; c=relaxed/simple;
	bh=j3ChbYvYouWV7XVpY7PgSRYLKAkIA5ZPWcLzLL1TU/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q4tDprqAPADY8y9WQWIu/gMWdXaTvLBOxGVsOnsJB5wUGaQY9ytFjEQWXEyjYYVNSm9taviUVA99od8NyWTYcSjKJWl7kIxdbwWPQjZEV5ERYyaEr6t6PjW/ve7x8PsrXwyF8lMFfmdpwwL39BZpYSOnCd9b0ztokrqRvjFj5lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ks4wyVRD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50PBuSK3020422
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:47:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bPHYDzKyLDqAStG7X6WB1480nUaAfLXUbqKAnfMUwYc=; b=ks4wyVRDD/MUUAu6
	JZGc4s/AzeKbW30xUP7kykfLX7o45ckKiRrDrXsXg971wQ+1V/VlV65hmVGvr06v
	FuuzupkijrU9TzvRf12Q5uF2tRq6hESPaDmQQW7AvHIGeafHsjEs5OWMpoD0975v
	C3YlI+cyoB1VwNscCsXZcyGbRby4GyGZ8+Kx6HTU3sBCojiRf052z7KFBrxBA0Rv
	e1Hdpz6rfLghk0TR2wbp3r172suhH8kXdV9KgcMJ8aj+uGTwnTkQtpJRqdU0oyN0
	uZ2ajTV1x1VJleQM77wTG9yW5QrSTD/ycW/Sk6Hx4HZ0RK6CBTNAQUor6kKshuad
	K4qWAw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44cs20rgnr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:47:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467975f1b53so7440821cf.3
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 04:47:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737809252; x=1738414052;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bPHYDzKyLDqAStG7X6WB1480nUaAfLXUbqKAnfMUwYc=;
        b=knCBT2FxDKgyUiB4VGlbi/Iy/HeyIYzvgH6S/A6fpk1idMHjh4sjw9L6z1ecjF6byD
         XvYS6AO17Q4s+w3YtiNRUo4GQCula2/hfFT0QsMQqGGyxNAicUXfFcAJMRFa6zyPaxFE
         v7UAhnKKuFqRxRVn9aoPB7uM59USaJso429JUhRjKMoTBflxGj0QLLy38h+qmSgnfwyW
         lDkP7PGNZkjGA/TWluo/4cPSl9GDhFHIjGlQamew3ddzoJ4TBu/2k/RgUMFCR/O2JsYe
         xGCOGKSNNh4IgRdpn/66tAicHaWD1Z1gAOO66rUygtwZwBFDHegy2JTh6ZWh8UiHScvL
         qM7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVvrcBDi/eFUEZDnvlRsZPI+XlunVwZWpUSL1j6pIQXrCsNoxPN6WrbYCxppcl7533ijKZAntAfkkEQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzyRdr9JX/X/t4gq43HiI0dkBFvPTPbzB8Wp09G64qCHIiG8T1f
	a8RWJxII7VGiZit93f6Gg+sQagF0NAFeWKcqCeQfI/W19UQTCdyexL59ZBx/jwB4jY8s4sGom22
	wGy/qygL0odhYuzNAcq1NfqjdZDn8o+Zf2xaSIrURejbiXZw/SwbS8T8iv4G+
X-Gm-Gg: ASbGncuw8rCCFV8Q7AcSxwQCV4X0qsbr2AGn+gZyNqHgYnxxGpL6b/IZDmnELzPsHmi
	CI9HJ/CvYtD1+kf+a5Pyd/EGwbDZaGJRiS5quZrtve3P/Ea3hyE9IfvzHKuhzFzPtwgJU83klYB
	KfLIovLWdSm4EFguZFcxTuyMl5zsJWvFO6j13dHSy3CcC7J34x0fgRdAoelmOTIoYeIj8sripQv
	Wrxqr8o8TXy9Lq4QsRdztLRRPalIefg9MQZujNi2bEwIIyuwU7s6GmaJCx3jB6WjJJpAmZSBJDX
	H9ouBC16oXPwmzH3ZwuS26rJWCfHB2S62JRwHm2oJGpwpebO+r67fTxCEb0=
X-Received: by 2002:a05:620a:3947:b0:7b6:c3ad:6cc5 with SMTP id af79cd13be357-7be6320bd0cmr1982389985a.8.1737809251678;
        Sat, 25 Jan 2025 04:47:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+tpPHmY40FelAxI+bcpsjIWf+i8whl2Z89kTM+JXBxL0YetqZNT3ifGIkOBx7/dSycvzLDg==
X-Received: by 2002:a05:620a:3947:b0:7b6:c3ad:6cc5 with SMTP id af79cd13be357-7be6320bd0cmr1982387885a.8.1737809251258;
        Sat, 25 Jan 2025 04:47:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fbb9fsm283557166b.142.2025.01.25.04.47.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 04:47:29 -0800 (PST)
Message-ID: <79281aca-c275-4055-8d2c-d2407b0f9811@oss.qualcomm.com>
Date: Sat, 25 Jan 2025 13:47:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com>
 <20250124-preset_v2-v4-2-0b512cad08e1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250124-preset_v2-v4-2-0b512cad08e1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: XNf8Jn2YQ6O5yj7dhPH3jw1SpocAiWH6
X-Proofpoint-ORIG-GUID: XNf8Jn2YQ6O5yj7dhPH3jw1SpocAiWH6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-25_05,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0 phishscore=0
 suspectscore=0 clxscore=1015 spamscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501250092

On 24.01.2025 12:22 PM, Krishna Chaitanya Chundru wrote:
> PCIe equalization presets are predefined settings used to optimize
> signal integrity by compensating for signal loss and distortion in
> high-speed data transmission.
> 
> As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
> of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
> configure lane equalization presets for each lane to enhance the PCIe
> link reliability. Each preset value represents a different combination
> of pre-shoot and de-emphasis values. For each data rate, different
> registers are defined: for 8.0 GT/s, registers are defined in section
> 7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
> an extra receiver preset hint, requiring 16 bits per lane, while the
> remaining data rates use 8 bits per lane.
> 
> Based on the number of lanes and the supported data rate, this function
> reads the device tree property and stores in the presets structure.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/of.c  | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/pci/pci.h | 24 +++++++++++++++++++++++-
>  2 files changed, 70 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index dacea3fc5128..7aa17c0042c5 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -826,3 +826,50 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
>  	return slot_power_limit_mw;
>  }
>  EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
> +
> +/**
> + * of_pci_get_equalization_presets - Parses the "eq-presets-ngts" property.
> + *
> + * @dev: Device containing the properties.
> + * @presets: Pointer to store the parsed data.
> + * @num_lanes: Maximum number of lanes supported.
> + *
> + * If the property is present read and store the data in the preset structure
> + * assign default value 0xff to indicate property is not present.
> + *
> + * If the property is not found or is invalid, returns 0.
> + */
> +int of_pci_get_equalization_presets(struct device *dev,
> +				    struct pci_eq_presets *presets,
> +				    int num_lanes)
> +{
> +	char name[20];
> +	int ret;
> +
> +	presets->eq_presets_8gts[0] = 0xff;
> +	if (of_property_present(dev->of_node, "eq-presets-8gts")) {
> +		ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
> +						 presets->eq_presets_8gts, num_lanes);
> +		if (ret) {
> +			dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	for (int i = 0; i < EQ_PRESET_TYPE_MAX; i++) {
> +		presets->eq_presets_Ngts[i][0] = 0xff;
> +		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << (i + 1));
> +		if (of_property_present(dev->of_node, name)) {

of_property_count_u8_elems returns -EINVAL if the property does not exist

you can then drop a level of indentation:

ret = of_property_read_u8_array...;
if (ret == -EINVAL) {
	continue;
} else {
	...
}


similarly above for 8gts

Konrad

