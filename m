Return-Path: <devicetree+bounces-216387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA8BB549DB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:31:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C90BDAA7B60
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1882D2390;
	Fri, 12 Sep 2025 10:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ez1cDXbS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0F22957C2
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673078; cv=none; b=J2MDMMoG2/x7r20DMscDiz5JhEYMzOLxuwsW3qeVhC6V0dtmMFYO16jifPc2e9Iqut4ejRHCvYzLY60Rq74xZwOQrDDUS9JRzHHWcWhPnS4hsdZ4rftdK6ZAKL3o17H7bQqSM0bStC3LTcM9S3SQGeBC4hQr3eM6cILTvP0KV8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673078; c=relaxed/simple;
	bh=ru1yGOyd5Y3Fq7JTiCyy2tLRgTdN7eeDCsE0W0qKNIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=koX2umM+0CmM4Lu3ubCHykO2L7dGSzw8GMfxRduX+RRWaJFvutVrX8xse8aSA5QliKDA5Dj0r7LcKwzkLW5StspkNVZbWQwQ32/mdJ66ei1qbD8BeTF0KWWz1V0wzoL7WTsZBo5oSXQ/9sgYsiTn+JS+LaAAPkp0sk+mo7VNaCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ez1cDXbS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fE36001284
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QYQVjSVGI7fSyP5NPLcxC0Gn
	NWMprT3G/Z6o5y804gQ=; b=Ez1cDXbSvnGemg8472pZ8bhDQSW/4Ft8Q83R/893
	2LMiB8BhNhqVTzcLqTFOdPPzOGEBduIjUcmertrhXjUEwFazZ8uDN72wdBV17WVQ
	N1IP3xd4EzB6oLWkiiA0uY9D3WlGRnKQhXnOmECOHgeQFIT9qcKZ5aoBLm3xiFcK
	D+d1nyaUn8T/SNIOoVZO6Dv7YJUi2wuXu+p8yn5Ui7LmKx7tNTArTDBp0+OfU3kj
	emw5YhBiJ+Oo3Kqik7N5C5FR1Nvb/HHQFGiG2jJRmnOVbC5aTQJNh/VPpp7fJ2K5
	3WK/a16Y6uK50vMN5E1UFSsc/z6PliVOMaryGGIDqb4UDA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h66us-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:31:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5fb1f057fso23881011cf.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:31:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673075; x=1758277875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QYQVjSVGI7fSyP5NPLcxC0GnNWMprT3G/Z6o5y804gQ=;
        b=i7jo0+TwaEnM9Cs3D8YaUDVGFH+5bUnosVBuOsUQNcjEQT/Lk+9w0ZHH57QX50qt+U
         P1R2/tH7U/Cb0VqwTvOAMwfVNk6rLz+ko+NE2nY/r7mbs33y3+h6nbm19BgXxi8ABstY
         bDqsGLqUMy4FDsO9vPVSzkCRcRnb9m3C99DT3cUkZtjl3UtNut4Fm+3v5/bYkZUaVuri
         snJiB1u24LwqpElMg9HE+DgFmXzdb9X6b0FaGfzAMrnGnp1XoKwC/1FSitmyUT8zFoIm
         rOoJEUQ/a3LyFZeS1KGIWZl9gethUyoelGXRyaEq8yiNsNoZ5AsRph6Y2kuHdNEl/Uig
         iiJw==
X-Forwarded-Encrypted: i=1; AJvYcCX+YI0zaQppszB52e7ImI/BJ7/RR4dEBHEj7pjUYAsDzFk2Y8jwm1yZ6F0Fl1SKiu8FJyDvqXMNb+UP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8fznDvaJFaa0QTErFNWBzrUG+XfQtnWTBLpcjgFYjUCBBuvh9
	+4q9ctkuGDlYVneqrpRVXnxqxnPBD4s6PovMZ7rPT6pHMajv6rE2Q1knsE6iief8zzSBVSWIZzL
	bnLHaheYUKXOPSxOT+4ZqaskbfH6tvxE5y1+BDxesge28ohyi5N6odDGqt5y1u4Qn
X-Gm-Gg: ASbGnctH3JuUpfnNk4rgWEqRFk/F6wizFfvAe9guqfVp5J4jie/1Jw9lsvB18/+YuFi
	nhKqS+Gq1P82xilzs56a71VZ+KNJg90MowCWHmyHjsG9zjuGXFPBMR+3xt7tP6OZz2lwybY1bRm
	1SsjnCAB0cwxFLgnU1et4AH4YL6XdJDB+VaGqand/lvjoSJDLIa7O6u2fJ9bhhAlSlLP05eKEOi
	LrWj5VxflixfahB9DLTj9+zizYcj3wEHNns5G9S6OEng8CeK0LLajnUCKB5NFCB2O0skcSFj2NA
	gURyVie981XKv+R8ovhyJxaO2XpNU2EMJa9OZA4C0jhmQGAOKT5PWzGCRfy+tAXQB+aD8wrDDz+
	03lrN/pt8YmQ4hGybHLx1L+IvHyCoodMIDYlYAI9ZhsHUugPSGE9Y
X-Received: by 2002:a05:622a:11:b0:4b4:9773:5866 with SMTP id d75a77b69052e-4b77d0c8726mr25974331cf.65.1757673074728;
        Fri, 12 Sep 2025 03:31:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlmYG3GvVCPpgbJA4niCY20ubvFQsgSIGszF/TZGTRPQ9P7ipXCexaQtPdOTizRtrNWqVY8g==
X-Received: by 2002:a05:622a:11:b0:4b4:9773:5866 with SMTP id d75a77b69052e-4b77d0c8726mr25973891cf.65.1757673074110;
        Fri, 12 Sep 2025 03:31:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a3464bsm1032362e87.139.2025.09.12.03.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:31:13 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:31:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
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
Subject: Re: [PATCH v4 10/13] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <buob3axokndjfuwvv5j5zee4e66tf7t4ficz6fend5yadw4j6e@czus6n6zfor7>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-10-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-10-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: IFQH8scVlrgMoks71tLQ-Js8KeyBHgEA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX9TkMGCdHKHEN
 w/nqEfuCV1co1GFQqEEGTjjQyfiMzDLgSJt33uRZKTjnH7laX2GG+Er0nkTGTJ6uT6zfGdQabbE
 +6QpbkZt7sB6j1vZQsKs0T3ybQOjMhhDiQyjlrUwBSjKQ6wXrblqeZfMMwHondV4ai344d6xxTb
 2JTnmNzvIoYc+Bo82+5uBQwZ0e6fO/FeP5PlT5TVqKJQF8G8D4juVtnvAOzRuF9lmQa+8O0RN9Y
 mKT06HSvcmJIz/5kHSUv20GnIc8ufG4WlZw1phQIy6LyIlUDLMcVEOFxTJLJaL244MgEusvX0dj
 ce/USDaf49lS4Tj0efr6YeSC1I8nLemHVfvEyqvNgpudc4+D6xsXWuT97lKQVWAOw8861uXPmNG
 sX2lyu98
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c3f674 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tOlg4r5JIpINhLxCU78A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: IFQH8scVlrgMoks71tLQ-Js8KeyBHgEA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177

On Thu, Sep 11, 2025 at 10:55:07PM +0800, Xiangxu Yin wrote:
> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 192 ++++++++++++++++++++++++++++++-
>  1 file changed, 191 insertions(+), 1 deletion(-)
> 
> @@ -1669,6 +1832,23 @@ static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
>  	return 0;
>  }
>  
> +static struct phy *qmp_usbc_phy_xlate(struct device *dev, const struct of_phandle_args *args)
> +{
> +	struct qmp_usbc *qmp = dev_get_drvdata(dev);
> +
> +	if (args->args_count == 0)
> +		return qmp->usb_phy;
> +
> +	switch (args->args[0]) {
> +	case QMP_USB43DP_USB3_PHY:
> +		return qmp->usb_phy;
> +	case QMP_USB43DP_DP_PHY:
> +		return qmp->dp_phy;

return qmp->dp_phy ?: ERR_PTR(-ENODEV);

We are not expected to return NULL here (and dp_phy can be NULL).

> +	}
> +
> +	return ERR_PTR(-EINVAL);
> +}
> +
>  static int qmp_usbc_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1743,9 +1923,19 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(qmp->usb_phy, qmp);
>  
> +	if (qmp->dp_serdes != 0) {
> +		qmp->dp_phy = devm_phy_create(dev, np, &qmp_usbc_dp_phy_ops);
> +		if (IS_ERR(qmp->dp_phy)) {
> +			ret = PTR_ERR(qmp->dp_phy);
> +			dev_err(dev, "failed to create PHY: %d\n", ret);
> +			goto err_node_put;
> +		}
> +		phy_set_drvdata(qmp->dp_phy, qmp);
> +	}
> +
>  	of_node_put(np);
>  
> -	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
>  
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

