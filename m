Return-Path: <devicetree+bounces-252705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FBBD021A6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A186030C6123
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5657341E5F0;
	Thu,  8 Jan 2026 09:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X0x1Vk5I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b4akn6RH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5EA143FD12
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864607; cv=none; b=uinISWY1sBkZXopwCxRq+WwRL1n1cWn8YTNQomIJX2k1t41HQiFLooaFv/PykYg+AZsb+6+jBMG6IIWrw/UwQs6uNXJDr1d6yVQf35S+vjB3CIT/YGDKStkdqSejgfFdkrOzruRUZQq64gdvXllj2a6B1ysbWxGt3bgdGMWt91U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864607; c=relaxed/simple;
	bh=Q3UjGBJ+gd1W+HYENu/Pc2Sn5F+OBztRRngBuogIDhw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IW0QRensyV8wYRseevn6k0/1vEUN39qQPlSwJoe5Uos9aYRELX3T2Oq/rdzCln6DE6z7r6RDLxJ6UmEvLbc6Sg6Mcu1cHpt5uTpE0nnlZP5rMX5RY1oRdmGjhJJEmqQX/WxG7Sx8L836IzjHwEdQLQgVflRjJ/P/sUn26jnpiwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X0x1Vk5I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b4akn6RH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6088wAEk1570684
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 09:29:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MBX2Rlp0vP8KamvbjCr9HnnvFpdO76mb8cSGwyGZKNA=; b=X0x1Vk5IQqaaeDc+
	jIl2KMfUtGNadKfoBTyW9LocfiJMIc0axq3GebkB6Rt0c80ugoKF7shywl48/3kM
	iKjJMzNNq86brLcak0QwGW5TyjgRsRUQQRljkb2dhFtu1uwgY6/8mn8jRPYkZ1g5
	FtZfvEIdOPT1cOC3fj61XEU9d5m2XacXBamyxsAFDHxP7kWD55ht7FQTw1bCwZ1M
	1CYHkl0MY8qq2vYS63RN9Ykg0L1lrxhQJG9QrB5Sv9RpzWKcPVQSHpUvX8TZhGZ8
	54bKwHcMdOJlJJLIvInzlXBZJ4zxu6z0soxgDfFaqRZBQtgvHTbY5sxus4sEGeXM
	JmHrJQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj9hqr42w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:29:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ffc6560f05so323101cf.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767864596; x=1768469396; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MBX2Rlp0vP8KamvbjCr9HnnvFpdO76mb8cSGwyGZKNA=;
        b=b4akn6RHh4w4v+TIG0pdkfT3mMmG4gM5ApxfWEUKoUsvETLr9Ca7yZlxrv6rWOVUr3
         aV3VYjBFoUaKlQFn+lp6rHGeXKZF9fH4qfqc4hPUVfh126ma/wycI7Iyn++WNCl7g6MP
         avSHuxT3HUwQdwJcBBEg0ZuNOGEJjuTzbwaS11Geah1q3+8bSCOz65M33CPCT6QAUD4c
         +8q9ojbjJDg4+p3g9aWwK2tnTq7MO+Qz1+rDbmaCVVeEGKzMC7GcmbxGhzYYhmlAZ1Yo
         ozSgWAQHE+O1GiEGvqJ8uIFzAndcOfytCNapn0ec0UC6r/83AjeByruN8GV8ExYcc8D2
         9jYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767864596; x=1768469396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MBX2Rlp0vP8KamvbjCr9HnnvFpdO76mb8cSGwyGZKNA=;
        b=fGhxmd5jbQwJefs4FMNcIZSzkaG+oYYBBpS7xYVJMyLkTKMON/ofxE42E53o/CeOfq
         AYBEZCUdfGzXZ1kxZSFYheCxtU1mUfeEzjZmBy6uipMl7y61PmwTjYBzpCTT5KwKEZxu
         KlKvWFnz/jIjNb7tsTImbi68vq+kkBKBK69cZukeY8kun1mll1ibH2e2R97nHb5XfFfh
         nsHDnALFNxzJ3+Rg/UPjEBSMERohxaMiBHzWTVgM3+Jj5CEVAAL1BRTOgvrjtemSpPM7
         XoVd557PCxIehqsqDSlM545mlqR0o2FvoME5b0PAdbKl+ECvzVEStsom9h1RQZWCXV/i
         lDAw==
X-Forwarded-Encrypted: i=1; AJvYcCW2UCEwAUgFIifguCDYOTFglYKm+KDE+QeaMbEUVFbDh3ioeK1mV04T818ewqLk0vMZwj1oZn8JDbo5@vger.kernel.org
X-Gm-Message-State: AOJu0YxVH3dN+PfZBByxxH9aI0apxkqunPHdfMtxoySxmw58t8H/ygvg
	svsm+qHaT7fb7eK4cwn0XxoZTR2ugzhk3TT00fFMZCwUQG1vnfv+13h6pfzPSOXk8IX75KEmTak
	LvBoupp8MrYPJjgvYSJCmaiUfjsuRozHAhjztA9uO94qebVHcprEuBnuRrXW44e+r
X-Gm-Gg: AY/fxX4TTzU+7n1KG/dATJzlovUz4raGOfWe5mhBeaNu7lTGAFNXM3SUts+hFAPYvFf
	QQpCyet23R+lWZ7Q/G2+XjwlIoKeTkaaAERYj6hSLQRLY9qv3Zro6tjvfvAZRwxJL8fr1o099gt
	odQq0/LUxJ4sDit2aOMzkI4YC4B5m8KeVn+yskPLaxIW5qOS6RjD0COmDxWrvxiCa+SIy5k+M1c
	tTYn7PRHyZharr/D0ZCR3C0a8RSCwNGm5ce6YpgBs8lmOWj8jNRD29aqCA1uPl+qUG5AhvZt3qD
	VNhdFvFhQiuaq3UW4yzcQSWKyKJnnIRx6Llf2UVAIUushh68DFyMxIV1KfCbweRiWUofItGP4YJ
	7WaXYGd9SA/GDYs0/QPE8yktAxLUTiJZGtN8i7bFxno+g6kA2R+HSWnOiwjG/2Zg6qCs=
X-Received: by 2002:a05:622a:143:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4ffb4a9a78bmr55886491cf.10.1767864596122;
        Thu, 08 Jan 2026 01:29:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCxFAviDmUzwHekCFADRtQYZCQJZlxVO/OkZM//n7Kd1TZaAtX2ZL+zp1lC9CgvTfiUiqZIA==
X-Received: by 2002:a05:622a:143:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4ffb4a9a78bmr55886371cf.10.1767864595668;
        Thu, 08 Jan 2026 01:29:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b8c4484sm7141571a12.7.2026.01.08.01.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 01:29:54 -0800 (PST)
Message-ID: <a1905df6-5054-4ee2-a8fb-d130f42faa4a@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 10:29:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: sa8775p-lpass-lpi: Add SA8775P
 LPASS pinctrl
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260107192007.500995-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107192007.500995-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GN8F0+NK c=1 sm=1 tr=0 ts=695f7915 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=h_bAiBQL0yDKBMXIJFEA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: uCo3ko2NynNGwe2APLtod6f9ERBoVSV5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA2MiBTYWx0ZWRfX2PiI3FIc/txG
 OGrKQAfNEBFHUJuTiVzJz7ao+6YEBKCPz2ZxXDQQsvkSVNjOsjemntEP/J/WaLSMMAkr0Q5ZMnI
 ecFS/Nr9HO1OsRRhegTJ71QPPeQWQKt4u05r8Pg9Nqrg0i7Sa2GEH8OlSqEql1jlLElZhwqTz/B
 h/AcQgFDu/bQ1RJIfktdgBAPaDbDpSxVsSSfnG4hza8FovFx2d1w6B1CbchZVmAVtr3KREDXfzr
 ynQH/aM6Ed4vHqgLCms602zSGwL8pwXrVUk3Cr65Fbo7ONoVnnYj+hQ2qkFvOlVcKgBvt4Az27l
 xPvowQ+PyEnJXIr5vQAES8MmJs5XKO9GQzqet0aqQJXxLg0szVkfr9Dp+vZ6+HxGkGM7ZA41MdH
 l4mdsx5NB/nbUYOlprV9Gv64MG3d7F5UH/bh8SFI8J19FYTvNHMRKUl8FvBwGJhQY3civl7Kmd0
 fC+5kb6djcinwy8yLTw==
X-Proofpoint-ORIG-GUID: uCo3ko2NynNGwe2APLtod6f9ERBoVSV5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080062

On 1/7/26 8:20 PM, Mohammad Rafi Shaik wrote:
> Add pin control support for Low Power Audio SubSystem (LPASS)
> of Qualcomm SA8775P SoC.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


