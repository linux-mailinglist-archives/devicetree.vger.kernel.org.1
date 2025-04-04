Return-Path: <devicetree+bounces-163326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78231A7C64B
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 00:27:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 558F23BC542
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 22:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A56921C176;
	Fri,  4 Apr 2025 22:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CJ7jtrKI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BFE19047A
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743805654; cv=none; b=SMXAaAU2HXoECG1u+lBwCwSgbDoAZqkNkqvwaFrQOdo0mssQ480QpzapHM5BN6We3tAYmHDF9JJatiGNpV5dVSFjS7R8ED++Z4NiEBB0FAwcPzcFA41aK49PztSZOOyGgXlw7kc1EbaNHNN5vjeopAMzZgkiVqWSJvEIxjuQ2DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743805654; c=relaxed/simple;
	bh=6t1DL07DzcvmXr33dmmIJ7avENvVMr/w4yeVTZqjwTA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N+pmG3p+sTu8GO7h5aubZYle3gMgbc+lXqEeFrSs0ty6aUjsJuP84RJxuuv9vbBRN3ld6jgA6kFJ+IlSzio7pJFUZhWUStxkougujPEehV2JusCqhVYHvz3axo+b6WOZvGIBuQ4r9ToeaZt5Dop6NYt/KqVvpRIsA22wixFpVM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CJ7jtrKI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 534JEZhI023651
	for <devicetree@vger.kernel.org>; Fri, 4 Apr 2025 22:27:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VJYsnY+6erBvEBPaJTdsdZJ4uuZYnBabVTtsF30idCs=; b=CJ7jtrKIR3wEzlky
	SmIINczI24WekUtr2AcduCha3aKa/RKj+CSS3dM8rbOS6ysv67v5I7I5VTGYmqCJ
	rvGlcWqb4kV5Q5QVVqRwHyOq1zT8NMH+LvV0iEVJmfcaCAwqS8bIfcx9hSlTXW5S
	B2J59OgnG5H1N3MKRo+WdSjHwi1cuqaBIjWWVsQXlSa/GWaVt7rk0S68h6ahgI9D
	x/yKyOOKquWkLGOrXrMUQj9lFWafRsjc9LKmEwExKOlkwqhG+n4OGzl0r36qK51r
	xQ7485sSh34y6welfmD9hFjUQrpCqw6EcaxW1NfG4QX80oUDI3UXZTIRBFLPjWIX
	5GUl/w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45t2d9324b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 22:27:32 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8ff8c9dcfso4139776d6.3
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 15:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743805651; x=1744410451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VJYsnY+6erBvEBPaJTdsdZJ4uuZYnBabVTtsF30idCs=;
        b=hoyvzdlaz21D0uIax43hTafb04rha4MAdOioKL/qWie5VnYorScKUHXnTNn0C7aF15
         XRfaicLjv7UwjFKGtb9xhuHffI9Z8OTqBEZYGJ4gdVL6xjg1Z+rP8Goe9TNTuC8WYmne
         C+fTZnvc5MxwpEbQ84S8KVOeDI+745T1BitpiOFjqG9ii7Ntgniw2eZj24Wjzh2D2ulI
         hPkPtl77O5i9e8OORmZ95LOTqDQ9e7NyFRJYWbVbEOiyCpvf44uTlLfZJZwnqZUHyRXo
         tKfIbgEuFO4MPBFqnzed57G+6tMp4x7x88gUXqSzz2Mwc7mhmkyqAgrP3yAQ2PMKyL5Z
         FaAw==
X-Forwarded-Encrypted: i=1; AJvYcCW5Z5+HKFlqLLptXUeAVq9OSozb08RO+LsrZcrQAFZx/y1GKR/l9MPeGBITHTRirAQSHOAmcUi0kUeE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy4Y43S/Gev4dkFg4Ysjnur2OzPtNdbNQRZJsVPLIx/sdJoNkQ
	/EWEV3S7KXr00tVdOSNk8QhMXxVtqXh6MlLOnts2BL9s9bz8SdgTbxhlaKwuHkPt8qUFHlIW+N8
	2bzkqCgrsyJZR8Af6SHDaTu9//mOSV+eOJeimt7p0oVo2bD1zVCJAkRcqU99G
X-Gm-Gg: ASbGncszRWOrJ+m+SFDFFv7Tm11cn1GCGTwgrMu7wJBhR3+5LQL+G1xYnvEZEr0xp6U
	N9KoBMFog1P1fHRmL8Et1HiNraz89XCUheLZYm49AT4zkZfjw2qzIynBAL/9MN3ntYCf617wZpY
	4fE6nfkafGUqeWn6Fh4iAzTPsKyLFqmqfC198SreHP2HnkOVd5TcwrOy5IrdIxx4eK6RBRCM0XC
	nltbCo2JGTdyiZnAYZusSdmvrSuwXRBjeyt30fLXu2RvMaSvyP4VS3sAiuvFc09oWWUM94bpm/x
	Hm/1bVCMCPvDM63flQzwTlQxZ32RSpJa8oGYQ5qla58W2gE7u2+rP6WHgfjPqI1FpuCffw==
X-Received: by 2002:a05:6214:500b:b0:6e8:c713:3222 with SMTP id 6a1803df08f44-6f01e80f181mr25333286d6.11.1743805651300;
        Fri, 04 Apr 2025 15:27:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhO901gakUgHiOaTVcE0jt4khKICm8Kfusd7IWqMVrk0IJGAnOO4bP8+VSL6u943JVp8MSsA==
X-Received: by 2002:a05:6214:500b:b0:6e8:c713:3222 with SMTP id 6a1803df08f44-6f01e80f181mr25333006d6.11.1743805650898;
        Fri, 04 Apr 2025 15:27:30 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7bfe5d46esm326272566b.19.2025.04.04.15.27.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 15:27:30 -0700 (PDT)
Message-ID: <c0e4636a-2d4a-4e94-aab0-150f88b53026@oss.qualcomm.com>
Date: Sat, 5 Apr 2025 00:27:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/10] arm64: dts: qcom: sa8775p: add Display Serial
 Interface device nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com, Dmitry Baryshkov <lumag@kernel.org>
References: <20250404115539.1151201-1-quic_amakhija@quicinc.com>
 <20250404115539.1151201-7-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250404115539.1151201-7-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NlTKLK-2h4V1pEKErIKYTC7e1-qYV_wM
X-Proofpoint-GUID: NlTKLK-2h4V1pEKErIKYTC7e1-qYV_wM
X-Authority-Analysis: v=2.4 cv=CPUqXQrD c=1 sm=1 tr=0 ts=67f05cd4 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=TpLJD_z-7n-X9rO-aHYA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-04_10,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 mlxscore=0 bulkscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504040155

On 4/4/25 1:55 PM, Ayushi Makhija wrote:
> Add device tree nodes for the DSI0 and DSI1 controllers
> with their corresponding PHYs found on Qualcomm SA8775P SoC.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <lumag@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

