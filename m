Return-Path: <devicetree+bounces-188481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9F4AE3DC6
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC7C116F86B
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55AEA23D2B6;
	Mon, 23 Jun 2025 11:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ja7iu+m+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68DC188CC9
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750677463; cv=none; b=oGeCU6uoNvqAfTnaqOVNUfwEkfjtAXhMxhDHZFbh3o0jed5TqCc4Hbrmuq1UkZIOWg32+GAjR/H8SeeljLEExyWbTLsQ/gtlwILX43KBmZ/1GPaOY7HWaw+fiWDUD4Vg/Y6gXnIYvtfdTLEfHoD9rdpJeG5Gy5gBMlnszbBbCdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750677463; c=relaxed/simple;
	bh=QVfJZhPN9qiwrwnHlrRHaImgyg7M9hl5ecRtPiUK4T4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ugZKd9e0Rvo6fx3MKzchIPbJy3p6tQ06pNYYYhYQq9ktk11r6kt+Q0lyMaDWu7UjyX/7e0ttoXbITydDAspVsaARl3JLjveUP9lHxNEUOIK5nhtXEKa4JwZAeEbeQY8T/lCWL+ewVpKZZB+UHTTx1fUh9DDKKUrUpa03f6B0yM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ja7iu+m+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N91pjL021510
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:17:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/dyny+59KUMgDnoa0Pj8FANJXdd+fC6rz2NSrYwuJ3w=; b=Ja7iu+m+DcZwXxxQ
	JOObRZ4sdQv4ObAH8WSd3BDSk0TDtBIUfkUVvXKaDbQj3z0Q5JkYClaONXjzA1Cw
	uYQr8HvL1ntj4mUma4x0y2f9eQIc9lh2uDwY3raCT4fZ3T0TeGqzy+Fe04xLrJ53
	DdGTi/dStzeQJzMhHR3+Ef9iz1l5jwaOWVizjTRm8pwiISKb44mbcbLzc1cdJgFj
	l7XcHlqcXt142Zm2w9DfKgQ4CQA4lLFhD9HMb+NR5c+x8YWCPKPEV0u/LC+Pl7a/
	d7CPvFjfe/Vpeb18fxiF+J9LEl2xdUVD7PSuXF7URh4fQEJKJiuGTkhWa+ek5oid
	lWfhsA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4hqsh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:17:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d21080c26fso107593285a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 04:17:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750677460; x=1751282260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dyny+59KUMgDnoa0Pj8FANJXdd+fC6rz2NSrYwuJ3w=;
        b=lEY8lJ9HARIFFtx2aVewYk0fN2fJtlT0yRg/y7i06d8wMv18EZLAQ5SyJ+FMBbzeQc
         2vbjtKDpEHO9ctmioCUhky72jVdkC/GzKp45A+4ByL99++747kJ03gFtgu6SZtie7EiI
         pATEZSJm7mjRVr8X01fr7BJqdkgUNUrlqEd4UWnnbYyORVYgKyhUw99NvJaZtGdoAnG+
         xXFFKVRApkTaar486irMXUHLMamNL8bdN/WWHxM/6JU/FvFR7IVwzJ+OqYslgepRfb0s
         gKcICBf6cIx/MqB//8o2XEpl41cxSIsUr2LWY1QcrMfh+2GKy82fdsxSaEsseIm/Xf7V
         nW2g==
X-Forwarded-Encrypted: i=1; AJvYcCVFeKeQyrhU5b47rYkNNEs3RPreJEzM5BXqzOicBjb6WCD3Q+Fu/2JusAVY+JO9b9xH38Dmo6oTky1O@vger.kernel.org
X-Gm-Message-State: AOJu0YxPVUP95sjzVDaoPFxX4eTejcpfZP5E+BMIORIin+tWSjYggEyX
	PEVOn4HBvnZHnuY3p4B356VL4/77L3kA59KbnA9QiKznu/qOvc6b9+Hqrzl6/f8ajMlSAwJktg8
	2ERRCLC0Li/DbEnZWRRXKk9M7NwUy5h8tymprW2poTjbLRmGAzI+NPBJDgj2UDAQO
X-Gm-Gg: ASbGncuW+2nBCxaHiIyOKoaq4ugTedWTBJYM50x9V8eEvgi+CD5HYsN/xonhAlt+wZp
	qERCBDAX2DFCHaaRwPHs38q5qIEmBdZsSfxvGv9TbVqXBMQFmJwtGnZ2kybxXhufe+Co6GNDNXO
	Ta21mp7GVBLS5xrPfG8ahK6xXBMF4S4Aqw733yJG6kZj3X6a+uJlHbSulrLGXS9zBwynXZF4nNy
	PdzuTptTkvFaOpHei+Mitzxtb47u59nYKEHfuUO+FhvMTwsYBTcBGPPIz/reAkJh5BvpeKYSQRY
	9DZdx02BAPyCJgyrlZfCDuQcp/Rfey2UmfJ3MKiBhbOzaCwACtKFGTxm1SDmyoKkmD5cdGqxvhz
	rQjg=
X-Received: by 2002:a05:620a:8016:b0:7d3:ed4d:ac1c with SMTP id af79cd13be357-7d3f9938ca8mr701363385a.14.1750677459715;
        Mon, 23 Jun 2025 04:17:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKL+gpI55fdb30AiEedCk5JVTk1bfoCgITZ7zqFEzV6b0TJ8Zlfj3wjSMDQqD00Aky80qkgw==
X-Received: by 2002:a05:620a:8016:b0:7d3:ed4d:ac1c with SMTP id af79cd13be357-7d3f9938ca8mr701359585a.14.1750677459080;
        Mon, 23 Jun 2025 04:17:39 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b7258sm691177466b.119.2025.06.23.04.17.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 04:17:38 -0700 (PDT)
Message-ID: <ef07138d-dab5-4a9c-9bd6-20299e2fa53e@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 13:17:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: qcm2290: Add venus video node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250623105107.3461661-1-jorge.ramirez@oss.qualcomm.com>
 <20250623105107.3461661-6-jorge.ramirez@oss.qualcomm.com>
 <8997eb52-788b-4264-a302-0fd10008e4e6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8997eb52-788b-4264-a302-0fd10008e4e6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685937d5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=HP-r-xv5IR-xfd4SPmYA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: XgE-oS9w-Fo-WH_Ob61RS-s_CWFvEQbt
X-Proofpoint-ORIG-GUID: XgE-oS9w-Fo-WH_Ob61RS-s_CWFvEQbt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2NyBTYWx0ZWRfX0vlWKGBQayqg
 BjU1ucJoYb4ZeBA6zkFEKszqxrqrvzhGenuN7NmLH2XiGRtlbZcIFdpIAtFDVlEdjMmPz77776D
 h783bBPjEurntb+i553uNTt/k/2UNirXDpVb6MblcJG+qUPu3heGJ8lIIxN4/wFNzhZMpO3j0sS
 jP+LGew+wHIyz0QK1IpzSrrVmPo9+jgk1yCxdgVCPPGSDMTqVmQz4XKezJO0O8Ys+PRqbDXsaYd
 EKowR0NcyzMqrx0F9tURzY5JEoWv7xeXoK8XnqpB02gNYrMVmS1M4PWIDnmfkCiPdiegbfJB+ht
 oCEub/nbbAMdgI/QNQORiUX2uIzxTeaSHgERMx/ZzLk6ThlRr6/sgs/FJBIzIqOapBNP564h8CF
 5BoTOWncPeVbOrTaPMhtwwVz2uF+3inp5suaD1exu3TckXyiCv6qNzAAa6Eq6QsK+Nhr28g9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=974
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230067

On 6/23/25 1:16 PM, Konrad Dybcio wrote:
> On 6/23/25 12:51 PM, Jorge Ramirez-Ortiz wrote:
>> Add DT entries for the qcm2290 venus encoder/decoder.
>>
>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
>> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>> ---

[...]

>> +			clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
>> +				 <&gcc GCC_VIDEO_AHB_CLK>,
> 
> On other platforms, this clock is consumed by videocc

..except I didn't notice there's no videocc on this one

Konrad

