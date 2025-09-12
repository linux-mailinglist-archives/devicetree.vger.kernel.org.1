Return-Path: <devicetree+bounces-216436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F01B54CD0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:13:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 505D91886BFE
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261FF3019C5;
	Fri, 12 Sep 2025 12:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKF/LsS/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90AC2FB97F
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678593; cv=none; b=JVBMyo01+7yKWvquj5KUdRY6NkRru9vXQ4zKm3THJk84J61aNGZTagGHl8YqiATKm03+tm13Y/XvJnNX2q3UvwaEe51jl9mnt6rewHKbdsFqMU6aInUrciSYT/Y7/XszcRfqHPQwODLl/cMfgALEe+i2wjh1UpayfC4Nb48GhuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678593; c=relaxed/simple;
	bh=edwJBANlYBATMWqJfznmjfQe9Te1sboPmlsb4rcp5wk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iXcr1uNgdld2wIaARjlK04nN2XsKPhjvsgmWCw5jp3c6+Lg5rVjFiGrjzZNnOX9N5ZKLPFSh+Ty7supKTRFrZwfnjvgn/KYiVbAPYo4X48NvXR8x+49lWqyg6EaPX0dXMhKPjMdDn1dwHPKD7wc0PT07YAPXp4K01fBPF+mCbfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKF/LsS/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDNq018545
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:03:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zMKtRR1gvr98NkFlahada0nc1pCDoOH4s0Uqq/hc/XM=; b=WKF/LsS/PAUWM2XV
	I1POHixo3Ch+L34iRRQ9hJZf4lUjKxqL22xSH/dQJk3dm+diZB053n756JOTq9MX
	qAbeTu2VcYx+0bN9xLevJI19AnRWr7O6PZ5gQzGW1jgnhYdm77qR8KeJWCigcvdW
	4WNl7IJaf7CdKtyzK9dyIsk5pSErrCEIgLNUw05hdHtN1izh3lGaeHVA8YefwlPu
	hVLLG6ySFRFT4HVLLyywvm1ei9BIrlisdVK2b3GJZpvryZjCjN0WKDFPyvOGW1zu
	ykOL1P3SNSnL3prr6NDwIm4xi55i0pj73PHhsLLBt1haGjYFL9KthsYrEVzJueeU
	t51ydw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8akjbj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:03:10 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-329976ff73cso430571a91.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678590; x=1758283390;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zMKtRR1gvr98NkFlahada0nc1pCDoOH4s0Uqq/hc/XM=;
        b=LCWmPO3f8nWmSkHeVOPHb7TpyBWjc6MislUjNJh/Fe6eKVQXo5zjKGSAURC03xGZ68
         9VUrPSIkgXbxMC3CijxmkeeLJ7aDTd/gx8/L9Z60oxMjHKZXcfQ1PrO7AhmsRHFHL+KJ
         mkqLPMs8lYYhPn9bZYJMknYfT/YPHpKBpN3LZELDBSQku27spJ3BwYdXjAp+3v/5/NXZ
         E8WA54/ryb0qOgs6l8gRbEHBNViJ67q70CGxmh/zL76m5HYPiDk1/jm6kT2dTxWi7q0B
         /mwgGmR1HtCa5f23eXEt23bxIB+T9E/5OMd7SUMLm3QTi+sh/uOHr7bEFF+izHAeUcOy
         jyVA==
X-Forwarded-Encrypted: i=1; AJvYcCX7Oj7Y3KW0Vx1hZJTP57hlqufiqdMP5uOETVh3X6FasbOR3Ld5xM17l8+7vwnhiTEoB0ZsGaBxc+SL@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl7kqnQx/7ROjOzIVirxpXcJfy9u2/sw0i+sRXs73s67e/JG6F
	SzCmCr3494ty4BcHFplGcEOyXGubVFK5Vm6LRoL5DpNmN9GEiBcZk+F2cYrP4bsP3KkwF9EiL7T
	OIJ+aYc7K+FUqJ2blgH4bYxKQzLXH8PcGPf8/PoanL6DhEPGPRIDTYMNdL8zpMV9E
X-Gm-Gg: ASbGnctr0rZmQf1yMmZ4Db7I+peDDZ+B0qMuR/A0f1TkO70mdwNrAkekiDnKvb7ThXc
	FGsCkpLVX73Y3EilYzohzBTP0unrGkbaJojU8Hu6QlBZdv3rMPYxIIjJ0ka42XWuse0yCCQDsEm
	beI1OfV29xJsgKEqsPB3H6FW4lYpCh9SJCjmkZisXLm9oT2WAq8zFRcqFhaBt86KKa7/KNDQ9wQ
	VEljje8XYjsOj8n1ygx3PFB17FVFEnuh1mxJIkW2m7QGcODBI+oY3szDKh9Yp/Kp2i4DlyksE/V
	4nnuaeaNG/rVd6I/C8fIX/fALr35DX7/QfuLxJsbVpT+4uI8F8EDSkvzPtMOWUcguZg24EKQkEh
	bGzQGw0F0p+redh9f2ZgMD4YfEkQ32w==
X-Received: by 2002:a17:90b:1d07:b0:32b:9416:312d with SMTP id 98e67ed59e1d1-32de4fcc070mr1755250a91.8.1757678589752;
        Fri, 12 Sep 2025 05:03:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLbeV2EFA9K8UJYz1maZdy+AMfW1DBGrroF29kzoSYpUtUZhd3N4o5LVMtPmgZDxe9yHDhjg==
X-Received: by 2002:a17:90b:1d07:b0:32b:9416:312d with SMTP id 98e67ed59e1d1-32de4fcc070mr1755211a91.8.1757678589043;
        Fri, 12 Sep 2025 05:03:09 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-776075fdd83sm5311370b3a.0.2025.09.12.05.03.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:03:08 -0700 (PDT)
Message-ID: <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:03:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
 <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c40bfe cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eXWC9YIREg2_PHQc8DoA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: dIvFEWJ--62uMI5LzvbGRStblo4QcJQd
X-Proofpoint-ORIG-GUID: dIvFEWJ--62uMI5LzvbGRStblo4QcJQd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfXyPXURU85dKm7
 HCmRXUEN/j6mZzX4jupqyqgy88yHb+Nbi/0qAgTuMo3ay60cmGAALWNkLFloAyPyLl6ivYmFWGJ
 PZGz5KbxutJt9JMr9RK086YkT74kcLl0Q6oiryxlrG+5uR8cZqJf0WoFmsQ52G/rPyyJYsfMl4E
 9t+sQKc9ljxZ56mLTikNVlwcP7O3n/MnoMX6ohxRGYPodslLCTw5XDE294Pv1BZXq1QQrQZsJfY
 wJtLdHvCeURoMnqrye9+a+cu0IS+1cnfHl34ekcecZ3ofcgNsGuYS0f06YLr9jI7HZycokg1Viv
 L9nY0wm1KXKaBjC0lAvYl+QFCsZCEViRS7rFtR7MM1OJOcSeurGOGT+DUIlXMv9EGMrd6wc5+SY
 2rUKH/0v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039


On 9/12/2025 6:32 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
>> Introduce mutual exclusion between USB and DP PHY modes to prevent
>> simultaneous activation.
> Describe the problem that you are trying to solve first.


Ok.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>>  	return 0;
>>  }
>>  
>> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
> mutex has a very well defined use case - a sleeping lock. Please find
> some ofther name.


Then how about 'qmp_check_exclude_phy'?


>> +{
>> +	if ((is_dp && qmp->usb_init_count) ||
>> +	    (!is_dp && qmp->dp_init_count)) {
>> +		dev_err(qmp->dev,
>> +			"PHY is configured for %s, can not enable %s\n",
>> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
>> +		return -EBUSY;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>  static int qmp_usbc_usb_enable(struct phy *phy)
>>  {
>>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

