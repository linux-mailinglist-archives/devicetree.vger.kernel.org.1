Return-Path: <devicetree+bounces-160882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB7BA717AE
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 14:41:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 714AF175AE3
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 13:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D361EB1A0;
	Wed, 26 Mar 2025 13:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XlOUm0Dm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646771A0BDB
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742996418; cv=none; b=Of+sZKQFjqt5VHpr06lkAE8L8GBliITr2BSUnc244YCMUq9xryWvOJmeZjn6jrY5RQ1u7PAZ26uhiYDXaqXZ3iQcAruKkRnyrI/uki00PEwaqVnAuG9a9aWehFUNp5v0Tw/LcHH495UCmFNEWzN/vEpQejI3ZA3KiI5PPInBlVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742996418; c=relaxed/simple;
	bh=Alploz2qHXP2QnB55j/WuqbM6NUQAf7VYLnv2Wkst8k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WVzjVWczKOD1ahV4wCAhbqv/MuWhXJTL2niNtD1TYZb4Ew4e/FO/DuLmfErKiFqOX+kCJjc3+WhWDnTAfOrKAhkshD6lY0DluzdIz+qcCb6uEaEo9sGrnMI7XpUIaE2RNItL3bDkiklydKs2Xp6L7/hZ2Yf86nrjd0mmZQV1jxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XlOUm0Dm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QA1jWj025388
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:40:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	StU+TACp6Y4jfftOzYa6TTZ65PK38fdexJTR3duIBKY=; b=XlOUm0DmSMPyMhi8
	TEttj1e37hSB/tiQDUuyvZLY71HIpFj+D4tp38ZP0bnW5lwPtnWntoPMpFe4oY5O
	Z7icR6d9ooURfGF0s4HbepC3d22XZaX7AXJlov08b0l7P/1haZdE9oslTJTkQWto
	dJg1fxro/IWJk82FstgiqsqhozsupToZ4IRC6AFYRSIsKpwr/Vxw2uUNnRJgBZdS
	vho7W1coOipqbGkzBhopAXRjBAI717VKDOYchtfgkyj3YDMhVPF5dP7UpE2ZeR6I
	ioduJW7/379b/icbcHUWefpAut9fyYXUHiHlGlLVp7ST0hKBETs38nUdP531+QPZ
	3bS7hQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mffcgkcg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:40:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8fb83e15fso13661266d6.0
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 06:40:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742996415; x=1743601215;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=StU+TACp6Y4jfftOzYa6TTZ65PK38fdexJTR3duIBKY=;
        b=cA2sSk+ScEp/6a8Y0k8r0c6npY5YIfTRplJMRAyh39sH5i2goAxiXhZAW8pkGJhGSL
         agbGFP4HEcr5/n2GOzVBC4CC1B4CoF3xAWd61Rdgpl9l1QvWe620duCCqoxgTOXfb3In
         eWAwjupkHbLgX/SGiJLIfoLkk89BHmCZmHljPR9YUteYienOrW4uli8ZxG4IJp1gs25c
         B47xIiR8d5LcMkR82XaAOwIDX7qlN0NQiVoDkr3vAhJFcJA1rBz5MWzHIKIEtsebuyfW
         rWn857PRA4BuXWiVA85RKgcrJk/XaYMQFUX3pk3oNiqp2JQjnXrUwH+lOF6I5FdleVP9
         etBA==
X-Forwarded-Encrypted: i=1; AJvYcCUBAMJPxknyyIBKyVA7h850hFhp7y3eUrKsE55rDDkEfKu5clqzs3DklSVs5NNI1vQgoVEFqv3irbx5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6qZ4G5wR+GipvO29XTmy3hOSEIm3nktJ+/V0m5Tl0hab5rISU
	a1FJu8mEW0xF6/M9qj4UvwTj5iZ7pGjfg1EvoHvlBFJW6trOhWWgYOmbUN7onYJSeF2MtGa8yhR
	bnvyyVr6GOQP0Izpq/rO/Xbwe44kXlUzIMC4iV9cnfHKgf/RLjrrkhDGALUyI
X-Gm-Gg: ASbGncsQR+Cb3ynIhlqvCWU1kicueEKtvBqQ87B3jjs5YYuu87y6YrpeGip628HUKlU
	mOGdL6uOndF6aWIKxEHu7YB79j+sk9J1hwsrbaMu+89kxQLMTps2HrMLWiRsKk9ogPHtAKc4zVD
	RKf6GmxI+4C3BVSTBv5X36JEm73ezKTtEWoIWCql/Aw2eSn9CZ+pD1NU5DvpaG/J0VVu2r7RD8D
	T+5nmbA/KtqCfH9czSoZBgLK8EsLoHU13L7g8/KJahbKU/iGRqZrLakoLRwNfRPQw72lnKu5csC
	b5K4doPi5FeKuYaNEmNN6AfqG+RdxqYPzusNp8+gaBGeTzFzkgSGEKiQrbvmlw4Z3y1Biw==
X-Received: by 2002:a05:620a:2892:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c5ba20856bmr1100077485a.15.1742996415227;
        Wed, 26 Mar 2025 06:40:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAYkx8eAWznpRjQqrJ2yraETDjmmoOaYzcvO7IwzE8HQKRVSYH/lIsOpvtlZuk6MM5xAhjWw==
X-Received: by 2002:a05:620a:2892:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c5ba20856bmr1100076085a.15.1742996414741;
        Wed, 26 Mar 2025 06:40:14 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efb65866sm1043016466b.102.2025.03.26.06.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 06:40:14 -0700 (PDT)
Message-ID: <a9a3c4e8-f3c0-4eff-8246-c2d0fe684b6f@oss.qualcomm.com>
Date: Wed, 26 Mar 2025 14:40:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sm8750: Add LLCC node
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250324-sm8750_llcc_master-v3-0-2afd5c0fdbde@quicinc.com>
 <20250324-sm8750_llcc_master-v3-4-2afd5c0fdbde@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250324-sm8750_llcc_master-v3-4-2afd5c0fdbde@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CdgI5Krl c=1 sm=1 tr=0 ts=67e403c0 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10
 a=-Mfuk79evvAA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: BbD7zDH9YJfeU1bAjYOu4meAKAQHiPcn
X-Proofpoint-ORIG-GUID: BbD7zDH9YJfeU1bAjYOu4meAKAQHiPcn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_06,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 spamscore=0 mlxlogscore=720 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260083

On 3/24/25 9:29 PM, Melody Olvera wrote:
> Add LLCC node for SM8750 SoC.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

