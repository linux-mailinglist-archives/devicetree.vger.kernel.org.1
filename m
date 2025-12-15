Return-Path: <devicetree+bounces-246469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C886CBD111
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:58:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6C4423034518
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B69330D22;
	Mon, 15 Dec 2025 08:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aY4yzvGh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SB65HaI4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAC5330B2D
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788400; cv=none; b=L83OnMiVLGLbWClCF97k5ZpIaWiqfzbNAk61REFCCjgR4H7gCvdHj07lZ3Krlg7YRBj/kxCrzIPNOErGKHHPhftaqaHugNkyb4U2Z7GuPW6RTHVGR57UJLc7Oi2zlrrvv05qyo3GQeBQ8+xTdWSKFJYeErGuizbJnKkJcT09MLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788400; c=relaxed/simple;
	bh=cKAEsK48bDRFpViwYxsjJ68kXBq8TkFsz29AP3Kezr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qJ5QR0H9CDJUcTp2cbp4oSxTTcnkAUUYqigA4DA6lR2lmgkoXEneibC/V6yp8opKrGAV64CBKpbMxN+JFH2DMTzxb9AmRE1qVq0IkQ6nDJisBPJwH9Rut+r2Tr4w7RiiTJJpGIG4DSjkWYwv8BdMBl5x6lxBDHjk686tVfZvdwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aY4yzvGh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SB65HaI4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BEMQdvt3104481
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:46:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3nasJWiOCXZ4UCfAyh8BGptI80GTfQPS8qRNgCchLfE=; b=aY4yzvGhOqbQW3Wa
	+BDUFCJTNOp9634liqnLnHZRJtd1JBCdB5G9vJ8jeJLPoppuiJh3tpQPdRztFX4B
	8WqDAfq89eq1nSW+EEAkOK+axCuNlub90scKFG6uoGJ4RiwG7zl96hJkMrj73lI1
	7+f+11JzI5mWWPYBFq9Hw1iS7VYNcGySbdVbE4xSczW32YwYFuK79CGPbIamPdrZ
	pP2HWri5zn8dw7p3zB0QdFmSBpMY9Tx5NOWiVjoh9bfwvt0FovCQMSxA6a1BQUsH
	2qkRIrQBPkmpnR1DpqnaLUNg8o0Uq5OKR1qSnZbE9O/suO9a71MP0mg+0UiYq2JI
	VBMuXg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119aku37-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:46:37 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29e6b269686so72893525ad.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765788396; x=1766393196; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3nasJWiOCXZ4UCfAyh8BGptI80GTfQPS8qRNgCchLfE=;
        b=SB65HaI4zlplkUbYDnRmQLI0w5eI+FNUq28w1UpzryaoivD6hS28VtWCl2tRSWZjPS
         pN6brpFZDFfj8QrFM/F+AinUWUARrNm+C4fSiAIrZ6b7/k2gK45TxbQlKQvd9DrWYVS/
         /wYboKS095a7hhSOlY+iTOl47Q88O7CC75xNiHYQEZL/XpkUrfOlsuNBdFhL2V2Pny/W
         f3BB9DMGZCHEFNojyuaLSbisKV+uACCmv5ceHLJzXbkJYwIVUe6i6cL0L+OdEps3vxt4
         5uy+Ig3yaxCU8wbjLlFbzNdH03hj0DvYnd6uHp5Cwrp/cgq4u1jWnQni+apnZA+lw5CX
         pHow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765788396; x=1766393196;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3nasJWiOCXZ4UCfAyh8BGptI80GTfQPS8qRNgCchLfE=;
        b=XwuQouw2XoJhHQ7h1+ZXW+X+d5f6wcJhlgF7xO50FxLZwETrVcELlHS6G1f4nZ7yIJ
         lF3GOa9iqxuoYaV7vm6usLyd5zo4G+cVeVOzGAjt9btgFN8JqrZlZAF7e5xOTgIcl+3a
         A4eH0vKWskJeWGfxxc8XdnSGWf8HqQgW/QFKNrNFRJnpKEapvVADGSm6uYFhfYTC1rA3
         Oh2d89jjiPuw0NL3oslgbvL1jUkcTvorUsc+G3k4sTul3FklN9t8Hvn7O9tF+ps4BYO9
         PtOAzkXFVwf92pQWK3zkJndRABD/fE50fn50DRWpR7fl46N2CSQOfMxGYo6eo86VsR7C
         GaMw==
X-Forwarded-Encrypted: i=1; AJvYcCW1CPLM/BUiuZNgwx730VJqy+27tl40w1yUZIT10AS7qsfTyf0fgeX9LI2GF9SqSIjN4pgiw07loeVm@vger.kernel.org
X-Gm-Message-State: AOJu0YwhXpH/sQkbmat5LxqINGT/L73aFvMtMRG7HYpIIegV9iCEfYyd
	9EFhpoI9S7HsVJ1Do9Yr2WhmeRVkgO8fN3P6kHeAoxvgniDTwklRDDvdSlFh6p71DLjmrTcp7uq
	rwdw3b1oJQrbQ7m2weIQ4BfaQJUdooNZNhnSWMZ9i/j5ktZuxJsrjRTqg4GHIVZ9j
X-Gm-Gg: AY/fxX4CtKvvw5NwgCrw68i9esuKWZdRr+745/qP8/c/B8taNMCtaRVaO8qLSUCAgl7
	6YJVnQ68+SNGv7H+o7wauB9CeFkt5YVg2TT9dB8G4ieFKsVr1iSd2yxdsy79CTBrcdTKpaw8FDH
	BZQFfDNT7SFSFp6ES+Fn+hmFb1hTz2CJ1mr9YVj8E91AJiBvQjEh9XIA+I30Sfq/yMaC6m8lknH
	BXuPucEmo97fUwxwyWCWpIwZXps0ZNCBDerQIK4slH+NTpOMjo3b5oj8XbNHr3Eu8d9x4L/kMTk
	PeNLFGxnWCgUbdv0dkj4NIDdRGI+OE6KPsp6twRn+Of9BO5melRYjv2wKUPH6kZ0uw6HxJJlcFz
	Zm3KP2rXBJd9kQewYsXkjSzD8ptu/7YDMxa4belADz8MB3gPuoK5PkhUohRPH2W1lq4TqjiEiCo
	iMA048
X-Received: by 2002:a17:902:f686:b0:2a0:b3d5:5c3b with SMTP id d9443c01a7336-2a0b3d55dbcmr58510815ad.29.1765788396413;
        Mon, 15 Dec 2025 00:46:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyaonQjRAAETGUlUftUWs1YWXY8oUneQFILIlocDNYdN7AGVAOAZT/ZTLxDnmB9vtV58uNaQ==
X-Received: by 2002:a17:902:f686:b0:2a0:b3d5:5c3b with SMTP id d9443c01a7336-2a0b3d55dbcmr58510615ad.29.1765788395952;
        Mon, 15 Dec 2025 00:46:35 -0800 (PST)
Received: from [10.133.33.233] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea03fcd8sm126602295ad.74.2025.12.15.00.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 00:46:35 -0800 (PST)
Message-ID: <7ebe3796-0bbb-449a-9c74-50f6907dec49@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 16:46:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Introduce Kaanapali SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>
References: <20251210-knp-dts-v3-0-8dcd52f055c2@oss.qualcomm.com>
 <20251210-knp-dts-v3-3-8dcd52f055c2@oss.qualcomm.com>
 <drbc2hb5hv36s2bzxaalfnr6lcer7zfyexnya3xpi6ltlhw6et@6gu5s7wfwm26>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <drbc2hb5hv36s2bzxaalfnr6lcer7zfyexnya3xpi6ltlhw6et@6gu5s7wfwm26>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3MyBTYWx0ZWRfX9HlBOODh9znf
 uSzpCVoZcB0Zmp0fPYS5WbaXzCzSJP9X3lvaRy+g1GRNTM5TaJwgM66ffFzM9toz/c9GKr7sL/O
 u59b0UdjitXmAlJCq0as/WppGKTwjuwqIqKa6CjitqvyxpfmadHxiYHO4+dsbBMDXE3B+egq4GN
 2c/LKkE8utOVFsvoN04sS+sTmqG4DFm1nnwxKCc3Zdfwd34WgSNEuEMkTI+e1x+gUs7ycY+Gvqg
 xqpzJ5PQ14FAPWTd6oo4Fg8xHX3qscrrbK+vgMV0kwnTKRB7OUekl7ha3QSiuiukOlVm09xmYZy
 pZCDbKti/+wST9R4pkhw2b94AxfHc+IhZNvct2HvQorFbPOGMingdK4ZPtNfDeFUKwf0APxNX9i
 Th5cx4LOJ2YC7pufcG+6uyXB3KxZTQ==
X-Authority-Analysis: v=2.4 cv=LNFrgZW9 c=1 sm=1 tr=0 ts=693fcaed cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MUZ2Odo8yfMIcZAiS_IA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: K5_5SDQO1ptaXDN-PvsuOTOriqmCxak1
X-Proofpoint-ORIG-GUID: K5_5SDQO1ptaXDN-PvsuOTOriqmCxak1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150073



On 12/11/2025 1:44 PM, Dmitry Baryshkov wrote:
> On Wed, Dec 10, 2025 at 07:05:04PM -0800, Jingyi Wang wrote:
>> Kaanapali is Snapdragon SoC from Qualcomm.
>>
>> Features added in this patch:
>> - CPUs with PSCI idle states and cpufreq
>> - Interrupt-controller with PDC wakeup support
>> - Timers, TCSR Clock Controllers
>> - Reserved Shared memory
>> - GCC and RPMHCC
>> - TLMM
>> - Interconnect with CPU BWMONs
>> - QuP with UART
>> - SMMU
>> - RPMhPD
>> - UFS with Inline Crypto Engine
>> - LLCC
>> - Watchdog
>> - SD Card
>> - PCIe
>>
>> Written with help from Raviteja Laggyshetty (added interconnect nodes),
>> Taniya Das (added Clock Controllers and cpufreq), Jishnu Prakash
>> (added RPMhPD), Nitin Rawat (added UFS), Gaurav Kashyap (added ICE),
>> Manish Pandey (added SD Card) and Qiang Yu (added PCIe).
>>
>> Co-developed-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
>> Signed-off-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 1606 +++++++++++++++++++++++++++++++
>>  1 file changed, 1606 insertions(+)
>>
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		pdp_mem: pdp-region@81300000 {
> 
> please drop -region, please be consistent
> 
>> +			reg = <0x0 0x81300000 0x0 0x100000>;
>> +			no-map;
>> +		};
>> +
>> +		aop_cmd_db_mem: aop-cmd-db@81c60000 {
>> +			compatible = "qcom,cmd-db";
>> +			reg = <0x0 0x81c60000 0x0 0x20000>;
>> +			no-map;
>> +		};
>> +
>> +		smem_mem: smem@81d00000 {
>> +			compatible = "qcom,smem";
>> +			reg = <0x0 0x81d00000 0x0 0x200000>;
>> +			hwlocks = <&tcsr_mutex 3>;
>> +			no-map;
>> +		};
>> +
>> +		pdp_ns_shared_mem: pdp-ns-shared-region@81f00000 {
> 
> please drop -region
> 
>> +			reg = <0x0 0x81f00000 0x0 0x100000>;
>> +			no-map;
>> +		};
>> +
> 
>> +
>> +		pcie0: pcie@1c00000 {
>> +			device_type = "pci";
>> +			compatible = "qcom,kaanapali-pcie", "qcom,pcie-sm8550";
>> +			reg = <0 0x01c00000 0 0x3000>,
> 
> 0x0 instead of 0 (here and in other reg entries).
> 
>> +			      <0 0x40000000 0 0xf1d>,
>> +			      <0 0x40000f20 0 0xa8>,
>> +			      <0 0x40001000 0 0x1000>,
>> +			      <0 0x40100000 0 0x100000>,
>> +			      <0 0x01c03000 0 0x1000>;
>> +			reg-names = "parf",
>> +				    "dbi",
>> +				    "elbi",
>> +				    "atu",
>> +				    "config",
>> +				    "mhi";
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +			ranges = <0x01000000 0 0x00000000 0 0x40200000 0 0x100000>,
> 
> Also 0x0 here
> 

thx, will fix these

Thanks,
Jingyi

>> +				 <0x02000000 0 0x40300000 0 0x40300000 0 0x23d00000>;
>> +
> 


