Return-Path: <devicetree+bounces-249332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA3ECDB101
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:16:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AAFD3007ED0
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 01:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1062C26D4E5;
	Wed, 24 Dec 2025 01:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HcFY6khT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E0nNWWTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FF91A2C0B
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766538970; cv=none; b=V0lv94mS41GvhVBTcqVtjCgqZ0dJnSG/eiEEPqN56hX/xFvgxeuD5BPqvOf/Ul7l3Pgc3eCIUocj6GC/c9lmQTiXUI3/q9lOSTprx8FpejIO4edCFrTHbnaD7wjSyXMCw5ArW+uBXUfc2hGUivx18vrS1U00H84x9xsIXb9DxJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766538970; c=relaxed/simple;
	bh=MjZM6rq32PlOqwzhpgBKZpqv31pqmyiV0JNTEiW0QnE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nnbYl87PLX3qeHv3zvyCdqvGFbVERlmxaDoouumgWXVt5DvDDt3NLGo6F4+OkpNS6w6R/R3NAMKCe/4Y9wX1ubFAupmioUyCLvCzSbODCr4xEYxgGE7X4hp5OZG8uACH7mI+ov4TsH5GtZLJihxdruPDhiMprB5YCXpvjy+I0Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HcFY6khT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E0nNWWTl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNMhupL1801684
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:16:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=siMNefyG9BI9iI6gWwtF2XoS
	9bl+uVDhfgsJb6uiow8=; b=HcFY6khTfP3CoVQbJI8ELcEm7O0YtAD7ZYBegION
	HrgUa9q9sU1ojOJHgBCDV/bIXldagp7xd+FTLn3O2m92YOkUVuxbsed3aK2Pra87
	GQl1bipKcKr1FjHXVEfi6XYgnCXXtUlSEuGkrEeZUBqjsTm8tVK66m1BBepyIM5A
	qsWZTEjIkNb8gn2QOttjJf5KsdyjjeHFooMOWuBkHnu97zvkc1HDKEvNEVAdco7y
	/vmmZPrzavi0/oehMbYSvt76pBOhZexkhjV0Y7Fy6OWGRZ5vVYHBOq4WF+NI7W4d
	AFXcKF/9FcOzFvB+PpeZqCKr1gVo6aCW4xWfACgVhg4N/w==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs9be5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:16:07 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5e81d6c2ff5so3760821137.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538967; x=1767143767; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=siMNefyG9BI9iI6gWwtF2XoS9bl+uVDhfgsJb6uiow8=;
        b=E0nNWWTlMGh6kM03VZ86FAo5N5OwA8Vd1sYlF8/NbqftFZiRtc+RZBOVbBKNkGG0mf
         qBfiqsImxWJNTTrWSOykWLrPOSZjR7aB79gPTRW/NSW11Hagcq+ma7AQvNR+htaH7Flv
         fEmc5nblvY1l0ipKiTniFzB0VGQFh0ZhwNvduvFSAUieDeF4m4YvfzEvaBvjW9d7RJ6O
         elJ0xRxoE+qUbwGCMjTVwZel+HCpG1JQLJhP4/UWzb8SQO93f6MB+T6USbCOGkAUK+a+
         Rn2+BEQId4HLVODTgl917igbT6TCbh/8U9d5ozVwEG6rw5xqtLwXtTxgSi3WWNtHbgpt
         jUVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538967; x=1767143767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=siMNefyG9BI9iI6gWwtF2XoS9bl+uVDhfgsJb6uiow8=;
        b=Ry5+zw1e/5g0pAJvNOEHd64hwPArD65gPgplZK3qcU+qM42HS2VtdAWNxPR2UUOJyo
         EpcJbqU6JqUoHcIa9keLLDarQye3wSzfjmXFKL97BcvW1/EIQ6uJr1skCOiT0JKNWffU
         rYW5wrMvluCOtjeRlaheGDFouT9nDd8XXsmc4zjixVU+OW3Omohf03rgrSrmQdFMzOXo
         3147o91TTsMDwU6EzRiplH8RfTwa6xNx4AD0v6ySvxXCKEUhfBMRyHLEty6TulmTYjK6
         bJ6k6SerxCOzJNKu5mPsp82D4XPrZQspous1/R3Vbz/Uu+PW6n3SL7pwbYEFCa+UU5VO
         Rqig==
X-Forwarded-Encrypted: i=1; AJvYcCVnkI5j4lS4dUynt52syX6yxLXAPgm0th/bQaSKyBVL0rhVXAZamQ48hosj6p9n9LEVkGjq0yIc4hDa@vger.kernel.org
X-Gm-Message-State: AOJu0YxD2yLSif0dV8YivACsiGyP8hPixJcHI+VltrZl7XNgyb2PIobA
	jzZpp3ROPg460lh8go7rE1hPac5O8WIJBa1J8JcjaJd2Zh3G2lNQIWvWTal/X10K7iNG54CuBe1
	5R/KFfytKNiev1M5FuJ0dFpORo4QQ6ipGncrcODCr+8vUnil3fk8jj4jNGLqeTnDc
X-Gm-Gg: AY/fxX6x4RVoVEKi63//afjSGlrjrJXeAzLw/SQ48W7MwdFQOfbGwdIQpHql2cizLUE
	4MZE/cNpbLxO/gyps05oVxvAFQdByvfptHz7VFtVgvnxEnqdFDdx1UYbyqbiB7ssFRGdZ5Niuf6
	s1vwrRU2MveP0CJPCa2/u7VGYSlQm01EWUHIpsRZdy95eKJEqrn6s8QVFaKHYtLyXKQuf1OIgJZ
	bHo7kiggBFv3ROlSRqSu0908tGhGt5GJfndYCgeExW1vF4bFqdC8XK8WHRkw/IpZjWrmMAL0pVN
	tmNnQuRk7LSh9CWE3ErjezjMNMNfpsBiKivslWYvuzMbx07cGQcqy12Knm7OkV4l1fqkbP89LIA
	V9VEaVqjPKsZRx65Ot3S8nNBqkQtHGHlDTu6RV0Q4tKlH/enAu7cNvouKKz4xF7O7r3hrI5tLE8
	92pPMBejczjEDlgRLk4Vfy4No=
X-Received: by 2002:a05:6102:6b09:b0:5d5:f6ae:38c4 with SMTP id ada2fe7eead31-5eb1a877d7emr4755725137.45.1766538966374;
        Tue, 23 Dec 2025 17:16:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKCGCoS5VVzpCOhMi3YsvQN+bHSK43bHc1x7Oxom+xEyLQ+RlhYI5632JVxoNTI7WNa7SZPQ==
X-Received: by 2002:a05:6102:6b09:b0:5d5:f6ae:38c4 with SMTP id ada2fe7eead31-5eb1a877d7emr4755690137.45.1766538965944;
        Tue, 23 Dec 2025 17:16:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-381224de67csm39713141fa.9.2025.12.23.17.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:16:03 -0800 (PST)
Date: Wed, 24 Dec 2025 03:15:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Simona Vetter <simona@ffwll.ch>,
        Casey Connolly <casey.connolly@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v2 09/11] drm/panel: Add panel driver for Samsung
 SOUXP00-A DDIC
Message-ID: <unk7loohfu7f6eb5treqem3t4km3ngy3qnoobfw46hb43odypx@y3hc7bujxidh>
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-9-82a87465d163@somainline.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-drm-panels-sony-v2-9-82a87465d163@somainline.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwOSBTYWx0ZWRfX0/6fXnCLn7O/
 7y3W+bXBJwJ60AwMNEbquT6YBu0kHfqL/LAgXq0aUgjbQSNmsBl1JylhBL7mPfJG3mmISjYrvxu
 dCrQObSpybvO24m1JgizGbskoOdMivYNV361Hn/I8YcS3njz7CZKE/Nx0mRx2LZLC/0ZLFexWm+
 cQUCXSeHoBSh2VODBhx1aHzsLqRkJAqqJAo3GI/MjAFflNwYf5JMIm45qFWqZ9gy3VSLTqfD4+3
 tTNDvIrO53CpRS3Kt2ABar0DzE72xR1WWZOZwxlvxSkUDFrjc6E9vFboSU/yMp+rhRquMdccBiX
 ABEXB9+Vp0IhXekuDpazDZ7ILe/sSpNWnw77p+iyQ4hTlfKB2GiZ9qYhwenwSMVvP9Mtzv5ybmG
 pXeDilwFGbdqRvReeAjEK+W3UxwgecGppf83neyTKbyHNJACjaNZ0zGdg2cacd16ONOjeUidzTN
 EoF0u73agz8jtEwC2+A==
X-Proofpoint-ORIG-GUID: kJxTurZrHMfcKoJY6u7Wk-IvmQDVFGnp
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694b3ed7 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=tVI0ZWmoAAAA:8 a=EUspDBNiAAAA:8 a=sOBjPdvQlbgG4MJwbfIA:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-GUID: kJxTurZrHMfcKoJY6u7Wk-IvmQDVFGnp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240009

On Mon, Dec 22, 2025 at 12:32:15AM +0100, Marijn Suijten wrote:
> The Samsung SOUXP00-A Display-Driver-IC is used to drive 11644x3840@60Hz
> 6.5" DSI command-mode panels found in the Sony Xperia 1 with amb650wh01
> panel and Sony Xperia 1 II with amb650wh07 panel.  It requires Display
> Stream Compression 1.1.  The panels can also be driven at a 1096x2560@60
> mode.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  MAINTAINERS                                   |   1 +
>  drivers/gpu/drm/panel/Kconfig                 |  16 ++
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-samsung-souxp00.c | 399 ++++++++++++++++++++++++++
>  4 files changed, 417 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

