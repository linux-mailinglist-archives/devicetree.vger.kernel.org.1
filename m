Return-Path: <devicetree+bounces-192352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7FDAF653C
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 00:33:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 810B27A29BC
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 22:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D843242D79;
	Wed,  2 Jul 2025 22:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DrfFrXe+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826C97E0E4
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 22:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751495634; cv=none; b=vF61rdBA47PqYF7i3BCE8An6CvbpgqZlImbnZVo0++zjYKJ3ZxXXFohTa1+HQGP4gR4m7SPVff+dcUulBLfYekXrIghpwBcVSi8lXSFVikT0UTuB0FhiawtjjMuipCxTaXx8/DmRYHdaa4GNdlqvTsdJCSmQUZ5tRHxLquhEqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751495634; c=relaxed/simple;
	bh=fKYrShfy4eijBV7nECTRWv3J853kJl0gn/F00vK+lMQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OSFKU7u3HELQA8S6gx2LyDG5TKLxEDaQ2b+K3NszZbqWcC6+8So1mVQBdYxypFXae95i0tNrHcuc43sbvo04Pvug8MjtCHdlIZ2qgajpUidjzBGbXxAptW+5jS4Sxr/2TuNhnp6IF27Z+POQ56mdGXXfpSw+MrQRhoufRyhGprU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DrfFrXe+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 562F7Sp1024884
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 22:33:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9m75rRNh/55YNUo8oud19uqS
	Nh7ztNCNjf7HEJhz4Jw=; b=DrfFrXe+I0mvhum2HRzezn+EXJKPyXEcy+lFpiXD
	yOW6Cz33OviCyc9FH6nvXpgJomdo/eHdhOG8aJTRmhOs1ghywi8LT3qVJZ1pxOD3
	GyhruPTn6GEwW0yJPm8ALH1doE311dSlPuVVheig2nl/QFP/k3H5UtbRBlkFzk0R
	64iMHYOn5V68PVk5s7LpCywTIpe72+rDeaQuJwMGen2pcr4W34h3ccIptIGUDJoP
	z93TGYaaZMIRmax/U0SdcL8yN9FvAE53uNRVqNPy01th9lcZOlKG+K/+ZSrD0CUk
	2AYUnGEcREoX4z71rFOJ3ex5ZlmLHJFGznZITV1RC0/zXQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j802614n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 22:33:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e2872e57so808585385a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 15:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751495630; x=1752100430;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9m75rRNh/55YNUo8oud19uqSNh7ztNCNjf7HEJhz4Jw=;
        b=N2G/CF6gOcrWaU7KNzys+yHfTvGL5Q4Xs4MgT/z4NhT7SzDXhqp9xu8JM177aXZqso
         DHsmA1lbMohYFuvUYMzQfT1xSq8bExptnIQJ/uVzUMHz4hhOE/Uqv7DssM6i5KPoRHSH
         XSJ8OKzWtJ0BonNtU/JRWRQTFHdrpKYb4b+BoT7tc4+m9yakNo1MgQkwVD8FmLnbFwe9
         CGzT/rEu9x2Ftl14tmI4xCrWqoD6u317TQpZW1xYnos/qHKditr/PuC/zSUGURSY2BRj
         PuCsHNDSthZsAISYWfzV8Lv3HYhiT/gdtfhJ9Kl3Z6vzafKI1bvwG6wRA8UGDFYf8pe+
         iMng==
X-Forwarded-Encrypted: i=1; AJvYcCX2O30Rki1Afw4cFD6rg0iZ98mRN7o4VkVM6OCLmvDZ/Zizq6VTY0b5ooGomiN2TJApWVLPs0odTpNm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbg98QZAYqxK+cOSgHYROfcCeFHp+lartHggqdLrA8uj3D4o1x
	nPz1m2BBHcAXWfcV9TmnATApuh28N7XjmbcrnVFMLJ/KTAYzqFeh93pAuHb3EiIyBEeXmwP+y2o
	m1t6CMOKqo+uKYSYkYLtalb5yauh6PPJthr1ahaJX+XJzom4qZbKFsITWn7HMpZ6C
X-Gm-Gg: ASbGncuTmk8gvbZCt/RsljDIswfLaRwcDF+w0ew6phG2qV55mS65wfreS39l/RFRo6e
	/AFw3UL12/KI44v9o+1IcHAfOO/Iy2HOgyOvoJBUrZsGIBMM7jGu7UVTqQLsFCPLrCll2+L0lX8
	obpTvMUR1/ZS1/F2SeIArLG6AvnAE3BeTU9QFFgNm4on5UZ2CibT3I24LgO8s5Obx1LGLglgC4H
	KpUCpFXFgZt66UklmXWvBNoDZ4SIN5mKxtyQgpywXm3InW10GSTSqMIJY1L/D3hJ9Mbbe0nW2cp
	Fh5s7aXcSx5SmDF4qXtnK0YZHCV/hXjMAXyR8+p52dM8hyMUM3NN00LFKrcxegXGuWki8KnzjAZ
	UIJznDavrc30dhD6nGZlMYVeN53CPW8LQoVw=
X-Received: by 2002:a05:620a:394a:b0:7d4:5a4a:ceb1 with SMTP id af79cd13be357-7d5c4798da0mr884198485a.47.1751495630590;
        Wed, 02 Jul 2025 15:33:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqHg8DuS5Rl+xyDTUq7jRwAVjwOfUy86K5mPVVKk/oqcQL3wgwaOndDK7teOB2+3l4vN8JRw==
X-Received: by 2002:a05:620a:394a:b0:7d4:5a4a:ceb1 with SMTP id af79cd13be357-7d5c4798da0mr884194685a.47.1751495630175;
        Wed, 02 Jul 2025 15:33:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2f00aa6sm18743291fa.99.2025.07.02.15.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 15:33:49 -0700 (PDT)
Date: Thu, 3 Jul 2025 01:33:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: Add Milos pinctrl driver
Message-ID: <xtcfzqhwmxgyui7fyn5bsms52nnlflalhlkvkinhdc2sxdu4l3@logrn3cjupez>
References: <20250702-sm7635-pinctrl-v2-0-c138624b9924@fairphone.com>
 <20250702-sm7635-pinctrl-v2-2-c138624b9924@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702-sm7635-pinctrl-v2-2-c138624b9924@fairphone.com>
X-Proofpoint-GUID: DM0zXfU4QQ3yII3RvijDHWKS82T4uJWB
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=6865b3cf cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=JBPsfPNCSnIN1veHQUAA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: DM0zXfU4QQ3yII3RvijDHWKS82T4uJWB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDE4NyBTYWx0ZWRfX+mFMrFPV7j7q
 g5EUklfNYH9zYj2FKPwlMKlY7JmcWVgNtNmIqm9tI5RxPeBPJK5ieMG56TSGJFkP0xrcECsYjHQ
 Bz8kpbpM0CbXh7+exr94Ut3eGjIqgUixyc27JguhfpUH6ExZA62ibuNzEELeU4wluLcAHEVpvGY
 mwx95PzP1niPKz4B4I6wqu4Tt39Qu71hk0/dijfxRHW2T6NFGZmlMsdNI9IylcNayzwWS5UVVMa
 H+Xm+UQ7NrJ0eTYeEq6iTxceVr3Qh6jC7OJnnU7KgCTSDJvq+aG7yDcVewNLcAEpjuVUeVeFERE
 hShMBjQtGI0uFEYCch4F7IovUpLN9TM7OYshJ7HmMaD9Mdf6CjvvrP8d3SOwW1DtjIiPuEFaW2Z
 NPSr2doj5ZzzkI5lJodL6KINN+SHGyXrz8/K4JIlV/iZFQrfJsJ/h+7mgEWFIC8OjBAb5rFZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=962 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507020187

On Wed, Jul 02, 2025 at 05:56:17PM +0200, Luca Weiss wrote:
> Add pinctrl driver for TLMM block found in the Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/pinctrl/qcom/Kconfig.msm     |    8 +
>  drivers/pinctrl/qcom/Makefile        |    1 +
>  drivers/pinctrl/qcom/pinctrl-milos.c | 1340 ++++++++++++++++++++++++++++++++++
>  3 files changed, 1349 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

