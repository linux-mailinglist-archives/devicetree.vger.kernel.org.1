Return-Path: <devicetree+bounces-257391-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF97CEaOcWkLJAAAu9opvQ
	(envelope-from <devicetree+bounces-257391-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:41:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 648DB6103A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A326C62649A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48EC42DFEF;
	Tue, 20 Jan 2026 12:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z7D643z6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PwC0WxGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DEA42B757
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913014; cv=none; b=H3Jv7LXMOa8duSZhaHIM5u1fEimSG48m7pbwCzqzn50qEIIG0IARtQG7+sfDIDFl9pp4aDYBAZz93R7zVLZ52Swm/KE7hiXoiBYxkiPrQCbUUSZIeOVheTg4ZcHt7PDCrTisTzsrkBBWbxbEY/CTgzXdxPxwMwEEkHuKkGlOGEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913014; c=relaxed/simple;
	bh=Bqt66FG37gQPzxXo8GEua4Yy1cjRKNOcuhnhCZqtlb8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tWissUPxvgUA8ssRQnieVCAaiRfExnJs2JY5Ko8cicZ39gFr2QVbuqjJ3WQW/Pumc0FBYS+cazKhkmCsJLBDCmlcoBElWRRgl0Wh39jsKrefGXEDZH4E3fYqxDLqCSKLlMIncYqWCjuuPvKJ9nJEAYoMAmBwKlG9StWaTVHOvjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z7D643z6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PwC0WxGl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K9A2LD3257527
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:43:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vaWIDj6o3+/nwUwiV/H8Dqvr4BjKk1GgvJw43iLVUDU=; b=Z7D643z6cqtblgZ/
	xBLNFx79HvoR14QSrGHjemMePUy1Aec7iZJQmsyEjFOxZOtUUrVivAlWr6JpPSlO
	6Tn4jx6VUNR2YDmWMUj5N6K9f8crxqpucoXa5gdzHJPugKJr/PSbslQWP2rfFjbP
	h4MCi/sXv+D4nItzhsR6cYphjcC/ZRhOmC0ZYRcZZW+1Wb0QRQcyIRETdgIzlYqS
	OrtLhfp8E2GQrDv0Jx4jwF6nSgE7oE2ciiCCuItv0BzjhMZFlutp7JRK1JdHnbwF
	AfLUQvRBJhdNevCaw0PDBhhMGojTkEKEKZtDL2W8jRfJ/nNJbp7fhqgY42nYijUf
	hiEmHA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7rk82-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:43:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-501476535f8so18125981cf.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768913010; x=1769517810; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vaWIDj6o3+/nwUwiV/H8Dqvr4BjKk1GgvJw43iLVUDU=;
        b=PwC0WxGlvFqlv+GJYnrxIzUNtuYodDpSmjdcd/E0I0eBn7gdNd7YwXnP3O2zi5i7u2
         cGOLyItoBl9e0qEANkj1xg4EDyYvezzpX0JugMvkxMgoewnq4u333ur2cZqY05Cv0M2A
         9q1KqqXUzi3hpMAPEj0an0sqAT3IrMzGg/ANyGBA/gIZzqlT93Mh5YBmBus2rdLtgaiU
         Hk9+w8OnYRYIEoqMPqVP/zJ4YW5EpVe3mTwbDp/YcjjyWGLBzZj7nN0ejjTbBzujmfP9
         /8sEe24o5ZytYlkqPEME8mZs57F6pk0BsVayGehHisj7bjvWDkGob3gSNq2IBaOyae6D
         IQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913010; x=1769517810;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vaWIDj6o3+/nwUwiV/H8Dqvr4BjKk1GgvJw43iLVUDU=;
        b=J37xO0PVZM/WGvmNOyTi4k8VOPT+pL47QvQNvTqDH2lLVvwO4HcvYvMX7HemJcY9HT
         dFuF/MjCQoCWSa/VxYPavbeEbXMbqhCNjNMKh3tTqe0ZjOJ+Zq0X/F1YELaXWJkwTiSh
         LAsvtJYvwLAiwJIgBfDS+cab7E4XiLRU9x+RvTOgtjxoeUvZPxZkvPstEgV6AEWwhxzN
         bZSR0qb2NO+EI6b0qAxOowNHckopLNTreOj8KZyfKp511mGmu0ouLkGULfF/RUlDJOV8
         w4GQM9AdMISRWSTgmgl5e88WRMQ8uDUGLAaRPi9wYZO5PGnZOJl3GooZktu468tkgSjL
         LKFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBMgvyOqMY1b0CljAccSwnVxfTJkBlZOO77b8Kw3O9D7JcAZk5VHVJ+WQwZam0oE5Gh/ze0OYEdxIL@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ4qC4lo/AMw9zSkTuYEYtmUFv+pXxkijTILtYdBj4Xcb5oBEO
	VT+sPL0zCfoy2xoOZtqEToyPA5sE1RoqPjuXDG0O2xgvFZbNv7ZGzUusuSCFUX2fl85t65oZ6ov
	UBsBXgPaGYDHaIWFQfw1JTR7liDI836Mnc6H9reOvQmgSBkrOIswXksZhludZzbmH
X-Gm-Gg: AY/fxX4yvu/Rj5QCjhdbVCRfGLp4+tS1RgsKLdv9mWV6g8g/UVT0hmcZI9z9wc0CdFv
	FQST4LTVC2LwaycX4loJ01Wk+amVtQEWDomFA2p1VJofOed92uxhz4gQj5GK8aDAFMdXsZGJqGz
	3BuZ6iptGDSX3cgv5zVLVqHz//8OCOB5BOpr0c5gkpozMJYcK+uCjWUFTvgFDEqsJxaBZ2hrBzs
	OPGfDs7R/ZqtnH9+m70FZK4A/JfZAoMxNqg0ndI82TQ2RytKlQjGXWxEqNxo8VLIwt3j+598jJh
	mjmHAzZ6wKbYsFB6cjiGXeZPucuCDfHCwuJ3NrCGRK6tjT735tHpQZNqL4T1aQHfYnoH7dxytfc
	cwcJ1VqibwU3dW2AotHW6rv/mXpDAXyC53Jl+CysEvLzBXUp3BpI8pFV+fNWpdKSdkRU=
X-Received: by 2002:ac8:7f56:0:b0:501:4767:a64 with SMTP id d75a77b69052e-502a16b7389mr165053771cf.5.1768913010478;
        Tue, 20 Jan 2026 04:43:30 -0800 (PST)
X-Received: by 2002:ac8:7f56:0:b0:501:4767:a64 with SMTP id d75a77b69052e-502a16b7389mr165053381cf.5.1768913009853;
        Tue, 20 Jan 2026 04:43:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49dbsm13597080a12.32.2026.01.20.04.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 04:43:29 -0800 (PST)
Message-ID: <d2888a71-2b32-42a8-868b-090f1340740c@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 13:43:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Add
 Focaltech FT3518 touchscreen
To: yedaya.ka@gmail.com,
        =?UTF-8?Q?Kamil_Go=C5=82da?=
 <kamil.golda@protonmail.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260118-touchscreen-patches-v3-0-1c6a729c5eb4@gmail.com>
 <20260118-touchscreen-patches-v3-3-1c6a729c5eb4@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260118-touchscreen-patches-v3-3-1c6a729c5eb4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=696f7873 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Uyhorv2uAAAA:20 a=pGLkceISAAAA:8 a=sfOm8-O8AAAA:8
 a=8Y00a8MOIoAAH37gNwoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TvTJqdcANYtsRzA46cdi:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDEwNSBTYWx0ZWRfXyuk9fJGNUBU/
 UbJPVWmsgsF2UBuFtuQlNu9sAS4rfKBSNIWZGDJmrP/+2sLidRsPQdNNzn8CJ0gvoqFYkDqJfgZ
 jHjhDJnlbQFdd6bdNmQ3wmLdXH8OnZswRL2YfHEGt8RYr51t9xeRWUFpLoFysGHix0tDxqtI3SW
 aUr2CB/EBMyUcphMU7BNgzdO2FSYnLrESTt4cbNplGcup5VyrEgELqmyig4CVT9CmkL9Ug4mvTq
 MCRJOa+8j/LG+GpuRl+Sd01DAehBJVQqwaCd4jFmtI8vcr+sMILUnapwV/Hq6z3qPQtKa228s1h
 CkrxmIe/cizHAW18mFnZemzsr1qEm/2Apjn9E96GXUftdjm+k5rcMUeT+G79/ZU4damWQ1UllA+
 TfA5T2BJmzHQD9xNG56MG2uHT0Jb/AKemmwkBpZ+ldU5AIDWma6B3eKM/rRpxvrkNHz94mJV94d
 KnU5q5dvEj+X1ucLfbw==
X-Proofpoint-ORIG-GUID: jH4FKCUna6ceyCA9-HsmcIWzNPMo_8SV
X-Proofpoint-GUID: jH4FKCUna6ceyCA9-HsmcIWzNPMo_8SV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[37];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257391-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,protonmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 648DB6103A
X-Rspamd-Action: no action

On 1/18/26 9:29 PM, Yedaya Katsman via B4 Relay wrote:
> From: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> Add device tree node for the Focaltech FT3518 touchscreen on
> Xiaomi Mi A3 (laurel-sprout).
> 
> Add pmx_ts_* gpio configurations and reference them in the touchscreen
> node.
> Note that gpio pin 83 for the regulator isn't documented downstream
> except in the touchscreen node so it's not defined in the tlmm.
> 
> Enable qupv3_id_0 and i2c2 bus that the touchscreen is on.
> 
> Downstream references:
> Link: https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/laurel-r-oss/arch/arm64/boot/dts/qcom/trinket-pinctrl.dtsi
> Link: https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/laurel-r-oss/arch/arm64/boot/dts/qcom/laurel_sprout-qrd.dtsi
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---

[...]

>  &tlmm {
>  	gpio-reserved-ranges = <22 2>, <28 6>;
> +
> +	pmx_ts_reset_active {

Node names must end in -state and you should use dashes instead of
underscores in node names ('make dtbs_check' would tell you at least
one of these things)

> +		ts_reset_active: ts_reset_active {
> +			mux {

Please drop the intermediate nodes and put the properties directly
under the foo-state {} node. The indirection is useful when we're
defining multiple pins with the exact same settings (e.g. 4 lanes
of SDIO)

Konrad

