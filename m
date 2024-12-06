Return-Path: <devicetree+bounces-127968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D54789E6D8F
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 746601884760
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A85CB1FF618;
	Fri,  6 Dec 2024 11:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m2eMtTxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3EC1FCCE3
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733485591; cv=none; b=XIeCekaqoX6NikfxEDwhEWyP8VynEb19qUjcpWjmHr/W9P9xUwa5nXSBSW/dmSB0EY397xiQDjeDlaZ5Yh7+UfnAJcNOlcIC+k0lUsISpI8PK3ryvB/ZAEZBMvy0Lh1P/eqx84W3mFTTK1XaVV/tkkJpFgpA7Za5aJPipQ0U2Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733485591; c=relaxed/simple;
	bh=jTMtrDLnjk5W3t/iPqQBtaBROJ7vQIK3Plh8o9UC2sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WpEHBUvo+fm80CD6bqotV1fPv2bKixZ4XNKMcOBZMufoaFB3LDrizcN5gDwAqRgI2/lnQxLF3o/6yh2wATp9JtoIRTjpIJWMHIqXRVG34XFMf3Nng6Eaw2XjYhWpHMO3+EzL4sQ08foCb+c5PzNsd3WBOhathZei8NdL7DaeR7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m2eMtTxj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B6AIJcu029224
	for <devicetree@vger.kernel.org>; Fri, 6 Dec 2024 11:46:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5hUY1e/YxiySi/wLCkZ/A7ok8yUIQYxm2Ew51lyeXS4=; b=m2eMtTxjm3bJXk29
	l5wPFxi/4jimYBJzvV9mpPXTAA3Z1gI6uNZYM2ZB7W+REvLS+NTmbRFCr6wv/K73
	O75U48bocJPWLGWM9Mn1uew6H8Uc7jzEbMKj5mVgiO+BRLZydmmfHydYkTiZCQsG
	RuCu/YUxFciy4wllLrDTSuvmcIastvTRJtYxWaEhOK6VNvWPWZCpLGDoqQhdn5Qv
	qpzhXVlYdOf8e4YRS4yx456wmd6GidtE8A/sCC3mU0Fo/7pS4L3GYctTH9F6MP4t
	Knu5OonPBr8MrpeuYUIo0OV4dx9qxCfAw5mgDtP+KvqJhQL8D4fTeBITQqTJn6F+
	qDvh4A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43byd80768-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 11:46:28 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b65d1aba51so17416085a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:46:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733485588; x=1734090388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5hUY1e/YxiySi/wLCkZ/A7ok8yUIQYxm2Ew51lyeXS4=;
        b=DKanqMC+XYLDpiMek6tDEPZWlVBtUMrR5/UOJgTI8aWDeAqChj6dzz7AZiS1NHOwvt
         yJPsNCkx95ZTXDwniPwJH3I3JRoESXFQ/hdFtmTpjiHJbVWUZHY1o3H+L/DP9b2JUMNe
         oDNfbq76SP/5aBCrj37iADY4INMPKng1QVDvDBhLzF5S6vl7fmieLLG6tHX2BolWdU11
         TRyh8BedaYPbpWeGPykgd8NPPofNWWCvLDBtnxiORC+ezUz7lxVmIGztFz9qM9bVpiG+
         xFkvoNmOeuMLO9N5w9PFBNluTuyKEmTnJrB5MnPPYvKrHiTsG2kPKWCE0GOGkiZbX5Eb
         0m5w==
X-Forwarded-Encrypted: i=1; AJvYcCWPVpiIiq+KU7x5Lbc5TilssRtksnOo5S+P7iS9A3ewCuo6NXKLNuEsLpBEaXW3MgJ0gYUDt5lQoZmi@vger.kernel.org
X-Gm-Message-State: AOJu0YxP/xsbHrEURL2rsTo4GInz76UQ2FZuyeUEN0nFb/L5g6kD545c
	panxriFndLchbJb6caEm+QSOF6oH2komP7N9vTu4A2Jl7Bc6VGI1F2pb0A/P1eWqAK+eLQAAhYH
	hYV7Kz7ovWFBRwiHYACufguq1k/YbjHY/MqKxNXd7KHfb8JFta5EuFOv8HVs/
X-Gm-Gg: ASbGncvtLDCHUny8EK8NDaV+3TPQZTOfjYopOWaQA2/MzTyWdE0nxUkBDkuGJEJxXTe
	E0pTqRDL76dmdIGlkveuUmHVqL+SkR/ELGFyMqVYE1STtqQ3xqhiXGL9f7bYdt+KPMGwG1JxpmY
	Nr/K39NVY+MfZvmOM1PV/UkZEO0t19/0HLdp8q4jKDkKVGK9/SgRgWl0xGkvHKSJz9qy/zblEPT
	fC9XuAXf4qLbS+w9v2NcTLIldB4IBvDapph8p8PVq3lacV53qrLrnisUPjwbCTFtPboEgB2ul8Q
	6Lx2TmLt6Njktt5UkyQik8VmhZSP2xM=
X-Received: by 2002:a05:620a:469f:b0:7b6:6634:5a3a with SMTP id af79cd13be357-7b6bcace083mr134724885a.6.1733485587826;
        Fri, 06 Dec 2024 03:46:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2ztyWlSb4kx6b26cpg9MuRvCCN2v3JqU/i03b5FNDZ8dzZTlaEdkLBo8DgxUk1CP0/Qt3mw==
X-Received: by 2002:a05:620a:469f:b0:7b6:6634:5a3a with SMTP id af79cd13be357-7b6bcace083mr134722785a.6.1733485587363;
        Fri, 06 Dec 2024 03:46:27 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e96aebsm229571566b.65.2024.12.06.03.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 03:46:26 -0800 (PST)
Message-ID: <153a9d51-6fc8-47d8-934b-4c53365077bc@oss.qualcomm.com>
Date: Fri, 6 Dec 2024 12:46:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 17/22] wifi: ath12k: add AHB driver support for IPQ5332
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Balamurugan S <quic_bselvara@quicinc.com>,
        P Praneesh <quic_ppranees@quicinc.com>
References: <20241015182637.955753-1-quic_rajkbhag@quicinc.com>
 <20241015182637.955753-18-quic_rajkbhag@quicinc.com>
 <243cd21d-6a35-4ff0-9b38-ec519a804670@oss.qualcomm.com>
 <9093b41c-986d-4304-8414-61e4ee2d9950@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9093b41c-986d-4304-8414-61e4ee2d9950@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xpuaBK4j2ZRN8TD4dJ0jZyezWb9bjZXx
X-Proofpoint-ORIG-GUID: xpuaBK4j2ZRN8TD4dJ0jZyezWb9bjZXx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412060087

On 6.12.2024 10:56 AM, Raj Kumar Bhagat wrote:
> On 10/19/2024 1:59 AM, Konrad Dybcio wrote:
>> On 15.10.2024 8:26 PM, Raj Kumar Bhagat wrote:
>>> From: Balamurugan S <quic_bselvara@quicinc.com>
>>>
>>> Add Initial Ath12k AHB driver support for IPQ5332. IPQ5332 is AHB
>>> based IEEE802.11be 2 GHz 2x2 WiFi device.
>>>
>>> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
>>> Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1
>>>
>>> Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
>>> Co-developed-by: P Praneesh <quic_ppranees@quicinc.com>
>>> Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
>>> Co-developed-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
>>> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +enum ext_irq_num {
>>> +	host2wbm_desc_feed = 16,
>>> +	host2reo_re_injection,
>>
>> Why?
>>
> 
> This enum is used as a IRQ number for Ath12k AHB. Based on this enum
> we can get the IRQ name from irq_name[]. This helps to request the original
> IRQ number from the DT.
> It is starting from 16 becasue, in irq_name[], the name for ext IRQ starts
> from 16 index.

[...]

> 
>>> +				irq_grp->irqs[num_irq++] =
>>> +					reo2host_destination_ring1 - j;
>>> +			}
>>> +
>>> +			if (ab->hw_params->ring_mask->rx_err[i] & BIT(j))
>>> +				irq_grp->irqs[num_irq++] = reo2host_exception;
>>> +
>>> +			if (ab->hw_params->ring_mask->rx_wbm_rel[i] & BIT(j))
>>> +				irq_grp->irqs[num_irq++] = wbm2host_rx_release;
>>> +
>>> +			if (ab->hw_params->ring_mask->reo_status[i] & BIT(j))
>>> +				irq_grp->irqs[num_irq++] = reo2host_status;
>>> +
>>> +			if (ab->hw_params->ring_mask->rx_mon_dest[i] & BIT(j))
>>> +				irq_grp->irqs[num_irq++] =
>>> +					rxdma2host_monitor_destination_mac1;
>>> +		}
>>> +
>>> +		irq_grp->num_irq = num_irq;
>>> +
>>> +		for (j = 0; j < irq_grp->num_irq; j++) {
>>> +			irq_idx = irq_grp->irqs[j];
>>> +
>>> +			irq = platform_get_irq_byname(ab->pdev,
>>> +						      irq_name[irq_idx]);
>>> +			ab->irq_num[irq_idx] = irq;
>>> +			irq_set_status_flags(irq, IRQ_NOAUTOEN | IRQ_DISABLE_UNLAZY);
>>> +			ret = request_irq(irq, ath12k_ahb_ext_interrupt_handler,
>>> +					  IRQF_TRIGGER_RISING,
>>> +					  irq_name[irq_idx], irq_grp);
>>> +			if (ret) {
>>> +				ath12k_err(ab, "failed request_irq for %d\n",
>>> +					   irq);
>>> +			}
>>> +		}
>>
>> Instead of doing all this magic, can we request the IRQs manually, as we
>> have interrupt-names in dt?
>>
> 
> I'm not sure if I fully understood this comment.
> If we manually request IRQs using their names from the DT, we won't be able to
> group the IRQs. Grouping the IRQs is one of our main objectives here. Additionally,
> we are not using all the IRQ names defined in the DT, so the logic in this function
> is crucial for grouping and requesting the IRQs according to the ring-mask.

Surely you can name these "foo_bar_ring%d" in DT and use the OF APIs

[...]

>>
>>> +	/* Set fixed_mem_region to true for platforms that support fixed memory
>>> +	 * reservation from DT. If memory is reserved from DT for FW, ath12k driver
>>> +	 * need not to allocate memory.
>>> +	 */
>>> +	if (!of_property_read_u32(ab->dev->of_node, "memory-region", &addr)) {
>>> +		set_bit(ATH12K_FLAG_FIXED_MEM_REGION, &ab->dev_flags);
>>> +		mem_node = of_find_node_by_name(NULL, "mlo_global_mem_0");
>>
>> This is not mentioned or documented anywhere.
>>
> 
> In next version, will document the below info:
> 
> "If the platform supports fixed memory, then it should define/reserve
> MLO global memory in DT to support Multi Link Operation.
> If MLO global memory is not reserved in fixed memory mode, then
> MLO cannot be supported."

You should also explain what Multi Link Operation means

Konrad

