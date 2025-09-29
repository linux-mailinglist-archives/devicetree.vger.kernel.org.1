Return-Path: <devicetree+bounces-222327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 033B2BA826C
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A28A417F98A
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F7D2BE636;
	Mon, 29 Sep 2025 06:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gm3nAOaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847DC24E4C4
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759128096; cv=none; b=Mv0AzIaADDdQLB5GExNUPaqNy+PXpAAJTg8raMuG4cuXGm+iM+9ORORex6NYKQTAsANtN393pJdlJABkx2bJdrydV0aSTATWcUe53JamSBvjoFmDr0umGxmm0VRPpEv6oKGxP5dhLTcLjR0bIJr1zxwb0TJ6yt7UG1YtS35HqmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759128096; c=relaxed/simple;
	bh=Prpla/VA5xYWtT2jo46RGuKNSAxJ9MlDb3GsI1jGACk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rf+44DoyRdV9nqrtFYU/BT8GK2gvGwf7WYCFUql79P8sLNJ4sYpr/wEzo/5oCUSCtvbeIBQGfGXKwNtb9fCt5UOPc+e7P+7D2SJlZwFPNFEvDgdUK9ILEOaWjbouT0w84g+vqC82q9XWKpzr6H4lul8PuJPWtRKuEZPEGumJ8Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gm3nAOaX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SLpggc005609
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:41:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OhaaerqbjvD3FVRgeewGN83h7Xm6Pvn+9D5rt7zkX/w=; b=gm3nAOaXe+kLbyQv
	DrjW8WT3AlIIg3oRu1fZJCUNJyDUcA6khqIQqsYtYxmF3NS5xH4BDjV4B9VfGjOg
	tCG56ed2KrYxLAjqTTUU2w6CZzwzZeqzOLlHjFs3M8mrqpeezF4Wh8/9xhUkgPo0
	LZ9Pb66lMWCLJWr8YBkJNT/v5LZUejUnkiz2cDFj65Xa5tBtB5o4P0pAup26c3MA
	0EqQX8YW6yu6tmEGBEh3lDbHMn/bGpTdjPwXQMFZj/0RiqswKRhpnGee8dsu6L6D
	ph6O0hUKOCMTmZM6DhyF7g/+zxDZO/UXX9gekkFB1yA4ZmJOXdv0NzOPidLUBNO2
	ZBBUkw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vqv664-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:41:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2813879844cso6555265ad.2
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:41:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759128093; x=1759732893;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OhaaerqbjvD3FVRgeewGN83h7Xm6Pvn+9D5rt7zkX/w=;
        b=vpHPYFOZXqy6mTyyOZSE4ndozEZGwzpCGutrdDchcypXLpnfwEy0qQ5oaVw94Ay+02
         5oPmHRCWQMMy2YqT64ELBd2gjWibtA3f5E1fTzJ1PQeAHv9sHUNAPUzGo5pQD0I247zG
         S/H8KdUCGgd2wsNEtLUSPcTHtEz8XCasjO96n1GahWgUFvnFnvf+ac6lejwNvgsWwSot
         Wu1JQ9/ItJkeVETV6XWcmjosmEuQ/uMBnaqkiPvanJyHReZUETpwI4lYdyX8H1BvDGKI
         yMqc55NwFidMByEE3/dEA/q0fplcZ4NAGbOFWBryLL4bbOt8HT+Vks+DNYypwGY7Kj4r
         0L0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWSX+POy6rw2MbzXKmqWLwEPTQw37dp9PTeQzRuBJaJYhFc4kraUMr8ZG9lSq1lWw04Jy7yGimTqGSL@vger.kernel.org
X-Gm-Message-State: AOJu0YxMa8taBP1t94rQbn+19K07fg3435LaqIWt4mXsOZpYeTj+49dJ
	nj74ibTDr4WhTLuG+06PRsLzvIVnzw41dLEk5QXL3sijvwaUYJseXHWDpRWLkkhTEF9bTic5tUO
	brOJCcVU6UehwXVcOhdlxN5X4lk9Ft4hz6AsxgxOnHU28jzQfC/JdRrGKqRp+prCx
X-Gm-Gg: ASbGncuaVnjAmMeBNIl2S32Ae8GnbHdhja9QMPKgmaDQP+UpksoJ52MH89A/17el4MH
	P1SQR3awr+HZ8JEszKk5Ft8uEneMyXZQcXkg7u+bUpxgUiS8Da9n69BqcKNEMlm/wd5Rep1ex9w
	vvTCDZv7CuRqDAqoti450V/euv2B2sjy5xwBU1XxiV8+iw5rcSK4mIfmVDlLwsAqnkyakl5h7Lr
	DBmc4ndUeK389Ez59DtRWbzn8k4CtrGIxFi50sR6ybED0MwxVrPtDv+6QtFGyIfRrYCJYrzHKLK
	yuwWrDRrKTO6gxb2MjL3FGVao9N4MXY5brGBi6UCrrk5oKul6vZUBDEcBtFu0sNI8WsamnLzchr
	3E0VzLtZ6+LxXQxR6DTbqUSIhnEKM0gY=
X-Received: by 2002:a17:902:e74b:b0:26c:3c15:f780 with SMTP id d9443c01a7336-27ed4a986b5mr100365165ad.8.1759128092836;
        Sun, 28 Sep 2025 23:41:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAZRUafuyxfPW7GOQPReY44bTe0BcA41/EX+hnlJtSzAbjufWF65p/s+g11Y9sNTMCcF/6Hw==
X-Received: by 2002:a17:902:e74b:b0:26c:3c15:f780 with SMTP id d9443c01a7336-27ed4a986b5mr100365005ad.8.1759128092292;
        Sun, 28 Sep 2025 23:41:32 -0700 (PDT)
Received: from [10.133.33.226] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6adaf31sm121225275ad.145.2025.09.28.23.41.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 23:41:31 -0700 (PDT)
Message-ID: <5410dc83-0732-4b25-ba07-605e4956d840@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 14:41:27 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/20] arm64: dts: qcom: kaanapali: Add QUPv3
 configuration for serial engines
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-13-3fdbc4b9e1b1@oss.qualcomm.com>
 <9685e29d-bff3-4188-b878-230d0f161ce3@oss.qualcomm.com>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <9685e29d-bff3-4188-b878-230d0f161ce3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: pvSCcNjeLG_pmnDh_-ad9fM7pqtesbmV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfXwm71UlmW3TPN
 7Fe7PmV+VWPEeFbvUXP5S5R53CyKBwr/o18usSJb7qM5UwmTe8NcGsUUMIxHVWdcqlEXZaBQWyk
 DALjJjEhZqGKtoNGAfnOStE7qddpho6rWGgtDu4addKz+M55el7uRZoBIqmVQtYndb7sX4f120z
 HIsN6jZDkCggGWOLRmGzT6TmQWvnn5Ws7UsI1zy+USk7ADr+9MD+euEhA7EIvZ6JJA4d5ieaINv
 n2m76nEqL0aB8i5KrAbQjpIJ3x+7smHRDf7T/4uXLfWYFxwJ2FG43SKABGeThxpRVlyRGDg9QMI
 3JF3NMpuICtdbauK6ybg/TgygXxf2lZRl8fj6hoaQ77ohHhpEQ5Fc68CClpTeTu5qryXCqjvWND
 nQNoW6LBgU36eOShFp3Vzj4IpKm3Fg==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68da2a1d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_ltKwtvy-Tbn6v8TjEMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: pvSCcNjeLG_pmnDh_-ad9fM7pqtesbmV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On 9/25/2025 8:28 PM, Konrad Dybcio wrote:
> On 9/25/25 2:17 AM, Jingyi Wang wrote:
>> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>>
>> Add device tree support for QUPv3 serial engine protocols on Kaanapali.
>> Kaanapali has 24 QUP serial engines across 4 QUP wrappers, each with
>> support of GPI DMA engines, and it also includes 5 I2C hubs.
>>
>> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		gpi_dma2: dma-controller@800000 {
>> +			compatible = "qcom,kaanapali-gpi-dma", "qcom,sm6350-gpi-dma";
>> +			reg = <0x0 0x00800000 0x0 0x60000>;
>> +
>> +			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 848 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 849 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 850 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 851 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 852 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 853 IRQ_TYPE_LEVEL_HIGH>,
>> +					<GIC_SPI 854 IRQ_TYPE_LEVEL_HIGH>;
> 
> odd indentation (on almost all gpi_dma instances)
> 
> [...]
> 
>> -		remoteproc_soccp: remoteproc-soccp@d00000 {
>> -			compatible = "qcom,kaanapali-soccp-pas";
>> -			reg = <0x0 0x00d00000 0x0 0x200000>;
>> +			i2c22: i2c@1a8c000 {
>> +				compatible = "qcom,geni-i2c";
>> +				reg = <0x0 0x01a8c000 0x0 0x4000>;
>>  
>> -			interrupts-extended = <&intc GIC_SPI 167 IRQ_TYPE_EDGE_RISING>,
>> -					      <&soccp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
>> -					      <&soccp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
>> -					      <&soccp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
>> -					      <&soccp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
>> -					      <&soccp_smp2p_in 9 IRQ_TYPE_EDGE_RISING>,
>> -					      <&soccp_smp2p_in 10 IRQ_TYPE_EDGE_RISING>;
>> -			interrupt-names = "wdog",
>> -					  "fatal",
>> -					  "ready",
>> -					  "handover",
>> -					  "stop-ack",
>> -					  "pong",
>> -					  "wake-ack";
> 
> Please try to use git format-patch --patience


We’ve tried using git format-patch --patience, and it did help avoid the
deletion lines issue. However, when we send out patches using the B4
tool, the formatting still defaults to the standard behavior.
The challenge now is: how can we integrate the functionality of git
format-patch --patience into the B4 workflow?
Any ideas?>
> Konrad

-- 
Thx and BRs,
Aiqun(Maria) Yu

