Return-Path: <devicetree+bounces-187984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1D6AE208C
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 19:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 869B3188D368
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 17:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C690D2E92B4;
	Fri, 20 Jun 2025 17:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jGFbBnwr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BD22DFF2F
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750439266; cv=none; b=GVDnALq71evoEOwrlIOlibuso0FDCphOoLC1QCQa0PIWLoAId2my7IJLYT6VyMAjA9E4zBHe+v1yWEjAE/LFuhm1+uY79J7rWbvu48+lQFE6XomjhSABOgiACxDCgV6pzpsaP8bSCo5LnAgjydwY6/Yd+Tdj8yBnv1c+7Xks2po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750439266; c=relaxed/simple;
	bh=TJoa2xPImS4wAM1uUVWoOFg2ZyzLr2gFfx8eCrn+wM0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a14Kns4wt1F2hCg0VhGrztKwvDlELDm/AJP/lcAlk4jKrWe/ghnDTksMTrtLwP0lNKSvrE7trI6bo1TxGZmx4Tf36YLemVDRbiEjbbARsZVeSZPmbxrDKOY1D/yhTUWXKPNZtsiEK3j9UUen3Vz/fE+L71IYg46sZD5U5Ebu7So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jGFbBnwr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KDG3RI019148
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:07:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hKKwQ1dKYiwuL/gFRwwSIgyThK0XHURSCnVrX9k5gJg=; b=jGFbBnwrmAaYrBWh
	0xzZGscS1uyi5Kkfttcn23aT9G8l2Rm+6h0wVa2FWYAxlCSHsrN+K6+AVY9Vo3i4
	B67RczhwXtXSPBUggERRf2kSNESIGDWPQ4bN53te4EnYjnLbLzOoC2LoLrIMAQ5T
	f4zz2zR5SK2FeIj62BUGC3ly6O1DF72RH9+wbt5Cfz96BOJaHz/4AznNj7EAVMj6
	ESsiyHmo0bWm5zfZJJ7eL2W6BfwOhcPoMp9Z3p2np17DhKDPhQiaTe+rJSvcuyiq
	qiDF1RABlLwmL7Ec51bOyE2nVy1mWfhM+1oUc3C4LQnBPTSrH21iu/J7V/rVMB2c
	zdgdHQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47d0pcj01k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:07:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6facbe71504so4615136d6.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:07:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750439263; x=1751044063;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hKKwQ1dKYiwuL/gFRwwSIgyThK0XHURSCnVrX9k5gJg=;
        b=Ku2k+3ASP3iK38D1lY26WAE4TRW1vCEO/Ylft1/Q95/+VBA5CYYwZqrU0J6ayA3jLY
         jJhMUZ/BmUXfT5FARYb8bNVkgc2A8oTOMqTn5P0FIYOU7wVVcGX9kpI2rCJi/Mj9BaBF
         44Hii1ZDOsRMfmKspcMHswHZ6hCjAWuhPFB+8yxgjTqFykpQIb85KGfZrsKtiWRjmSWP
         hLJEaaUB7eF+kpjcTpSckwsgs1loyAlCwzkWRWP6jRZMI2UidEtvWcZux86+DWF9XtG6
         ffCIxa1TjazCmEke4V4gsxG9GUqpYgztmVyyy1k9EFPaFJenm2svyDRwc1mizHKtBv5W
         qB9w==
X-Forwarded-Encrypted: i=1; AJvYcCVSx4HIM5+N+9ZeM5/HGddCC65wD8NYeYQ01YkSTR5mKe+90/AKKlngzD9FgiuL6D0RBbvPnKnHBp+u@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4hCN/UH4Ef8KTiRY9brSjx6j4nTWpIUSiwSW+0ZWEi9kTsxNW
	x9JKUziWAYqYVUKPWyTqIJT9XZyt24D2d71YFd2+7Dsi4cRvQXg6b8KudntM59dK8thIjzpyYdU
	i9Mvl9cBgFANRyR6r1WLizOd0NgDVscir8KkUX3soOKlWli1KtVOC584xg95T7h+K
X-Gm-Gg: ASbGncveTgaf0vku1LbNz4v+9nijjxuDCz1Je+FPxil3oDiPCopZX9hsOQmtl3SnSk9
	4VxZ2bdYtNho64b5N5R0l8UDvAwJnDsDvGqSkVOalgTmhJb7KXtrsTzOR2sfOXw0Ps3zA2o3EM0
	Clwn32oG77ebYjgNizgB2oMN0s/j69symu8SVulOSgpDEZQVWYbd3t7rrKf5f1dECeW0rAx6kiq
	+/b3YHJL5qgm2nNxza6N5k+sId95LFUTPwbDcdKrXg93S7VaBFxFJODUuTYpml3NuZ0MacyWrlf
	NAcmiBdCB/QLvsFoJmZgZ6O28ao0YbRKoTjyduFLR/H+KvqVBX5Qn5JT00JhRBA/llemzV1ilIW
	vO2g=
X-Received: by 2002:a05:620a:f10:b0:7d3:8e88:dc0a with SMTP id af79cd13be357-7d3f9916bfamr156998685a.11.1750439262663;
        Fri, 20 Jun 2025 10:07:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVSWLQFC0kpw0PBqz9gCS9IFs8NVF3u0lcuSEdXmZtlYNC6FTQskFyKD9xoz9LSWWobdlLxQ==
X-Received: by 2002:a05:620a:f10:b0:7d3:8e88:dc0a with SMTP id af79cd13be357-7d3f9916bfamr156996185a.11.1750439262103;
        Fri, 20 Jun 2025 10:07:42 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae05433aa56sm188279866b.183.2025.06.20.10.07.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 10:07:41 -0700 (PDT)
Message-ID: <efa03e46-35c1-468e-a188-8e857ecd4b8b@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 19:07:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/11] power: supply: qcom_smbx: bump up the max current
To: Casey Connolly <casey.connolly@linaro.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        linux-hardening@vger.kernel.org
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-7-ac5dec51b6e1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250619-smb2-smb5-support-v1-7-ac5dec51b6e1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KLQhcm1jNzHsCoD5ffV3gty-YhBDeUBj
X-Authority-Analysis: v=2.4 cv=YKyfyQGx c=1 sm=1 tr=0 ts=68559560 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=rhSfmRiNZEirnHGn6ZAA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: KLQhcm1jNzHsCoD5ffV3gty-YhBDeUBj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEyMCBTYWx0ZWRfX4fd++Meg/fZg
 mj+sKWgiNmPzec03ZhSGadQevH0sT20MsIwX3wzqQ7wlhe5GSHwKV3IiCu5dUBo9r/0X35ycu3Z
 h3L2YVzmwfxQd3lpOTokxB8/eLbuztybEfMZl1z2RsiWY5Sq8d89xPUZ/C0r5HMfnjeCaLYAtpt
 eqDwlXvrZL4EpFW+v1XbV8meu5D7uelgeI67OjGs5aHaPNn6wRSgac98Uba/a+9sq2wKWKYcgLh
 uDH9J9eop723kD/OYrvOcrtqGN8x2yLS1g8koOiCp+Q3rkzBN47mbJ9hyC3eGZ0M2LrMWWSlFW8
 08wRbahKaJfYgTyk6B1jlkSZIexGF/BE57QS5LRi1FViUgrjO8H/i4xriMBZw+PdJ8iuAJ8rbRp
 d2jxP2UGg6m8n6XfryW8nbpSPuviYdXWadZHkwV+ptqsqd84v1qLmbb2WLxJzfB9xE9gFv0e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 mlxlogscore=999 phishscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200120

On 6/19/25 4:55 PM, Casey Connolly wrote:
> I set a super conservative current limit since we lack many of the
> safety features (thermal monitoring, etc) that these drivers really
> need. However now we have a better understanding of the hardware, it's
> fine to bump this limit up a bit, devices can additionally set the max
> current via devicetree instead.
> 
> Since this is common to smb2 and smb5, move this write out of the init
> sequence and into probe proper.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  drivers/power/supply/qcom_smbx.c | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/power/supply/qcom_smbx.c b/drivers/power/supply/qcom_smbx.c
> index 7fc232fa7260a7422ac12a48686cd7d396edd9a4..d1607674d291d6ef5762d35acd3330e2116f41a3 100644
> --- a/drivers/power/supply/qcom_smbx.c
> +++ b/drivers/power/supply/qcom_smbx.c
> @@ -875,16 +875,8 @@ static const struct smb_init_register smb_init_seq[] = {
>  	 */
>  	{ .addr = PRE_CHARGE_CURRENT_CFG,
>  	  .mask = PRE_CHARGE_CURRENT_SETTING_MASK,
>  	  .val = 500000 / CURRENT_SCALE_FACTOR },
> -	/*
> -	 * This overrides all of the current limit options exposed to userspace
> -	 * and prevents the device from pulling more than ~1A. This is done
> -	 * to minimise potential fire hazard risks.
> -	 */
> -	{ .addr = FAST_CHARGE_CURRENT_CFG,
> -	  .mask = FAST_CHARGE_CURRENT_SETTING_MASK,
> -	  .val = 1000000 / CURRENT_SCALE_FACTOR },
>  };
>  
>  static int smb_init_hw(struct smb_chip *chip)
>  {
> @@ -1029,8 +1021,22 @@ static int smb_probe(struct platform_device *pdev)
>  		return dev_err_probe(chip->dev, rc, "Couldn't set wake irq\n");
>  
>  	platform_set_drvdata(pdev, chip);
>  
> +	/*
> +	 * This overrides all of the other current limits and is expected
> +	 * to be used for setting limits based on temperature. We set some
> +	 * relatively safe default value while still allowing a comfortably
> +	 * fast charging rate. Once temperature monitoring is hooked up we
> +	 * would expect this to be changed dynamically based on temperature
> +	 * reporting.
> +	 */
> +	rc = regmap_write(chip->regmap, chip->base + FAST_CHARGE_CURRENT_CFG,
> +			  1950000 / CURRENT_SCALE_FACTOR);

In surprise to no one, I'm really not sure..

1A is not a bad default value if no other information at all is provided.
I'd say deferring this to DTS would be the best, so that if the programmer
knows that e.g. the batt/skin temp sensors are there, it takes an explicit
addition to allow more current

Konrad

