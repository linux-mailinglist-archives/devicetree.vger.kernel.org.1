Return-Path: <devicetree+bounces-141452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3A5A20BB0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 15:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87F7D1885EA6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6541A1ABEC5;
	Tue, 28 Jan 2025 14:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="peKzCQpr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D469D1AB6DE
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738073083; cv=none; b=bDP89aNjaQ/uJ5hiSA3A9nPVV1jvSDwRRO41lY0qz/L6pRi8CWwu87P6OvtQBXW/BV4m9EGxL19jjr5hx7xPu4KsubXOYKvHOMZ1hh77DATOLkFahfLQntvb/URw4GIkq20uqKf/VNKlmhkfiahDU61KS6ER2+TJB4VJ+UvsF7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738073083; c=relaxed/simple;
	bh=B+hb8jpP1mvGT3LDCXg3sZOTn7fzxlKCUfEVMc3Y/B0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jo5i9JQYX0jJhYIpq8Vt5rnpBP78lS5coXbO2s5sAJCiVPRTPJds+4EscelN0MbRunfBWb7fth0J0Dxxe4AWb1plxGkYgi6jjLD1hvVOu7q2MBNLh2CFKoCQIGvA8L7ChAJn/4BNGVrqF5m5UG1gzvFn4RakW2qtT2IXMGT+ggk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=peKzCQpr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S8hGiQ014853
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:04:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1UMR43c/jZwfvNr9s8zZtBja934y3YR1OZKo429o/44=; b=peKzCQprejoLto9Q
	5ypoo4ujshVabraqfZiZo+yP20Unyw8rvv9JCAIHm7UrHk7G0yUpnNoBBoAgutWz
	Lo4Tu7HqHysO/jFrye5amTwQ5guc546NQPVhHR9pRqsJfKqshgDB8E5l0ZOdXWj3
	vFTFvRW9q34lyMCtPGfDIiEjKTvwj83peSLdKln0qqVRr9cSINL14ExcWi4bXghz
	kUNz6KVewHeF7oZTYa4ZS15J7VCw4UexPEQmoeQOoq99n4Uox/Uhu+PVi7qVsg68
	8FAM4159O7Ppn86IW/jgi0D78O6f3FRYxLG9UvBDKaCriQ56rsYmk9S10UK3t8sn
	XRSQFA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44euyq8pwd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:04:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e1a2a15514so10455986d6.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 06:04:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738073080; x=1738677880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1UMR43c/jZwfvNr9s8zZtBja934y3YR1OZKo429o/44=;
        b=B5nH3oIgNWABsNd2PoLuwMx+YL4QmzPFJxl9g7ZniU/0a4swvlI2JCTMYBO3oX0u1H
         0rZBP+Zi1g09IScQGVufSrYzZoNqtjKZqZm3Xib1rOkTFTs6fVjqiZxPZPj/thv1w6V6
         TN1RKRyVFGjf6p38QkrtBBu64a9RZ4hpWG2Z2SoJSXeJltgDHANbHEKaAQXQS74afRL7
         RnhoeeamTO4WoGqPkvD52eIJPlF1rBJ2h+OshRasfpLMwlbHzHarPiI9VLlTeRkVBMdU
         0TX2Mt4Hs01M+hBumliP2U1FsDIgG3wTwweuVioqOw7ZxnpkwUCvjxKfPY0MiEgVMfAY
         305g==
X-Forwarded-Encrypted: i=1; AJvYcCWpqtLPDckItGifPjTF1V7tJbeiK6P3e8ZbrhZudA9zbzOMo+qrs443n7i+pg5BGlNTB88Ho6CcsN+U@vger.kernel.org
X-Gm-Message-State: AOJu0YyK2ja23IWFhPhQ63emBpfOmYeR3dBbLH5FXEzhaLRQdSFT4wq5
	oz09xndDOou1tGDTSLWIUBHaOqNrz89MAwKgZaxvc8rqkFvdXrew52dcFcdwrHkvhI8isSTuUx0
	yUdTX/BlIGfpnWuwXzkGHZZaTNdYSkCGnYa9lOyr+D/4Ni2tdD6L+PD/JsvT7
X-Gm-Gg: ASbGncvOl4JusXU2npT990WVY8CIFErqBIr2KSb24Qw5hLeyz/6oO/KKg/KknsniQep
	4LahvC6zSu8XbrPn6cahdoB2mif0OKKDjLSRnC7/sp9gEXewNUq0mtQ061WXqen46V5KG1Inq+k
	rS0qQHFk5TIpnxkPTckGqBVEYByN0pQRZ958lkcg8uRRZqMsjYT3v8PAggtggncYHdPczuVhhiK
	oNpyLRlXCqA1Q/wY64vXyG0ZTJfxetEY+ILdZ5xig2SGXJyexVfIYITeDFDYWjY5N8e0rhRxSev
	HnRiZLwt9JxBI3kcXYUkDaAY9WAAU56Q4JE406LoLlX7K1YxVjPOjMachrQ=
X-Received: by 2002:a05:620a:4252:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7be6320aecbmr2269417585a.7.1738073079625;
        Tue, 28 Jan 2025 06:04:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRkcpX5xs9PHq3RPFhqCJ3Pf9W/GSsZThk01xcsePhHgLCGY21EHepC6qewYKtRhfVK86+NQ==
X-Received: by 2002:a05:620a:4252:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7be6320aecbmr2269415185a.7.1738073079057;
        Tue, 28 Jan 2025 06:04:39 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6a24d88f2sm422987166b.15.2025.01.28.06.04.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 06:04:38 -0800 (PST)
Message-ID: <2976deda-4356-4a39-ab80-417a15dabc9d@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 15:04:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add LMH interrupts for
 cpufreq_hw node
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250117-sa8775p-lmh-interrupts-v1-1-bae549f0bfe8@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250117-sa8775p-lmh-interrupts-v1-1-bae549f0bfe8@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iO4ma1cenV4azYsa4ce60_yK0v_LEvc7
X-Proofpoint-GUID: iO4ma1cenV4azYsa4ce60_yK0v_LEvc7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 suspectscore=0 bulkscore=0 mlxlogscore=728
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280104

On 17.01.2025 12:05 PM, Jagadeesh Kona wrote:
> Add LMH interrupts for cpufreq_hw node to indicate if there is any
> thermal throttle.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

