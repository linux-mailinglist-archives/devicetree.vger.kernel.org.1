Return-Path: <devicetree+bounces-141436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 286CDA20AFC
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86397164D90
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76851A2544;
	Tue, 28 Jan 2025 13:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nvguBMkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A36A29CE7
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069785; cv=none; b=n4arMKI5HfRD4rPu00D9CsKzsaTIbW31eBkTb8yiIfzKRfIoywuVZq+/MZZvBgniHRjknZ9+koq9ZGzzPH1LGqbNbYn9AYtxcDqQfMFwved+n9Vevz4HeJlVUK80UgJe4DVDLsCSdx8Icd6wfd/jLnHzjCr9v6/EYMUKQNdZ0rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069785; c=relaxed/simple;
	bh=2EvXHyliQgODslV0a7J27fx8XLuvy753HhetFZp8qfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=csdwYz+ROIjwNXJ6UyhcnLCBI1lTlu+j9MZFOr8B1SlMIkOV7Q/13/a59TT4gnDoUYTERPnWnNkPXd/Iqt9xTFfu5FAndlDh2s4nJSPimQ+IiQJdXioiHEW1ULlX7pUWok8Qwy6rXaeEIf0T/qhwP4zir8OCWsOPgfZ01R+WyLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nvguBMkV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SCiYqv028774
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZQdcvPidiDPM4uJRBAfLndBPN1lKSIa//rAe0/8/QDo=; b=nvguBMkV7tj6hFYf
	FT1JUn5IjQkWEaEu13YJqr+EE4i3HtLsHPoiY/D2A3nUODwzysdDLthGcVwmXCmU
	9CW+SBHGew+taEEuqKBFB8lAbJlYeGHkyJKKAEGar5QaKXyP9d+53vcwTQMJV+px
	NDD/GhRmMv1II93NekmTiWnlIQrrzzVIfJSZAMz1Cbc6KblHTsfSWOPnvTHp9+Xl
	/STI2rBk7caxkiC4kcBkOLDjE7KnU+sYxWY+l2guC+JCMk1y+gjnkbdZ6u0tk2d5
	9Qeo2ZG5lDxi/O//Q4EggVq8BdIt0SMUNP6NaNAvyDELGMtemJrVcvNCcWbwFTSD
	xJCeaw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44eygu81wm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:09:42 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6fec2de27so123384285a.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:09:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738069782; x=1738674582;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQdcvPidiDPM4uJRBAfLndBPN1lKSIa//rAe0/8/QDo=;
        b=OeMhD/eJVxb0nlwDno+xvzuZar4yD5WmqGF5ygQYy2HDNMtigrUfv7+FeumtlcDZhM
         hcEm4A0npkla+GGggd7DFIq2oKIjt7I0n5/idLI+TDMxizunjmtUXQROV6q44cDziRUZ
         8BWT1uuify/Ee5VNpd1cWgmaE6/f1HMiXHBucraPB69pFqASMO+DhBTYYA9rRqypad+m
         /wsLGloDOvBqyK5AEhTxFXQeiCIOr/PNPJV2uYu52adDjNhjBecdaQzdMp3Mz9lHs5dR
         UjFJ29Q3NLvPg5h55NR7mkoW/uLAQtD+FHk7yIb2DEZdxe0Sm2z+C6Bll77SOvHwjAPn
         wypQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeydf67hQ5dhRgpr5PfA+0r7rqRa8PVyKEMIaUuCK//ypvk1hNx9lqQ9RmYcCVmnYCNVeNMjmeuDqy@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ7HW8G6orP1kK19tvv70d6voypTYTLY9Yir3q1Xy9Ixu3DRVp
	ka2kX7XUPbn7mnoXdgoA1iyQlTKpzodB70BjeiZdIh8uT4/HtK+k4Ftt4dwnw2EdIc9xmniWDyr
	ShvN9uKM/hIGSgvRdbEVQybUF3MtqsbokrADjUejI96+UPVbH+Fi4iYk1ablw
X-Gm-Gg: ASbGncvRiX2PGNGiMRviwo1k8Ekygtbg1QMkzhVyRQP/oGABy4wzwZMaNs0uho1zXBY
	KmtFpuVQrNi9QsG607t97y/S8xyjkkDz3HmtpzpwtVxt3psTfQuHU8MXbedC9NPBsXBtQIGyImD
	2pAhYsYbu7H06BcMqJEQKSZR6diIxN4Qnphm6EPxobu3lm0v/wdc3GzLQhCt9fFN4BPiyFlwSyg
	W9zu3oA+C4GQ9KiAx2mngTrxeyRR4lGfciEZLmOc+OBulaUfiN+8GXPCHnn5zyXwlp5lZySiCpt
	ZChxdjHL08fVZ9KnhHxEjJQ+mxFgRqjvY1d+OMjCDZ0o8DS/kSA0dZB+P3Q=
X-Received: by 2002:a05:620a:2443:b0:7b6:ce8b:6858 with SMTP id af79cd13be357-7be6324a429mr2353855385a.11.1738069782078;
        Tue, 28 Jan 2025 05:09:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAVFRsKICFHLg071Ml5pu4y75vDdoeP0nM4vG+kQXNi716hYNdXyoLRxqvQibCbDOTb0+uvA==
X-Received: by 2002:a05:620a:2443:b0:7b6:ce8b:6858 with SMTP id af79cd13be357-7be6324a429mr2353853885a.11.1738069781701;
        Tue, 28 Jan 2025 05:09:41 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6a24d88f2sm414275366b.15.2025.01.28.05.09.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 05:09:41 -0800 (PST)
Message-ID: <bc907dc5-c086-42d2-8c94-298c1dc7d690@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 14:09:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] arm64: dts: qcom: sm8650: add OPP table support to
 PCIe
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
 <20250115-topic-sm8x50-upstream-dt-icc-update-v1-8-eaa8b10e2af7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-8-eaa8b10e2af7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Z3mM0-IFsdZh6BzSEfYZDenOoFpmpLqi
X-Proofpoint-ORIG-GUID: Z3mM0-IFsdZh6BzSEfYZDenOoFpmpLqi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 spamscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0 phishscore=0
 mlxlogscore=888 impostorscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280100

On 15.01.2025 2:44 PM, Neil Armstrong wrote:
> The PCIe bus interconnect path can be scaled depending on the
> PCIe link established, add the OPP table with all the possible
> link speeds and the associated power domain level.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

