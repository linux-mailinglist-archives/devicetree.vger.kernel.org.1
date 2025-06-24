Return-Path: <devicetree+bounces-189098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D06CAE69A5
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 16:53:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A0064C6302
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30EDD2DCBFD;
	Tue, 24 Jun 2025 14:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Co5H5Uiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9760C2D8779
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750775948; cv=none; b=Dr5gzZJcJ+/o+ItQKYf3Udsmdy0hHNzJFMKoRwpEoW/Edc6qwds8Uc4kvveMtyp6bZUSCQUZ1wb2xGbuSbdqukYPehSNSSE3viBXufg6rnsTiPE4KdyanU6F8Tg5UIvoP8UGP3gZ74CDqwmuaktgIPj5KXQemDO1ZKPJnlvZWLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750775948; c=relaxed/simple;
	bh=4Fs+MNnNL1aLVoEZ3nvjjavzbhTQcS0eorXtt9qcd9o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AApkpiVdGWdqoA8KsBwCCgGfqu9fPYiC3l3doyJ7gT9sZDWoIg1/j2FP/Q6er66Go7Q1BMNLKZOltL5SA/vcgZgCZ/H39dvNt0jGG3Jj5qmLimxe7B/fKA7qHeZ6h3qamYSiEI7uwjaNgVCy9GBITr/jif1azuVIk6eKVJHUADQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Co5H5Uiu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55ODw3nQ021706
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:39:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sIc+EupRWFWHvbnKRiy3OMxhoQN7CcfjceN/6IiANW0=; b=Co5H5UiuYzDDf4jT
	aTkcjHSxQAPEMXOzak0VOUUAmTXo5zUiuXKY3D+6UUlBNp7NJH9aQseHH8S3PNZO
	M7gEI/6riWwQfD5m5IlRGqE+5TnblPf6UuRDa2yeJLxa9YyUrWMmLpdTJpzToyRm
	bEwCY3Z3yhXtTEkHXc9i4QFpBooxnPWCvNaedLE07b1sAJmAvbJn3LEZMc7n2mH9
	gFov8O9MZS29g4PRs7TEIJZAWVGwy25uutCHBDHOLOQtADPadvCTJQ7Jwr/Qvn3v
	AQHtppg75BwsoZ8MR1zpb+XD8yfmVo03N0M4SjCGSRQ14mk8v+CTiPKb8L5anNRR
	iGw4Vw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpvpfj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:39:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d09b74dc4bso141250985a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:39:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750775943; x=1751380743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sIc+EupRWFWHvbnKRiy3OMxhoQN7CcfjceN/6IiANW0=;
        b=slOIKxac15LTTOKqcOh19XhqwwTXVIR/ir2L+whU0h5ij+Czl3byJHNiWR7a35Wl8y
         ggpp/Pg7uiU5bepEbQ7GKjAuENNvD+oJQfJ2EqTvSE+0ziawmCRI5h/VoZvqI0Sc04xV
         oWGgLHXXUkbSiLskt5ib+RBVLrZ69CZ+F/ubkaAUUvH/1VZVKoUd986LlULqeM/ZVR+5
         JURd3OLqVbUcTX0KdP+n6fSfdz72hFSM5LsWQVGCfP1JQ2XjL/IvZAyqW+i9nLDxlq4k
         cbyIxZ3RYGluVQhjS9+RMZk6Kmfpx4fWKTSDNHyOois97JkvL1NVYgvqLcd7B/PdIHMf
         FF9A==
X-Forwarded-Encrypted: i=1; AJvYcCViGnEKVGUQQH6CkvSNOr5B3jh/Q43G2pCtnETiT6yzJjkEJHTo2bhth8Ruvf4NWRVXI5jPpulTxtzm@vger.kernel.org
X-Gm-Message-State: AOJu0YyOvG3pPt5mkZKjTVZ9VhYWaZH6bSWRDXDXkudcl858tpAfy38j
	UtXdC+E5LNsG5/gu/8JNxOTCFDnLuv1AqQtpbqbSGqxSViG9fKT7KurRD1GARr/7UYg6MX3Dvci
	3gHZDWmR1E5PAbz2DTiuQUv9lIbJR4LRSwaMhs2OPVR/6XcrHZFeM1Hob7ysPNR7O
X-Gm-Gg: ASbGncvM2rm5XfDOjS5NuqzpRjyD64hyuZ4zGvTvegQg06fJkPhHKEqcTy56QoVppjF
	UIN6EmBRvjIyCfPrK7y6nOGWIDIMzCY44X1bM5IBgUZ4hn6zPuIfpET3ryXJ2AGd7wtHmwaOuZi
	FIC332z97RAD/gOBgPLLw1w1he/N1rUYPP1RVdqYXZqNtFLrpGPkOo2btaMeREjG6RuhBxeieyK
	trqWDfMfmeFQ0ulr1hkTJwAAf18LpGMQJQbG45aOk71yp9emaWA6++VtHV+yoncsPY2qoBTzFHa
	tzLnoG/JFZmW49nYOn+jgMZRtf/Wj8+KB210KPuAoRNIxN4NvEnkob5bPES4e/l65mZZRgQa84c
	l+/0=
X-Received: by 2002:a05:620a:2788:b0:7d3:c688:a587 with SMTP id af79cd13be357-7d3f98cc900mr719996285a.4.1750775943308;
        Tue, 24 Jun 2025 07:39:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAfCM8UsTR0gi4Vxf87lPgA73DvmGPhIX99anLkLmMBY+JyPqjXjPvAju2jdopYTB4Ilcaaw==
X-Received: by 2002:a05:620a:2788:b0:7d3:c688:a587 with SMTP id af79cd13be357-7d3f98cc900mr719994885a.4.1750775942695;
        Tue, 24 Jun 2025 07:39:02 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ecbebdsm897023266b.51.2025.06.24.07.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 07:39:02 -0700 (PDT)
Message-ID: <99afe9f1-f6a0-46ee-b8f3-2374dc196494@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 16:38:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: Fix 'l2' regulator min/max
 voltages
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, lumag@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250623113227.1754156-1-quic_varada@quicinc.com>
 <465751c4-a45a-41ce-ab65-ebddb71dd916@oss.qualcomm.com>
 <aFpA4mk2L/sxlpO1@hu-varada-blr.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aFpA4mk2L/sxlpO1@hu-varada-blr.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685ab888 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=3KRiLC8hv-m4DrkFIfEA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEyMiBTYWx0ZWRfX8nAOWZs6VzaI
 U51ipO5WiRRTQi+hDB5exA1XxWtrpYIy8zxLKNBZ74tDHyQcXtxgYYglVj3lIQ82mcxrCWuFVml
 vuTCu2bh8EzRZD2Txf6AOEGMtWEnzfFUJri8atxLIKWB8BTrhqWfwFvdmNsnXVNT9wto2Ah6TG9
 E2HfFC0CsBwPk3G2Bcs8TLJHhbtuIkEQnnCu1+jgDdjU554GYgWUkZ54CIZfgXUx569Vg5N5vCY
 OIButXIOvNavu35alsLclcWfGqFdzLXeWif2vGZNWJcDhwdbZFg3Cvil+rb3NbhPoNmTUwsYL45
 O9jd1vT1COOJ3nqEU1KRdCotvDpQTZCrnWor5kup8c76znMACQoppfn3fLSvYDzZpNgzgwXRPxq
 bC5SvHD5T4RyAJrt1/yE5XYhXXhymzEM83OQP8iNkoCJGshZQSN4pXVnpCuGVbmshTgHIcSZ
X-Proofpoint-ORIG-GUID: cbwt4-M8eyD9UmkSp_d_YHIpZt0w20jP
X-Proofpoint-GUID: cbwt4-M8eyD9UmkSp_d_YHIpZt0w20jP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=834 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240122

On 6/24/25 8:08 AM, Varadarajan Narayanan wrote:
> On Mon, Jun 23, 2025 at 01:34:22PM +0200, Konrad Dybcio wrote:
>> On 6/23/25 1:32 PM, Varadarajan Narayanan wrote:
>>> The min and max voltages on l2 regulator is 850000uV. This was
>>> incorrectly set at 1800000uV earlier and that affected the
>>> stability of the networking subsystem.
>>>
>>> Fixes: d5506524d9d9 ("arm64: dts: qcom: ipq9574: Add LDO regulator node")
>>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>>> ---
>>
>> Shouldn't there be a consumer for it, instead of it being always-on?
> 
> The uniphy block is the consumer of this voltage. The PMIC configures it
> to 850000uV based on OTP settings and s/w doesn't change it as uniphy
> doesn't do scaling.

Is there a chance something in the networking part can probe before
the regulator driver, resulting in a momentary undervolting?

Konrad

