Return-Path: <devicetree+bounces-167213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F40A89A8D
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59D761891CC1
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A467279912;
	Tue, 15 Apr 2025 10:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ai1mYMO6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA43127EC9A
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713803; cv=none; b=d3eedqpicXPj41wCCHu3QzCff7Wc1gaj7NF3HLGuJYOiDp01PtYAMULmUeBThGR6PHyET2ztA73ritKYnmW9HkMWpMK4AXb24zZg/b+2DXPIzU+dHUPf4JFSR1yxAwq+Gfl7EIR+QIGGZ8k6O0DGcpCEPc+SO4Q8JVOIdCnKK+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713803; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kZxGo13S/FllgQNSSK9C2HhB1RxUANYH4syBUzvZMaSxiss5DXD+fT/nAhkIZ/7pedBZBQQIt1bz1X/Wewfekjc3j/4Wh8P06IIsR9RxLf7SLAX+CcfBW0mDPvlpwDmjBoTVWe+lhJ5p82Olelx5pFGWiEUMx4jZ4eGlsCVNtqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ai1mYMO6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tBEq025046
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:43:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=Ai1mYMO6lfpCeK3K
	4QNGSLLviuJdPDhCqZadVYkkuwmv5fBYJJbG1AaJKPPeB17UrzIr0cWUkwhhS2Ti
	PtvuiX1FmE7cwdrCnNwxDoCFRj9SEo/rK3bNF/Ru7JWSltEVtgAlgaJnBhbbdZfv
	n6kFn9KSqGNmhRR4QyX29RRtWksihwIhtS7ShEYZkH41YmMDydkE9MzbQlAcscUy
	W52c4+C6o/AihjKDwE3jxOS33wcM24KNzaOwgZxxmkWFmBlxd0qXU4YcGxMHjZUo
	F5l4CFVIyN7Y6coO/p7CYkLUYXatL39ReN3jfNcENofz6Q4bSeReOhmW9v+EBHmA
	McUgww==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wfqds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:43:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5841ae28eso123617785a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713800; x=1745318600;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=PEb5b0ZBZpxAvpVBEOZICH5TvZ0zbQWsYCcotCLRGEVPDrBg27Rnkln3nbXWAFXz9l
         IzR+iIwWcE3f8AAQP58UZCl+E3fU8nxuHTXVzxT3sd760PiNHktaHfjnAF5swJZlJa6z
         SBcvFHCgabHxw/1l/9a3GNzVYh1++mY1jJkDVgWaBdQ1YBMETZ0ZM81ohJw020VwMKIs
         opR7sJnLhR/iQd2scN/aTFN1Hf2ozDGsIPxByRbXKsyhfqHlLv8jsXLvHXVAmveRiQmw
         jV5YLqYngHkSSRGn5zdExu8XyrtPtRjilTZziC4yX0WViszjofGMzU3RgRAhC7E90xTe
         EZrg==
X-Forwarded-Encrypted: i=1; AJvYcCWuAMHMp3IFn1C++/dsRcvQJpV5a/fot0PlKkQWPnaXvTYeu0lVJy2RDyvoG2PNS68BT5KEGGNSpeVV@vger.kernel.org
X-Gm-Message-State: AOJu0YzLyo+Fg6VPn7kVSX4FC4+dyhuCcupx6mBj88tXA9ImBiCOaUaF
	OeNgKExNx9MsSAposi8YMMSz1tB0zCTGhlT7ENvcKr9xi2NVne+blpuWPJnf+WpjXkaagUKmyl1
	Wr1wokjVsqf0qgBDx4lhu/dp1HgMb7xho4E8KlGgTJCScYUbj02kBpN60+Ave
X-Gm-Gg: ASbGncubq9DW6/8D6VWnv5MXr1L/Twa+6lgCNeAjMNspB3ZwHdyysshU6t9nHV/5/md
	6tOPZQGc3232n4Wqj1dmQYGoqcUy8pwQl1BUlzwuxTL1X19OzgXZysOxzb0Gvyrsql/Q1zHNgFH
	NnqzuZxkyctFDkqspGpg2ttGpwM61zCP1j6fWMI8tXap8Zy01Of2x87vzg47hpTp14tPhZKbORY
	4idev9J6TDgb34CEHILvtoX5T00CwmdKDcywk2Wh5WQUU4D8FvQVS6d/eKLOVwlx77ZNXprVgrt
	+nIqQqc9t17sprtpmV/OMv5bKth8blpw+Sq0xSmdm6KE2LMH1ZwFjLPMUzm17UIprK8=
X-Received: by 2002:a05:620a:4091:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c7e5b6fee9mr172448285a.14.1744713799939;
        Tue, 15 Apr 2025 03:43:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFo3z+W2e8RJIfNcxZyqjqhP2ExIKuOsn+xf7ywPuKxxwN7d0bufad0MSbmw9YNuFyssf4uPA==
X-Received: by 2002:a05:620a:4091:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c7e5b6fee9mr172446685a.14.1744713799676;
        Tue, 15 Apr 2025 03:43:19 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ce7fd1sm1059762466b.168.2025.04.15.03.43.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:43:19 -0700 (PDT)
Message-ID: <ae06a328-f830-4583-a314-b50331c7f56c@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:43:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/20] arm64: dts: qcom: sc8280xp: use correct size for
 VBIF regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-9-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-9-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fe3848 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 7jHAYzRJsYvkSEEa-Uvq4a4Otijq7s3c
X-Proofpoint-GUID: 7jHAYzRJsYvkSEEa-Uvq4a4Otijq7s3c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=607 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

