Return-Path: <devicetree+bounces-181927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C614AC96C5
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 22:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34ACB3A8EB3
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 20:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA541F03C7;
	Fri, 30 May 2025 20:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XEXK/iEN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752C4148850
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748638189; cv=none; b=liDpsGchTVJXbePc3EAxo+Tg5btnq7TlYbXLiVABVPqB7YHLDLnrYKH7+VAJvYmekre/hloBWUgzIs/nH7BkgwWHUEPMXLz01B+W0pLx+NaPd9u3m6PsdyxBdN6R/PKBJfRvPCWUw+uAl6+c9kN9w3SvgQzcB4d6QE9kOgkZypY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748638189; c=relaxed/simple;
	bh=Z/SQDguAIObEY8C0kHCDdptrHc6WvAlDkwRE+kpr6ME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sNPS/obN2vccdsWZS5aQZqr61eA7uRAeEQHsuIeOSQA2oIajVENh1rU18c+6T/chGQhpkXEsxXGmq6llp5bHtLgshhjtEq5Zi/WXmc3AsafDzTTsY4tbvumgBhes8hHG0zcJbuJqVyc1vb398OfvQBFs9FiEtYRS7+Qo1Comj9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XEXK/iEN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UJQZs2008586
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:49:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DsyXZy2cnb9zt4NqdViRPyHO
	LOS/pgCy2Yd70hjrCn0=; b=XEXK/iENVYHvvInR2h95LM1tesv2yX7broViRsRM
	cRhQyvjsHejEsBaMV5PEDftzDgejlYHUjscpSU29eVdd90byQi8dUVbHSBMxOCHF
	nygAhmWOjYx4xc4zAFrhRWmJf8vLyQazeIbEq1UzzFGb9fh3vsLcPG8K1CX2j2j3
	FecRCklTYWTzpQ19tmWvM+bY1G9bmY9/K5KdZdZXXhzf6EZ8SHv2d3o5PWgaHPep
	UYZi+HCegULsWj47cl/p6S6Big3MMknPqTZG3S+YVfUDLlBX0F5KtUYJYGviPlFS
	HQ64m3hJ1wp3aab/FM4u9p9u383wLSlX8jTl3XEwjpn1pA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992vmgm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:49:46 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fabd295d12so45303436d6.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 13:49:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748638184; x=1749242984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DsyXZy2cnb9zt4NqdViRPyHOLOS/pgCy2Yd70hjrCn0=;
        b=LptfDmofcfyIaSJrKRuS180TwyXr4BbwlsFhlvZWvbfEDONHgdDwtvgnXfNDD6uwpg
         Y+uik96YgWKn7YC8okSPRabgP+vcM2vvLl0Xt/RfNqsXLrF2aQyPM3q58QrofsecDmmq
         Fgds5wDzjMnVeUkPK9BX5eryJSrdi8wf6xJk84TPHhx5VO3Mzt/0XBVhaycWjb12Cmp8
         v77XieMWjYnbYrRV5EcO110/IZk/Yq7BYhuiiyDMRf9OTS8plQfGooZNjb91O/wdWA79
         7xMZfySL/gmAsjjVcL3boDm0gsP2PU/BFFyub2CGuKW9jcgZq+LXghsIZYEM4fxtYh7f
         b39A==
X-Forwarded-Encrypted: i=1; AJvYcCVNuln0QuFjy9zQLRRmUus4aIc6tz+ZNeghn1AUnnKOL5hYL15eb8VGLQCpnytL18nTdrjGsb0QkLeW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/zgU1S8iOdiVS5tUkI7sh2S5jdpUPFCiLJ3oL3pdQnpqwoZuU
	W8t5tqNPgEYDae1Ik5Dp3k0jHH5lMGs04yPAqRPHZoiiyTlyQ8fbcmOPyns3LHkj3+EXSmfN/Ns
	IJ+6Pvulls4ZxjGtuvxvRKYqnpiVbL1G0m391cXE1LQROuB1+5L3RiCo9+3y4AwHbzGQCLeOA
X-Gm-Gg: ASbGncsKmhJVzDd5TNImnQy21LXpT7+pyTEOu3xXA3YkfcoFitO4UYVp9CABD1jPowS
	GNEIk7NBfWmu1APBTMJCPe94fToIyUIS/JGSce7GTP3aV86zJgdF2CZ6yfAY8Tq/GRwtju4knwY
	XygCg3XQWKFu0xpOKiC80ZIqoPIKCmrvYUQYIKTnI2uW2iRuCqAFVHRA22iPBVzgMi/pZeBCquI
	fjsrtjrP3W/6CtVSh6j4PBOJKCxdZes+MOh0mY+EEy3Vd8nTbJvEnoEoC9nYSa6PZYsFAM9GTea
	uAnpFGsCHnKkfIQPUTMIwvU6c/THsfXe0oUl9pc/gftZdzS73S9ctFUQ51cxO9cZTUkA1et1VZ4
	=
X-Received: by 2002:ad4:5d49:0:b0:6fa:ba86:c25c with SMTP id 6a1803df08f44-6facebfb2d4mr107938086d6.36.1748638184346;
        Fri, 30 May 2025 13:49:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZn6yOPwjbeFojONTjtNi8bdxrJYlYPkbczEfleXf91W2XSrAC4HcDXRZlVG6gYS9oZroZwA==
X-Received: by 2002:a05:620a:31a3:b0:7c5:562d:cd02 with SMTP id af79cd13be357-7d0a201de9fmr732139085a.41.1748638173430;
        Fri, 30 May 2025 13:49:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55337937719sm822559e87.236.2025.05.30.13.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 13:49:32 -0700 (PDT)
Date: Fri, 30 May 2025 23:49:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 2/3] soc: qcom: qcom_stats: Add QMP support for
 syncing ddr stats
Message-ID: <tqmugtxmauwo5o3lqilb3q5czpyl6uvs4wjcmq6pthni6eq7ky@ndzn6ovhnzdq>
References: <20250528-ddr_stats_-v4-0-b4b7dae072dc@oss.qualcomm.com>
 <20250528-ddr_stats_-v4-2-b4b7dae072dc@oss.qualcomm.com>
 <6ldwvqqhk4lndesk7oac4ly2vhdxyd57f5hhijvutik5gm2czu@vmkasgeg2tmm>
 <4f7168d9-8d8e-4fdf-8917-47c1cc71cf82@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f7168d9-8d8e-4fdf-8917-47c1cc71cf82@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE4NiBTYWx0ZWRfXwgyKkaYpmmZl
 GviGrnZq9uZ1lLf4cR/pGIZ4rdFEApLCuWzAyA8SeOQlV84X+stX+tmJ9ZTHrE5D2fVjQZ/U9vk
 YGyKeapFPVxMVmafeOdICy5xBjDqOx/dsOAAPaKREyPKz5KzA1W6VVkFlcpYNcpNAuyFFam6g0o
 g0jyKb7ODan2WEyjvJMcGRWTIQQmRaH8CM6h/pPVOfgnrwB7dcehorRtWkvtm74DVj+yfjtY0dW
 6fw02z+jYg5MMcgMM9GQBjM6Pa0SxVA905eTQd3ZKItuqfYVcIEtQt9uMflZuMVoFmrKlG/iauE
 r5WyBquQvYYXsYpYgdMpkbGU9byBEgaY+m1nHioTMC9BOoPWcoRplTT4FNK3kpaocbsU6Rmt27Q
 qBZDjdS+EEMVZEOD5+Am3X8MDF9A9eO+RrPMN2ucEqiOtG0qnlyAPw9/LtPn2cBBja07Of5l
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=683a19ea cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=o5tYnl-ncifjDb1ZhVoA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: ZzY4_Fe0Y4GRMqup1OtKuYWr_Di1arbo
X-Proofpoint-ORIG-GUID: ZzY4_Fe0Y4GRMqup1OtKuYWr_Di1arbo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300186

On Thu, May 29, 2025 at 09:07:49PM +0200, Konrad Dybcio wrote:
> On 5/28/25 1:02 PM, Dmitry Baryshkov wrote:
> > On Wed, May 28, 2025 at 02:51:32PM +0530, Maulik Shah wrote:
> >> Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
> >> ddr stats. The duration field of ddr stats will get populated only if QMP
> >> command is sent.
> >>
> >> Add support to send ddr stats freqsync QMP command.
> >>
> >> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> >> ---
> >>  drivers/soc/qcom/qcom_stats.c | 34 +++++++++++++++++++++++++++++++++-
> >>  1 file changed, 33 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
> >> index 33fd2a1574464768bd07289e743fbb79ba415e84..0545c8cbefb8f18758d4eb51638e4ecb94e05422 100644
> >> --- a/drivers/soc/qcom/qcom_stats.c
> >> +++ b/drivers/soc/qcom/qcom_stats.c
> >> @@ -13,6 +13,7 @@
> >>  #include <linux/platform_device.h>
> >>  #include <linux/seq_file.h>
> >>  
> >> +#include <linux/soc/qcom/qcom_aoss.h>
> >>  #include <linux/soc/qcom/smem.h>
> >>  #include <clocksource/arm_arch_timer.h>
> >>  
> >> @@ -37,6 +38,8 @@
> >>  #define DDR_STATS_TYPE(data)		FIELD_GET(GENMASK(15, 8), data)
> >>  #define DDR_STATS_FREQ(data)		FIELD_GET(GENMASK(31, 16), data)
> >>  
> >> +static struct qmp *qcom_stats_qmp;
> >> +
> >>  struct subsystem_data {
> >>  	const char *name;
> >>  	u32 smem_item;
> >> @@ -188,12 +191,28 @@ static int qcom_ddr_stats_show(struct seq_file *s, void *d)
> >>  	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
> >>  	void __iomem *reg = (void __iomem *)s->private;
> >>  	u32 entry_count;
> >> -	int i;
> >> +	int i, ret;
> >>  
> >>  	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
> >>  	if (entry_count > DDR_STATS_MAX_NUM_MODES)
> >>  		return -EINVAL;
> >>  
> >> +	if (qcom_stats_qmp) {
> >> +		/*
> >> +		 * Recent SoCs (SM8450 onwards) do not have duration field
> >> +		 * populated from boot up onwards for both DDR LPM Stats
> >> +		 * and DDR Frequency Stats.
> >> +		 *
> >> +		 * Send QMP message to Always on processor which will
> >> +		 * populate duration field into MSG RAM area.
> >> +		 *
> >> +		 * Sent every time to read latest data.
> >> +		 */
> >> +		ret = qmp_send(qcom_stats_qmp, "{class: ddr, action: freqsync}");
> >> +		if (ret)
> >> +			return ret;
> >> +	}
> >> +
> >>  	reg += DDR_STATS_ENTRY_START_ADDR;
> >>  	memcpy_fromio(data, reg, sizeof(struct ddr_stats_entry) * entry_count);
> >>  
> >> @@ -304,6 +323,19 @@ static int qcom_stats_probe(struct platform_device *pdev)
> >>  
> >>  	for (i = 0; i < config->num_records; i++)
> >>  		d[i].appended_stats_avail = config->appended_stats_avail;
> >> +	/*
> >> +	 * QMP is used for DDR stats syncing to MSG RAM for recent SoCs (SM8450 onwards).
> >> +	 * The prior SoCs do not need QMP handle as the required stats are already present
> >> +	 * in MSG RAM, provided the DDR_STATS_MAGIC_KEY matches.
> >> +	 */
> >> +	qcom_stats_qmp = qmp_get(&pdev->dev);
> >> +	if (IS_ERR(qcom_stats_qmp)) {
> >> +		if (PTR_ERR(qcom_stats_qmp) == -EPROBE_DEFER)
> >> +			return -EPROBE_DEFER;
> >> +
> >> +		/* We assume any other error means it's not defined/needed */
> >> +		qcom_stats_qmp = NULL;
> > 
> > I still think that we shouldn't be ignoring actual errors here. I'd say,
> > check for of_property_present(dev->of_node, "qcom,qmp") before.
> 
> /**
>  * qmp_get() - get a qmp handle from a device
>  * @dev: client device pointer
>  *
>  * Return: handle to qmp device on success, ERR_PTR() on failure
>  */
> struct qmp *qmp_get(struct device *dev)
> {
>         struct platform_device *pdev;
>         struct device_node *np;
>         struct qmp *qmp;
> 
>         if (!dev || !dev->of_node)
>                 return ERR_PTR(-EINVAL);
> 
>         np = of_parse_phandle(dev->of_node, "qcom,qmp", 0);
>         if (!np)
>                 return ERR_PTR(-ENODEV);

So, I'd say, we need to identify whether it is this caluse or another
error. It should be enough to ignore ENODEV and return an error in all
other cases.

> 
>         pdev = of_find_device_by_node(np);
>         of_node_put(np);
>         if (!pdev)
>                 return ERR_PTR(-EINVAL);
> 
>         qmp = platform_get_drvdata(pdev);
> 
>         if (!qmp) {
>                 put_device(&pdev->dev);
>                 return ERR_PTR(-EPROBE_DEFER);
>         }
>         return qmp;
> }
> EXPORT_SYMBOL_GPL(qmp_get);
> 
> 
> Konrad

-- 
With best wishes
Dmitry

