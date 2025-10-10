Return-Path: <devicetree+bounces-225335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BB5BCC9ED
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:55:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 36F794E00EA
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B982ED174;
	Fri, 10 Oct 2025 10:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TIChXsOt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8BD225A5B
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760093707; cv=none; b=nBUJJ1LdNJPeLovROKa2rJkH21Ya4fh8eV+E+f8HEektO4479iR2tUqHCu0nKljkrRdzA1WOW+YZVRHsHw/DG2AIg42KGWkYM97EcraGmWE0QUUhx2P/K0xVuCAc8QxbjFkNQF4yqAS5VKVyo7uEVTMqgvLyX6/4X0c5jVLRdL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760093707; c=relaxed/simple;
	bh=ijK5qG6cvhdXxF9G5TzG2LmSGh+cAfxXsFKKRQN6fpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uavGHKIbR+yUpbxMayjCDxeipuN1wclo2QrNZYRcHWzHbjXiPMMfbC3//FP7WbY8+MIVGWlu3SQcImvej36VFugK3dgoDxvlZo2UKE3tBPqcMqsi95oNZe61FuB1Q6Qs92hWBuT8fW4mRNpCzdUXW3RuhlRpNHTrdH0w0VdpOFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TIChXsOt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6XQ4a008114
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:55:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vwy3pwTMiTvFORyUGui267pugrOCUt49BYQxcWSdE2M=; b=TIChXsOt3LWh5IFn
	16G/KK/tvxPSpHI9kZxXKjQag9AuMt99elTlhgTT8DebHdq8u8Kyk4S2HSOX4hEE
	UFg5vmry2W/QTAw0xl/RnYv54jE88JD/DAOBgi/VsRxMma2MhO1SqixJTmUxg/VN
	JJEQas+OVTUnBcnPhQYFc1hnSm31+BVMlfUhB4J4bPmo+GGqDf54bOv7BN1SM9qY
	GvMzDJnHgAZ7FGsomC5Ct5CCPOp+kV9Hf7wU6kTwf4D3jCpMF2Nvmmoj9OIEuFVQ
	0jeWhAIn6jdQWZjFiQmSaj1XcT6KLKXmZdEcVkDyaCGXH2sVdmek1GNwkAnUj6Kp
	ey+hwA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sp2q3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:55:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-780d26fb6b4so2374974b3a.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 03:55:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760093702; x=1760698502;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vwy3pwTMiTvFORyUGui267pugrOCUt49BYQxcWSdE2M=;
        b=jPDTRpzUpgARpOVt4hRtfKsY4z3qCQtIrGUmjVNQNmIL2HM4CY5f+TScHoG6ywAdHc
         j6NTpGbt9NzxDT5H1Drd21xId4ZbjrasckRZTmdMIq4Qf96XrK8PqMYG4PhsWzJA3gnp
         gG3Xvnv7W2meEukIBMm98BKq5JcBhuc9uSPOZm5IM+SHHWb0xSDhqaO3gg8sx16qq1uX
         RJJBSh55rEwNFR9agiScF4eEVIeKyUJK/wSf8ugZ2C0FdduFDX4wuYJiXYgYZWMU/Brb
         i0cCaZpa9/F0yRBt6CFKRDPYS4SMHxA4pYTmqtVo2J6TrW4QZJsolMccvi6qkgi/iQ0W
         EmCw==
X-Forwarded-Encrypted: i=1; AJvYcCWhmT9cTQT9iDjljKEeOXMisUTOFztOIXLQDaygJM/79Hzrk290z8/tu73Gyq1JsL+FoEKGiDJr93gx@vger.kernel.org
X-Gm-Message-State: AOJu0YyNuIDEQRPjYHle9ev2MpzOlxWQvROw9mlhLbvQdv44aa1TZA/L
	cf4qd2j5mHosSQW8Ct6iBfXmqPaStzagQIoNBGr8e4iiD/9DXFu++LbJqbaSjsg3oyGxpcLVH7f
	Okst/1jYpxQ15PTFO5HEVNloEPjIq/OZccKXeW8qtnva1ppSOP993vG9zuOgvlIxH
X-Gm-Gg: ASbGnctcpFFgrPz70mT743mhdBG/ZUmITml4/UIygjMGdq49Lam3isDZ0zmTCJ3UUdo
	J5/EXQwSvtqDgXXOJnjWIkNmXR1POfxjXIxDahXxKGL2Nu8zKY+fGmd5DupqaRXLMdUAPC62Fst
	9sdTpvEqUcjBr1q0gdj61HNhRtfVsxlPCR4LAd1OdRsgJh8Hr7uhN3t024df7cxaEaPRpzHq1+M
	MjidlBSVE9BoJeuWD1vyc4/tNKINK/kOXVzn1SeTVxoC556zs4sl/0iYS8Y63tkp6WEL8jAuMx5
	gG8pBKz6IX8kKw75AwYgql4h5Zpau6nmpqws3e5v9+nRCk8ccWPWGxpElTQyP4xJGggeDW8a
X-Received: by 2002:a05:6a20:3956:b0:303:8207:eb56 with SMTP id adf61e73a8af0-32da8190b86mr15071684637.5.1760093701985;
        Fri, 10 Oct 2025 03:55:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOrHyLiE5Vt9JDYoYk4bw+AVJvks5v/hLpiw0jFgJz4TA9XD0cfQ6Lmwqkvx1bZPMxALt9Og==
X-Received: by 2002:a05:6a20:3956:b0:303:8207:eb56 with SMTP id adf61e73a8af0-32da8190b86mr15071633637.5.1760093701429;
        Fri, 10 Oct 2025 03:55:01 -0700 (PDT)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b529956e3sm3740156a91.5.2025.10.10.03.54.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 03:55:01 -0700 (PDT)
Message-ID: <dd4d4fa3-abd4-476f-a37e-c44cb6c83fb0@oss.qualcomm.com>
Date: Fri, 10 Oct 2025 16:24:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Eugen Hristev <eugen.hristev@linaro.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
 <588a7b68-2e2e-4e65-9249-fe8b18b67927@linaro.org>
 <831f6fd7-b81f-4d6f-b9bd-5a8fe514befb@oss.qualcomm.com>
 <0c9ca026-9986-4347-a86d-8bf65e2d12e6@linaro.org>
 <kocj7sf6jgj4uynvlxvbsojc4bykyj2ipb4ex56fagjqoxwcie@2trytltkhd4a>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <kocj7sf6jgj4uynvlxvbsojc4bykyj2ipb4ex56fagjqoxwcie@2trytltkhd4a>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NbU-gCKo0-fZEH4TquRRr-NYBv4UjM5-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX94ByuhEVB2us
 j4nXp4wiTfgCdCKkVC/+qSkJXhbr9WA1PmQYWf2zfZ6r8kV3hmvxBf7QvffGHcBFGNz+Ihu7a4e
 0yp/6f6BB4LbA7/BbIFIOTdgXuWSHeBJrqKu116VoG8Z72AFoXRigytPoUBR+Sa2CffAM3/DCmJ
 grTsOUQngamTZ1KV3vUJNQQWe3ZW/Im9aLR5lV8VzosP5KP8kzIcOEib2vmGqActrt2pbl6v0jQ
 HO0lCqryMLZEG2myC8gPIi60QGpr/fk6jSTnfzBr9GJMikKhiJwqSqA0UArKbxbnuuiNeCbATBu
 JHcYHZ9tOshjrpShaU3mHH5yJ4ZtsWwH6X8SFHo5DWlumbv6cjv+DH/eqVEjN6V4NR0eRiKQ6rP
 jMPvWf8Ivz8u/GucqJfCiw7t7SlKaw==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e8e607 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=DphT3ukwsKVHlzpFmrcA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-ORIG-GUID: NbU-gCKo0-fZEH4TquRRr-NYBv4UjM5-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

Hi Dmitry and Eugen,

On 10/9/2025 9:58 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 09, 2025 at 05:58:03PM +0300, Eugen Hristev wrote:
>>
>>
>> On 10/9/25 16:54, Jishnu Prakash wrote:
>>> Hi Eugen,
>>>
>>> On 9/25/2025 1:33 PM, Eugen Hristev wrote:
>>>>
>>>>
>>>> On 9/25/25 03:17, Jingyi Wang wrote:
>>>>> Enable more features on Kaanapali MTP boards including PMIC peripherals,
>>>>> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
>>>>>
>>>>> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
>>>>> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
>>>>> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
>>>>>
>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 663 +++++++++++++++++++++++++++++
>>>>>  1 file changed, 663 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>>>>> index 9cf3158e2712..2949579481a9 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>>>>> @@ -5,9 +5,23 @@
>>>>>  
>>>
>>> ...
>>>
>>>>> +
>>>>> +&spmi_bus1 {
>>>>> +	pmd8028: pmic@4 {
>>>>> +		compatible = "qcom,pmd8028", "qcom,spmi-pmic";
>>>>> +		reg = <0x4 SPMI_USID>;
>>>>> +		#address-cells = <1>;
>>>>> +		#size-cells = <0>;
>>>>> +
>>>>> +		pmd8028_temp_alarm: temp-alarm@a00 {
>>>>> +			compatible = "qcom,spmi-temp-alarm";
>>>>> +			reg = <0xa00>;
>>>>> +			interrupts = <0x4 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
>>>>> +			#thermal-sensor-cells = <0>;
>>>>> +		};
>>>>> +
>>>>> +		pmd8028_gpios: gpio@8800 {
>>>>> +			compatible = "qcom,pmd8028-gpio", "qcom,spmi-gpio";
>>>>> +			reg = <0x8800>;
>>>>> +			gpio-controller;
>>>>> +			gpio-ranges = <&pmd8028_gpios 0 0 4>;
>>>>> +			#gpio-cells = <2>;
>>>>> +			interrupt-controller;
>>>>> +			#interrupt-cells = <2>;
>>>>> +		};
>>>>> +	};
>>>>> +
>>>>> +	pmih0108: pmic@7 {
>>>>> +		compatible = "qcom,pmih0108", "qcom,spmi-pmic";
>>>>> +		reg = <0x7 SPMI_USID>;
>>>>> +		#address-cells = <1>;
>>>>> +		#size-cells = <0>;
>>>>> +
>>>>> +		pmih0108_temp_alarm: temp-alarm@a00 {
>>>>> +			compatible = "qcom,spmi-temp-alarm";
>>>>> +			reg = <0xa00>;
>>>>> +			interrupts = <0x7 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
>>>>> +			#thermal-sensor-cells = <0>;
>>>>> +		};
>>>>> +
>>>>> +		pmih0108_gpios: gpio@8800 {
>>>>> +			compatible = "qcom,pmih0108-gpio", "qcom,spmi-gpio";
>>>>> +			reg = <0x8800>;
>>>>> +			gpio-controller;
>>>>> +			gpio-ranges = <&pmih0108_gpios 0 0 18>;
>>>>> +			#gpio-cells = <2>;
>>>>> +			interrupt-controller;
>>>>> +			#interrupt-cells = <2>;
>>>>> +		};
>>>>> +
>>>>> +		pmih0108_eusb2_repeater: phy@fd00 {
>>>>> +			compatible = "qcom,pm8550b-eusb2-repeater";
>>>>> +			reg = <0xfd00>;
>>>>> +			#phy-cells = <0>;
>>>>> +			vdd18-supply = <&vreg_l15b_1p8>;
>>>>> +			vdd3-supply = <&vreg_l5b_3p1>;
>>>>> +		};
>>>>> +	};
>>>>> +
>>>>> +	pmr735d: pmic@a {
>>>>
>>>> Hi,
>>>>
>>>> The PMR735D is available in pmr735d_a.dtsi
>>>>
>>>> Can we find a way to reuse that include file instead of duplicating it
>>>> here ?
>>>
>>> In pmr735d_a.dtsi, the peripherals are added under the parent phandle
>>> "spmi_bus", which was commonly used in older SoCs having only a single
>>> bus under the PMIC arbiter, but in Kaanapali, there are two buses
>>> present under the PMIC arbiter, with phandles "spmi_bus0" and "spmi_bus1",
>>> so we cannot include the file as it is.
>>>
>>
>> I know the problem. I disagree with using include files in one case, and
>> having the PMIC in the dts in the other case.
>>
>> So there has to be a unified way to handle this in all cases.
> 
> Rework SPMI PMICs to follow the approach started by Johan for PM8008. I
> think this is the way to go.
> 

We got a recommendation from Krzysztof recently here for Glymur: 
https://lore.kernel.org/all/b784387b-5744-422e-92f5-3d575a24d01c@kernel.org/

For PMH0110, he suggested we could keep different DTSI files per SoC,
like pmh0110-kaanapali.dtsi and pmh0110-glymur.dtsi.

We could follow a similar approach on Kaanapali, to 
#include the following files in the .dts file:

pmk8850.dtsi
pmh0101.dtsi
pmh0110-kaanapali.dtsi
pmh0104-kaanapali.dtsi
pmd8028-kaanapali.dtsi
pmih0108-kaanapali.dtsi
pmr735d-kaanapali.dtsi
pm8010-kaanapali.dtsi

The first two files are new and common with Glymur,so they
do not have the SoC name suffix.

Hope this is fine, please let us know if you see any issue.

Thanks,
Jishnu


