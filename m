Return-Path: <devicetree+bounces-256196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BB1D33896
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D885130BE132
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A38E433ADA7;
	Fri, 16 Jan 2026 16:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l5oB5sKA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BQ8dWcvj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BBD394478
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768581290; cv=none; b=KvACx2qiZtOkwri34JTabTtCTLUGl6/V1zgfq5NL0MIjjKYDiw3DXezfGn/YQCNeMvykXdBOFsoT+UHar4q8iGwdqz6IXUGcAy6KazfkJvRPFm5RsRsH4XT4rrsPNssXTXMdxRF5FiZbdOfbcSMGJ+/0TWTvaa4DyGa6DIx+9AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768581290; c=relaxed/simple;
	bh=e8E2A+eo/KQwzZm9O+K51Cg+TzQHkK+jR1VYjq3CkS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EkmQOXiM1Dq4f9K49cGSBLOBVAcVlmsYYeqZwA7EgX1WWpUVlYUbvPtsmS4hC25MIrtVWuhfcjAQ5yFzEL8P/W/69/nJiB1xF6z+4dkNn5nJCOXZomh5tKN1eUuEUGyKOBlbVIvv91N+O9AAHHRrsukIudCkglev8Yq8ZYQJ9n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l5oB5sKA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BQ8dWcvj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GGLLqQ4100795
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:34:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fCYKQXs+T1JIIa5G6WnDladc
	SFMG2v8SiIjUv68q0Fk=; b=l5oB5sKAR9ZIhK+VnnPwy86114P0A5VGO2r83cll
	lBZKV+vb+UvyJ5Hm6AIWylcUc5oeLj8ZRg99D8LLmOXqXOZN7KV82Nks4fy8g6t4
	3uNVPzXWlKlctOfT8gyEweBuhf/ji1TYedMlH6j7Zu8Iu1hIrGfZmV7nUeN1axbY
	WAO7yBkoAtwCge+Kxfeu4gv+GzOIQ+0e8JSRVLBGH3Xqcfn2rua5pGbJs2dN9hm5
	Y4ZfgEpovlfGLrsRpz4NBtNu2GVSMztuN8ba3QllXqFxnBN2SXnUqM6cV9LTUmyW
	37CNu602zI0hQK7jL4yxtcqYMA2nNZtilJiTYnSEjYI64Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9752unf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:34:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a0ec2496so390697485a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768581286; x=1769186086; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fCYKQXs+T1JIIa5G6WnDladcSFMG2v8SiIjUv68q0Fk=;
        b=BQ8dWcvjcBd8DrNp2VbiErZL7WQSngBGF20hnHv1Mxth8DyTBegz8r//0GB+0CTqZX
         pyoSQnWKtFkumvLWczVsqLYTTCQIeavx0PHfvxjQzGAi6YlqkXg//LtCoOhPM2BCBzyu
         CYZDkZQc/Kddp9J9szZlxObx+zSh0ZcGKIktzmwyastURvtdvv6gJqzk/Wo1mdgMcAty
         DhVixioWyGZYGfWmm7b6eFInJ+NnPnCsaePRDodZ2Y+6OpxEh5UL8J+9WIU2WCamPYsf
         oCGR+WfBv+XYnNFA54ByEnthjouhzOJ/GGyYazb7sXrvGzCsrcEE/o8izChm9uv8ckqw
         HslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768581286; x=1769186086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fCYKQXs+T1JIIa5G6WnDladcSFMG2v8SiIjUv68q0Fk=;
        b=f57ZCixvOAezoseoD3ZwyZ7sd0bzU6QT/Qu63xcRjiJB2FqdsWE5g2ExCgW9EH/4LN
         /1EL2e2ddr3H/a/Y/kNA+sfDJLA5KS1hIBUZ74ppA4KYD+CBUTy5s/0V50t0L6iGkFs2
         T0OeUyzF1ig2chJ57cfxGNWTYJSJh0HIVOJ1Fq/1As3KaSez4/ilheJD12TUFWVr61Mf
         hS0qcvegl7+OyVG0UkX0yyQRYORVFA+qtn8JON0r991wWmsdiU/VvgIQVNLRrAK4i5yi
         UHEUL87Yr7IZpLTINLmUJqlNsIcOWEfWN9+1g6eZCkxKqPzxvfYJIYiOm7kI/kGk+hKa
         tfqw==
X-Forwarded-Encrypted: i=1; AJvYcCWsDpSVbvPt63yGld/YseKRRSJkDB2fhcBzOAhXTm96/avkf6hRtRmBMYRkVSwcB1pfvHnaW1v5NwOX@vger.kernel.org
X-Gm-Message-State: AOJu0Yygi4M9CWB5AkKXQGwORyfxgalBuTulrVeX6L7l6s5jI9zz7C9X
	qLEMC45nf8RM3lnmZQ4/RTh/4qW6ujn7abapN8FlgZTOakDWkFcw2V+Wt4IxePjgqLvBhKa9RFr
	pSnFlVpjrFCUOeHS2yowvc3BvyQJUpPH0FFwCfvyWsfef5GLTCDBIj7QnCkwjs+g/
X-Gm-Gg: AY/fxX6t52hJ4rKc5RebWPtJ5NtwxYXunyaAFQCMlIzw5LJydkB0GrP3vIzEsa/4eKw
	dSPQTg2hYzFkt3Ub3weOgPsYcVWZIqafmcwAo0dw7ydbrzk5n6KURvMetNhjoM5qWIHWo41pwXS
	qozHS7e6V5uNLWgR8v9iwddFGEN4A97JoZ9Rfb0NJZ4SbdrpGYUYEcH70hZbXmmsrrcm3kp7Yqg
	Flh/VGzyAxjgraktyyj5eIirCoTfovovW2HtB0xVjktfWrIlvrxFK4JIdvoVLjSn8CwCxFEeBBo
	4Px7KhzsSiSH30TFzeAVfseWWEhs2RvTdbpLO6+O3oU+hkx6LrTqXsGWlNDcGr1jgP+EXcWRSd6
	m7uh+wQrXAYjUwVTzlm7yK5jfvrw9cVmRjH4Risv2Q3lijMAiVNtmY8seUgjLnJb0zx5oGOk+H1
	yelWN1pjsmTyxVgOdAxTU2994=
X-Received: by 2002:a05:620a:4801:b0:89e:67a9:fced with SMTP id af79cd13be357-8c6a6789e6bmr501565485a.66.1768581286239;
        Fri, 16 Jan 2026 08:34:46 -0800 (PST)
X-Received: by 2002:a05:620a:4801:b0:89e:67a9:fced with SMTP id af79cd13be357-8c6a6789e6bmr501559485a.66.1768581285613;
        Fri, 16 Jan 2026 08:34:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf33ef74sm897580e87.17.2026.01.16.08.34.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:34:44 -0800 (PST)
Date: Fri, 16 Jan 2026 18:34:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Georgi Djakov <djakov@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: milos: Add interconnects to camcc
Message-ID: <272itffci5xkelvykfijviarm6np22fvcofj4m4tud7l3fn7c5@n6p77vfid36u>
References: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
 <20260116-milos-camcc-icc-v1-5-400b7fcd156a@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-milos-camcc-icc-v1-5-400b7fcd156a@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDEyMCBTYWx0ZWRfXx2Io3tSJ4S9S
 +Qs7w7mPVisqDdhDYMM3ZFHQfJprM6bt6UfJFV/XrYmjctOwhAKMiCnq5G9feamw2ZS+xGRIChi
 A4x7zZsgLNjH05Tq/WXFCuRlwgT4i/WIiMrTNLnLgtgtZrdC/cZ4LaOrJKiICj0qGabKhCn6Dr6
 I0hVim2MBPEaNY3EHnyD/2BmzI+eeVt/o8wb5UVmAxWzAwdfPGtLFBOD1KoHqueM4Lb5HIzJY2I
 8+YB9ub9OviXYj9PagTtVWfFp8Hmu87h1kZoK5WWF2Hj3W6lfUqE/WK3gFaHwKmghr14mBAkkYB
 ZgZ2hHe4FsdZbqxh+Kl6Hue++mK7r+HAIS8aFa73VaFtmd856kC8XMj6eAI+jfytFLMfMsqPXKQ
 nrIe1TbLrvmaMB81nhki8t/bUeqg5wcUTb7jplnC/vUZHfPXzLreaWVORPIsY4fJaH/qqXxrAQp
 Rbt2Pz/keL3/zdj7vvg==
X-Authority-Analysis: v=2.4 cv=Sv6dKfO0 c=1 sm=1 tr=0 ts=696a68a7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=jeBussX95TUAqHeP4CEA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: RXtcGpPXPrejvIDiOXA58mLPNef3cKZA
X-Proofpoint-ORIG-GUID: RXtcGpPXPrejvIDiOXA58mLPNef3cKZA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160120

On Fri, Jan 16, 2026 at 02:17:24PM +0100, Luca Weiss wrote:
> The CAMSS_TOP_GDSC inside camcc requires an interconnect path to be
> enabled, otherwise the GDSC will be stuck on 'off' and can't be enabled.
> 
> Add the interconnect path so that this requirement can be satisfied by
> the kernel.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

