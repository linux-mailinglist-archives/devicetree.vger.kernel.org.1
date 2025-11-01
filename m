Return-Path: <devicetree+bounces-234009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAA6C27AAD
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 10:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D430F3B4D1B
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 09:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5387229E114;
	Sat,  1 Nov 2025 09:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fvOjFWuN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GlfO9Sdc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A987081F
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 09:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761988741; cv=none; b=Xbu4zsnZ6UrcGZNy1+dRjoObtcxyqU1EmuZFYV9buINqA6nP/eTHxMl2lTV33BtW4njGWxuoI5yYG6XXXpG5xYz3Z+4BRRfpAd1zjiQuba07jD7Z9FjDJnOBdKpw3PxOJFaTFdfSGHhHo9Ur9bv3VapnlbS3MA6Llyrn5lPfRKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761988741; c=relaxed/simple;
	bh=VpWYb0GBHZvP7olFcbzqJupOGkhU07xedBtpg5E3AlM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cq7HoyXEUPv2g7e5rSe3Oh/HEa79+d7Q2XoWfNHUif7VshDJHAjbxDs9ZHmdjGBEn6A3RbDlPd4nUoJgeSYxZkLjsngS6l/p5Fise2o+qMKEmxRRUg9EDPNixq5+AK4WxJ8Mjoif7Lng0IqB0rsO/QjYp2EAHxWIREUKvImSgh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fvOjFWuN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GlfO9Sdc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A14C3TY556001
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 09:18:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=B+bpAKUc3ZHIXmPuXhpnOMle
	Il6MBiJm7MdnfHBg2IM=; b=fvOjFWuNpYCpyelIV1lFlH95qSGA9Yd5tv/N2sqI
	EptG1NtmlPGxSJ+Nj23SvjaHML3YycsafMJ52vAa4E6fhSHPUCgpU7kM9R5JaurC
	ScYlJL6Kda3j2hEhPHHLwm3TyvviBgoVYwxjTXMxo9ARrmZ6ibuqQMTFFtcAJGyP
	q5nShEhJWy5/KQzd3geHhA5HruSpgIinPTQ1/ouI4D7jllNJCrQemgwyzIjY6nZb
	LtqEvpWE5UIaTCvcdP7jRNNu+4HCODeN+CD91RauASylVHPdbHOg3jlO8HyDqLex
	yMD86Ru4jNtlKmL/IlU3rr/2rF9AS/w0k+6ECwHdEO/Ygg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ayf8bvj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 09:18:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ecf8faf8bdso33231671cf.1
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 02:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761988738; x=1762593538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B+bpAKUc3ZHIXmPuXhpnOMleIl6MBiJm7MdnfHBg2IM=;
        b=GlfO9Sdc2TB5bZgLt0vdIxQcY85VOM7exB6S6UN4eRKyN23qutEu178QuWQqOrBCXi
         6BQF61ihZ9M+2YUbhYNcctAF3qzvpCD/vVJo4sRsJcYXL8358ZYXoAO5XEb7td+cvdUh
         avYtAhpihdiDHPdqxmx++eTcw8qIbsOLkEIXxG+dI69OUoCrosPHKitA2s6HM6bTVXS4
         QQQT/YC2g49ypPrMRtCw2prgkb6HvWtdz5cPchYvgwjHUz7dYN/OG0m2Kc0MMzhrcN9v
         IzS5v8mDKl6Jq/1JngVdOVGsARmsUOlLUIxfBofaDcNuoXEQgBV+cSKAZSzJNntm1Cqs
         cNbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761988738; x=1762593538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B+bpAKUc3ZHIXmPuXhpnOMleIl6MBiJm7MdnfHBg2IM=;
        b=hvUOq7o37Y2v2vFHTfifOeAOIlC+BeloStKF2VSScFnyiWMpa0aIwq499t/FoldGZK
         Atm57UiHrHI2EHaOwVkeJ08LQxJEgD7SlkBJNfQn0OweL+RAzmN15OiXzENhXK+ZwivH
         QaU6cEf+kFTgEv3JwZASwZTBR8A38ZyXba6I715d//MNJCW+6IEZOq6OL3qZqe6O2sl2
         fvP9Md/g5iWJqWaa4QA96RKMj5/C9kMCiKJDJV75KI8VStctmsPb2rN/FlKgazINlx87
         BBi8WXtgTb9kBM9GAOGxaGykmWiqNNUkoJdS2BkmDrfHbY04AukSDHqqZkghylOd6Y4p
         4qKw==
X-Forwarded-Encrypted: i=1; AJvYcCXhRQ4IsC9wU00V/CfGmgxWolAk/5kO6FK2A7n20nOITaD0bijYplyU/Cdw7NyKChyxiqNEOkjFUcsp@vger.kernel.org
X-Gm-Message-State: AOJu0YwYXHp31URb15JMOkyngv91pGcOp4k6JD9GCmROYcYH1ZFEKH6F
	fAV06JAqzx4FHTHMeF42EC4l8QsWZZxDUmrLiZAe7f2EIsyxOOZB7kk22B2YSumsibkV/HViqIP
	rFILcRTE3BmS4cKAUYhcpLrpF9meCxWFbIwxNA3Xc8u/r8LIq/KyCGnV8dRKC5r2h
X-Gm-Gg: ASbGncufj3QdkC6aQWRCB2dJeICP8gGkUlCyZ52bp8PK6LyeF28tH2okCKigq4wIcDR
	tuAVSwYDbGDn2XzgQygEH7MapeP6jvxPF2zoNtUfk9bqufDsGcY01pHQ0rnQCkKzSy9YBj3yt5f
	+VS5s+GTV0SPGshXGFBWLO2ztXfj75bGUjuDE4d2xFl/8R0ujyOI0JZOXFbpYv3S6sN870eA6kP
	hayohqsesH9LarIf0bwBInZK10FTc6NyUrC+YVRYUlp+UvTPr9Aw6dAoif651wfhOEaUlJZ43wn
	0OZ4IYvUzV5Ey1RyfR25agbuTaTez628C0b289aCAbj1UL4bbrpfXG3LjLyOElAneb0/BjptP/b
	prWktQoy6TbvfUjGAr5w6TyOyDeIcPPKKbzPJkNoKi3zkYQBuRdPlOlJH8S9ZZalTM/OMtXFyZP
	EGdbk1GOoaRPD1
X-Received: by 2002:a05:622a:134b:b0:4ed:1dc7:e3de with SMTP id d75a77b69052e-4ed31025a3cmr93383561cf.67.1761988738025;
        Sat, 01 Nov 2025 02:18:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/ZC9hJig1xqZrbF6M8bbhMPgx0iojM3JAN3ePV98F8Rm9zEys8LTFYeIZIvoosK3Z9UrajA==
X-Received: by 2002:a05:622a:134b:b0:4ed:1dc7:e3de with SMTP id d75a77b69052e-4ed31025a3cmr93383341cf.67.1761988737536;
        Sat, 01 Nov 2025 02:18:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941f5b5a5dsm1076632e87.56.2025.11.01.02.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 02:18:55 -0700 (PDT)
Date: Sat, 1 Nov 2025 11:18:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Amit Singh <quic_amitsi@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Use 'edp_hot'
 function for hpd gpio
Message-ID: <a6fbpfulyhbnfoy2d6wf7hl6de3z34gxcu6f4lby7ncsyu3f2g@q6qcvdid7bko>
References: <20251031085739.440153-1-quic_amitsi@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251031085739.440153-1-quic_amitsi@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDA3OCBTYWx0ZWRfXyZ2wm/MZLix3
 cvVtjatREqRQOl5y/FZK7n92nadSTzZpA52t5mp/5IwF/6RiKj7EgqL/x0doNVgvLVPW2oxnYCx
 1NqCOaK1IXYCGfZy1Vvz1xzueiQR9O2ODUhk+QAkqQuMeQEIWISi2gp/x1rsWwmDm8d7Idkxu1P
 yMYfkZ4ywXs0VNbxMMoh7O6VwUuJ8lLyTW19R1S0zpkeoRpx70gU39HlFRZ8t7PtJ+JjsBpP8VC
 t50BNpR+w3NxY7tqIYDANSHUdTbVKu6iV9Lu316VXeyxZOOkzDMES5LIN7cE7rQmdItF5mf7AJk
 WFaNoLdoLY1cQ6ZdhMfnCF7OGVBTmjrNZp5WtIJOVTXy1OR/AOdz6IuLWKZwY18Y4V1JA6G/9Bv
 +DyTW+pFGbVr+7Av1aCdQAY+pkorIQ==
X-Authority-Analysis: v=2.4 cv=Scj6t/Ru c=1 sm=1 tr=0 ts=6905d083 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=JMR9WPqkSgFmUmKnNZwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 3VVaJzLfBtBJF-YgBK0rKXuZNAb1optE
X-Proofpoint-ORIG-GUID: 3VVaJzLfBtBJF-YgBK0rKXuZNAb1optE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-01_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010078

On Fri, Oct 31, 2025 at 02:27:39PM +0530, Amit Singh wrote:
> Currently, hpd gpio is configured as a general-purpose gpio, which does

HPD, GPIO

> not support interrupt generation.

This is not true. GPIOs support interrupt generation.

> This change removes the generic

Documentation/process/submitting-patches.rst, see the paragraph around
"This patch" words.

> hpd-gpios property and assigns the edp_hot function to the pin,
> enabling proper irq support.

What for?

> 
> Fixes: 756efb7cb7293 ("arm64: dts: qcom: qcs6490-rb3gen2: Add DP output")
> Signed-off-by: Amit Singh <quic_amitsi@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index c146161e4bb4..caa0b6784df3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -49,8 +49,6 @@ dp-connector {
>  		label = "DP";
>  		type = "mini";
>  
> -		hpd-gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;
> -
>  		port {
>  			dp_connector_in: endpoint {
>  				remote-endpoint = <&mdss_edp_out>;
> @@ -1420,7 +1418,6 @@ &wifi {
>  /* PINCTRL - ADDITIONS TO NODES IN PARENT DEVICE TREE FILES */
>  
>  &edp_hot_plug_det {
> -	function = "gpio";
>  	bias-disable;
>  };
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

