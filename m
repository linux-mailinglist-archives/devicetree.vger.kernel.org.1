Return-Path: <devicetree+bounces-147922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 603DAA39D17
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 14:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EBFB1897687
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 13:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2371267F4C;
	Tue, 18 Feb 2025 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mEoZZXjW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047082673A1
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739884226; cv=none; b=TsjrKW2qDhpdkce8OrfD2eSc/ctryXThvPBG6EdLGwNnUUn0hPj6y76LIRuNBOepMhZ6Wp1Q6Vk9esefIT2xMe0PbHOTDbbLpwjLqeRGSATLPwe9usNJmo9OjutOeqW5qx0U2jDFWOLMwSpdZ0JFNyCItYQIoyFhrLzgr0wSbsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739884226; c=relaxed/simple;
	bh=2NX/soq7o1lmsjPfkOJXZgeMODahB3el6IQKzgFoXO4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=moz+Fo7v+j5wx/xFntxyLIAhGW7xP2tkfEnUEjPgq6J9wItAEEMYDIJD5LJ5PWJZ70rgOfFhCJFRasIFXgOzSACFnYY/GTkjJ8Fr9hwpMZKcMcOZU5vhPCZTvRPRJmXokm2HZih5gqM6mSODBdvkiA22y4iiQBBJKz1XY+lsFtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mEoZZXjW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51I7NJDA013919
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 13:10:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bu+FrAFzuDjPYs9/S2U5VhFeI0pxwHRuzCoCg2u+mJE=; b=mEoZZXjW7wH3BjfN
	YKr3q5FdUFJ3ZqTs9IwtJrNR6FG02i6BLnvctz7xfoNniEoWj4qckmhSJxoonNy7
	f2/rX0+5aMNQddbBiBthfxW5XxPRcKsIoQ4l49uvyg495dLwUz2Z1PSJy4J+WEAm
	gu73UxuzwMLKHDyX8dTz/pQ0J+eY+d5PVXAPl98GpN39wy3vadaabvlxSFPCnfHv
	si3f9M6QCpy8Zo1V6SjCFSae9JiV3ha0JzMFK5oBR0zFbKMEqnnG3kOnAMh/rh6f
	vsnZWHEy8PJ6KdUBnpkzf+/yDP3RS/+dMkZ1OgWeriAtrIiFCZrAO0wQQ9lanW09
	FhZLuA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vns90xw1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 13:10:23 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e66e017ea4so4221256d6.2
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 05:10:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739884222; x=1740489022;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bu+FrAFzuDjPYs9/S2U5VhFeI0pxwHRuzCoCg2u+mJE=;
        b=OfGwP4Bnk11texfPZziWrYjVUQcJpwnl+XO1h060/BngBggtvjtjH+JnYUQBzj4U+M
         m/7jKs8hTrEytnY6OUmdMk9POWS9W9GKbtT3dPlCT7uNQf6y5N7ggzL88K5hkzng0Ds5
         gErMr6kA59LiGz19TeNYaKG6Wv8lojKWX8ij0bWSXcF8/gf7vX55pNxfiIpVRqiYKVjD
         Pa0iSjOtgm3cB00KxUWmqQi6RZqye664WjSmH5DkXHYm5S7ge89zPX4Ytx1VJN7bJ8Qr
         NXykbIKIzUxEjWRFSZBUtLWvVmjIwvMsj9jcKjzMzlGXHvvMUocJw0tkuFk0UAQ+vC4+
         /jhw==
X-Forwarded-Encrypted: i=1; AJvYcCVBlojcyVT7R5Lo1jUZMzNDEnlgFLPI0fyYd6hSEKEq6kiPtoEZ4EspwoupV3UmpQuIvhs3RwgeLGNg@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp/QRCLhBqqkW9YvjaVVAz/Q6J4/21jzBI1YgThdJrXXUVfkWc
	stfFkczagJxt2gzI0y/4gHyPV1T/Q4NrPl+g3iMOfnnWheleaHR0k1uU3pPuBDdFfR8ugvpR+hD
	xPGGrJXJvmd+MHqwPuNv77NaQdmH5xXyay2FcPSx2bjklXIuOKxmxiiZTiSBp
X-Gm-Gg: ASbGncsqIPFLYCQ1hes3fSQfgOD0mj+WBK5KtYz26vVGEH/+MUfoVUi74cMo55G1I1D
	YHjV2p2SjammkU6q+Oy/qzkOERLqfHCReNMiDJEAPOn9jnqfLc4XUyyNk1RE/77nKOUpAkPHSy0
	RQ3AKUpDSrIQOpAwHcTANstMSMbCEdsU6gqZhA/aP/B+WR795Dx53k7U65VG5YSFOYs2dJAtP+7
	EuDKxGe0BPcnTqldqoxwiaoHfvFogt6iZSWRqyh/6kB9LzZ7r61Ji8bA23E/0p6vI2xYZuTwYmK
	EtStv5oEMusmQVtexlj1JgbBY5WlkjMO+mrDJZM38DDIAkQ4mD5k1QTfwqE=
X-Received: by 2002:a05:6214:20c2:b0:6d8:a091:4f52 with SMTP id 6a1803df08f44-6e66cd087f1mr65192496d6.7.1739884222601;
        Tue, 18 Feb 2025 05:10:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPVrEvTNH6ixtQsdRndhLJ8B4JHgPLPktdDd05jwA+9wZRDTdteTM3DAb60xvi3qVRSo9nWw==
X-Received: by 2002:a05:6214:20c2:b0:6d8:a091:4f52 with SMTP id 6a1803df08f44-6e66cd087f1mr65192196d6.7.1739884222252;
        Tue, 18 Feb 2025 05:10:22 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb95cc7451sm436932366b.92.2025.02.18.05.10.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 05:10:21 -0800 (PST)
Message-ID: <39efdf43-1f42-4361-85ed-f41df8347471@oss.qualcomm.com>
Date: Tue, 18 Feb 2025 14:10:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sar2130p: add PCIe EP device nodes
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
 <20250217-sar2130p-pci-v1-5-94b20ec70a14@linaro.org>
 <17aa47df-1daf-4ec2-8f6a-48c3bc375dd3@oss.qualcomm.com>
 <qafwztwsn3eiz76ot4ej7uv3ahprrri7u6x5jt3tvkx4j7xu34@5yeaj2d5a535>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <qafwztwsn3eiz76ot4ej7uv3ahprrri7u6x5jt3tvkx4j7xu34@5yeaj2d5a535>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PJvXoZjqUUmul_xHw4n0iF8Zzpx8Six0
X-Proofpoint-GUID: PJvXoZjqUUmul_xHw4n0iF8Zzpx8Six0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-18_05,2025-02-18_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 mlxlogscore=832 mlxscore=0 bulkscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502180101

On 18.02.2025 4:11 AM, Dmitry Baryshkov wrote:
> On Mon, Feb 17, 2025 at 08:23:28PM +0100, Konrad Dybcio wrote:
>> On 17.02.2025 7:56 PM, Dmitry Baryshkov wrote:
>>> On the Qualcomm AR2 Gen1 platform the second PCIe host can be used
>>> either as an RC or as an EP device. Add device node for the PCIe EP.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sar2130p.dtsi | 53 ++++++++++++++++++++++++++++++++++
>>>  1 file changed, 53 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
>>> index dd832e6816be85817fd1ecc853f8d4c800826bc4..7f007fad6eceebac1b2a863d9f85f2ce3dfb926a 100644
>>> --- a/arch/arm64/boot/dts/qcom/sar2130p.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
>>> @@ -1474,6 +1474,59 @@ pcie@0 {
>>>  			};
>>>  		};
>>>  
>>> +		pcie1_ep: pcie-ep@1c08000 {
>>> +			compatible = "qcom,sar2130p-pcie-ep";
>>> +			reg = <0x0 0x01c08000 0x0 0x3000>,
>>> +			      <0x0 0x40000000 0x0 0xf1d>,
>>> +			      <0x0 0x40000f20 0x0 0xa8>,
>>> +			      <0x0 0x40001000 0x0 0x1000>,
>>> +			      <0x0 0x40200000 0x0 0x1000000>,
>>> +			      <0x0 0x01c0b000 0x0 0x1000>,
>>> +			      <0x0 0x40002000 0x0 0x2000>;
>>> +			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
>>> +				    "mmio", "dma";
>>
>> vertical list, please
> 
> Ack
> 
>>
>>> +
>>> +			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
>>> +				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
>>> +				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
>>> +				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
>>> +				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
>>> +				 <&gcc GCC_DDRSS_PCIE_SF_CLK>,
>>> +				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>,
>>> +				 <&gcc GCC_CFG_NOC_PCIE_ANOC_AHB_CLK>,
>>> +				 <&gcc GCC_QMIP_PCIE_AHB_CLK>;
>>
>> please make sure this one is actually required
> 
> Hmm, this one seems to be present in pcie0 and pcie1 RC, but in the EP
> deivice (in the vendor DT). Are you saying that it is not used for the
> EP? I think I just c&p'ed RC clocks here.

QMIP clocks did something special. I don't recall what clock ops are
translated to, but I suppose keeping them online makes sense..

>>
>>> +			clock-names = "aux",
>>> +				      "cfg",
>>> +				      "bus_master",
>>> +				      "bus_slave",
>>> +				      "slave_q2a",
>>> +				      "ddrss_sf_tbu",
>>> +				      "aggre_noc_axi",
>>> +				      "cnoc_sf_axi",
>>> +				      "qmip_pcie_ahb";
>>> +
>>> +			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
>>> +				     <GIC_SPI 440 IRQ_TYPE_LEVEL_HIGH>,
>>> +				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
>>> +			interrupt-names = "global", "doorbell", "dma";
>>
>> and here
> 
> This is used for the eDMA implementation. Unlike the vendor kernel,
> there is no separate device for eDMA.

Sorry, I wrote this before looking at the clocks, I meant please make
interrupt-names a vertical list, too

Konrad

