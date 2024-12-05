Return-Path: <devicetree+bounces-127535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BD19E5AB5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:06:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB9E6282D36
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73E6221C180;
	Thu,  5 Dec 2024 16:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hwivEnYF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0852F1B59A
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733414782; cv=none; b=XK76YfOEJvZm3/Z4qBAd9Lk9cBzNttt0MCR1vObppLQPgENPYTDqVqpsLypK/+VAGnRpF6MI24tzc4n0YwxE7ctShMn0Q44xtBg038lQmEghaTVIVeMBanZVGwLybjPkUJMud7oBKwJH5k5S7ArVQssTtKpr1Q6l0BBle4AqOFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733414782; c=relaxed/simple;
	bh=dTGTozDvl5r2bsdVhzhgEBTX3U3UFXR9QdyYJI+jplc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bCHqtJfkZTg75BdzP34S5YCaRtX8WnnUum1bcUEEsb7kpILWdfNLk9idEuTDAOscijf0G82+HYKDvubFKDaf+9tXeWWrraRPtC//7tFOICic0xZPCL2iaXKkSyOBBewb5XhiwyP2dPJGhj5jgQzgLNaY2NIChvjh51iTqx0Cmi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hwivEnYF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5Bt9ad026795
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:06:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xBfiocvIunnaNdZDDLqDWW4sOXy+djzBwH8MF4PUINQ=; b=hwivEnYFXmdrGs4v
	MBK7TzXbl65XrV89nzqUUFt+MgNVfhrv8mMWc/ZmftpyxLdS3BYx1jPgMPBNKcOF
	XRYyDZZPm06o61Dzxwi+mWNkI79vbZxW/PXjTgzYV4CS17czWFiXDd0fZBGPDm0L
	HMUdl72fFjGuNbxPgXN33ws+K7zYKKPBJnYBDNmFAvIIa6sYbE2HmpngUy/Gn6XK
	dKAMIhfMy4NeCsVbkcJOvVfp1p3TSPdO4kdHaB14mkT4tNn3a16yVxjg+4BxP/A8
	qprbVThfdQfsfcc1GCLQ59q+COiu12VhipMuMULbtLBTHQI5UXHIZ28vU9lyBqjs
	iOHzyA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbqm0p24-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:06:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-466c5605601so2466401cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:06:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733414763; x=1734019563;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xBfiocvIunnaNdZDDLqDWW4sOXy+djzBwH8MF4PUINQ=;
        b=nhivCgEc9AGcVza1FHeLkqMaJS43NfiSKDPtSdBqCG8qQ//4xfAMYA40zmJCjx4HMb
         xrsvn7GHI+oKVRFEQKKedz/NRQdZYZHFwqOYs4xr+sSYOwqr2cyTrOlxk6veCNow60ab
         n/o2so47TjGuBsf49PDJUKeSDTbbBp+fz9DpeTMZZYLNUIvsicIrY1wyCMEWlv+i6Jju
         WuXtmBBr+ea31RCTRLujHVFF2H9SV7nxAywmZuK9wOmiAFfwvOTfmPZfqHC7AUA435F7
         H8+tHPFhqCzsXfKPdwDZMCpwqIT1qbMp8LUpp8IqkwWDEZLfYd2VCjBfVNCtQa85bB88
         2Fyg==
X-Forwarded-Encrypted: i=1; AJvYcCVFgT5s267w4o93NecG7gvKUWbcAaO1ydEfHbYJhG4im+wwXDGJIWRAbjDwD3AFVgtAAIQhEqkeZOy6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+EPmoQHtnqMTZx60UdWvJ6C+nHEHezP0SY/l+2lw26aRygNwT
	t6HnzWDNc3benarokHLwZc5Q6J/Y19R5pA4epGBxfPqk9Zes+8imf7xA7FzTRqe5b4Hrd1aMG+G
	evU2ssRVYuGklZyfXTIO0kZpApN3XJs2+4oZ0p/HMSjjOohk0ooIqTf/YOA1CvUZZlf8g
X-Gm-Gg: ASbGncsGEOKbkyeTfroRBabWWt0TRLTi2fs60hwH+WJsOpU0UhBpJhkV3YZsjgHHF0A
	MWy/l0KPL6nw1Gek86QDjgOYq0folpyzCexwdVUDh8RX5pgrc82znSyNVQqhaWyvREs3i9fEVso
	gk+i3Hb4XHVdIdHz8bAt757ZEnSHn6pk6SrqmaOKeH4ZjJtzYGiOSRNdjex+WcdAIwzMRzxRKGw
	NfbbJXd9Ucx+0CeEuFXOwjq3F9JFZ4alN3I0gd8agHEf/n351E//8uRvU4t0sxIIQPtKJ1DYChX
	4Lpfa59PuUet/IyJf3vr5RGVLtz/uW8=
X-Received: by 2002:a05:622a:14cc:b0:464:9463:7b32 with SMTP id d75a77b69052e-4670c0c1266mr65695271cf.7.1733414762898;
        Thu, 05 Dec 2024 08:06:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrCtcaE45feNNHFxkzDlmaVr36CClapjNu62lWnE1/SccytLaUZvqDSxyCoV/RvKzynTQGcw==
X-Received: by 2002:a05:622a:14cc:b0:464:9463:7b32 with SMTP id d75a77b69052e-4670c0c1266mr65694961cf.7.1733414762471;
        Thu, 05 Dec 2024 08:06:02 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4dbf3sm110912566b.12.2024.12.05.08.05.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:06:01 -0800 (PST)
Message-ID: <54e9582b-8570-4272-9d08-6a89a1548bd9@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:05:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/7] arm64: dts: qcom: Add base SM8750 dtsi
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Taniya Das <quic_tdas@quicinc.com>,
        Jishnu Prakash <quic_jprakash@quicinc.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
References: <20241204-sm8750_master_dt-v3-0-4d5a8269950b@quicinc.com>
 <20241204-sm8750_master_dt-v3-4-4d5a8269950b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204-sm8750_master_dt-v3-4-4d5a8269950b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 20Qij5riPhOxUzt2H68t8gloeDoUWI7d
X-Proofpoint-ORIG-GUID: 20Qij5riPhOxUzt2H68t8gloeDoUWI7d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=672 spamscore=0 adultscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 impostorscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050117

On 5.12.2024 12:18 AM, Melody Olvera wrote:
> Add the base dtsi for the SM8750 SoC describing the CPUs, GCC and
> RPMHCC clock controllers, geni UART, interrupt controller, TLMM,
> reserved memory, interconnects, and SMMU.
> 
> Co-developed-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Co-developed-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Co-developed-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

