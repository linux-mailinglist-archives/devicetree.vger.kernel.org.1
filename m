Return-Path: <devicetree+bounces-131130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9D09F2140
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 23:26:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E5A8162C89
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 22:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E1C1B4F1A;
	Sat, 14 Dec 2024 22:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lxq3Bxan"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155061B4123
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734215191; cv=none; b=GJHGTdBCBxgVgVcnbVUiVwtOMEscczizLXMZcDAEH3c1cZss/ZI39zG0WVrtrN7d9WPUbtpjSwjhgwmHM83wDBUxZlf1sPkepDii1n8MD1067pNuuY6OkwbMm8uPgj6fka3u4CqhPTk6YeomrGwKf+9XRf3e+hQVykcOJPE3ZLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734215191; c=relaxed/simple;
	bh=ZrDNWfmtdISpMYkUeSLoudxH2n1f4p59UXdWu7P8JPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kB/RKYaZJO86Gq1csgKMb1BJ0jynsMlh3tfTqnc0gYYr6b+6xRt6ZFNnJvre0zPB1OeDg1u3mxPOBmPEyHbAtvaEpbuVryMPT0mx0s6S716HEF2Jg1+rB6ynHC8M34PMwMUPqPUohr/mlg4I6a/GMhBLWMhKTPhDMHheHQ00Ljs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lxq3Bxan; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BELP8KS023171
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:26:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s4QqG3p2KHd1ypOB7S0ihhuqmQZvhM442cAt1pqnT+Y=; b=Lxq3Bxancb7SACUk
	clsR9K1LXjuBbocbljgCiNPZPmfeMPSCi7woxM4AQEH4Uv39kos8I81ayn3y0qtl
	KYQ5AFs4sZVqv5LufmzZbklvhTrBvNhi59lD6z+9xTMt05rXLqCaXmXl8f4Jvix2
	px1qjuFECFUiTBkTw8i500HmOHaRUZCuKkMzH5cN0OisWt7ccBN7zlbgo2uKZij2
	J05CVpIHjrv/OguIEO/ZHhvlFiMDddl7EtzBmWG3A5djpcuKPvA2vd0GrUsVi/qA
	4kavjt9e0d7Mi5GHwSLsm8KDBg5WGdUaZBwoflQAKKTgoYecj5CuVaJPmI2FojDi
	1xQiUA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43h30ks3g5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:26:28 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679ef4565aso6407051cf.2
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 14:26:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734215188; x=1734819988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s4QqG3p2KHd1ypOB7S0ihhuqmQZvhM442cAt1pqnT+Y=;
        b=wwKUEU952WkZ4iKK/39X5kTvhXIa+1p6IoWpXuJGryhM0wOdk0YkR6o7Z8pjcaNpwV
         79q0lj95KeiZYV40EKB2mWq5zidznBXT2PUxqWvuM+IGpklV++rli4nIO39T8Wep99C7
         2JS8wWVzJl3l8tD+sByLEQcomvOLJihfuPr1ZkEqms7OFW6y4YXMFQHBF65wp5dsWkmh
         vZabMQ0iPDgfJC9LNAUlTQ+n3bG5hhmLBb+41kE0W47hdGabNEtmeNc0lDhwAPR2l9S0
         FPv3T20vnYWXPmPTQ8O0nelwmRGBX/ugMHBElEChROnInvZtp7tNvnpjoYYu0r3GLzxt
         4x+w==
X-Forwarded-Encrypted: i=1; AJvYcCVbeHSALi41OI3ohi4sppdpXPwjjNVNi+HR8gPUkCa+aiCTS6fhJ1IEMt5YcJQAvke0Q4VNgYjRd/yJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzV7GWxizDLE9SGHK2/qsCdFEW6MlLLeaNMdLzeBj7dwC8OiZMi
	mkFEGpIyxDSCkY1r9Pd+e38fON01fUtqfT+tT0+NgovwXuwys/zcQdK0h5nVir6rgJ+/U6tZFmP
	dFtvFk3AN4UXhn67CHUh3c5yUmezYTjPC6muNiLF3SUh3if5bVMEYkuO+Lb6x
X-Gm-Gg: ASbGnctQn+Ye2AE3jwlUFzwQ5JOmEakZSyiUgUwsYeoxIBsOZFPBw4P5ut0fk3vW6D0
	ESq7ZrqEC8Vy+NtItkDH5GqtdZRrD/X26o/ce0VPKGGQTzTUHTIPeznkKzf2zMmsu68JHdwGlbD
	Q3ew1sgyWnlb9z4CMMmDw47YGVN3e3ZqSKar5VvxMwd2BRtVl0tZasM61m+hu2KsN3k0P4jOV16
	QtRgbJjIImv5cdkcp8YHGq0Md4jtnNH99jQz2SELTUFEg4tneQAS2aRo+7PXSyxRn3ilmiUpDwX
	xySO3qYxv+a3AaECWvNPD5rOeDYJvVzKs9k=
X-Received: by 2002:a05:620a:192a:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7b6fbf088c3mr401376485a.7.1734215188033;
        Sat, 14 Dec 2024 14:26:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHasR3K6p493DFjUDFsgFM7Uolbcjk/4yrc72sMuH+zSyIX6k46ZL84uYVCjvNS7JZ/TSFgJA==
X-Received: by 2002:a05:620a:192a:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7b6fbf088c3mr401375485a.7.1734215187709;
        Sat, 14 Dec 2024 14:26:27 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab96006b29sm140887466b.28.2024.12.14.14.26.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Dec 2024 14:26:27 -0800 (PST)
Message-ID: <5e33ecd6-1307-47c6-9f57-2f7c98ed1272@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 23:26:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 8/8] arm64: dts: qcom: Add Xiaomi Redmi 5A
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-pm@vger.kernel.org, iommu@lists.linux.dev
References: <20241211-msm8917-v8-0-197acc042036@mainlining.org>
 <20241211-msm8917-v8-8-197acc042036@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241211-msm8917-v8-8-197acc042036@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: nPBRjGHUGq4i73tQmw4er6Fm1ehH426I
X-Proofpoint-ORIG-GUID: nPBRjGHUGq4i73tQmw4er6Fm1ehH426I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 mlxlogscore=735
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412140185

On 11.12.2024 6:59 PM, Barnabás Czémán wrote:
> Add initial support for Xiaomi Redmi 5A (riva).
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

