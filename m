Return-Path: <devicetree+bounces-180337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E211AC34DE
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 15:27:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE1821895FAB
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 13:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384A21F12F6;
	Sun, 25 May 2025 13:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mTtQ6ytS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7831E2847
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 13:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748179670; cv=none; b=pDdeT5bxEr61y5OA7H+sAFhyNTaehLwPfJPsdBar8FNKkLVBRCcri5131DbRkx2tddX+ThWM74rFZsJpNn/aRT0zxXl42zO5lew10QVwdbVirPGv4CMXIKWx/cZ7r6n4tPGWV2bGr6lkhctZ7slRwmlRebmGQ71wn2YNgMZVJ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748179670; c=relaxed/simple;
	bh=z/PMOxakk5IgeR4a6legaQJ8OmzM57gIWk0OTZM+RUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qSmt5ohzIDtIGfVi9T6NeIFkz+Piz6LcGN2ShKubxueg9cV+eeUnoNdrU64ufz9piV3XN6SHhUWi4q2CjmZWwHYk1DrSM+D+59nJfmz6MAjFp1+iwk4YmXjmpj6VYtismo+UnrkVXv4oxkv0xvYfuxbUxuPGfqgvDNlqd2+f6IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mTtQ6ytS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54PAtAn4017870
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 13:27:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9r6KW5fddf0fFGQEQ3bRjg8l
	wC1Gp7I35uIfHw+Mcgc=; b=mTtQ6ytSVXonoqF6UazAvmKaZFONXRDdvPIIb1vN
	OQQ783VvPBxsuFUh39CXXsnVcjY+l6twTHS4PXylNb16scBmpv+WZkCK8aljNr0d
	5F1d/Bj0fa+WsbuPFzlZe/hTOj2Coq9wP6WbbGRndqvRleH27xUnez16qNIviLFT
	itrz//sk3OKwdwaC+YSZhCh5boaIdxpFx58k+sSd8H1z3IuSKqv8Zj3EF/MlOXqL
	dp90UkDf+1s/UpBFJ4yYVrjsL4imAoUGZKUvSe2uDkh2+ryWcispdA58NPJYOoIu
	WDLkpJWFhxo5UIOxK5rJM3H3Dcjkedj/a6Kn1n/heRqDLQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u52ut4ff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 13:27:47 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8d47383f3so25189656d6.1
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 06:27:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748179666; x=1748784466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9r6KW5fddf0fFGQEQ3bRjg8lwC1Gp7I35uIfHw+Mcgc=;
        b=tX4Nj1//D7bCsaoP83/ph3GOSnOLGREj4kCu56DMVkUYB6y2b9Wftc2dW9xdoSVWZX
         OwY13tAS7Cu7ACjO1ejoVzGCR71ypmtEVU/i86RjqfQfq/s81wHhDL7Oc7V/y0GbFuym
         XAP9MDuw2iEjbV7c0Y9r/klf/w442xsKuMmGNZakWrFiiIGr2nxDfQ1EyhO77lF+X2HF
         Lm5GFh2eq1dQ6ke3Os/h2sgxMW4Ha/7+nYdNoq30PiDQp65uK0uiPAJVkc54/xDwH2Kq
         A9I6lrI0HvWDQhJoXHJcdmjigYfkBJIzHtdv5zhxejen7RWu6mU6shNGIvSxPVCgDPXc
         Uitg==
X-Forwarded-Encrypted: i=1; AJvYcCXbxRPQpK1o816jzTnZXfdLjw+o/F/A+OTGA2uRMNSgvgShr0Hqh3UEjCdzqVm4dC6S9+t/t3aqhxXG@vger.kernel.org
X-Gm-Message-State: AOJu0YwF18ehg45zfV18baSMSk56gkgsu0g3QGdtXHNwFxuIfjKTCYpC
	KvW8h8lePhSiUkXarIBFbKvYUN0TLGN4JMWyyHTYXHasl/AJjk1gI8w6QkUxnJ2LO9GWxQUIDVa
	qhMEMkH4Si4s2WlE60Ell7e/TTonPKgiwoil5Rv4LalY3pi9ySDv0XO7lAHox/REU
X-Gm-Gg: ASbGnctwUIuhTxEPjPQEX4wZgMJpiH2HtFVit9yMsRxoV3j4JYl9P3rZhgD55mh1HC9
	3I9siWyX8dBF/C5XfLOaFPHO4LXcPj0LpqLIfujyuC3MGJ8X/1lq/thoNhQr/SdO5n9LTFnHuYL
	6qQxzHRr8yQm9FEcy2vJhUA6s+BPZHDRaiZGEY25gj0Bmc4RcvWvRfyVmotuyhsRVGDnfwj6lvP
	MuoFOWqY5DFXbaBUSHhcbOUmaMSK+73EFXrAlnX2Mcq9L6vv+yvLKse5pzL2nAZUcmVc1S9eTFN
	IHkU063ojblSUakKFHMHrm92Kq9xHD4VxwMXpqetTS4JinL7wBrNuas6sQd+zzvdMX9KkqYE/qw
	=
X-Received: by 2002:ad4:5be3:0:b0:6f2:b094:430e with SMTP id 6a1803df08f44-6fa9d154d78mr102762276d6.25.1748179664491;
        Sun, 25 May 2025 06:27:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgaxGvN49G8O1azKAeTm3eC9Mixw6SXaSCIord4AH+tJG20I/jRkJfh93URYpknSxkUr2bXw==
X-Received: by 2002:ad4:5be3:0:b0:6f2:b094:430e with SMTP id 6a1803df08f44-6fa9d154d78mr102760426d6.25.1748179663267;
        Sun, 25 May 2025 06:27:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084dd099sm43826151fa.57.2025.05.25.06.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 06:27:42 -0700 (PDT)
Date: Sun, 25 May 2025 16:27:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 2/3] soc: qcom: qcom_stats: Add QMP support for
 syncing ddr stats
Message-ID: <lt3p3hqh657rx7knpvoxl5il7uohrcllmi5lk432st6nap3vqa@jkgpj2rb6daa>
References: <20250525-ddr_stats_-v3-0-49a3c1e42db7@oss.qualcomm.com>
 <20250525-ddr_stats_-v3-2-49a3c1e42db7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250525-ddr_stats_-v3-2-49a3c1e42db7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDEyNCBTYWx0ZWRfXyO9/Z9m/UZqe
 7J7R3jagNcBvRlwy6ATsfLgvA2/n5RNjSgNp0WoHNpLwi3Ntt99TkZaCBiBQppVoqlLv4YoXTWE
 EN7YJiY/DNaK9ANw7T4+ooTLSARnoB3zjueqHHPcMZE0H1fE+L+41JfAb2UZZrr+u7EfALU8s13
 ZVMGyhnxWE3YkbZkmMDmw7L/flzpku4HxMGQojLl/XxqzZxdeODw29ZpTup8iP+yS/dh+bpbJLc
 IJ3nUBaRoMqxakS6sCsCFkvSvqFqI87eUQ/e59AzNNJvlPTS7zZPgeNm4a6Dbkk1JfuYU/CiVTM
 L//90eBUIMH+3hIZfdUASR3XApjZbmOzSPbGVAgxF7uqDBxwlTsIQLQNX40nFUekrDXLqE0t6d/
 HOFpNYCCX1DKy1jUZGVsEoTJBkY2xpmUUSYCC+g1rf+nVZAqcHKzROqI3HfOXBLFcvestzAa
X-Authority-Analysis: v=2.4 cv=f/5IBPyM c=1 sm=1 tr=0 ts=68331ad3 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=Prqm17leZL3r9GWXGqMA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: Qd4UovWULv93rvq-cPDyOvnylqTFkC6i
X-Proofpoint-GUID: Qd4UovWULv93rvq-cPDyOvnylqTFkC6i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_05,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505250124

On Sun, May 25, 2025 at 02:25:58PM +0530, Maulik Shah wrote:
> Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
> ddr stats. The duration field of ddr stats will get populated only if QMP
> command is sent.
> 
> Add support to send ddr stats freqsync QMP command.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/qcom_stats.c | 34 +++++++++++++++++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 
> @@ -310,6 +329,19 @@ static int qcom_stats_probe(struct platform_device *pdev)
>  	qcom_create_subsystem_stat_files(root, config);
>  	qcom_create_soc_sleep_stat_files(root, reg, d, config);
>  	qcom_create_ddr_stat_files(root, reg, config);
> +	/*
> +	 * QMP is used for DDR stats syncing to MSG RAM for recent SoCs (SM8450 onwards).
> +	 * The prior SoCs do not need QMP handle as the required stats are already present
> +	 * in MSG RAM, provided the DDR_STATS_MAGIC_KEY matches.
> +	 */
> +	qcom_stats_qmp = qmp_get(&pdev->dev);
> +	if (IS_ERR(qcom_stats_qmp)) {
> +		if (PTR_ERR(qcom_stats_qmp) == -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +
> +		/* We assume any other error means it's not defined/needed */
> +		qcom_stats_qmp = NULL;

If you return here, who will cleanup your actions? At least you've
registered debugfs files...

> +	}
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

