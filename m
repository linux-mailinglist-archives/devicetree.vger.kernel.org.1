Return-Path: <devicetree+bounces-133598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E9B9FAF55
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87B4B1885407
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 14:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31E21F941;
	Mon, 23 Dec 2024 14:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bvuBeFIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8B711712
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734963485; cv=none; b=DN4XdKrI1M3jtrN56MMJ0d5g+pXHna7HhEg5lPDLc+7UhhYcGybf4x41AW1DzaZekyLFrCV63oEi6TYcazDv7q6kjJDR0EbWyiN110OL3D0bPp7Z8ZP5UZeUAw70YG8HzRZlxxhSCq2SMHDaHiO/LPzDojbjQpzRL7a4ZdEeSSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734963485; c=relaxed/simple;
	bh=XTU+vlqtXeeHOOIoe2EWIgZrUhV2CUswvVm/Ujuim4c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oBlTIa7zkfHJC75WAfODp3lPAd2mgYBiLBb7wusCuS5bO909mcTzTwDvBJyyd4ipljlxtIRwnAznCutYceH7ndyzUR82mBaOxGwboPN52srwwHykK0WsKLEUB2aXcfyf7mfpWW4SD6H6Cc1eUi0gZwxJOxlQlWToaqZJJSEt0oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bvuBeFIj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BNBVdYR002801
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:18:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H8jWZ4RVBkQFzgMbQPoAekGo+aUiaBBpyu//XLY0V5A=; b=bvuBeFIjh6wyaix2
	KywSx7nzLhvd8LzVAo2BYekCY6TT6aGWNTt1RM6DlrwZVeGSEjhNx2x8QrQQVNBQ
	3QGTMQP0v1gXTLpbFpoN4nCOpN5LnIKFpLdakfpgIKF81i5hazMVxtU8pOO6FBdc
	SsClrs3xOnnVZxsWtLThw43xMsDdCe7Sth/tw6iMbzSly15tlL1GDUb0FMOrALex
	zNcrb5BOUNVL7eWaRzWZuotUNSK8IyXmGmfgxWIqF04ATm02znFjM0jlZCs2a51S
	0Yo7PpR7zPmiWQhhNjvh4IpKcL0tqNKWjuGaWUpewIhUNFOpznA4c3+M26PSFqJ2
	1VZc9A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q72mrbf7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:18:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b704c982eeso26379985a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:18:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734963481; x=1735568281;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H8jWZ4RVBkQFzgMbQPoAekGo+aUiaBBpyu//XLY0V5A=;
        b=P+syJMsdtFCjR3K8svzhBl3TsgTJkj94dHPwvm9zrWAcJszAQZtyUlSOsAxqQjUnrD
         tbCeEncjq35RE25WepzNKkTZePsPrDkr+kZ76ZFirD0M1qqBzPluw9uKu82VunjVuiPD
         JsyEXk3myP2vxMs3Wp81Z2/Hn2UBamh7hvttqF5QKtziaqSlrApElbld2tpocfUzB/qd
         66DBUDgXh7PmOrSv2DojxdTHxi3bzLDny2t7AqBK2mysf4ej2bDu96qRBDGfM1C8nelx
         zCaJaUrMPDuP7EJOsarWX9vY7NjXF5bzf249eMa62jG1AlJIXFajgJWvhRHY5+dIt4UW
         KxBg==
X-Forwarded-Encrypted: i=1; AJvYcCUQhQOwB1gDPV6wQa0TUllTeUOHkPSJ3uECyKiEgjt/HorA6GOKW2YY+xJPNQHEsaEsRkBXfo+NIbJU@vger.kernel.org
X-Gm-Message-State: AOJu0YwkxvDh3z9d4zrEKwEDHNPCThbsO2JFnJB9lT3Nd7LNv4CnK0es
	hI6t2twA9rwoOBZk3Te3JtVohSMVpzW+GHYlkST+l3dojJZHJUytovVe4+ofT1t1ysYbr9XAtLk
	Edjbk5p0ay8MdMxYwfDMnM4MKaev/pxW+jLwA2Lo+IuCZi91SQTMW7NE1fbKk
X-Gm-Gg: ASbGnctw0+uTC8lZ1ywO9KVq1N+aMtD7MvWHrmClDNP05NJj39OtOfbDolZOaRvqKuK
	pd0wlXfhBR1d5ipwBZr4P/FLu5m8QJw5gxAvvnm1wF5Zws+uoCkNeH0t/giFVi1XXXnu0OEnj1h
	JQSc+3S+oL/7TQ9zH+tpcWTnrr8WTYizUXCMRxMk3xy94D3J/dGdDQ1gEa1jDSZVoza3HBY5g/0
	3+/een7FI8MYE/PNnpxLdl02R71EniGTA91Y5K2OqLtf4ITW4Xd4cPoDKdrP1y7wU8FDtZitl+c
	wLUQK33pyfn7WRz//d+mF5dueUnidlFmTK0=
X-Received: by 2002:a05:620a:4455:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b9ba733805mr676982285a.6.1734963481632;
        Mon, 23 Dec 2024 06:18:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5mDH6W1vcPlFhnTy5y2Kiwrye7mKSnekDwlY0l6aOYBufWCIaRB1qlepbhjrjk5HeHuxcsQ==
X-Received: by 2002:a05:620a:4455:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b9ba733805mr676979885a.6.1734963481269;
        Mon, 23 Dec 2024 06:18:01 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4e5csm522086466b.115.2024.12.23.06.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 06:18:00 -0800 (PST)
Message-ID: <fde279ad-27ed-4947-a408-23139bcd270a@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 15:17:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] media: venus: pm_helpers: use opp-table for the
 frequency
To: Renjiang Han <quic_renjiang@quicinc.com>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241219-add-venus-for-qcs615-v6-0-e9a74d3b003d@quicinc.com>
 <20241219-add-venus-for-qcs615-v6-2-e9a74d3b003d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241219-add-venus-for-qcs615-v6-2-e9a74d3b003d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VgtpqFGoRpPcXeC7mqFO07-Tn9cJ3yzt
X-Proofpoint-GUID: VgtpqFGoRpPcXeC7mqFO07-Tn9cJ3yzt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 clxscore=1015 mlxscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412230128

On 19.12.2024 6:41 AM, Renjiang Han wrote:
> The frequency value in the opp-table in the device tree and the freq_tbl
> in the driver are the same.
> 
> Therefore, update pm_helpers.c to use the opp-table for frequency values
> for the v4 core.
> If getting data from the opp table fails, fall back to using the frequency
> table.
> 
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---
>  drivers/media/platform/qcom/venus/pm_helpers.c | 53 +++++++++++++++++++-------
>  1 file changed, 39 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/venus/pm_helpers.c b/drivers/media/platform/qcom/venus/pm_helpers.c
> index 33a5a659c0ada0ca97eebb5522c5f349f95c49c7..b61c0ad152878870b7223efa274e137d3636433b 100644
> --- a/drivers/media/platform/qcom/venus/pm_helpers.c
> +++ b/drivers/media/platform/qcom/venus/pm_helpers.c
> @@ -43,14 +43,20 @@ static int core_clks_enable(struct venus_core *core)
>  	const struct venus_resources *res = core->res;
>  	const struct freq_tbl *freq_tbl = core->res->freq_tbl;
>  	unsigned int freq_tbl_size = core->res->freq_tbl_size;
> +	struct device *dev = core->dev;
> +	struct dev_pm_opp *opp;
>  	unsigned long freq;
>  	unsigned int i;
>  	int ret;
>  
> -	if (!freq_tbl)
> -		return -EINVAL;
> -
> -	freq = freq_tbl[freq_tbl_size - 1].freq;
> +	opp = dev_pm_opp_find_freq_ceil(dev, &freq);
> +	if (IS_ERR(opp)) {
> +		if (!freq_tbl)
> +			return -EINVAL;
> +		freq = freq_tbl[freq_tbl_size - 1].freq;
> +	} else {
> +		dev_pm_opp_put(opp);
> +	}

I'm not super convinced how this could have ever worked without
scaling voltage levels, by the way. Perhaps this will squash some
random bugs :|

Konrad

