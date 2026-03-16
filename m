Return-Path: <devicetree+bounces-276024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKBLCIHHt2kRVQEAu9opvQ
	(envelope-from <devicetree+bounces-276024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:04:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89511296A24
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:04:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CEF73017053
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3069A382F39;
	Mon, 16 Mar 2026 09:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XzN5Wves";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bWoeMhsa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089D1382F15
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651834; cv=none; b=kvwepGZdOBFCCfy0RZ8dV7mpTDEJaAgdW8k4i7KfnjmJM0ADtfw2HKqq02U7TJ9lf0lrtC4Rox2KYNj0aY1eBTXIEs/gL2W32TE5yPeu1MhUnUtJGvnnrloT+ghZlNTBc+WfLC8m5K1ro0spzMluLM/2UGnetRcFtSlWPedfxgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651834; c=relaxed/simple;
	bh=NTcvsuGdFFCNDl1LmYf5IJqXK3/yowkel0MRzCFjEA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QH1/SmzjwpWkCrUgIHCuHUrRE5794j1aOCxarGSXUWyK+1y+FDoh3edwN2yP2VXnjyMSNoZG2quDcsQ0JpjxYmJ7JBBeCg8IJqrTov0UAtxZigIjS46FITiLX/lCG3E7/YkOQAux2bLpBxQK0iiIN/l4fA4kN/Z2i/4l8tM2Ra8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XzN5Wves; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bWoeMhsa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G7n2HU041943
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:03:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uxIt5bFyOn21UFobDspTNyIJUK1VFpOCpDcq0kigCmw=; b=XzN5WvesKeTofC7H
	71emGR6akr7BAIw18eRTDtKaDaPpG4SL6Ck8aNqNq7Y2ZflWiNhCemEsvK1w51iL
	Xa9Ku6lFxoPG/NnY5uwxJ9Md7InPysX4iR9VriRB3qy71IdwNN0GC9EDurBQJrVe
	lYNSmNpk0PpxQoaUoyqba0fkh98NeAAaN2Z+WqSFu1FpYHNldZTIZDBagaUSA/ez
	sP9OgmnPTocO8fAHA+fIz4AT4Ec/vvXzDtoFgcvwnLH5Wl015FYC6DNHBKNbKBl3
	DygEddJowzNJj6wGGGO7sYZI84rsvmX3PYMfDcMOZ2B1kOGInE59FU2eFCTqvI/s
	4hLFzw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxdt808m1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:03:50 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c73fe9a633eso6751364a12.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773651830; x=1774256630; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uxIt5bFyOn21UFobDspTNyIJUK1VFpOCpDcq0kigCmw=;
        b=bWoeMhsa9riDiUmH8NWPJRvIEorscO8cwUAocO9VGmZJnwNT6t/tvt50HImUP0ov80
         IH7IoYvspWlHJOgqLEy6oYEsvy36NTyY0kKewzVawkNT2lRmsBNhRd96XTg68BfuATUG
         k/VNfRHaaDFF4HsAEJwCUF5geqkZr5oky32d03o4Oa5Ncg275XgfWKFVI9fYjtUaVR43
         dmVONu2zDl9GO/U4AGeOs86b99Npp2jF2TWKuYxm1NTKuBuLnfe+SzRODFniz6vSqxmG
         WoPc48nJ2efba7hwF4oeAvZpCQkNEtpPYmMqCto3bXLNW3DSUiw3MXmFMY7w59VMIPpN
         oDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773651830; x=1774256630;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uxIt5bFyOn21UFobDspTNyIJUK1VFpOCpDcq0kigCmw=;
        b=EZQ4wBxqD7mClwoVPd3u7CRCXYfvQRGZTtzYB5k+Q3WJ51fLlVs9xRCCt0noPI6PdG
         wsS4VCUC1tAI2AkvqjB/so/+6JwV1WuceHV+V0tvF3kJwUQPenbQ58ZfmPfY90dRXoxO
         OcUbjW89dv6ayhbU+YKEELMH/OHHJZdYHda5iSHYYE8jxZxN8NBzmD1N/HAJJ8dNs5AK
         3aGk+f8HQV7i7yi9ZEq/ki5ypXvRCoe4Rryo0wytHomtESVB65+cuDXaQAQHajlnbgL6
         0HE43xiiYBfRB/xgfjK1rCXA9XWGjYoaBYYXnrjfCfWIRmsAMkT/uN+GZTkG79jgAxVs
         oX9g==
X-Forwarded-Encrypted: i=1; AJvYcCUJJqZ3w1fmNH1MDv7rPbeqtZmV6ldkCbtuNvW1bUxAW8x2vkco1y8sN/HVbUFX3N1L9F8XYV7tBVxa@vger.kernel.org
X-Gm-Message-State: AOJu0YypO8/YlGYDAkqgkqKVWpSEVDeXowY10ZyW3LrDAKQgnUKJR3Ha
	dXEzfeCKMMljU1S6ucbQdcvpU1XRPV753NYmCXhdDIztl3PpqlDwqHuf7gwt3B7Z9K/IbxzS3OU
	PBAkMYKqQfWpndViZB1mdpf9Czy0tynevBFRLV78xK5Oz+/v2yXLgCRqMkNB0JSjF
X-Gm-Gg: ATEYQzw6jFjqDQR90goVOvbLpqRlby3rWUmFps+Dhg81VotWmIUNyD6gvANxh5k8O8Z
	negUlp+AjAoBOEfID+Cj7CuyMcJUUacOBwHJtohXmUijeZ0NM8Js1VDj26EIFTEqCuWOzoV99IJ
	ciC59kT0k56f2krmr6oR8DoLRA5IHQhqdk7OkmGq3psMGNNPUHQgiRZ12nkpjUy6m3I0D7W85Xw
	aod6/4u+0jkeIrf8BgFt8cQ6j4haPDNnhoRjcuGnwrBfM+JUFuMyoHUTAXtllJvRshfivdfW1mF
	PvBS/MdnKK6HJ9BEsN1LPIej9NRcfRNNDk58xBBjpBETlKpjfLvNpvTS981jvEDx+PEy4zBF1U9
	sKs5n/AjcS5ebduf5ARXOTUJLKxxiEgrhj0bKSwIOw2zMN/sHYViBpudC+RPflFvVzg==
X-Received: by 2002:a05:6a00:761b:b0:829:8e63:fca1 with SMTP id d2e1a72fcca58-82a198d4ccamr8653978b3a.33.1773651829978;
        Mon, 16 Mar 2026 02:03:49 -0700 (PDT)
X-Received: by 2002:a05:6a00:761b:b0:829:8e63:fca1 with SMTP id d2e1a72fcca58-82a198d4ccamr8653948b3a.33.1773651829361;
        Mon, 16 Mar 2026 02:03:49 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07244071sm13207421b3a.6.2026.03.16.02.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:03:48 -0700 (PDT)
Message-ID: <84f1407d-62c6-4ec2-8976-eabe66c74728@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 14:33:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: add IPQ5210 SoC and rdp504 board
 support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-8-fe857d68d698@oss.qualcomm.com>
 <6e33daf1-bb90-47d8-955c-12ccdd30ebce@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <6e33daf1-bb90-47d8-955c-12ccdd30ebce@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MKK3DkeC6iavATUwW5jqq4akO7nWuAky
X-Authority-Analysis: v=2.4 cv=CKInnBrD c=1 sm=1 tr=0 ts=69b7c777 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=dbLGCUDwb5mCwCoKLG4A:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: MKK3DkeC6iavATUwW5jqq4akO7nWuAky
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA2OCBTYWx0ZWRfX+pnStZZ7lOWh
 gdCVDPqbCuICwoaGUjVj+EgfDsld2PO6SDnU3GbKJSlX/kMnQsMCGWbShGO73Gw33fegWwmWAin
 hhL7Q+0d+Z+8me/UeEVXBHNSPyBAyJQDUVHo62uMmcv5/Eevwgjw/gqgwoggx1XmATJT/HDy9Eb
 rsCOegB/RBTyOBucnXgY8Zf5zv3eUQedlwznWb+FT4UUTTFTE+PoUOqXO3zswkypyUeZ5X2YEMg
 9gHTgdRrVkO8FCeZfogpywfzrabUNIEkdP37AHvh2Z8bp2OEX7xlqtP1Ra2mZPqRVSm6dZQSTO7
 DzSr3AahWgupHFPrLy9cnGJDnL1x/rT5X9qJ6FqdFXIaJh0nyLid0bZ0s7LUC/dHTUcSzDI08dP
 Q7r9+XHHB5tGgyXVxrQL2Zpb0b1qvd1uf/+Gf3vrzPay3k1cBhJmtsEm1DSF4j85mTxOI4NRACX
 SmN4+2YnOqs1sesmAog==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160068
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276024-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1ac0000:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 89511296A24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 6:18 PM, Konrad Dybcio wrote:
> On 3/11/26 10:45 AM, Kathiravan Thirumoorthy wrote:
>> Add initial device tree support for the Qualcomm IPQ5210 SoC and
>> rdp504 board.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile           |   1 +
>>   arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts |  93 +++++++++
>>   arch/arm64/boot/dts/qcom/ipq5210.dtsi       | 304 ++++++++++++++++++++++++++++
>>   3 files changed, 398 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 02921a495b2cbabcbacc74fbbb99eafe1f6478ac..e7748af640cccffa5c83ec82c37aa441444c2b13 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -22,6 +22,7 @@ hamoa-iot-evk-el2-dtbs	:= hamoa-iot-evk.dtb x1-el2.dtbo
>>   dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk-el2.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq5210-rdp504.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp441.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp442.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp468.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts b/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..3d95939785bc5bd4f510e2f992f0a1e80848c8de
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts
>> @@ -0,0 +1,93 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "ipq5210.dtsi"
>> +
>> +/ {
>> +	model = "Qualcomm Technologies, Inc. IPQ5210 RDP504";
>> +	compatible = "qcom,ipq5210-rdp504", "qcom,ipq5210";
>> +
>> +	aliases {
>> +		serial0 = &uart1;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0";
>> +	};
>> +
>> +	soc@0 {
>> +		qupv3: geniqup@1ac0000 {
>> +			status = "okay";
>> +
>> +			uart1: serial@1a84000 {
> Please define this in the SoC DTSI and enable it via a &uart1 {} reference
> from the board DT

Ack.

>
> [...]
>
>> +		xo: xo {
> "xo_board" is the convention in other DTs

Ack.

>
> [...]
>
>> +		L2_0: l2-cache {
> labels must apparently be lowercase nowadays

Ack.

>
>> +			compatible = "cache";
>> +			cache-level = <0x2>;
> = <2>

Ack.

>
>
>> +			cache-unified;
>> +		};
>> +	};
>> +
>> +	firmware {
>> +		optee {
>> +			compatible = "linaro,optee-tz";
>> +			method = "smc";
>> +		};
>> +
>> +		scm {
>> +			compatible = "qcom,scm-ipq5210", "qcom,scm";
>> +		};
> OP-TEE *and* SCM? What does the former do?

For OP-TEE, we have use cases like getting the random numbers, 
remoteproc PAS and few others.

For SCM, setting the download mode is one typical example where OP-TEE 
doesn't come into picture.

Please let me know if this helps.

>
> [...]
>
>> +	soc@0 {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges = <0 0 0 0 0x10 0>;
> should dma-ranges also be 36-bit?

Ack.

>
> [...]
>
>> +		qupv3: geniqup@1ac0000 {
>> +			compatible = "qcom,geni-se-qup";
>> +			reg = <0x0 0x01ac0000 0x0 0x2000>;
>> +			clocks = <&gcc GCC_QUPV3_AHB_MST_CLK>,
>> +				 <&gcc GCC_QUPV3_AHB_SLV_CLK>;
>> +			clock-names = "m-ahb", "s-ahb";
>> +			ranges;
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +
>> +			status = "disabled";
> I see there's only a single QUP wrapper - therefore I'm going to assume
> there will never be a SoC where this needs to be disabled

Ack.

>
> [...]
>
>> +
>> +			uart1: serial@1a84000 {
>> +				compatible = "qcom,geni-debug-uart";
>> +				reg = <0x0 0x01a84000 0x0 0x4000>;
>> +				clocks = <&gcc GCC_QUPV3_WRAP_SE1_CLK>;
>> +				clock-names = "se";
>> +				interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
>> +				status = "disabled";
> Please uniformly keep a \n before status, file-wide

Ack.

>
> Konrad

