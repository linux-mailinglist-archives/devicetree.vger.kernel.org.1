Return-Path: <devicetree+bounces-217796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 309F6B593E1
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:36:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99B0A3A3441
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B7A2F8BD0;
	Tue, 16 Sep 2025 10:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LQhnWGUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED5E2ECD11
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758018970; cv=none; b=DX64Lh3Bc3vpa+SXa1pj9EPMeUQ7xnJYUneaD8SwiLFnWzlxQ3QtXZmToxpIa08LduZd6narqKqfQ35pnkUlzZ+gpMpz5YO35Ch2x0h1DNW6voOtRkQF6NVlwqGK995GshLALZz9VL4uGg1mziPZJEbyWxJvuPAZiicCGj5Occ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758018970; c=relaxed/simple;
	bh=Qz30nJSo3zoddLNFeFML3WJ7DaicVwANWR/rFS4kCnE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SzaykwpCujtnU4LEU+bxEQL8112GUwZWL1R3Z3mEl41CW83/etNaORRx6RkcLojwrNBNpB2mTwY4mrHTdP0eKlyCwdSCf4xtOoDgrS3r49d4gC4trJCjnKpcTHmTPqwqFNqkIjcHDs03JKrbfZzr/fYp7o/9xPk//nlVCUMF7FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LQhnWGUc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAGQdD012287
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:36:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I1oGxXNARfYkquajFMgBv86g7mkjud9gt3fZRcuQCEM=; b=LQhnWGUc7YZjveKJ
	lF+jfrzT3KP6KJ4EclPgeGbGUuMO9hbZpVcdhf5aVr7NeQrSfWr131T6Di58H8sB
	eEklXGWVkMOP5vyWdH210Dm5ozCglSB+jnALjAhElE9jSLTSB23K1WkhYSn4XiIT
	/q7wKRG4Lx9T6GkdefXhhS5i1JuGAxQ7A7kQvAiQzvYOb4JvVyQgQpDlQKriNLD1
	GTM6n3Y7/gW7WHNF6m+kAW1PZDxMg3CRTIdJdMiAZxQT+WUOTyCzeXa68qA2TBKl
	mBOTOfl9TqrOUBbH2TMe8Fa3xyjlbux9oQfx0V1YxpstpaFg7+sox7Nv/RVgeqQF
	6VQSdw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g12m6fr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:36:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-819d2492a75so99591885a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:36:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758018966; x=1758623766;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I1oGxXNARfYkquajFMgBv86g7mkjud9gt3fZRcuQCEM=;
        b=IIxcT2MQZ5mpblFVYDWoiyh5F8NfjBuMrOluCI27PvYz5Ls9WNnsVb2yIbYwPDpVF/
         CGC+QSsyKZ9M7drAuJjsShhs2RiXcQf44Z8/QjKPUqR/bUdErGehw2juIYW7d+S8eULh
         LZYQgprTnol7rHAbys6w91BacxSvp5Sd1fHWDHNUBzfDKawPXtfzVOYEqVFKpwNL4Xa2
         KTp83bodFersc2KgM58y1CHt2f9F2A1bgoQTyvpsq8a0vNvqcruWht0k3+JhiJy11ZEE
         M2uNbCOnN6MZg+4+pusO+sSwWuwc/DZH6RA8+ITKfIhXndHGlLcSlxhui80nCVrQpqbH
         kyYw==
X-Forwarded-Encrypted: i=1; AJvYcCVXce2rzQYfbjIB3UowiycoF9ySZCCRjRa7pOWL0iemHjsddXHexvBXbWNbazIGmYgky+9g7kuplWTW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh6JEWEGhCwfIVq0iZqNxxwGkkK2A3KSYB4DhgtNN8tV688cHK
	W/YiwrFOIW0A0lP8ch6HPuXib2I8NY3FhAKG8a62obOYPsBCLlF1I7VMs3OXSd398agdBcY6znc
	ucNrzV+U0qSK+7by++fQ6OOfNJgTiXe1wxWPnGhjfFfzFXJZjC78mp92jF3wKVAim
X-Gm-Gg: ASbGnct1uVOa1UwFDq9+xCVLwee/2l7U58FfrYWPPmarE2dZRsPFRGskUtN20v99ikX
	8uUCYziy/7CeKF8ZIpdNl2bmJEz+Mr372yvcZgvA9auXk2VHqLD8iAM1S3p7wRXJsiV2PhWthS5
	n9H0JWIxdeNvqQlbnIyRAA/2LGavr4SKaEhfTlUZ5sOOd6tSEClCA/2m9KSGQIFiGieLleVj0UO
	bs48Zvrxxu2Tyedm+Cl994VXQ2Q9krBJeYMka/KS+Wvv/HVLYH9WnW2wk3UuypTQGOmYK8UhEXD
	O1lgOK5vkwB6Y8wnlrhxM6W1q+z487GdNTWD4RYWyUI9UesAjcByWRJ1I6Kl3H82kl3jp7cuCCZ
	554Ot/p3EArHs+YJz3z/Wrw==
X-Received: by 2002:a05:620a:19a1:b0:81f:ebae:fae2 with SMTP id af79cd13be357-8240084e22emr1063117085a.11.1758018966163;
        Tue, 16 Sep 2025 03:36:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtrsP4OgHOvZ+jFOe5+SIsQT9/nGz1c5nMb0t2aETsobB1lXRz1cf6sYYhrLoapwJPuNwg2g==
X-Received: by 2002:a05:620a:19a1:b0:81f:ebae:fae2 with SMTP id af79cd13be357-8240084e22emr1063114985a.11.1758018965433;
        Tue, 16 Sep 2025 03:36:05 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b3128a5csm1123661666b.37.2025.09.16.03.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 03:36:04 -0700 (PDT)
Message-ID: <ee2d0d92-bff9-4593-a912-7e4b1d66913b@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 12:36:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Yingying Tang <quic_yintang@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yingying Tang <yingying.tang@oss.qualcomm.com>,
        Shuai Zhang <shuaz@qti.qualcomm.com>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-4-38ed7f2015f7@oss.qualcomm.com>
 <aMPhEm8PuhEofHP7@linaro.org>
 <317ffa87-060c-4f1b-a6bf-61bb27367477@quicinc.com>
 <jimz3qnjrcvemvgrqpwxq4zmywfo6psplsg4jefkvvpiwlffek@fwn3juynr4zx>
 <b3bf54a2-f33b-44d5-a9e4-65ba18ea267d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b3bf54a2-f33b-44d5-a9e4-65ba18ea267d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Kj0peXo9pKohgUaaDcYUau2Feyfn1T-7
X-Proofpoint-GUID: Kj0peXo9pKohgUaaDcYUau2Feyfn1T-7
X-Authority-Analysis: v=2.4 cv=E5PNpbdl c=1 sm=1 tr=0 ts=68c93d97 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=Sfr1CVDFLF9upuNpyUYA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NiBTYWx0ZWRfX105+gmH0mQP8
 BxCcYpym6nK3OK8eHMgK/w6J+xd9+1EozniXenpYaDFlSbtI5YEVzmwTp72cvdvGrNnGAheM3mC
 wF2OGfrBXVSUagM56N3m5sd2DF6hFEc1Gn6/UwlE8T3VE1ioMMd6UHLDqgA9jdpPyOJMjC9Ln5+
 fo+2ebkMFwnDHllAxZqywdk4TLbSr9ucoyRb8x8WiTx94qZWML+C+LFYKlCWkajaTrRVRv7Pcxl
 Z5FSGrOPJgrC760uPff9cJ/ykEGBYAUdOtGNFBnEi7s2z7v7txOQHDIbmAMGBsZ4gsXsjTFWV/o
 dUY+R4dDPpTuf+DNAWj2uWHY1u5V/k2S15bC8GObG+2Wc0ILbLrfqdyA+3HPAfbNdlcoGGcbsKf
 IvWwemwA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150086

On 9/16/25 12:29 PM, Yingying Tang wrote:
> 
> 
> On 9/16/2025 6:14 PM, Dmitry Baryshkov wrote:
>> On Tue, Sep 16, 2025 at 09:42:26AM +0800, Yingying Tang wrote:
>>>
>>>
>>> On 9/12/2025 5:00 PM, Stephan Gerhold wrote:
>>>> On Wed, Sep 10, 2025 at 05:02:12PM +0800, Yijie Yang wrote:
>>>>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>>>>> embedded system capable of booting to UART.
>>>>>
>>>>> Make the following peripherals on the carrier board enabled:
>>>>> - UART
>>>>> - On-board regulators
>>>>> - USB Type-C mux
>>>>> - Pinctrl
>>>>> - Embedded USB (EUSB) repeaters
>>>>> - NVMe
>>>>> - pmic-glink
>>>>> - USB DisplayPorts
>>>>> - Bluetooth
>>>>> - WLAN
>>>>> - Audio
>>>>>
>>>>> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
>>>>> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
>>>>> <quic_shuaz@quicinc.com>, Yingying Tang (WLAN) <quic_yintang@quicinc.com>,
>>>>> and Yongxing Mou (USB DisplayPorts) <quic_yongmou@quicinc.com>.
>>>>
>>>> This looks like you should have Co-developed-by: tags together with
>>>> their Signed-off-by: tags.
>>>>
>>>>>
>>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
>>>>>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1221 ++++++++++++++++++++++++++++
>>>>>  2 files changed, 1222 insertions(+)
>>>>>
>>>>> +
>>>>> +	vreg_wcn_3p3: regulator-wcn-3p3 {
>>>>> +		compatible = "regulator-fixed";
>>>>> +
>>>>> +		regulator-name = "VREG_WCN_3P3";
>>>>> +		regulator-min-microvolt = <3300000>;
>>>>> +		regulator-max-microvolt = <3300000>;
>>>>> +
>>>>> +		gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
>>>>> +		enable-active-high;
>>>>> +
>>>>> +		pinctrl-0 = <&wcn_sw_en>;
>>>>> +		pinctrl-names = "default";
>>>>> +
>>>>
>>>> regulator-boot-on?
>>>
>>> It shoulde be regulator-always-on
>>
>> Why it's not boot-on and always-on?
>>
> As I described before, connectivity power is voted by UEFI in boot phase.So PCIe link between connetivity card and RC4 is established once RC4 is on.
> If we set this node as "regulator-boot-on", connectivity power will be down first then up. That cause PCIe link down and the link can't be trained again unless you reboot board.
> So we can't set it to "regulator-boot-on"

Surely gpio-regulator.c implements .get_voltage which reads the pin
state though? Did you test this, or are you theorycrafting?

Konrad


