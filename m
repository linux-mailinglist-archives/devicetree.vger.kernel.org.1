Return-Path: <devicetree+bounces-181162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 675F5AC67FA
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:03:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAF273B6C10
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273D421858A;
	Wed, 28 May 2025 11:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jJl1y3Uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4EC5A79B
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748430183; cv=none; b=DnuDb2oab6kGeWD0OgLiLf/++oaejcl1iplDeVTiw1ckcLi56z7l7xLq5HZbado4qyem+hmCZclx5D/wKCEopKurdjDsVZN4kudF6ExuWUSVT5xnxRvw4RUWucqRPyiuPqBpefGTAJgjgZnB86H+PPeMgJr75aDLMq5qEakQNZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748430183; c=relaxed/simple;
	bh=5X8/9ZTfFzuaHGYH8AUbxGdlNSKEQBFRbG4dmwGIyLw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K7HXG6ipAkWWJdIuQXU8vLwiAx87bPVLFLCu8WniXT+pzVF4VxgAcL7+JBxJPJ44TWKu6beGfhSPjl/1Jaqru8QUleHZuDgNlKjQYlBYu4I/UUCDNw9KReoa5BrAWLlELe8aRCAoA/czZBg5DNkf6ba4zdPuwLw9VHcce5JBMjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jJl1y3Uk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S6pIZi023930
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q1iLTaT7gLyfjWyfB4VuKe/R
	NA5+cJtEuVv2tAhNcV8=; b=jJl1y3UkeACPxpxhogENNnWZKwkLI0KjQ/8E8iuG
	Ao/9F2S3VJgJBWeLuLnKt/hYk0FNaTVjaL2XuUi3fRSBPdLT8NBrxcJ+8oxccpAP
	XcInGreDmUxjgfyfbtY9R2ZgjD0P/B6TrJ7gzF6o22nE1uD+TseYj0y0huZ14jW5
	TJm7kXIdcQ//ButKeKW8utDMOyrgK9skQ8+UUpoB6bZpluvrXJyQkOAb7YQcsqPb
	Ig/bQRByAFggzoLweVq3R7iX5mAg7SbXJeIcS8b8o55cGEqR0bj8ldk5c0qaTuw5
	QfMu2cNbjT2AJmtojpB0D6NgiSd+e7AG0rlSILr4yO64zA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79pa0wr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54a6b0c70so390856185a.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748430179; x=1749034979;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q1iLTaT7gLyfjWyfB4VuKe/RNA5+cJtEuVv2tAhNcV8=;
        b=SyQwArfpwxONDHdbLOU1epLnT7TxbIwyvo2gJFHyGIOBCickIMsaJPohBHYCyKVYB5
         /h0ZkttdyXx5xHlCmA1g/zozK6RvMhW7z3v5FzWnUpX/eM5ugWMXkkWwcSl4t4UfqsvL
         d8flkTegUpTAOul3ASbocxgj7Q4oZt3tJYiJHX0eEk0Rrngl3hl3c6tFqveTtBxaStCZ
         JK0qxN76lHaRCALbm6nOGcuyXFKlQlriW2wL9xWYTSW48fCVYvsaDylCTD6+gDIrRuDa
         C6/uqAARmPlH8c+muyaX76TBYlvu7tiC7QRC6VxWOHuH1nJ+PE0dMOjna2p3U2VcxIKM
         mJtA==
X-Forwarded-Encrypted: i=1; AJvYcCU/miyhjDnv0Cl/sKLF8q9jWij8LviRBMSgq21K5yCol3nFdRMRrKfD36M7SM8dERdr7556wxDR/vun@vger.kernel.org
X-Gm-Message-State: AOJu0Yygy5feMQG2HkDF3A0amM8UJTl15Z7eNvyPUTcavD6TjIYUzidk
	5XFQxoo1q7yiPn3mLb+/ZHIbcv6zUFtWVdsnunhHcAI0hTDLdJdZVTn4EP9BFcpLfgLl3XCaRCF
	p6qRP7c1Rvfkm2ZDe1dzkcHwZ6Yas1P6Qd2O1XUhpLyZQ96nMWgv2JkO4NrA8pfHm
X-Gm-Gg: ASbGnculR4X5w9URhGkQFELvqzaxZzweHizdk6YBPs5/yR8fhTDR0RCW2OrbCn1FlN6
	WydedY3I2TH739DJL7gghFcnosIctvmifIhbEqcRgX4Ze002MXLcewXgvqCYRBf5VRTae6F6HPu
	LCAGPrx2AKNaP6fAv+UysHQX8UlHMK/41l9y+2eH690TZE7XHuPSwoL8joB9pOusW2Xy2ph6qPi
	NgW8FJtWaSOG61XE2tSv63zItbPKKxi+xXip0Eb2p/J6huU6YExaL42kbdxESaZddrqtNoNtIzT
	K6W5cHIiWxdBUy1WFRoFvXh2+eKL7VEhXvx0dKCJOj/qx+tEYdaRimJBioCkZbklF4ZZ0orcw6Y
	=
X-Received: by 2002:a05:620a:2987:b0:7c5:60c7:346 with SMTP id af79cd13be357-7ceecb6cc88mr2143112485a.10.1748430179255;
        Wed, 28 May 2025 04:02:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMLIP4BKbsaEo3YR2wwAaxRATygol9mrSPJsIQjiLHzcTBvdUF1nZ6IhNwq7MpchCi2ge2dw==
X-Received: by 2002:a05:620a:2987:b0:7c5:60c7:346 with SMTP id af79cd13be357-7ceecb6cc88mr2143106085a.10.1748430178571;
        Wed, 28 May 2025 04:02:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f6b6403sm232320e87.257.2025.05.28.04.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 04:02:57 -0700 (PDT)
Date: Wed, 28 May 2025 14:02:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 2/3] soc: qcom: qcom_stats: Add QMP support for
 syncing ddr stats
Message-ID: <6ldwvqqhk4lndesk7oac4ly2vhdxyd57f5hhijvutik5gm2czu@vmkasgeg2tmm>
References: <20250528-ddr_stats_-v4-0-b4b7dae072dc@oss.qualcomm.com>
 <20250528-ddr_stats_-v4-2-b4b7dae072dc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528-ddr_stats_-v4-2-b4b7dae072dc@oss.qualcomm.com>
X-Proofpoint-GUID: BtuwlXIH-Ckd1UJM9MD7KFD8uCagmxE6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5NiBTYWx0ZWRfX6ZSVu94naHby
 R7u9KYiEw09vK+FxO1jrb+HY4z8g/JQLCSH67ED4Xa3DtHcxdR4P0P8m9/j51E0ruxOBeWftqH5
 IbutsPUglhIH7N6STvaq0E00WuiLVEoo9JWrhhc27l1rH8ydQ4+xjgN4K1Bl7eVtkmKP8aPoGJ1
 K5K53FnCSJ72YyO8wtWGI/FI/5q85QRgmPGB5CDS8In2/CbFsWT31d1LJNo+l5losrnUxQzqfrl
 QciYZa+ekcUpvhVI60RbKbdVP6r+rjJqBV/e8oQpNggSMMr7vxmSWL2jHOQLdMcW9fp6UljKiIl
 oUD2OpRhsO9CrKl/OusKzeX7xzDTTp7iI9gfzHaB6Bb0xGlYtqDOMcdQY41hl9N6ol3cnWNgfXN
 /Nu0Hf1WThOmaF+4XjIxtNjZQQDOhMh3hGHPR/69tir9hvkKda0SzbsPDuIGmlH/MD+aLlnu
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=6836ed64 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=8xzOyIisJLnxiflYdHgA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: BtuwlXIH-Ckd1UJM9MD7KFD8uCagmxE6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280096

On Wed, May 28, 2025 at 02:51:32PM +0530, Maulik Shah wrote:
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
> diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
> index 33fd2a1574464768bd07289e743fbb79ba415e84..0545c8cbefb8f18758d4eb51638e4ecb94e05422 100644
> --- a/drivers/soc/qcom/qcom_stats.c
> +++ b/drivers/soc/qcom/qcom_stats.c
> @@ -13,6 +13,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/seq_file.h>
>  
> +#include <linux/soc/qcom/qcom_aoss.h>
>  #include <linux/soc/qcom/smem.h>
>  #include <clocksource/arm_arch_timer.h>
>  
> @@ -37,6 +38,8 @@
>  #define DDR_STATS_TYPE(data)		FIELD_GET(GENMASK(15, 8), data)
>  #define DDR_STATS_FREQ(data)		FIELD_GET(GENMASK(31, 16), data)
>  
> +static struct qmp *qcom_stats_qmp;
> +
>  struct subsystem_data {
>  	const char *name;
>  	u32 smem_item;
> @@ -188,12 +191,28 @@ static int qcom_ddr_stats_show(struct seq_file *s, void *d)
>  	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
>  	void __iomem *reg = (void __iomem *)s->private;
>  	u32 entry_count;
> -	int i;
> +	int i, ret;
>  
>  	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
>  	if (entry_count > DDR_STATS_MAX_NUM_MODES)
>  		return -EINVAL;
>  
> +	if (qcom_stats_qmp) {
> +		/*
> +		 * Recent SoCs (SM8450 onwards) do not have duration field
> +		 * populated from boot up onwards for both DDR LPM Stats
> +		 * and DDR Frequency Stats.
> +		 *
> +		 * Send QMP message to Always on processor which will
> +		 * populate duration field into MSG RAM area.
> +		 *
> +		 * Sent every time to read latest data.
> +		 */
> +		ret = qmp_send(qcom_stats_qmp, "{class: ddr, action: freqsync}");
> +		if (ret)
> +			return ret;
> +	}
> +
>  	reg += DDR_STATS_ENTRY_START_ADDR;
>  	memcpy_fromio(data, reg, sizeof(struct ddr_stats_entry) * entry_count);
>  
> @@ -304,6 +323,19 @@ static int qcom_stats_probe(struct platform_device *pdev)
>  
>  	for (i = 0; i < config->num_records; i++)
>  		d[i].appended_stats_avail = config->appended_stats_avail;
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

I still think that we shouldn't be ignoring actual errors here. I'd say,
check for of_property_present(dev->of_node, "qcom,qmp") before.

> +	}
>  
>  	root = debugfs_create_dir("qcom_stats", NULL);
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

