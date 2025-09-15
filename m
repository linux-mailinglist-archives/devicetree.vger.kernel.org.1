Return-Path: <devicetree+bounces-217350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0B7B57631
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:21:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F640188D134
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1E052FB967;
	Mon, 15 Sep 2025 10:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E4RCjceu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898F11F4CB3
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757931632; cv=none; b=sY0AvX1L8wJVI2DprCdrkCoUq7oBV9qsRljvCnMGrMOaXl39NfJ7AIghmnI5gGUoHna7qQi9LTWhbvmn1eqVRX+mRwrsn5+IedqTlHIU8XB4Vr3Qvet+7WCFIIHsA/2AsTkQ8neG4O1m4Y/rbcrnTxHnHwp9Prnd8KToOqEVcbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757931632; c=relaxed/simple;
	bh=bUNuwE669bXdBGZ1MzmOAYXT/EucREWOdEjUe5wgwgQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KzLcTsDBQaTnMa6rgNKkkT2nNPhM5+RZj+0M/9gGj/eshp8kgxjYuTm3ADT6LzpV36e9U/WIENUsy2NTtJI5P7hqjAau7i9KuE+aJi3oCIIIcvM3dAlc9D+ovw/3NA4XdKWeDYxH5LST25fWisYqhYfagB0RmJZ8QHygXnoRV9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E4RCjceu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FgZd005694
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:20:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RGYbORxiyAr6c96vlWyAJgN2
	Z36YAZvrHJKPyVLUETk=; b=E4RCjceuFjWsbeoW71o7Gi2o9Qwx9dCDHrhUEuzG
	cazBLKeTmU2MkLNrfYz2Y4SeLeABqUBt3K+ye5c8V43Nr0aVGAtpUOfbsrJ8fP0+
	hDARsTh4t7+fETwJLLiODO2LNRUIG6wWbwtea1bDCrLL4oXQqEPBM/2UD5Z3kAPu
	9Trq3hB2XZ3xf2L6fjosW7c+aqISWJncf6OJmryXpxQX7KA6ZArqpAg9qbxK+hbp
	cqV7Lhgj+FzfJtAfIGdRFyjGK/N8lFcp39j/ssVlQlGIMMrgXBoXHDMXsnIOrhbp
	ylV5cIiWmfru6FFKXC/5tM8OfAZ3CT4btFxEQ92zY31xkg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951snmc3a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:20:30 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f9673e56so110047991cf.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757931629; x=1758536429;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RGYbORxiyAr6c96vlWyAJgN2Z36YAZvrHJKPyVLUETk=;
        b=ZU4w6gYV/rbo9NImY74UooA0rZFMzfT9k42D//OMsbl1ehghKvcYESoLBvG9kWkSVN
         Fj/9Q6feVvZpDGJuNogDavutkn46iyTNJzHkBT4GW8smXxcphVVs1GxKkSd/KimKfApA
         bjgzR9yLYcxv8UKx+DCl6HYSfWu6vlcYeDKCX2g4e/wLkiacGHScDOSnRXG/n7IjaJgo
         dLZthEDZCWbtIFB5U5iPHwelEcHLdnAINl6QKGAqwD50yEAmoWQYGLlyNjwdG91e+tyJ
         QJBOlZttfoCwVTJBSw7nBNnG0cF89N4PMNf8x79scnSEC4lS1qXWG8qgTRl5rtT4sDtO
         eGaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeDxCijXgb0ycQXNJQPUZsE4w7VkbTDHgkpkOODwZw8TVLmoP8CB2Q//UWkcBNyTUvdtpL1Pevtutf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4JKVjoCSL8CwaLL94k31KEVOpMv7myS9Gka4ddZAgUBJL9V3c
	TgY1kjiY8Y+9jLTc2YAqY1R9vcKzfBCbTQpllsrVAxWiydMCSYT0zRZOtXdxY27LOJgq2Y//Bi0
	f7VrozCTgNpgQx5wNQWE6JkmxwsmRHrAAKpHp7BZmR9e2LahhTuCjrQCS/r+ELX9A
X-Gm-Gg: ASbGnctRveSkeXMUdcpTw0Csi0DGJB5b6Y6HkA7oDk7ldYXWRLmN31G8oBQFNcnJNC+
	aGwpmDvYqmT/9KcdFvngR0+KCN8gALf1uGpOPe72lJlckbJ5cBpaqB5qTfoy75JHE9WFkRbwiCJ
	+FQCG0Y/8XbTrqyJJLz038y0M9bBFO2bB444AtTmy8YKptYea2aSVyNwwEbs7zhrgFnVX2CZkxA
	jylVhekYJaesczuNr1aYrBtBiGIts5Rm/doAkiyT+Y3bbFbZy5S/j+0uOO+ftCOy4F+AF0UTu0b
	bkxAA6OaQRkmR+IIZeJongJmLIGhfSOQ3Kn0zXvFf6yNmZcmGdh5eSFUc7gzQPqRKiEhG8vEudZ
	f+yeldTnCN9x33eEdkrGH/CeGhk8wLgzVVSE8hKiBgRsEvioaS3xW
X-Received: by 2002:a05:622a:5e05:b0:4b7:81df:95e2 with SMTP id d75a77b69052e-4b781df97a2mr99062411cf.40.1757931629088;
        Mon, 15 Sep 2025 03:20:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYwTHXV4KtjY7Dwk60uIzpz5mR+OcC0Kr5EGu4MjShIIx+gN3rPddQUBAx2RB7YbhW+OgitQ==
X-Received: by 2002:a05:622a:5e05:b0:4b7:81df:95e2 with SMTP id d75a77b69052e-4b781df97a2mr99061901cf.40.1757931628303;
        Mon, 15 Sep 2025 03:20:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-573c8330eb9sm1049638e87.60.2025.09.15.03.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:20:27 -0700 (PDT)
Date: Mon, 15 Sep 2025 13:20:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: fenglin.wu@oss.qualcomm.com
Cc: Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?utf-8?Q?Gy=C3=B6rgy?= Kurucz <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 8/8] arm64: dts: qcom: x1e80100-crd: Add charge limit
 nvmem
Message-ID: <vezlbc5onvmg3wd6tdr3cxhlvtmp24ca2e3vp6inqeegjhm7eu@viuurujdofvn>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-8-6f6464a41afe@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-qcom_battmgr_update-v4-8-6f6464a41afe@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JO87s9Kb c=1 sm=1 tr=0 ts=68c7e86e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=2ejD7e4gGTxI7fIsllgA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Q6J0oQXqoXa6gX7GZvMopc51Kvl2DwmQ
X-Proofpoint-GUID: Q6J0oQXqoXa6gX7GZvMopc51Kvl2DwmQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDA0MCBTYWx0ZWRfXzj3uD7z0DVKN
 lrbYiQVkYYq3nRZs7MWXVQkpGMVsjjsPNX44C7Wjxc1xISP300MiKKK8Kdtwq4B5dw/ctO+mjUz
 Bh5baRveT+HKLZ6uPMBbmle1UYazhbBPg3IdJjNINCRdFzsNlrA8xKp4+RprzKq7LRjfgXFRPm/
 S8JNasxWnWDt8yGZnRntzgneLudVAwjHmBLDZTtUSx8DCE8AEpOmJYovosq50L09HrigrkdNJKd
 NmbCKT6pxgezQBYF6v3NwORBmuKvzd6a+pW0BXr2RX0oteDnOZVRKwUC7NExvwkVA/WFP954lEJ
 bu9zNRlk462BnEVT6U2ha9yrde2qlqdG3+dqwIfq1/+5163eU1wlqmE1ilYxIqJKGXXOT8Iv4GU
 K8JGLaEY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130040

On Mon, Sep 15, 2025 at 04:50:00PM +0800, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> 
> Add nvmem cells for getting charge control thresholds if they have
> been set previously.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi         |  3 +++
>  arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi | 20 ++++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> index c9f0d505267081af66b0973fe6c1e33832a2c86b..fee65391653ae9c2ee23f9f3954d9ed018c9aecd 100644
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -82,6 +82,9 @@ pmic-glink {
>  				    <&tlmm 123 GPIO_ACTIVE_HIGH>,
>  				    <&tlmm 125 GPIO_ACTIVE_HIGH>;
>  
> +		nvmem-cells = <&charge_limit_en>, <&charge_limit_end>, <&charge_limit_delta>;

One item per line, please.

> +		nvmem-cell-names = "charge_limit_en", "charge_limit_end", "charge_limit_delta";

And here too.

> +
>  		/* Left-side rear port */
>  		connector@0 {
>  			compatible = "usb-c-connector";

-- 
With best wishes
Dmitry

