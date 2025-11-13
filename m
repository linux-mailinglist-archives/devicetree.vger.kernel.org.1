Return-Path: <devicetree+bounces-237913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3EAC559DE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 05:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0D1D84E1B2B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 04:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A361285C8D;
	Thu, 13 Nov 2025 04:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hubZx4GB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FzLgFX9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB76267386
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763006644; cv=none; b=F33vMCbgfhbDIZho72MJBn8xPsuJGqyubHLkUtEWf/s8ZgZV6JUlkXmUYu0ikQjAyCs6m2mCEupFDuH8A6WXyj2uV8A/YNfPp/7Kv4fIem9XZOo0Zwgy90YOKoynR3lByDqiEK/1pjUnFTC7K39LK24iLHlZ8czA9saBYC4APD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763006644; c=relaxed/simple;
	bh=MUNKng4zuK+De37mxEJHBIec28nwsSOTnrrVaNWMjNs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FkvG77Dd24+Zf9/JkrffYKbQRjYWExe3N4/MWNyOrKL4ZitJZwFjfF8WR7K/62X+iFDUO7udTqZD7kYfamArb8xeiajnNEzx8TYDV+4wJlxB4c7+MIZTBaL7mlNMjqjzXyVTcw/lvohn90MxYzt211v2EtZIeYjFyyfWhl6B23M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hubZx4GB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FzLgFX9m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD11Mq22993486
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:04:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GPJpt5Oy7kmUT5fCIU62vIFh0Ga6M8GbNgzCpubObcg=; b=hubZx4GBqbrSTc3R
	1h4jlACAdfrSicm9jWER9qtwrtE+eBGZIC5ZHqGME3cYJ9bvtUfWvwcw2KCcVKR+
	kk6nmTs8RJP41XBlEfhrOW2xrH3rXNmyifpcBgNuIPYRcrEv4ILo2GvXxlzibOqs
	AGFJr29/LKkU88n1MpnoTakzVmC7bXxa4dqInxr4oSw0vreIBjb5twCwk9IwixJm
	40Zp7msJHAIW7pen9JwPeCP6ItaVkXEF6waS4u8HPvbpoT2wOgkRyd5Ags+DpMwH
	qrlL0AP12FbWU5EY0EuUFUkjhmCBaTiY3p7PKk7NpfZXjOUT3PIcTQh8aCz1J0Lo
	tIn/rw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad47jgp1j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:04:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29555415c09so4667135ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 20:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763006641; x=1763611441; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GPJpt5Oy7kmUT5fCIU62vIFh0Ga6M8GbNgzCpubObcg=;
        b=FzLgFX9mfObaSse7bVasBloLE6FoaJujkj2/IZ6WPIcGPy7G/ir3VIXyYbMsMa9fhH
         LoTZmlE/7t979iPoQ6w+g1BYSjwvGB8NnF1QF+5gLvJa4HJlvtICM4DbiexRGAdolirT
         Ah8J7q9Jf3iUHFUzDK+RUK5MF93fByrDfsDa3uW5z7kybnREE0325UWaD7EfT5jDHjyk
         QmK0/51aSdudIemDbp+3DR8E2KiGUCo4jeYQlat9KcfERUtTX4cTr+diZDLyWB1USTAx
         VQMDQaN+HnAX7nijwcG6SdsEZ9EfYF4IKUCKhFtkJ60NhhNLq5QIo+CXPVHlGt9Or7/i
         hjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763006641; x=1763611441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GPJpt5Oy7kmUT5fCIU62vIFh0Ga6M8GbNgzCpubObcg=;
        b=rHKL6jvH1GB3Fi/eZBb9YjXS/jWPeKjuppYordcIQI8TP5550tmkOT8ElYVkzQNuwR
         Oztu8pe+I04YowYj90xx9RTxBVZ1GeNTEAJVFVY5TM/59LKnRyxf/y7m9eNcRcPo4Kah
         3hbsPFoukQBndAz2UDZ3mhCdHkp8yRnXSnu9ec1Xnnbm4YIS2W+wKAHnNyQEkL8L4jKb
         Cl19O1Wpj1apF2XEnKtHAPzSfCHgCr03M5RWsFVVfqyRW+h+OTOQY8J2BkUzk0dYz84Z
         8Ebh6lQqQXtgtMC+P362DKXJmDC16HZ++STxVLOfQS9XolcbBjAEbLFNt9NqI6UnUcug
         ABpA==
X-Forwarded-Encrypted: i=1; AJvYcCUZ7y4w09sU2MRIgUmjrYakDWw7nVGsvMTSMJYKUj9UsylVYjEoIWH3iCpbZ5I3yL64cQhUiMf4YpvP@vger.kernel.org
X-Gm-Message-State: AOJu0YyBd/gmBEQP8YW/7YR5d/yearXSLup7CuwJ8IJbTiDxudkDrFm4
	cuIdgjwWG0BE7cZhitcN715sGeJ75buQHwlKrCkk14iiiZRyEPiZYxpr+TePthTqdIptXvw5DjX
	Dzi67lUpl6I4+eo1Xo5iMMx/HDn5MEXTNUMGncjQFKKuG+lpxNaqgb+1vmIgtBZD+FMNInCLZ
X-Gm-Gg: ASbGncsBvz8x1f0cmiLiq3p6hmUlMCrNt06OWa5fsi8JSQckgen7Ta1kCewRP313D7w
	OLa0K4CbSoNWcfDh7TPWVZV0KMiITZMAqrh/ytggPGmp/c6kFhlaCPMnvPbCjzCcW2S5mQDvnU7
	3V7U8oi15HT6PE4ZgQ90bK2U4hfDfUB/As9qo+W7Z34XRQJnaBt2rY2tyEu/171LnVBNYsMlz53
	VvKXmMU7h4bSPzz/NLreO8bbGrjihY1EevbbB6h1NT2+YfttkZBegbaOiiF5/7IdH+ToHD26Ucs
	MzdkK1ztrIFvC8Y/+tolaBfbIs9mNqapdx4yz/8NEwqZTKNYRsq1SYTJRK1ihSrUXqtZqU0ISzm
	H1KX8btnVKfiffFWHQ7WAEphwf+Cu5+o=
X-Received: by 2002:a17:903:286:b0:298:8ec:9993 with SMTP id d9443c01a7336-2984edc8d47mr70965445ad.38.1763006640456;
        Wed, 12 Nov 2025 20:04:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGoFRhJNw42eQuq+D0QE8iC+rBpNLW5HJcqLuc033QSYVpJfp+TOEttapJRjQnS91FE3zxN/A==
X-Received: by 2002:a17:903:286:b0:298:8ec:9993 with SMTP id d9443c01a7336-2984edc8d47mr70965115ad.38.1763006639930;
        Wed, 12 Nov 2025 20:03:59 -0800 (PST)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b0c35sm7753505ad.52.2025.11.12.20.03.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 20:03:59 -0800 (PST)
Message-ID: <44c7b4a8-33ce-4516-81bf-349b5e555806@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 09:33:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] schemas: pci: Document PCIe T_POWER_ON
To: Lukas Wunner <lukas@wunner.de>
Cc: andersson@kernel.org, robh@kernel.org, manivannan.sadhasivam@linaro.org,
        krzk@kernel.org, helgaas@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, lpieralisi@kernel.org, kw@linux.com,
        conor+dt@kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org,
        quic_vbadigan@quicinc.com
References: <20251110112947.2071036-1-krishna.chundru@oss.qualcomm.com>
 <aRHdiYYcn2uZkLor@wunner.de>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <aRHdiYYcn2uZkLor@wunner.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDAyNCBTYWx0ZWRfX5fJThI5kTSaB
 xtMcebcrJTSDr6dsUHWYNvCGmY8QsnOIAVi8Ol9lSn7KiMEdrmxc9iis3zq1T09v7hpdCq7C4rf
 QxbP/XXgfhvrFLJN7Cul/py/fStcngi4wyvUCboDsBfyxBUvpAaNJkGoP4DyN+ImaFIIDYHIIYo
 u8a5MUrsDllXRROfY0m1IIKsZNkkT8F4uOn6B00g6YyK+uKNI2rXW3h+TItDXWLDPOfpudyL5Wk
 yGIS24Eo/XlHR9nmFo+stRIfLBdnHBHR1ZdJ2tAInGM6oQrK+PBEojeStcZ/pVsqepTaGetk+rQ
 YCXlDPGiVWt0rwqEomutYmuaWOy0pZf2bTXmQZeuk7HCZgdmIieBi3ZBuZ51oETf26Dy2ZxRh/w
 Gn8TayZYpXFD8JB+TPaFQcYQOHMRsA==
X-Proofpoint-GUID: 8CLZ-P4NmFDCLWXcwzYlNstzRzl2X2AW
X-Authority-Analysis: v=2.4 cv=A5Fh/qWG c=1 sm=1 tr=0 ts=691558b1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=pqN9LwBUSSWNe87m4-kA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 8CLZ-P4NmFDCLWXcwzYlNstzRzl2X2AW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130024


On 11/10/2025 6:11 PM, Lukas Wunner wrote:
> On Mon, Nov 10, 2025 at 04:59:47PM +0530, Krishna Chaitanya Chundru wrote:
>>  From PCIe r6, sec 5.5.4 & Table 5-11 in sec 5.5.5 T_POWER_ON is the
> Please use the latest spec version as reference, i.e. PCIe r7.0.
ack.
>> minimum amount of time(in us) that each component must wait in L1.2.Exit
>> after sampling CLKREQ# asserted before actively driving the interface to
>> ensure no device is ever actively driving into an unpowered component and
>> these values are based on the components and AC coupling capacitors used
>> in the connection linking the two components.
>>
>> This property should be used to indicate the T_POWER_ON for each Root Port.
> What's the difference between this property and the Port T_POWER_ON_Scale
> and T_POWER_ON_Value in the L1 PM Substates Capabilities Register?
>
> Why do you need this in the device tree even though it's available
> in the register?

This value is same as L1 PM substates value, some controllers needs to 
update this
value before enumeration as hardware might now program this value 
correctly[1].

[1]: [PATCH] PCI: qcom: Program correct T_POWER_ON value for L1.2 exit 
timing

<https://lore.kernel.org/all/20251104-t_power_on_fux-v1-1-eb5916e47fd7@oss.qualcomm.com/>- 
Krishna Chaitanya.

> Thanks,
>
> Lukas

