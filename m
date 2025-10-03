Return-Path: <devicetree+bounces-223505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F646BB6532
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 11:10:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD9CE188D3CE
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 09:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A154287518;
	Fri,  3 Oct 2025 09:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mf1ynVAR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867C12882D3
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 09:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759482607; cv=none; b=ViBIVY71K+RjaAF8v35D+jUPklRaqLTAZqP8x0Dy9dTkeAvUH0txZeinLwjG5U3/VDMfkB3gCZwyUvZ34+no3lj+M2bMfWrbKE2JPMLSFHh5QijhqLGWMpDQZwSvXKaKrp6W+vSup/YB3mejv1U9ssaZnheROIaHdR1t0469Qek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759482607; c=relaxed/simple;
	bh=g+UyabP7D/WYt51zePGNa1iOGkEPveNswKAW4d9GM9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lGJ261qBrwSO6lCiUX5OG+XVjGnK4E/mlruTy6m7UuJn+Xrlu3XBCud3ZJaHJWXlB6YDSnrDEIBrpczJ/xr3I8C7Q0izmr1wP5It3w8AwSjmqXnCnr3TfXbrdRA0hsiQQDz7UWzZC1gG7p3DZ5KtxFP2HkxcrISB0KHQ2ds8KlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mf1ynVAR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 592LUofr022677
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 09:10:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9G+ZsHAD1n3qGPEQOvfOjFGqmrOTP8PC0DMNouciob8=; b=Mf1ynVARGjaPpLa1
	RcUrlPuW2pYAkB77JOlTBVI9k6BXS1qOrKy1Y5TB3Knh8jptEB8tDfRq9QlMWwXp
	NQtyc7ek0v8IbWI+ew3enhe5Z0f0zrhIbrSZCLpaN2SQVXpKzlXzRuy6iASBIxCg
	WnYBCd1zFAwGwzx6e/zGcE00q915QzeJugs6NsmMJiCi6s24s6Io/AR6P8/7Ovlc
	PAvQbwKOzHUL+afjaCNa3y1AWQtnjCI8IhSz+coyCD8gntboN0F090Yl9YEheXPf
	e8F7KfcbTIDmtz7B9NO1cLMwfw+kdyBE3kqIy0/W1uqogE8j3kyHGP8zvmGwaOH5
	qnbmRA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59naqt6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 09:10:04 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b554fdd710bso1352066a12.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 02:10:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759482603; x=1760087403;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9G+ZsHAD1n3qGPEQOvfOjFGqmrOTP8PC0DMNouciob8=;
        b=q0GkjHJP6C/HZnfoi3YPUD8nFXEz3HpOFRzf88vQEumA9okzljsTGfgxhnJMIEyJfE
         toQEnz0rStrrJp9h5/jxL0AWYgA8Hp3J9Tn4vOrEV0EaB6p0NmKnLWo3aIYLM19TuUm3
         OLZeEx1PH6bWN1zUijkkSDI1suBhb5FF7wrNDua8s9Oh2B476ujqwuw1564AQ646dnPu
         YvF4b1bGyD7ZOlqI1J62rP7+VcR/GCuMAV2bsrNB53zVslkbYo1AX+rzjxhwSFkCv5IW
         FAIJLkMRBkswxS5T9zkPwgjgDG/p85xhlmGfeFNDuwJUxwlSFPwH7v8M/Yeg4BD/lYYx
         6TXA==
X-Forwarded-Encrypted: i=1; AJvYcCWY2ei4F1z/o8hvFIiU7Bw5vQDj9LJ7vjWOD0qTDGloMEKk7rE8VWVX68Gqg4xZ+e00qAl4scL85KHF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1hDeW8Lw1NCGsO79w/Rbf3yp0VjQX6YqcQ/5KucuwLOWpbfBH
	nEydlvgZ4JKfnoQz5zgA9gyTc1XG19ogM3o1VQ4qLLvihonLZ1f0h/wSC2GH4gM4xt6TmXm3pR/
	wRfWgzqcpzIA2tOtC05sKfuD1G566v9FVwe5mmKXVf9+6JvAaBkK4cw2A1UMKkLhA
X-Gm-Gg: ASbGncsFLW+Orkj2aeqQ88zYbk9RDscbd0VJKRYFtFGNTs5GElvgkN5CmtZQ/riGhX2
	BL3ATDh64CThHAjHBAEQe5k/jfneY6ET5FWcuTV+IROGoacq9aFo9gmPbTk+4UlGlJx3aXbK5Hp
	GcU2WwUxpfyZBDF6RIV6GmtPpOdbp2OmYwHM2dRUhOgqTfN5UPvzzZYYhvyaWH026Yxaeewuo26
	RkieLwJMHLLXYHdTjIPbtOlIuVqbkxzkp+40GMfkc5U2JI3/tYFa6v28Sc4BJjDjUkHp2sVG2Qp
	uSguPSbsfZwJk7KsVoGE30fKFlSmiduRVWum47/75nBN1D9vvx7+SFGqzUrLGiPHUTzaJxWZPXl
	Volg=
X-Received: by 2002:a17:903:3c70:b0:269:ae5a:e32b with SMTP id d9443c01a7336-28e9a5668e1mr30170465ad.13.1759482602885;
        Fri, 03 Oct 2025 02:10:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IED/ngo+VR5SYkELB9gRDWFieCrqK8UHsEA2FB7sm98eH67+OUnQaYh4ScjWZbBPm9CWIZQ8w==
X-Received: by 2002:a17:903:3c70:b0:269:ae5a:e32b with SMTP id d9443c01a7336-28e9a5668e1mr30170065ad.13.1759482602391;
        Fri, 03 Oct 2025 02:10:02 -0700 (PDT)
Received: from [10.219.49.214] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1dc168sm44215525ad.120.2025.10.03.02.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 02:10:01 -0700 (PDT)
Message-ID: <58a69bdd-f26e-4cc2-bbe2-6e9d5bb69aa0@oss.qualcomm.com>
Date: Fri, 3 Oct 2025 14:39:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manish Pandey <manish.pandey@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <DD6BOLBXKBYP.2NVXRXGJ9W3IG@linaro.org>
Content-Language: en-US
From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
In-Reply-To: <DD6BOLBXKBYP.2NVXRXGJ9W3IG@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: tWoESyg12DX2twjjSH57iCNwRJW0B5rS
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68df92ec cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=k2UVWlRvf9iVtZTx9S8A:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: tWoESyg12DX2twjjSH57iCNwRJW0B5rS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX+kzelX/CcIXO
 9WLOoVzQAZmCSxtpjLBy/W5oyJbHzOIikyUbNIHcDb1sQPSvK255gTPdwWIoOAwapmaj40ZWBK+
 CDmgLmgjKZ/1ITg+dghhyCv4oHXXqhtAfIq5HtRjmr92Qp815i+dn0VVdmYeBWerlvQtqOTllwG
 t0FL9/zi1ZbvrzJh1asSMXHLj/Rbl1WtnAnFfQo032WK8ge2I8zZszYLKglODqmtulw7d1BMKRD
 C+FX27E0MJTBdn7wU9WtaEnX1ndd6VpO1EtgyR0e8xdeB8Ivhm5Uy8yVMUs1jBSs+/gyBvGpFCN
 OFtOOZvH2Mw0uwN6x1xON6o0lEcfDYzXvUfIzx5eO8FKPZszcYScPw2/uJhy/0jHStGZfxKMVBb
 c9+/JRkISLdm8d4awKBEsoxJlIP2JA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_02,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001


On 9/30/2025 11:18 PM, Alexey Klimov wrote:
> On Thu Sep 25, 2025 at 1:17 AM BST, Jingyi Wang wrote:
>> Introduce the Device Tree for the recently announced Snapdragon SoC from Qualcomm:
>> https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5
>>
>> Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test Platform)
>> and QRD (Qualcommm Reference Device) are splited in three:
>>
>> - 1-3: MTP board boot-to-shell with basic function.
>> - 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, tsense, bus, crypto etc. Add QRD board support.
>> - 17-20: Multimedia features including audio, video and camss.
>>
>> Features added and enabled:
>> - CPUs with PSCI idle states and cpufreq
>> - Interrupt-controller with PDC wakeup support
>> - Timers, TCSR Clock Controllers
>> - Reserved Shared memory
>> - GCC and RPMHCC
>> - TLMM
>> - Interconnect with CPU BWMONs
>> - QuP with uart
>> - SMMU
>> - RPMHPD and regulator
>> - UFS with inline crypto engine (ICE)
>> - LLCC
>> - Watchdog
>> - cDSP, aDSP with SMP2P and fastrpc
>> - BUS with I2C and SPI
>> - USB2/USB3
>> - Modem(see crash after bring up)
>> - SoCCP
>> - SDHCI
>> - random number generator (RNG) and Qcrypto
>> - tsens
>> - PCIE
>> - coresight
>> - Bluetooth
>> - WLAN
>> - Audio
> Were everything described as audio enabled and tested? As far as I was aware
> some devices required some soundwire rework to support soundwire microphones.
> Is it finished? I don't see this linked here, but you state that audio
> features "added and enabled".
>
> Do we understand this correctly that, I presume, everthing that is more-or-less compatible
> with previous platforms were added and enabled (with renames) but not _all_ ?
>
> Probably some rewording is required.

No, As outlined in the commit message, validation was performed on the 
Kaanapali-MTP platform having
WSA8845 and On board Microphones(Mic Bias supply from WCD939x) , and 
there is no SoundWire
microphones support on this MTP platform.

Thanks,
Prasad

>
> Best regards,
> Alexey
>

