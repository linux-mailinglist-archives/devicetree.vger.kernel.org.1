Return-Path: <devicetree+bounces-211631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3780DB3FBDF
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:09:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A42441B238BC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 10:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E1542EE285;
	Tue,  2 Sep 2025 10:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QW0YY59M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16BE2EDD5E
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 10:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756807774; cv=none; b=mZId+uWTEBKFEi5wi+IlUn3r8fAc1rfsLsQYZ2WfC5KTp3gR/3rMhGmp9t/YH7YZNTvBOqIrc/fJ8riXJvwHXzep2XYnJL9p4F3arla/HFRgtlgGrIyOFLgp6GZty385ebDWcqg6pMboZ/zfWGzb5ZxQoqYjXEaM6SQKwfqjzW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756807774; c=relaxed/simple;
	bh=b+TPO5OmJGoIMPSdqhX4QRi4q/5WRHyAuGDpETkivbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N9wEHw5EL7ThpzBNma7fimqq/yqDUwmkfJLkUJ7rcHpND81HhwaOnZ0Kx0O/xdbzCr3n2tTP0X+KW4v3kenoAKsPh9NtMx9rjxM+QsPQrbU183I0xw53huu2r1P22j6hzSBQonrRdBgb6b6TqpC6mFTriYwx0QWtC9506RTmCiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QW0YY59M; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822S54Q013610
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 10:09:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	41pmmilN2PV7+r6cQZTS/Msx4vD68teokH8zgt8wVw4=; b=QW0YY59MVJbruiui
	3P9FMwfBtNsmtyt3wEpCdhMXSvS14RiBvg5HU8Ri1fqpHdV3hL1BKmokHZZLdwop
	VWhI0FNW4loJ5bILZe5WJAS+bqa3J8tpKwOSVbUXIAT3RXwkdF3GRDliQTL5B4di
	Xky3d7ZhA4XtRAqON/oPQ3UTd2mJantZJIpchYvBLKWaqsgA96lzGiRBukMBeobD
	UoDttxSN3QZ6WV/uluYfcU0G7yyBjakAPBhKTWMQMZATNToj5McA3PC2zlOP4DBr
	lhtiTKA7DaUg6YFLBdX6utpx+E48Sy30o4wMPhWIzdlpAYz0KpeNDQRuJfIgPbv2
	67/h0Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0efj4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:09:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32dfb5c6fso10682751cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 03:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756807770; x=1757412570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=41pmmilN2PV7+r6cQZTS/Msx4vD68teokH8zgt8wVw4=;
        b=LB0z0jwcVim6Yzn58NYPe17acPnPKUvZYmi8hseweCbg7/iZS0qrOi5mu+4uoAxYRT
         FVwKdr9F2A3xdizPn+K1HXB3Zn72zctcXAk1pStLtloLcWhzZAIDuDCelT9ISCXWJHXg
         FpEOG30CES5fZz0Q611IWeCuCpWPwUuN2MN2bXmcqlL2XRwHknHYjWIsv52iyfD9h4x1
         5F0YszUkdUuIo+Dx/kYWb6SQhh2U0Qa3R2LpojXjzgBanzCgF3dhrjss8kKGvs75diRr
         SIUNzHdAInslkbHwm6Jgah/Cc3A6Z9y5/nh3krwedLCBGRWeZAtiKXFJgAyqrmMYyYnU
         V7Bw==
X-Forwarded-Encrypted: i=1; AJvYcCUQA9PB7mWu+rkF3p1dOSeSGw86hC8btMUMzjjaOLdf2kjV4H0u5Jj4V9jby9x6tMnZhVuhTnLGqbQ+@vger.kernel.org
X-Gm-Message-State: AOJu0YxeH7IDljjKciVgiTH4T7ZJeRcdGRsMjM1GxkKE9stsutMmG4Nk
	IBQ3xwC6wBaO5TZeSgxT4fNx0ZzgQWZSAiuxyaPze5ffXffx0O7fhRHiuaPW5MTXXswv/erXo4y
	EIQdct7W2URwdJQ2fNqpOw32AhwUID7CwNCSfwtOTdljjeQuKN6nb1Dw96fVCKDfj
X-Gm-Gg: ASbGncuR6EqioKCmrbCVMWxbwid3g4gBF8BGA6LZ9+wjOkrkPy77HxWNBQm9rXQ0MC0
	9Qllo5GgTaKtdnxQhY05X/D7/PI+oUOQn2BJbqS43e+ax5KJaeeZyUv5AM9XTBtW3063zt11iIb
	FCLeHc5UJtfhNJP5oxsp/AZfmeTO3QJiZf28dVLNl/2g5+ZQzz1w0b68gPp9F10cA1evFEmWApG
	TlkxgPxguPItYftEf11MZ5GUuZNq2hcTCSCfTGGtKcj4U2k/k7MYxk/raOWXyGy1NOwBYUgsNba
	pAtM69w6lSlxTq9/xa/HTTF8ML/2RnoJoNszpk8A9YLhx7KGTi057B2cG6b93jfL/bOmvO7Aoo8
	XEUhOVksobEGUhpd+Vvmcsg==
X-Received: by 2002:a05:622a:f:b0:4b3:d28:c94 with SMTP id d75a77b69052e-4b313f91b70mr104592141cf.12.1756807770411;
        Tue, 02 Sep 2025 03:09:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG62naAHegsU8yObAUYcVswhyEJm1MXgvdqmgJY8Nsg/BHuM4ig7uhBtizCPYrmE6bZFkxhCQ==
X-Received: by 2002:a05:622a:f:b0:4b3:d28:c94 with SMTP id d75a77b69052e-4b313f91b70mr104592021cf.12.1756807769913;
        Tue, 02 Sep 2025 03:09:29 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0416e878a2sm623402966b.95.2025.09.02.03.09.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:09:29 -0700 (PDT)
Message-ID: <d13d416d-507c-4f74-91f5-38447ac39599@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 12:09:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/3] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Yingying Tang <quic_yintang@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yingying Tang <yintang@qti.qualcomm.com>,
        miaoqing.pan@oss.qualcomm.com,
        "stone Zhang (Stone)" <stonez@qti.qualcomm.com>,
        zhichen@qti.qualcomm.com
References: <20250828-hamoa_initial-v8-0-c9d173072a5c@oss.qualcomm.com>
 <20250828-hamoa_initial-v8-3-c9d173072a5c@oss.qualcomm.com>
 <qgirqibqvsld7n2ac4cvuvtqknhqkq535jkxnxjjqvss5wpm36@i3mbp7qgqxju>
 <1600b292-df57-4328-baa6-db6467e00096@quicinc.com>
 <wxnyux7a5raz5ltz7hpd5dp5euuwwjts2qvhvr4ksdgoye6pm5@2jxthgfwgpuf>
 <23d10901-6b8a-41fb-8cb2-e8e361093561@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <23d10901-6b8a-41fb-8cb2-e8e361093561@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2wueMYpeVSSbCp4OlsnHorPv1kyRhTpK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX5fUcgcu8jN7f
 rVJbo8JMAftfS5U79kYnjXHtpg591Z2deNpzSWTlZzUbTTW+nz1kpoWU5cOroo4zh7r55SnojVp
 1eDELAeqVhfYeI9zAXZ64Egphk/TolszSgBPzdUtlw2r3wsO74KqWF2GI02vGRrnDgIeL64DuWk
 F13QOUBLxc9B1iUTlQMl8R14c37CfGjP0mIFNhYLaWQMr/uhGgOtPXNqsGli58bwPBp79rKy6qq
 wd31PUpCnFlXzbqbr1dF9BP4Jz/H+B9QmDWdRnREvEfCcQR6X8dfHdOh1Hg1IfDOrDvoVX4dgMa
 HiSpOkUy1+NyuhmwZknArcJPC8NSCSLibe8HdrXtFpVM5ehML+B9E+U2gRSxG4ULw3EXHN+it6K
 Yl3KVEA8
X-Proofpoint-ORIG-GUID: 2wueMYpeVSSbCp4OlsnHorPv1kyRhTpK
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b6c25b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=RSXL5CDgIuVycp1vnC8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

On 9/2/25 8:56 AM, Yingying Tang wrote:
> 
> 
> On 9/2/2025 10:37 AM, Dmitry Baryshkov wrote:
>> On Mon, Sep 01, 2025 at 11:02:24AM +0800, Yingying Tang wrote:
>>>
>>>
>>> On 8/28/2025 7:18 PM, Dmitry Baryshkov wrote:
>>>> On Thu, Aug 28, 2025 at 12:48:47PM +0800, Yijie Yang wrote:
>>>>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>>>>> embedded system capable of booting to UART.

[...]

>>>>> +	wcn7850-pmu {
>>>>> +		compatible = "qcom,wcn7850-pmu";
>>>>> +
>>>>> +		vdd-supply = <&vreg_wcn_0p95>;
>>>>> +		vddio-supply = <&vreg_l15b_1p8>;
>>>>> +		vddaon-supply = <&vreg_wcn_0p95>;
>>>>> +		vdddig-supply = <&vreg_wcn_0p95>;
>>>>> +		vddrfa1p2-supply = <&vreg_wcn_1p9>;
>>>>> +		vddrfa1p8-supply = <&vreg_wcn_1p9>;
>>>>> +
>>>>> +		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
>>>>
>>>> Okay, so how is WiFi controlled? Is there a GPIO? The DT should be
>>>> describing the hardware, not the UEFI behaviour.
>>>>
>>> Hi Dmitry, as I described in previous mail, On hamoa platfrom whole wifi module's power supply and enable gpio are voted in UEFI.
>>> Hamoa is PC platform, so BIOS/UEFI behavior is compatible with Windows/ACPI architecture. UEFI is responsible for enabling power supply 
>>> for all devices which may be used in boot phase (such as WLAN may be used to boot from network).
>>
>> This is not completely relevant. You are describing driver / Linux /
>> bootloader behaviour. I asked if there is a GPIO in the hardware. If
>> there is one, please add it here.
> 
> Hi Dimitry,
> 
> During the UEFI boot phase, the WLAN enable GPIO has already been asserted, and the WLAN chip is functioning normally. 
> If we include this GPIO in the kernel device tree, when the kernel configures this GPIO, its voltage level may experience a brief glitch, which could cause the WLAN chip to reset and result in a PCIe link down.

The WCN pwrseq code handles this already, please simply describe the
hardware like the platform firmware description which you're creating
is supposed to

Konrad

