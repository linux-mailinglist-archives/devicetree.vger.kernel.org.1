Return-Path: <devicetree+bounces-179216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4EABF4DC
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:55:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FCBA8E6403
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 12:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1AB9267B6D;
	Wed, 21 May 2025 12:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I2+5K89a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0F92673A9
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 12:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747831951; cv=none; b=RqKULDlhsJzQhk//5dpQaYRHiuXhitODcUqIEP8rl1Arum2oPTJ05FEJfid8Io8fXBaA5m7tFEjBwOkq4T/vqHEEr2nfyXTW/xSD5XIfgQszpEiZSedTajRo/J3KGwN+E1k1s0E6TPavSpOt+VVWIXSgqeWzyQ5rFV93I/1AICQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747831951; c=relaxed/simple;
	bh=ubr0IoG6QxDImEoRbYeRtQ/EWZKK2tR2JQKhedixIks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TPp1lVW4XFb3VTSQBNxFrL6pa00Ug9wzaxc+zJxoelvRDX7DvF1kl6HM07xOiKidpl2/OLVS5F5RWHa9DW5bdWaWEXLt61z7OYN/nFCKnmnsMfR2vjYnQdru71O267pwhj/O9EAp4K7DYjBNP8OqMnwJnecwusHkSU75Tzxz9do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I2+5K89a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XVcE013617
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 12:52:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tZm1FcnWYSxqGc6IW3xjphoG
	JpTqJodC7MLjwn9TjHc=; b=I2+5K89aoGBs7qFoEkVBHrm9duJlO+OREk4tVzZN
	bN78S83KHmUIrZSlzqpDD4XlIIUnqmGThqZOCSUxQlOrAU+qmTtYVrLeLdEPV2GR
	YMho5mIM6UyTLiODbPn4xmrUwYSfz9GQERP0kRbiaZhnYZAR3A679uq8loBZcc3B
	L1/j6JtwzecCR16ca6EgfeslWqbmFKw3cm6PefVsbmxli/PWWHSs9YJo43/vh5sf
	DmbCLSwz33iVp/jODtCXYKGS9ptuGuYbwuzoyygHISkb6wW7znl1tv5iK1nMEX1m
	Kr++J7svvc+ctNhMkEpxwudiqknRYQq54iz6A8VLR0MRaA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh5b147-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 12:52:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e2872e57so1201962285a.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 05:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747831948; x=1748436748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZm1FcnWYSxqGc6IW3xjphoGJpTqJodC7MLjwn9TjHc=;
        b=ut4sKl2ZIzB+0cLjh8YIo9B8g/lDJDe3gOLXPwPA7xtOrJWQ2mjKrAkiAbIxCWXFar
         mEns6TbA0bclw3AGblJ2LRCLuTvh1DiQ5Vu44YPlGR6l6+KRjdluW0w9hUzd24X9bEIL
         pU1dsVTRYMwWxtfdMjNOtFJ0Ouypp+Jd1UxOWU4VHU1LeEnu1bszKvVjEktZhEbg9oHK
         pJuePBxXsmlk0xzv+7cfQIRofqIyPkyX+y1S8DwtnpXxiefGO1VkOk3XfAJ5h5FaiwoO
         U1VIS4K86LtFzyNElHMtmM3wwSryX/kzmTrnHjK+YWE5UfiMut+Jz/hpUvryaczYJEhk
         Bekw==
X-Forwarded-Encrypted: i=1; AJvYcCX6mG/Srg+2J0qnBAOsLOFe+5hpEYd/EoryPy/r5aH213huFpna+UpM25c+Zzh4UC94k33WqF2Z2Kvi@vger.kernel.org
X-Gm-Message-State: AOJu0YzXtqZD37/MaoDC2p/yiNMEOQGvz9dpdZ9yVSkwYHmUSECE9xzr
	zHs5JfGM/qQ0Q00Q5tTvk0NX4rCltSpPvRg6vTJTvXPLsb5GY1ROwWZbt25m3sNlSwjg51LoeDn
	hYrJxUjkHwmY2V924q+uj2bx9fnW0xqn3tuxa1omzoWbMkZlg4JF+02v6ZI/FhD56
X-Gm-Gg: ASbGncsS62N4dVc22fQBNBUoz3mfXy0LS5EIOnCxaC9eapeq2rF4oZ1JVE3wVNAyRD/
	BSxZWKQI3WAPEZbkKnFbo2i+QJMDca3V2b6a+rwKKWS7DP1sf7sPRKmuta+Ra+N7oq/HDdE2K9p
	XJndElkrycSHl7GRcqDJhrkbX2ug37+Mduvgcd25KEPVkgRJa7Jjg7AmJppxtmyy6tJLHa3FETD
	vffTwyfOHcn5eCDYEKH5pGvWcNSPCt9KhcSyy14Cl5gsDvE4P+BrkyXxSer+nU7LW+pCMmNCVZV
	Eud6MU40ejHPPIGgCzNqznh4xMwbZAHsNwacuEu38HhMfZ09PUTxTsQhrV5UMnfPt+i77BMHONM
	=
X-Received: by 2002:a05:620a:459f:b0:7cd:31ca:d81 with SMTP id af79cd13be357-7cd4673b9e8mr2611201885a.27.1747831947939;
        Wed, 21 May 2025 05:52:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElTuLwfN5LBdLDm3L5ftLVYf4GR8LqxAuo0yz1nHnyhymUVMITO1eRg42xfg0uzDWWAlCCaQ==
X-Received: by 2002:a05:620a:459f:b0:7cd:31ca:d81 with SMTP id af79cd13be357-7cd4673b9e8mr2611198585a.27.1747831947533;
        Wed, 21 May 2025 05:52:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f16394sm2826161e87.5.2025.05.21.05.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 05:52:26 -0700 (PDT)
Date: Wed, 21 May 2025 15:52:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/3] soc: qcom: qcom_stats: Add QMP support for
 syncing ddr stats
Message-ID: <jl4g7mutb65ifxuv3covropjntziv5enxyc3lgz2fi7ddu64bd@e726p6by3vfh>
References: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
 <20250521-ddr_stats_-v2-2-2c54ea4fc071@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250521-ddr_stats_-v2-2-2c54ea4fc071@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDEyNCBTYWx0ZWRfX7xK7SIEJoKzh
 C8ZYs3wV7qhg/ZRlUmKEnyLp5S4Ck+zUOO8DjizzGmJJTwKIVVmXhh9KnOem1Xs6heWOUoWyS2D
 UXmQiV0cEa8RKe6ZfFh43tnKYLBH5TdjhvIYurZ/uukHMs9uA2U3rXMRjJDYbQiMANheOk8jRKr
 D0dIcnS+mYW81+lHFyoDqTk4occZyCs0XnE40ZNbW0nwu/ZpfjM2pioWZfdFCLB4sauvh/nSb7s
 7cmf4jfyCa0oncY8a9VJCkWGG1LSPtzOMs3dMCgA2Hd5Q9W8CKWK7l0vnIoJSY3sjL6F6auN1Cf
 zu6B53l6AAj5xf2gEBVDsHINcWBvZlQV/aVJUOSMF1qye6KrxhRaJNhD64i0SLQ51uD91L5a0vz
 yi4sSwzus3H+ACB4iiu0BTNiIIdCo8twqTz1k2b4pp9CTDZU6y8w+ESr/ny2S9H0jn8g9v5D
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682dcc8d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=Prqm17leZL3r9GWXGqMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: XbwdYZ1mIRzk3YPa2abfY4Q4Qb3TB1aH
X-Proofpoint-ORIG-GUID: XbwdYZ1mIRzk3YPa2abfY4Q4Qb3TB1aH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_04,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505210124

On Wed, May 21, 2025 at 02:02:11PM +0530, Maulik Shah wrote:
> Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
> ddr stats. The duration field of ddr stats will get populated only if QMP
> command is sent.
> 
> Add support to send ddr stats freqsync QMP command.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/qcom_stats.c | 29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> @@ -310,6 +329,14 @@ static int qcom_stats_probe(struct platform_device *pdev)
>  	qcom_create_subsystem_stat_files(root, config);
>  	qcom_create_soc_sleep_stat_files(root, reg, d, config);
>  	qcom_create_ddr_stat_files(root, reg, config);
> +	/*
> +	 * QMP is used for DDR stats syncing to MSG RAM for recent SoCs (SM8450 onwards).
> +	 * The prior SoCs do not need QMP handle as the required stats are already present
> +	 * in MSG RAM, provided the DDR_STATS_MAGIC_KEY matches.
> +	 */
> +	qcom_stats_qmp = qmp_get(&pdev->dev);
> +	if (IS_ERR(qcom_stats_qmp))
> +		qcom_stats_qmp = NULL;

Don't we need to handle QMP being not probed _yet_? In other words,
there are several distinct cases:

- No QMP defined, proceed without it
- QMP defined, not probed yet, return -EPROBE_DEFER here
- QMP defined, qmp_get() returns an error, return that error code
- QMP defined, qmp_get() returned valid pointer, proceed with using it.

>  
>  	platform_set_drvdata(pdev, root);
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

