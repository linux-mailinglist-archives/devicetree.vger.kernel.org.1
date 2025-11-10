Return-Path: <devicetree+bounces-236528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A70BAC452AD
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 79EB24E61D3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 07:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707362EA468;
	Mon, 10 Nov 2025 07:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m2Gsn99O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FkT8TYAu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5212E92DA
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762758403; cv=none; b=VrAYKtCTZwAlAs7TvxmQFoRcJgsUB75aYGruZZzR4h/XO3VSZXdoZH/KzYBBZn4Lf3zFntzZzTLVqUu3pOvFa05b+uzdeyrvOUPTsEzp4VjAyTNTWj0LaoT+7Vwql9S/ruWMaC9sAVbpcVIrsYPdLn0FR/zI6QQkk98yzQUf1bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762758403; c=relaxed/simple;
	bh=6y34u6RaT+nzg4b3hpOMmZhuhiFWojZouwS1Ayd8lEI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s8Lwro+TbJJqH97t4gRmWpFdYoDhzF1vHn43RLiPBqLU6vy/s30Vz9cfA2q7LKOuFnC+RaXp7fkjUniD3ei0GkepZsmIAtfjrtnwn8+5aP1HF8r519Uo43M3d7gCNVp6dC94YmuSHO3suQ7GHFYkkMoMPEDVJCD9MiFC924WqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m2Gsn99O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FkT8TYAu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA6Sdmh2408341
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:06:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gf7NF+ZMZboshilYBiH2BDV5pYgK67DxhrLWqZ1GGh0=; b=m2Gsn99Oi5j2J1qZ
	j+4VeApgEfMTPwjRWrWNxg5OlsDtpbbAItb1F10p6YAV+gcUUR1iqOg+n3zZHx4/
	3UEiSmoJOnm561wd5Kbd05175Sg5e+F8mcXOCLllbqc4CP1kWi3hBk0TDkFfsn/O
	EHvWibt2T+kxibcfAEzGycKiYT/7cmvqEVRkRFuuxRwzqbvZag2xrwovE82u3UMh
	FXAZmlFH7ERpyIjs7Gd+zIKK3+SiO94cFO5IsToB3rhoPVsVouq1y8wGuyWUAid1
	+1/4ejoDHj7toQ+z3iHgZdywJWbNxwFCg9OpbSpbdQ0thz1JVapwOOaOPqkWKCK6
	QatxWA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abatd833y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:06:40 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a97f36d280so400047b3a.2
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 23:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762758400; x=1763363200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gf7NF+ZMZboshilYBiH2BDV5pYgK67DxhrLWqZ1GGh0=;
        b=FkT8TYAuml3KdRFkxvEyhCC+BEVBfVVQYCe9hLarR/bJqMjIjjB75MFRAqmldy4Q5/
         yvYPYUAuqeKiMNJgaRDlv4OWDoh9FS76VAZa3uQC12J7Lgw7HUy0jAwW0VCxvtXpBLVX
         Qw/WcTL3wMrDqTULH4DSFqTcls/rQNsZBNHQi9T9ATdUJ8kbY3G6CAHUXxf3x0yLQBxY
         pJnGZbj2m2ntTjKlTGK4mLlRTQsM4i/p4YxLWepgfY3kd+KPXhonZCrDVj9y/rGuciRk
         rWw+NSk5N19TTnH7p9sRj8ci5NrtSVCq3Nq2ibFgebR3G5sQ8LWIwm7y/p/0pRo+0OAH
         xYPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762758400; x=1763363200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gf7NF+ZMZboshilYBiH2BDV5pYgK67DxhrLWqZ1GGh0=;
        b=a95v5PaxfyPaQCeXzs9ivSUtLOYzFjnvkSqQzFxKm0RDUfTiPe1NWK8Te0QRHpKBKP
         ADneqoB/zhw5nP6hQnMSIlN6IHZTJ38a8rRxLZCLh8e6pjQ12UsmAnIOA6ySZmgSdr1A
         Oftl93QeOHHLEvBDJvEV5spnd6L3MFHjklqtUfSEhCRtVwIL1kfSxjzUrMgan4JxceFp
         MG53TLZAx1EAX5WIwxFU2KcUraVXOrqtDFeSZbNYMx5oaimtQyM7xXmsfTVlKsD7VB56
         RyZMLOUPOhN87WUQjh7TFR2PYpqK8QKoHgy0+rm4pVsk93+74FXMiVDeM47nZvmSxrQM
         Y0NA==
X-Forwarded-Encrypted: i=1; AJvYcCWqrSb6G9S2bmkDYyFZDBboVaeDFaDiLi+IohW9W1HzTRLiUe/Qy7f10hDX0IlkD0lio1VXu2ceE1Pk@vger.kernel.org
X-Gm-Message-State: AOJu0YxE/6sQR0GbRm6eIxSjYmNlmldxtB/9fWb/GEDBNwoIZ3juV+Ym
	hDWhw6TNF9Z5PpGc9ejXMxxQkWOlNf1rcAUjTg2r2vtcDIob8M121ZA8F8Yq7HdQk9WfW1++1w2
	gr/nuvQhvcy6aub8sJBVtFKeTrzi8Fm/uQpIpepyNVj3evzlVqARSIu+PJi3sjqw=
X-Gm-Gg: ASbGncsc8ISxySSmrDkaBV1VS3S/WuRgv7Q7hWzV1LZXMh9aEBvtinj2BWC9uX2xNQU
	eCogMR4sHA0/EA6UI4dUfukeYKVfliAtJVx3ESDOYG/raugvtKMmx9S+Yn1MN8tWlLa7u32Ux7V
	vPHQCPvVgVYY7CZ104yiBt+KCEkFcTBdJBSdzkUkWZIxk6maLETE5vAomwKV3ZuefxwdXaj5WVw
	VQ9w0SU+bepmwsZnU5mKjmfkwyYTX5FmupbmZZiL8dExO4pPS2FctP5zITxcOGPUe/EJ5VvqLjV
	Od6+wlCGnfLTpIOJkL9Gibh5FLzz117CtvcK9afD9nXG39HmDtSmGqhR11Bc4d/YXxm0qpERW7l
	Qb8YS+meOLKgJ9zAQ4pOIThYZ+7xv
X-Received: by 2002:a05:6a00:805:b0:781:aad7:214b with SMTP id d2e1a72fcca58-7b225ae0732mr5584901b3a.2.1762758399950;
        Sun, 09 Nov 2025 23:06:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRFSS6GkwLPQNVWNZHwu5xq0XbLuutQ4cYKERNy84I+GMieGr3c1RjoF8alYPGi+2b9pwv8Q==
X-Received: by 2002:a05:6a00:805:b0:781:aad7:214b with SMTP id d2e1a72fcca58-7b225ae0732mr5584875b3a.2.1762758399408;
        Sun, 09 Nov 2025 23:06:39 -0800 (PST)
Received: from [10.217.216.168] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0cc175d61sm10420472b3a.39.2025.11.09.23.06.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 23:06:38 -0800 (PST)
Message-ID: <0fccd9f6-f833-4192-b7ac-cadc4a048cad@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 12:36:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/4] arm64: dts: qcom: sm8750: Add SDC2 nodes for
 sm8750 soc
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
References: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
 <20251026111746.3195861-3-sarthak.garg@oss.qualcomm.com>
 <3170ad12-0d79-4cb1-aedc-d2c9f1da366f@kernel.org>
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
In-Reply-To: <3170ad12-0d79-4cb1-aedc-d2c9f1da366f@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: g4DcIt8tnx_K0FWJ37PQsTTJfWdYFAps
X-Authority-Analysis: v=2.4 cv=eZowvrEH c=1 sm=1 tr=0 ts=69118f00 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JSWoISg-RgQ6qR-L2EQA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: g4DcIt8tnx_K0FWJ37PQsTTJfWdYFAps
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA2MCBTYWx0ZWRfXwW3NmVkfgmn7
 gwdBozjNbxoaW778cVumD43ZPu2gsv20H+2JtT46jUVi2KCuk5/N2S8vT1YY3t9WiVphbZK9hl3
 dXaJWC67DJ4s4A95ki+RkJGReSeSIGSTYUQGXYLfncDHBEeIQOAJl3aUxmnNBt7yr2GEM10p2Bb
 51EPkdieZbQdHbCn6/Eb39HOhzTOH6vjMlKIQl3rR/o5hh1uZH3NaIqY/TpmoOA9ns3YAvLUNyG
 NxaDD6EZtAbSyJkSri3qhoyQ5WJ5RoOtu9Wr3tMT0sLAoPUQy1demQBsjwfP/1OPe1g5xHqI3BN
 lzgDENC08ZaJmO27Z9tqZH+ccOnc7S+FamBZ9jEO2oEzjoj+iQLXJ4ftz2ToPI92Yz8+6bYsD6E
 HjPZ0IQ4/rbI+NES/VJJJ4yUbV4KsA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100060


On 10/27/2025 8:02 PM, Krzysztof Kozlowski wrote:
> On 26/10/2025 12:17, Sarthak Garg wrote:
>> Add SD Card host controller for sm8750 soc.
>>
>> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 54 ++++++++++++++++++++++++++++
>>   1 file changed, 54 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index a82d9867c7cb..50e1fa67c093 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -2060,6 +2060,60 @@ ice: crypto@1d88000 {
>>   			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
>>   		};
>>   
>> +		sdhc_2: mmc@8804000 {
> Completely messed ordering.


Do you mean the property order within the sdhc_2 device tree node ?

What ordering do we need to follow here ?


>
>> +			compatible = "qcom,sm8750-sdhci", "qcom,sdhci-msm-v5";
>> +			reg = <0 0x08804000 0 0x1000>;
> Use hex everywhere in reg.
>
> Best regards,
> Krzysztof


Sure will update in V2.



