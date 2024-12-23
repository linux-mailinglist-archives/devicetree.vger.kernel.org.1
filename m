Return-Path: <devicetree+bounces-133542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E529FADFC
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9132B18845B9
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053661A7060;
	Mon, 23 Dec 2024 11:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aLqEEFAo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4231A3A95
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734954995; cv=none; b=iFGA0WdLMPTrQffAlFpuAczQlKmwer9cr24PbIUPtgEuYksoocmoJ0YLC2GzK1l0mat80LPi1/gvsn3ukKdvD1XS10PIMhA3z7DLErwgDgLJk0Cexyf939fqWKaYkfeqBanmwj7M8r4j9qfSvBKzmVndGkKli7XgntnmFzdm1oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734954995; c=relaxed/simple;
	bh=wF8rse61nN9uN/NmLu+QDRnXYImO3Eca1xE0p1QANuA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=smVb8lnQdqFyis1t1G0n7wzPxlOnKFFO0Phrrqis6P3EN/QK6bh58XfFwF2bEN+eiRdDQyCFEkEVsorDpeeeZPMP0IaoclTwx5SbHa2Lrkq8YzNje19IAhjuKWYRa2KO5bICBzgutAXQL1kZAfI4l8rc8Zmn0ea4GgNV5R/5WJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aLqEEFAo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN5rhSQ018516
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:56:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6dFOqreasfzXFaBopq9XoJ4t26Q8dQ3/HjPasthVKKs=; b=aLqEEFAoL9lg9Z5S
	12pFLFR4yf2Y3nz0hWccZMjFVN2bPMNRYoQjQ1m2ibHGu9etKy8jsP+Eg6y/kKhR
	Izhe8tTBOUcEgDBCKI84MFsYL6Rz/WsV3sSvD6pGW/jtsBpMCMB7kyctegWtcnk9
	Pc2MwpdMo8tBnKL3gzlzhVFerYGHrQvIn5hzdFL38A4gvz6k/yjM38ZOdqB+ICzJ
	baK8Z4uRPpymCFj0x9xwJQVJGaLhtmWSOtvMd8PTzhLughroS4FTjvFKcwGUcyJk
	ILgkRs2UTluUeTchPbUROVDsfHC9/aqb7mAbMz7lBzshTI2OnMQI3cKQ9WFTJ+GY
	TU1u0g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q24595bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:56:33 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8824c96cdso15158336d6.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:56:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734954992; x=1735559792;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6dFOqreasfzXFaBopq9XoJ4t26Q8dQ3/HjPasthVKKs=;
        b=toufMKxUobr79NqWw2kVf18/jLymfErgtjYafWmf6HW8dP0aDEiMJZjezPueAZuE5E
         XWbtZfMlIMjBoHph4h3veV54uJ+W0Vf2jzSqZzVjZig8xThGESPRiaLaFFR4AdDk9G1x
         t/ZCwHcdTPx2XLPkzXInnK7vR1wk/jlX5BNxqla24jKRfCUp8fus0rjMhgAis8gXWJHf
         8+HfDxIvV+XJzLsy9KXryHGNMG43oFFsX7anH9E4POqNuE+RC+yJdub/f6UDBb+fydE2
         8QPE3uXtIl8FdOl3RbZjnBogARvtsWBxn4GdrlHbFrHB/BVWk709Rv/juS2/d1BpGGGX
         2YfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrHpl07X7OnFdpTwNjHCobpsGQ6jjvZMgHH2xMw56VSvWsMsZLzs01ZadGnuU55ZFQBP4oq/qQOgWP@vger.kernel.org
X-Gm-Message-State: AOJu0YzkLRMz81bHTXRqOy32YumNXvsrMUkR/OiJQC3kmpSh5f2umU86
	d6GbKRfC7R8J4DBeKFn9OAwU0D7SeWEHj3dQiImuaAZdm2tFK1iAnhYHtATAJrr5ksZRL3ncbRS
	OZaUIzeYebVD2BC1ZXKaKA5RdktId3iFOPYb8uME8ld9e0+v3oKXOedu00Pz2
X-Gm-Gg: ASbGnctPEUw7MVZOfQ2qntFNOiOhLuB5ogzsVFJa22v8YI5QwPIkHC9CjkOG4siMF/P
	8PaOsPhzWL2T8riZmW9x8KFto5v7dQhQDmXrkb1Qw4837DUv3dN4l1Ei2z8LvqKtDewYLrgMj1+
	9Mbzov+St7DWCN8nRY2Zf6ERAQ+ivLY/dGUb6088ghEAoGS7X6Bh9F1x0O2oeX8ev48490veAC6
	eOVZGC/BvV7EkftksdmKNmVDcSHznZXpnQB7844BPH4xkDnFJwwTKbpEApUGOACIbz1Ca0OCp1w
	ZxPauwukJkLaIrSnLWvBofQ3ZyuINgFvdlc=
X-Received: by 2002:a05:622a:7:b0:467:4f9a:6514 with SMTP id d75a77b69052e-46a4a976ee8mr68404181cf.10.1734954992253;
        Mon, 23 Dec 2024 03:56:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTDyvDkCvC+wsD3AJQE94BNax7lYSHi6zG3Sda3qZhATwX1InOeemtZgBO+Y7Z1hSOPa8MAA==
X-Received: by 2002:a05:622a:7:b0:467:4f9a:6514 with SMTP id d75a77b69052e-46a4a976ee8mr68404001cf.10.1734954991828;
        Mon, 23 Dec 2024 03:56:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f01608fsm507581466b.150.2024.12.23.03.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 03:56:31 -0800 (PST)
Message-ID: <7b33235f-dbf7-45f9-9e8a-5d69ec8ca863@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 12:56:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: fix the secure device bootup
 issue
To: Jie Gan <quic_jiegan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>
References: <20241219025216.3463527-1-quic_jiegan@quicinc.com>
 <2b4adb2d-29f5-459b-bd85-d5d12876f7eb@oss.qualcomm.com>
 <6d91567b-0cbc-4d85-be38-2467e873e91c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6d91567b-0cbc-4d85-be38-2467e873e91c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: XGDpcV8ftJ3tZcd9f9mHYdZVV0eE51Su
X-Proofpoint-GUID: XGDpcV8ftJ3tZcd9f9mHYdZVV0eE51Su
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 mlxscore=0 spamscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230107

On 20.12.2024 6:51 AM, Jie Gan wrote:
> 
> 
> On 12/20/2024 5:25 AM, Konrad Dybcio wrote:
>> On 19.12.2024 3:52 AM, Jie Gan wrote:
>>> The secure device(fused) cannot bootup with TPDM_DCC device. So
>>> disable it in DT.
>>>
>>> Fixes: 6596118ccdcd ("arm64: dts: qcom: Add coresight nodes for SA8775p")
>>> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
>>> ---
>>
>> I was thinking, is there a QFPROM fuse we could read on both
>> secure and non-secure devices to determine whether all coresight
>> components will be accessible, and enable them based on that
>> information?
>>
> There are two known TPDM devices had been disabled on secure device. One of these devices is TPDM_DCC. In downstream code, we have an API to check the secure status of the device in TPDM's probe function, to avoid unintentional enable. The downstream API will check the register that controls crash dump functionality in TZ and the crash dump functionality is disabled by default on secure devices.

That's an "eeeh" type solution, crashdump is a separate thing that may be
enabled independently, and some prod devices from certain vendors actually
do that

> We need to verify if the downstream API is supported by the upstream kernel. We plan to upstream a patch to implement this functionality in the TPDM driver or any other device's driver that needed the functionality.

Please check if there's a coresight-specific fuse instead


> For the time being, we need to disable this TPDM device in DT because the TPDM_DCC will break the bootup process on secure devices.

Yeah, right

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

