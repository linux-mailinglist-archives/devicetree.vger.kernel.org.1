Return-Path: <devicetree+bounces-212331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 904C4B42656
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 18:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 267A11BA32FD
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:13:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC0D52BEC42;
	Wed,  3 Sep 2025 16:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RcwnqjG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603552BE7CC
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 16:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756915986; cv=none; b=U3mS9D5rvcPl2F//YXz9QfXdrDciQuQMSZfQOk43rpluXS3XahQoOwbaej6qZ535nMCictDWpUP0z/lU+OTQdCl7qNWnE8FYgLjkzeavZfXucOuIjHaHFZJqbTMGzC2MMc207Dqm7kJTvCMwqdJ3/vIZOL6AnYQwV7h/HELA+Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756915986; c=relaxed/simple;
	bh=npa6VTO3UD4EmfEg4HVC1uujU7lkywOp1bop//9kLe0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N0ms9yNbjeu9Nfzo0XR6D61c7DMnEikdMzY4w6eZSIun18jTsDrjmUoWnN64SSKxpqhOMrLlJhwtSLZKSzb5RcLjvcqJuajRZYE/4PM5dyXILJfwfOLGKwLrunfuUcL/iklLb0quiDs2p8bJL5Gh773189i7dQIqDBhztk1hBxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RcwnqjG3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dwso3032510
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 16:13:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pKeGXm8jI+JpucgwsLhCt1MqYWl2JGrUgMOwCF0ZLRw=; b=RcwnqjG3gzZFzE5y
	qk0DpNv2Z9TZ/bvR+tO3S4pDWBBktCGCpsH1epbK0E1RpKxO2iLyG5xmhciO2pKt
	qCU+iB4l77rt009pAJYpZmWzNzzC6whn7GzU+IFxXVSxW7i2EG6Bmk/6gEBkPDT1
	DjE0WOfBwjNYbG+qwHdqww/EIEvnIk3fxh6yaPQE0JyHUAsOebQH28DzBNrKDLFO
	McOgq085DUVyLmPxGlqK09VDyxDvLJI2hZjlEn19Jbf5DaHLfVTtP0cxC/KWi3K4
	cfXSyFe7/lPyPeS5SZeC5FyxM/EE30UXGx+3w5XLDCQ8QoTjg8oU9f5gdl2InkCe
	zawcTw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush348bd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 16:13:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32dfb5c6fso189241cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756915983; x=1757520783;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pKeGXm8jI+JpucgwsLhCt1MqYWl2JGrUgMOwCF0ZLRw=;
        b=PNG14hUkXuqUZFNuY0ql5H/UqMo/uBKvj6+m51/p6DNNnc6hCT6+MSHrSksBH6WPLy
         ba3EPmoi/FtGNVxGbJKyR57EtXGiZHDWzSe68jL+9An/jqkvLxGuk+UtwXvo1SZr84Bu
         Km1utu41JHNvrYUej0VRsGVgcWqIQpBCyY5SZCsgOmnqR+8FeyGh4rqW6PXvY1nyaZJp
         aibZ80yigcdbPhuwpPaQa0RHKKxYemZwUO/rkrtArVI59aA0fKOUOBxvLivGJkpxtiUK
         7zMVsOzBfVWUqpvvfOICGOgDhEWUMcel+LNQmAQ8NvcOd0JCzuNlW0qdbXU+wac045pB
         rAyw==
X-Forwarded-Encrypted: i=1; AJvYcCXWWWU8zaa7B1scHO94p1Ej/GOZDYNcp1vGGRS/iHIhqU8yGK0/ktA6F7nKzpoYNXWIzWv272Ucnydb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjg8byTZ+lJU5QSh/miOpXr6dmpfIPfFAk5kDOxLMHZeEd8lZ3
	n/xa9w4ln8QPSSKJLWi1xHdzYe/M0EpQ/Uvm0O+hP27uri2S/+DQ+HlhqMqE1WuB+8Ocxcdjfyk
	zmhaccQDsDdbDhBV6018RKiF7WmgvzeSiyPwouVBj9HfmIch1GAigHfNTH7qnmJb/
X-Gm-Gg: ASbGncvJTYiHHoY11xEkC4TvnVqhAmi/qUW6QM7PhDnqHn5/hyhFqZ88AFWaKVSE2MQ
	43e+YNCaCtiAnQg18G3YqZtzV0jNR1RavJjXW7nZ9V3ElMB/k3LevgmnlSyNLpiqk0E6UUpHewP
	a33+Omwb1+dr44U6zHgxthIJ8U2f6bOy9xzuEYG5bsPYHWaQxUJiccbtghvTclUD7XSyo6EiGhk
	o8WstAomZtlztQ7MZqe8cJNuBAV0+sARW1RniIQD18HdzIvD5GwZUDnBvXJrjA1iw9lAT8Z7Jyt
	ZSOYCH3HGOgfuqQukVr+GJUMKYjSo7UNgM/HFIMyK1eoOH1QkUlPjfknd4G63YiuBAxD8VXlu2h
	Iak0o+T43Cp/68OLywermLw==
X-Received: by 2002:a05:622a:4506:b0:4b3:4590:ab74 with SMTP id d75a77b69052e-4b34590ba5bmr60324181cf.13.1756915982750;
        Wed, 03 Sep 2025 09:13:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfWwWchCPw1ePeEGx4qP5S7OYtJkgaeMl5VvODCf95CzdX3BdtWxnPTsVZ03+bkL8BPje0cQ==
X-Received: by 2002:a05:622a:4506:b0:4b3:4590:ab74 with SMTP id d75a77b69052e-4b34590ba5bmr60323761cf.13.1756915982100;
        Wed, 03 Sep 2025 09:13:02 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04110b94cbsm1003115266b.93.2025.09.03.09.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 09:13:01 -0700 (PDT)
Message-ID: <c82d44af-d107-4e84-b5ae-eeb624bc03af@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 18:12:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: lemans: Add SDHC controller and SDC
 pin configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-2-08016e0d3ce5@oss.qualcomm.com>
 <rxd4js6hb5ccejge2i2fp2syqlzdghqs75hb5ufqrhvpwubjyz@zwumzc7wphjx>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <rxd4js6hb5ccejge2i2fp2syqlzdghqs75hb5ufqrhvpwubjyz@zwumzc7wphjx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX/f7Earpu+jyh
 5Dso6dxptyEhMj26Z1G9OtVTlE2k23o34Ai4exTjc7mGKMV2rPMIwiLjD8b5I30Q7tOD2i5LYQc
 uKM5lyRh2naVCuee5j9clJr2zVlZi+1HLUPsN/VylOjrLcqSK725p6l+ILSImJJG+LKvQE4Y15x
 dtblW7YpvtrfFOXI0fpMDhkWheb8lADneihN8Wliz6KL+XwoO5umGngEyqqtHYzwF1oY3AbTa0Z
 C+mRNUvMLZteNBcWQgtyfz0qHOi6aY+m/zYePg9IpD99+LwlFezqAv9nIk948GXg3cOBoLNQbTt
 IiaMfgZec3x7w8rwBGPf9eU5bJcsDLEVu1ygaGGnKuKq6yMPd7Vk1BOPnVtxS1Ti5t//kz8LgEv
 JvoWVkZM
X-Proofpoint-ORIG-GUID: O8TwzA2tPlI5_7TuOmfa5Qs8AUmP5MGR
X-Proofpoint-GUID: O8TwzA2tPlI5_7TuOmfa5Qs8AUmP5MGR
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b86910 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=onm5DRxEkm4ScgEcFVIA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On 8/27/25 3:20 AM, Dmitry Baryshkov wrote:
> On Tue, Aug 26, 2025 at 11:51:01PM +0530, Wasim Nazir wrote:
>> From: Monish Chunara <quic_mchunara@quicinc.com>
>>
>> Introduce the SDHC v5 controller node for the Lemans platform.
>> This controller supports either eMMC or SD-card, but only one
>> can be active at a time. SD-card is the preferred configuration
>> on Lemans targets, so describe this controller.
>>
>> Define the SDC interface pins including clk, cmd, and data lines
>> to enable proper communication with the SDHC controller.
>>
>> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
>> Co-developed-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 70 ++++++++++++++++++++++++++++++++++++
>>  1 file changed, 70 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> index 99a566b42ef2..a5a3cdba47f3 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> @@ -3834,6 +3834,36 @@ apss_tpdm2_out: endpoint {
>>  			};
>>  		};
>>  
>> +		sdhc: mmc@87c4000 {
>> +			compatible = "qcom,sa8775p-sdhci", "qcom,sdhci-msm-v5";
>> +			reg = <0x0 0x087c4000 0x0 0x1000>;
>> +
>> +			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 521 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "hc_irq", "pwr_irq";
>> +
>> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
>> +				 <&gcc GCC_SDCC1_APPS_CLK>;
>> +			clock-names = "iface", "core";
>> +
>> +			interconnects = <&aggre1_noc MASTER_SDC 0 &mc_virt SLAVE_EBI1 0>,
>> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDC1 0>;
>> +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
>> +
>> +			iommus = <&apps_smmu 0x0 0x0>;
>> +			dma-coherent;
>> +
>> +			resets = <&gcc GCC_SDCC1_BCR>;
>> +
>> +			no-sdio;
>> +			no-mmc;
>> +			bus-width = <4>;
> 
> This is the board configuration, it should be defined in the EVK DTS.

Unless the controller is actually incapable of doing non-SDCards

But from the limited information I can find, this one should be able
to do both

Konrad

