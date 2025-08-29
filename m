Return-Path: <devicetree+bounces-210357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DACA4B3B58E
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 10:10:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 925A94E29E6
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 08:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030EE2877DE;
	Fri, 29 Aug 2025 08:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bcMPcHi0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2791E2853EF
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 08:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756455000; cv=none; b=t5zUibkLl4RpE7fDsZ8g8CybhBQV/3FxFqQEzm9rKRAtRSRPQNezfBYPot6VsX6yaNtkXwdT9lm9LV9Kk+kXiW5BfJZv+dnPb5KQW+XoFY4JC6L4+856zSudAMqT9QCZ2xf4RBnLqZ21OHG3WQiNH5K1O0g8vBKN5PiiQXYaX7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756455000; c=relaxed/simple;
	bh=z1h03GLNdXLleb5z+38xr8uADY1LeMbzAyZCQ9BdpzM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lvHexRWnBahj96c107FYLC6g7ukebjC22QrE3+5W4huoDSe8OTbZCL2Go/vJh3RQpQV2CnBvyihtb7ZNrsD/Rc7V6Wikjr6SF8ECfXI5MB9rXd5/RGDd1AlEMZbzteT6T6UurYqbRtF9jWW7kFrZTNPqiLKyZ5VshvtTpUgxTyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bcMPcHi0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57T85PlH008020
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 08:09:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bsv6NnJRTxJOMkJMe1wyAAiF
	Gmai0uCSvzMJL+nXi6A=; b=bcMPcHi0eahG31DYTlJndkJKxsFmOJaQJjCfgPiw
	oRy7USpQH2G0MGhGU5YZKKaaVJ3vfXA3fqqofwPhwmx1U9Df4O4vt00xR8DXLYEL
	yCWAy9+fqOVRJ9jMjExYyBuq8Ng3f6sg7GNb6O9xLFlX88EUJk5bzbzyh45Ex4cB
	xyZV0IeywDMFfdqGfrM+VeHp+YXvKBPzuiLNlUarVK8gU1M6BRHD8vjRhRhDdVes
	npFNYg+cu9tBlNRqsMZMDW6IQ36xlGk6nQYjPI3/7trdnNA1wK18V8kiuhlo+MPi
	xMOht9UkYecWW5Nx/gPIkP8Rc5MkAo5C8P5Sq6cGCzLmEA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpf5j8v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 08:09:57 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109ae72caso36926181cf.1
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 01:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756454997; x=1757059797;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bsv6NnJRTxJOMkJMe1wyAAiFGmai0uCSvzMJL+nXi6A=;
        b=VItawHEObgCJ+1CgDWrjyyHoc415J1qym6UdPKtGBnPR/4LecPZt3b/ebKR75zIaTl
         7nsErKQi6Bm38lg0BvYan5j+AUGpQ0oV0RNUOX6abIsl45zBUggJzeS433ABT1bLYI8Y
         S2ek0yq/jOpEpgYWxAjntKNNX3+BJm7WnmwJ+BTA6fP0GEq73DznVygdr3ZdxhishQsu
         fUzGHNyYOvCD/puYOsdn466MOO4ddWa8WhRTHq1gyHLiGsqaT8ZDxB3tvwWM1hDAyI9m
         LZEH3VP0QeeCRCt+S77AEVEL7IGKn7KtjH5I8Zp1PWFR4zPJOpE2GtBzHnaIrON1Xu2z
         cCpA==
X-Forwarded-Encrypted: i=1; AJvYcCXt9eHBrtLtaUDxQxZcO153hPmGGW0VBvZLuUsdMIBy5oDEw0AYL8Ug+VAjOAg++LQS9NdMv5/2JyJu@vger.kernel.org
X-Gm-Message-State: AOJu0YztBj0fJk0iWD/YU1bjpBBSLXMcTzi9DopoIJKp3RdMdCar5phd
	KZlcenX4vo3YCKRTbLciDt4uj+l5hKPiQ3uLu1c3tF77iP1ca5ZeFSdrszoPHCE7hyqpc9irFvy
	8HY/4f1jnwafjUFFsgumJI05Cs20H2H1IuYiQ4gE3ku14YEfq7Txae9J6ixRP/Vvo
X-Gm-Gg: ASbGncvBAK7luwAfkp93C6D+6XqfwKIrjod5zVEYPs3N56ZKWeat7OhtN4fchirheK9
	juRUQlnRf6uTPYVviPb63uG1dwj3lp87fwXY6G7Euee6mF1RlKOe0yyVMeN8wC/FFYPn6mowEjy
	Zp8MPmTJDvIKVm0HhGP15TgMyQIFSEUTdwUZD8QUWAUdJDmKLi+QBd0l+YQQ2nIj8fFcIiXGxnl
	bKpdlbL6jYT4C9JuCOy/L9qG8AySmP2D+lZGzYS2FEA7Uz60E7LpvxELOP3qMvv8rWRjg94FtoV
	6lXl4ApLynkriJIVpRLj5ZmdApH+Cybg/OjvcE+TZRX8retCv51eKYDkMyskuusRHqdcQN9/NPN
	fOlfZmlXYs6nWNHuq+UoxqJ5b42w1hZZnpElosNDmUEEughyNrxiu
X-Received: by 2002:a05:622a:249:b0:4b2:e151:a1e3 with SMTP id d75a77b69052e-4b2ea694690mr119134201cf.36.1756454997050;
        Fri, 29 Aug 2025 01:09:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQwcGrf8Uq6ErZTLA64qML9AZfcxsKmHVxxEtfjH1059x26sGs3RoBSkASHz9bNHu8//dSdQ==
X-Received: by 2002:a05:622a:249:b0:4b2:e151:a1e3 with SMTP id d75a77b69052e-4b2ea694690mr119133841cf.36.1756454996508;
        Fri, 29 Aug 2025 01:09:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f676dc52esm451242e87.8.2025.08.29.01.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 01:09:55 -0700 (PDT)
Date: Fri, 29 Aug 2025 11:09:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>, jic23@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        konradybcio@kernel.org, daniel.lezcano@linaro.org, sboyd@kernel.org,
        amitk@kernel.org, thara.gopinath@gmail.com, lee@kernel.org,
        rafael@kernel.org, subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org
Subject: Re: [PATCH V7 0/5] Add support for QCOM SPMI PMIC5 Gen3 ADC
Message-ID: <zgm2k2osmasdal6anba66pw24a7fiypgwlf3c36kvteshz7uef@wee4had7x54u>
References: <20250826083657.4005727-1-jishnu.prakash@oss.qualcomm.com>
 <20250829-demonic-soft-guppy-512c13@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829-demonic-soft-guppy-512c13@kuoka>
X-Proofpoint-GUID: I4wIvDOvMMR2pWZhVK2V5AUGQ9qQA3BZ
X-Proofpoint-ORIG-GUID: I4wIvDOvMMR2pWZhVK2V5AUGQ9qQA3BZ
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68b16056 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=nrI73Fic2Yz_lu5inCMA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX5NhQVAx8KKTh
 421eN2O/8LS4BiNV2qAbbTR386F/VE25QC6VhNmJ4nOUH4IQp2jJdiNStZmyi+KTif1yJrS/wbI
 PJHt4WhvTFYoUNNg7a7z5ABDZ+D6AzWt1tnDS+CmvRnq7IC/JC5x3G4XC2Cs7LvSZpM/x3ZikFv
 29oOQpx7JAiUWGSUBYLp7RdHiJBVFNNhfxJjm3Ee3EW+x4e8NFWEIwXrUY2fKankHcN3BtSLalK
 oMLb1V9p3KDzZwZQcYq8kHMXDBOusM3J5XK/vnYjqEFuwWoPNlxCHpDhXPwQtXDhYBijPAuX0q9
 A+IsR6Cj5Kh0gwkqoarg9IkmScBuC3lGvwSnD9kXbfHqwKIBMedKc4wZLnckKcAyowrvqWjxh4B
 4eylxBqV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142

On Fri, Aug 29, 2025 at 09:12:59AM +0200, Krzysztof Kozlowski wrote:
> On Tue, Aug 26, 2025 at 02:06:52PM +0530, Jishnu Prakash wrote:
> >  create mode 100644 drivers/iio/adc/qcom-spmi-adc5-gen3.c
> >  create mode 100644 drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c
> >  create mode 100644 include/dt-bindings/iio/adc/qcom,pm8550-adc5-gen3.h
> >  create mode 100644 include/dt-bindings/iio/adc/qcom,pm8550b-adc5-gen3.h
> >  create mode 100644 include/dt-bindings/iio/adc/qcom,pm8550vx-adc5-gen3.h
> >  create mode 100644 include/dt-bindings/iio/adc/qcom,pmk8550-adc5-gen3.h
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-adc7-pm7325.h (98%)
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-adc7-pm8350.h (98%)
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-adc7-pm8350b.h (99%)
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-adc7-pmk8350.h (97%)
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-adc7-pmr735a.h (95%)
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-adc7-pmr735b.h (95%)
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-adc7-smb139x.h (93%)
> >  rename include/dt-bindings/iio/{ => adc}/qcom,spmi-vadc.h (78%)
> >  create mode 100644 include/linux/iio/adc/qcom-adc5-gen3-common.h
> > 
> > 
> > base-commit: 0f4c93f7eb861acab537dbe94441817a270537bf
> 
> What's the base commit?
> 
> git show 0f4c93f7eb861acab537dbe94441817a270537bf
> fatal: bad object 0f4c93f7eb861acab537dbe94441817a270537bf

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250822&id=0f4c93f7eb861acab537dbe94441817a270537bf

> 
> 
> b4 diff fails here, so you are not making this process easier for us.
> 
> b4 diff '20250826083657.4005727-1-jishnu.prakash@oss.qualcomm.com'
> Grabbing thread from lore.kernel.org/all/20250826083657.4005727-1-jishnu.prakash@oss.qualcomm.com/t.mbox.gz
> Checking for older revisions
> Grabbing search results from lore.kernel.org
>   Added from v6: 6 patches
> ---
> Analyzing 53 messages in the thread
> Preparing fake-am for v6: dt-bindings: iio/adc: Move QCOM ADC bindings to iio/adc folder
> ERROR: Could not fake-am version v6
> ---
> Could not create fake-am range for lower series v6
> 
> > 

-- 
With best wishes
Dmitry

