Return-Path: <devicetree+bounces-179385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA2BABFF2D
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 23:53:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 142189E5DC0
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 21:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEC192343B6;
	Wed, 21 May 2025 21:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kt2v5Unu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A94B1CEEB2
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 21:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747864394; cv=none; b=nMAWzFe1wpfelR+mP17kQzCI1th3YzH+CixsZJc0yPemep+dfSqj2jQpJHMOg/I9EKFSIruCUxlC+V2qko8NnwJoGnIwUmZVCBZzGrWy5H3QdJNeXf1FkKs4PSR3suRKbc88K4vkcSc0OA6phRrZSVl2j+pPY/D+yoJ/CN17Grc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747864394; c=relaxed/simple;
	bh=BvIsBbwn0SKcvYkOO338WYpFgAmu5GvxT3H9FH1mRVc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pcuIPSlV9vCfobwfitNab0mv9znQ6diTC/fkgDp5luXWP6srx7zwHW/8iyhF5YLzi4FnTkxFtDUu7ks/z3rDZcTVcaXvOvZhRcsnlwFQz0F63mIl6L6ZSSTcCgnfCMp/BcQyi4w8pPs615DgDnEu1Drdscs4zx/2SeaL9ycd1ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kt2v5Unu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LIGAbQ020649
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 21:53:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r8+jvNPvz+gKJvrG+VMFVXzwjJgRjgR2KNGBsLzgH4E=; b=Kt2v5UnuN2VKv8Tp
	yOb9KGlmvOjkKdhjYysv7t1ruJO3/lFqMcDxC/kdU8dISYVRpSEIYR6P7fHJL29C
	qIM+sMJ3SucL+Se/S/kKhsYf6bKx4ApScSRvTrJG7FAZd4tWGrG/qOTMzlbiMVqY
	COCfsvfFcOlEIV1+x+kx2+hWaKXlSrJfsjYZQw2Owj/Y2FtSyIe++Zxrbui3dy2x
	W/QEOdJAJ1FjvMrz41edgr2IRGxsrxzrGa0m96wQLySkq2TroB6HA5NYoOAYjW6Q
	dCHkMsMxm0BqBilcY3xALjz+y8l+cA8yXgNBW5NI2jAS6VWtskKNuQxslxO8oJOR
	vykdZA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s9pb2ksk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 21:53:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5af539464so204697685a.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:53:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747864391; x=1748469191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r8+jvNPvz+gKJvrG+VMFVXzwjJgRjgR2KNGBsLzgH4E=;
        b=E72Fv4LAxjk75f/lP6ruNTfi7oqSNh7hGv0lFJUIp/+kyVNGZWZsfM2Brv/SrO85ca
         9j1DyawNHV/uzH58ZHHIbYQA2k1nUsWdOzhzZoMpaNg46MyoxSWNhXdB1FmfsuGfme5J
         fTXxNXKXbYw3qAehsaDRckL91d3EaaKkFwhMXzjQ7PdDyLGBjlmEfdwAAp7hZfxiP6ZY
         iGbebjQ/EVWlBXjy7HmoQAhWMFiXh/Xh1JqGIUJpH/8To4Ul6z7Mkp4CEut03IPjbHhn
         LN8sUl2e3YiDkGylM4YqMwOhBzIUTky8uKOOJyUcLxc9/GikjnO74H7C9Zn+ccUj6Qi9
         rOVg==
X-Forwarded-Encrypted: i=1; AJvYcCWz/h2pvP4Ev9/5e3Fs8cuL4Fgm/0OV2AmcTBvrwD6LAkxLebIzsRJzPjcCtJdW4gebkYxLbSJEmwxZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk0SvJLkxKbVtjcdehfpcu6zLs3SxgpoZcAuSCOsZjiuEhsruC
	M0OGBGyfpComqdgjn1A1s6NT5mtCp+L252R7uttTCrensyAOycZgHncgm1e25yEe5Arakjrem1X
	FH6F8eZeRIObHvxmDy8eJMi+x4i6mfwcmZxtXY7XNOERv/FtLhDVxeTwc7AOC0+PF
X-Gm-Gg: ASbGnctMrmq9Ui1PU8qIkUguHutpcvoizD+PXiHTns18YVQxz8d0RMBEMFw/MDTv82I
	gfoxmZ24jck4mjrbOTUMDk5UTKOGK5gd7WL5A4gqCbs/KH1HKwKl02z5JdEJ7PE1jR1xPix2B0n
	njql5CtlAD4vLZ1mbYiplKJfTxnWpvoqAu1KUXmH8pesXQ6wdWO9s1Ow7vY4iCxBKVwsw4g6FJC
	0w/634/YMCmYs1g8vQZosg9WmhdB8ps/lIpPLilPJAd1vy0JzsV0yFkmv5vHOz0OwoPgr0Kay/t
	hElPFBpipux+NS2x8f32HZcKZWNFoq4br7I2YEkGkYCDgHSQXkVfeMt6c6B3MM7YAw==
X-Received: by 2002:a05:620a:6202:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7cd4a08ee21mr955948985a.0.1747864391096;
        Wed, 21 May 2025 14:53:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZErIhRYY6jF+JvSB4t+dlNMKFZObvQZFGcRiUHU3xjKYKiQb8V70t/qYNriwOJKByWmXCFw==
X-Received: by 2002:a05:620a:6202:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7cd4a08ee21mr955947085a.0.1747864390697;
        Wed, 21 May 2025 14:53:10 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d438c10sm968332266b.101.2025.05.21.14.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 14:53:10 -0700 (PDT)
Message-ID: <fc6f2ac6-c6a5-4661-b5c5-e1cc75a7d955@oss.qualcomm.com>
Date: Wed, 21 May 2025 23:53:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] soc: qcom: qcom_stats: Add QMP support for syncing
 ddr stats
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
 <20250521-ddr_stats_-v2-2-2c54ea4fc071@oss.qualcomm.com>
 <jl4g7mutb65ifxuv3covropjntziv5enxyc3lgz2fi7ddu64bd@e726p6by3vfh>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <jl4g7mutb65ifxuv3covropjntziv5enxyc3lgz2fi7ddu64bd@e726p6by3vfh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WJl/XmsR c=1 sm=1 tr=0 ts=682e4b48 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=ARcffcqOct04O5k4gLUA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 9zjm-qwFWKe5wzO0dIV3zcT5e3Daql9u
X-Proofpoint-GUID: 9zjm-qwFWKe5wzO0dIV3zcT5e3Daql9u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDIxNyBTYWx0ZWRfX7PXMfN+3BHqU
 VdycrCerLzZsvmM5Z9iuAfQp2YamZPSYaL0TBV2pKmHaZp+35wrOhO2o5Hw8s+eHSC8mg/Oo7KT
 KBnd0YJcJS2eMSFOJ09KvyUuVgSxDXmPFl22iToFGgZYssJfCKrX8QGl0Gav2qzx9xokb6Sl5+V
 LZgc+dJSHbo1Tn3tQTiUJAYgB6X9UK403tC5XqJesKcbD3DwelNdXn0Ntw9M1Q7zUxQu/Mb1Sfb
 nQBsycRqr9sIAt/ZefNZXAr+QN/2BV3RchZR9wLsWopNemZ1aJFafr93kvsppp869xC5MmwFBLo
 LXD7+7deV7A/8UCg90abVu/CXgd2IKUY37YxbPGW20ANf2WxBKUeuhvFIwVDxEvBHKces9bFPD1
 aYampXmFmU7EYLVophzI4OiTgaS08swam6N9OfUItKBvl3gn87AbC025s3k7veDX5GCt0haD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_07,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210217

On 5/21/25 2:52 PM, Dmitry Baryshkov wrote:
> On Wed, May 21, 2025 at 02:02:11PM +0530, Maulik Shah wrote:
>> Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
>> ddr stats. The duration field of ddr stats will get populated only if QMP
>> command is sent.
>>
>> Add support to send ddr stats freqsync QMP command.
>>
>> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
>> ---
>>  drivers/soc/qcom/qcom_stats.c | 29 ++++++++++++++++++++++++++++-
>>  1 file changed, 28 insertions(+), 1 deletion(-)
>>
>> @@ -310,6 +329,14 @@ static int qcom_stats_probe(struct platform_device *pdev)
>>  	qcom_create_subsystem_stat_files(root, config);
>>  	qcom_create_soc_sleep_stat_files(root, reg, d, config);
>>  	qcom_create_ddr_stat_files(root, reg, config);
>> +	/*
>> +	 * QMP is used for DDR stats syncing to MSG RAM for recent SoCs (SM8450 onwards).
>> +	 * The prior SoCs do not need QMP handle as the required stats are already present
>> +	 * in MSG RAM, provided the DDR_STATS_MAGIC_KEY matches.
>> +	 */
>> +	qcom_stats_qmp = qmp_get(&pdev->dev);
>> +	if (IS_ERR(qcom_stats_qmp))
>> +		qcom_stats_qmp = NULL;
> 
> Don't we need to handle QMP being not probed _yet_? In other words,
> there are several distinct cases:
> 
> - No QMP defined, proceed without it
> - QMP defined, not probed yet, return -EPROBE_DEFER here
> - QMP defined, qmp_get() returns an error, return that error code
> - QMP defined, qmp_get() returned valid pointer, proceed with using it.

I was thinking we could get rid of the qcom,qmp get-by-phandle mess
and replace it with a single static global instance.. But it's hard
to determine from the aossqmp driver whether we should ever expect
it to come up. A sufficient discriminator is "is_rpmh", but I'm not
sure we can rely on e.g. cmd_db_ready() to get an answer

Konrad

