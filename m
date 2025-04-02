Return-Path: <devicetree+bounces-162676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97329A7959B
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 21:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC4A13B463C
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 19:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9321DFD83;
	Wed,  2 Apr 2025 19:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aBDTP1UP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D8F19258E
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 19:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743620754; cv=none; b=LvejISLLohCMhc/etrzNkMleMuVKdwq31T0YWrtMJSy4XDOstUlMxIwi4rE+N0tSBtmTeRv8n5/XINMEAvMb/zsp4r5GqOx4l5InpRGknHHl+yc4fxTDPNHS2h/sq+3J5taB3cm2UTz1r5voaYI5oDHUsc66z1OF9s6t4or9tRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743620754; c=relaxed/simple;
	bh=DUJSNwx7FINamTyBYdMyeNWT2agExVQ7nXIfWrce7Xw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XW5I0Y/pyrpz9vU8rhvsaDcl8P8+Pl3piDvnZdkCOYvIGbscciavhNHRQB61HPbT1qLKB8oOmTj7CnaEygaonSMn9L7YlnVuU7u4t2CYsMB6uKme2aYvYNQ+fgXxSFdeBReT8kKyuiWNjswEyPWpn/3D3zfOXoJelwKkWT26cME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aBDTP1UP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532EbqdI026144
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 19:05:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aNv+Exi/x+6zLqx3K598mkaN
	UBCpfHCqFlxecl+OZYQ=; b=aBDTP1UPhADmOUbn7XNTxM1ATs/b3BpxbguCZ0mG
	BTl7b614oFagq5xG2wiO8KkGXLRP+mmQ88ymN1Ubwzr4Z1UG9/j778JSNhl8doWz
	wvFcJNxxZYg6HcH0mdp7xPv9QucGji32dIlKV8/YRok2nLaTzF7/SdF3rujmTku6
	Oxg1BS31rIsIzMjlH0os1UWySW46TpOQgy41mGK73fp9ZVIDfDq+ma7s+WP0sZfm
	7zt55jBgd9hKo0yFItk42jSIZtMV8z7pF4EmJPDDn96WpbgmqJlBzDt6eQh5rJUL
	GXpvazGdqrkkaXoKIzMg58aIwfI/juc65r2MdFTHPjlvJg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ryhft6a4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 19:05:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5bb68b386so24124385a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 12:05:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743620750; x=1744225550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aNv+Exi/x+6zLqx3K598mkaNUBCpfHCqFlxecl+OZYQ=;
        b=JSHgA44yvYfVutV0iP6svDrokiguLjS6GFes9ddjNCzaopX6PtnxxeHrvLGPtQqXPX
         7wSaofsMPGnJGhWsxZif52J4a3UKkvuTPKxW0Qf3bSQG/xTvkqPW4TobD1YTT2EcGK4v
         EaYEFlWdK1OSQCCg648fLnVBSq5stHFaHhHxenDFh56xUnNpaaIMQVooxEBJz37smasc
         sezH/G51DGQP8TYW1CoIAiGhGpGSiq4UBwmqVUCmxuYEoG7I3Thdr4fIcU/0YJ5cN8KB
         QEq3uxi6nDzhxxkvXA8CbjLVzbGal3HrOMmriQ36D9Ze29KWthC4jFsTY2GhUhTV+5Ac
         4T3Q==
X-Forwarded-Encrypted: i=1; AJvYcCULnBusqnSlS4wVl5emzWwSzHlkX7chKQEZtVVwYxk0PuXPEJlfQscGFdcKVFRwpZN/JEYe3aN9PHoV@vger.kernel.org
X-Gm-Message-State: AOJu0YyFZg6QtCaiR04GOEZtICOvp35Cr3MoJkhAPdhW8mvRb0mxLvgY
	WMUQl3JQdlbEry5udZ3utzFztsrludH4svWGJRZsShpCJ8suGJ8Mc/dFwD9Om04LyOdCl1IjnFP
	k9wiqR3NhXbuqPNu377c9EbQ7IqsSn0wVnRs2C1xAcmDoBdeoqmUm13oYmikA
X-Gm-Gg: ASbGncvnk6F09hmACcJ0o98VR+0wkcqtJ6Ov1FnyiYsKKBip2oB8sKKOcR9aieVmAmV
	uqYaH47Un7vRX0tG+9sM8AAtEwQ0RQH4hpCY2Zs9NQT3gTEfDaN7fbqeS74OMWn0wIYi62mpqOk
	1hf11NNYVmVIQ1vt4M0oXyXS/LQ8U9LXPflkekasVazfaC71jmcXdwy/0Hl+VT5BlnFpIcf5Vng
	Ft7n/Ch4hw0/auimwe8Z2oEfaUcZRtKyLECkN8UJXKidwagsHdTeeuNmG3mH7VBhwccqetrig8U
	oPWsn2D4KTaeAS584REZg1/wk8GrbhenwmTelvKeANt/C3346qTt8AWUTuoM/smSFaEgAMsUZne
	nTNg=
X-Received: by 2002:a05:620a:29c7:b0:7c5:4c6d:7fa5 with SMTP id af79cd13be357-7c690896fddmr2672064685a.48.1743620750164;
        Wed, 02 Apr 2025 12:05:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8J7P7HnsNUJiKk+d80XC3m2q80+v0m+GfXwPH2siZjMmkZCvyDbrkLkhIfmK680GiWDm+lQ==
X-Received: by 2002:a05:620a:29c7:b0:7c5:4c6d:7fa5 with SMTP id af79cd13be357-7c690896fddmr2672058285a.48.1743620749776;
        Wed, 02 Apr 2025 12:05:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b0959fd16sm1753250e87.215.2025.04.02.12.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 12:05:48 -0700 (PDT)
Date: Wed, 2 Apr 2025 22:05:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/3] arm64: dts: qcom: x1e80100: add epd hpd pinctrl
Message-ID: <pqmol3quk562bjwnwyvtlzgukabl5rc7uzmco3b2ossrcn6jsb@kypjeag3zrh3>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
 <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-1-ff33f4d0020f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-1-ff33f4d0020f@linaro.org>
X-Proofpoint-GUID: jEUER_ApY_gxN9ygAIcKdUVZgXhvpAyL
X-Authority-Analysis: v=2.4 cv=RrfFLDmK c=1 sm=1 tr=0 ts=67ed8a8f cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=D80HWN4mW-IyzX5GbT4A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: jEUER_ApY_gxN9ygAIcKdUVZgXhvpAyL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_09,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 phishscore=0 mlxlogscore=637 clxscore=1015
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020122

On Wed, Apr 02, 2025 at 03:36:32PM +0100, Christopher Obbard wrote:
> Add edp_hpd_active pinctrl to the X1E80100 device tree.
> 
> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

