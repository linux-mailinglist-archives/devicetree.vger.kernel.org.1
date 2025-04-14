Return-Path: <devicetree+bounces-166941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C8EA89024
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 01:25:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6FFFF7A8509
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 23:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95DBC201100;
	Mon, 14 Apr 2025 23:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CH/Jp3Zl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABDC20010A
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744673089; cv=none; b=DyVbH9eLwTmeJlbAJO0RUXu1E8oCkYwhIXyKqeenuHRmeeywPlm9xPpCcvPBhdoBfj8I5r+MnWxM+m9AMMG8roj9are/5yZPWqBbcsplYn0rNLoS4EidLagw6ks19oK00Qja9v0fLFaDO6AdfBwCnMUGJpqtjMepVEB2etNzOss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744673089; c=relaxed/simple;
	bh=h2pvihb+r7IyXNDpZp7U3oD4Rj//hdL1D90IbYTHZEE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CtxKpgMSQSvuOFbFuXWvvxdJ1EptzPP/Ami66Gb9a56hs35og2YKVRHzsaC8NIFNtdp/hBL5cfHdTRT2RZODHwuN6HgeOLPKImR0mOLiuQLeTmYB2u8FmqR9dRs5YEiKAlVuWZde8bc8p6OGsumIePKmneFBmdU1HR7B91DurIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CH/Jp3Zl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53EKdstg013494
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:24:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	syhqoSLgiLKWoYixmoWsnuqaN8xZFF6IGsZlfy3D5A0=; b=CH/Jp3ZlxAsXNIyd
	OaYFKyz7rkikQgyuxvJJNnDkc5RUxsvlOXIXSrZeZdpjZuR5EX9O22TRIdaWix2t
	28bxFz2f9ExCKEpH8Yd7R2bUwF7gxgGHCpet+GfiJFZAsr9Vyox2lG84p1NMjAG1
	+kdp4O3KKsY7j5TJA5+ONm63RUxkiDFelubHeCueny1l6pV27G8RrsYa2kFgBaHo
	MGoVdsxv1zU0gw52qPCJfqlJZM3SSDav0fsE9lps60qXgMNQ+aHtAgfqjF36vEY5
	o7r/C8SQZ7LB3QzzksSiyM6gf+jhs5QQSf8ftnAbmxAg0gv96tfHgBZ16fFo+zj3
	FeqlbA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8we12b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:24:47 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so15055456d6.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 16:24:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744673086; x=1745277886;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=syhqoSLgiLKWoYixmoWsnuqaN8xZFF6IGsZlfy3D5A0=;
        b=lzYGHiJVpOhgHC8LcFJwgL/Y58JjM+LhIlpMvZLmyTk5f0+vhMnFF0Gb6HLlxOD+Xe
         TOJkdij9GTwnY4hAADKp8pEGV/talzyySUw/pdoADeoq/CLAROHlJFu1Yq8HMtYbGBBM
         EP5N/DYcUoPNomDnEoXQY11jsHS9ePVdr6RPD7vANhX8J8rMQUhrWscJwPbwkE2F8FdR
         Wa56gil+Re/LlCRA/crpQ9zkfWFc+FIMw0MUlBDCGRWiLQ5tPanTNLrM9VQdiFBD7MWo
         Sleo1A/NxEfotIWdmEwzMiAUaaRvfkZXwMicKKfhsy4Q0lO1hY+bDLY7M4WN0qrYvic4
         lt3A==
X-Forwarded-Encrypted: i=1; AJvYcCVtTE9XavDwGNrshYjZu73rh5dSFscnyYB8W5cFk48vFnfeoqGIsiosktbiDBfrQOYMZrpKqK9bLITB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm1BOUCIKoCfQl4/7HDo7K5xnZ93iJ4fO/C2KgwZOivdKBKoEj
	mUSeemXz35iB/W0Cg8ORxVdd18QFEKBZnSPgIyYQlEROOe1hEV2pdjjd55o/PwdUHyiLk9kgiOx
	PztaFLTqUNfiElVIPXIwmxe+/f40p6dSKKUykm9w/2cOn46URhvleqOlJ+H48
X-Gm-Gg: ASbGncsw1LCLNm9BXiHux3DAXS5GTb5eqO09YbIUsiCi3Uh9i21crRBw/RaWFf5PT+G
	xaPWVeSUe1CkoXhAbMv+EJHmDK+G9qtMr/l8l724hFw/hd67cyzy28aIp4a54yHTYquQLXdepiQ
	Xy+G42LNdD5DKf4oeojBiUYkBRu7TJf3AKFOd39WW75BqLLlPanQgixovwDTg35oNN/BEJWr4Ad
	H7t4NQ2uoeHmYUqJ+rvBF8WdibZhzanSsAPLTI2LK4SGP/vwoC3yO4hJd3ZriI5UwU5uLm8sH7f
	iVXYAcM78ZxNUPi/hyE/jYoRocRqCSe2jAeIo/pIgsqhBCk9uXz/Az2rDIO5udb3OA==
X-Received: by 2002:a05:620a:424f:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7c7af113653mr670670085a.7.1744673086244;
        Mon, 14 Apr 2025 16:24:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8PTRomTehXQkpJAD665EuLX7SUm59eGe5gjBmCc2IHLMBCvASYa1s8Eb5SDTMHqQU4Sc4Hw==
X-Received: by 2002:a05:620a:424f:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7c7af113653mr670669185a.7.1744673085863;
        Mon, 14 Apr 2025 16:24:45 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb2ed4sm994857166b.34.2025.04.14.16.24.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 16:24:45 -0700 (PDT)
Message-ID: <ac789ed9-da73-4a1b-8dd4-925441d62baa@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 01:24:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] soc: qcom: llcc-qcom: Add support for SM8750
To: Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250414-sm8750_llcc_master-v4-0-e007f035380c@oss.qualcomm.com>
 <20250414-sm8750_llcc_master-v4-3-e007f035380c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250414-sm8750_llcc_master-v4-3-e007f035380c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fd993f cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=DTz9NSAdtq1ik8-Tc7kA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: 3FyHu-RlIGcWZLI9PSPA9t2tejVo1dPR
X-Proofpoint-GUID: 3FyHu-RlIGcWZLI9PSPA9t2tejVo1dPR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_08,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=559 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140168

On 4/15/25 1:21 AM, Melody Olvera wrote:
> Add system cache table and configs for SM8750 SoCs.
> 
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

