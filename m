Return-Path: <devicetree+bounces-168680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D79A94056
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 01:40:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8D2E4423DF
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 23:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BE725484B;
	Fri, 18 Apr 2025 23:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R8sCLnCk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE1920C037
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745019635; cv=none; b=E/aeGp9NNjHGk2mn7mZAlUjC9r9Sql1ZZCUCcPKyFKGMg/JRJQQhVjmsfc3PG33Snk5nKSzrXOflCIcV3uhsBFKeTHubGPix9p/6GhJwljnuHuo/bQIfk8tKHGsfVDpi5PPRNmAiMOgTc6ho9OwADTARlsgHwKgnv4OMoALsOnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745019635; c=relaxed/simple;
	bh=EuDY1IpPR1LcKu27fqwYJuFiqjEqc68Epq/PRA/md3g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jQ0HUSiA+kV9yIoyxdL32r+leo3omzRd4VN5MkZHTNiGqS0qfKI7sm+LaSrxm+GeZAc1MWxULMB1Wewyou0s9zNvgtiKIl3q2PQdzMUs9CMVYx7WmDGBIVTf7KH+oNReSpeZcsJ1PrMxnYfUpiUnTwM0OqkHSSkXvcFgs4XVPSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R8sCLnCk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53IMQRnX001335
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lm6rnQ0Vk4Y1vVeAc7d7uyLp
	55ebBlbOTcShD4fBUPo=; b=R8sCLnCkhQrZcGRr7Slvj81KwFNn5EHOJoUlC6yd
	r1fTQCqEeK7KeAbx+jGqVBcp3ISVJ6CmpVnrhTubg+ViPbytNtFLt4RF79CtMX38
	1lF6EQv9dp8k57Z+hXK8LkMdn1rCswzdwkB1goqG7+AtDCU8NxKWNVAuBQOMIRVY
	iaYyYUKSg3tlrxfvU4G3ZtKPlJdfb86G3DjMiAsjXH5Q7pxLmkAONHdtc5mYkEvm
	A9BES1iUaAc1lKVgO5kA586GiGGmZUDvJxdte9m/vwdE5430ub6yGl5oYrlEAGrv
	XHTEtVInF4mHy522VkF4h7MM8l/G0gj96D6IX+e1V2S6tw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygd6u7kh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:40:33 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6eb2480028cso36679856d6.3
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 16:40:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745019617; x=1745624417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lm6rnQ0Vk4Y1vVeAc7d7uyLp55ebBlbOTcShD4fBUPo=;
        b=w9cCliMvkumcDF4TsLl3/c5k4Wi43y8KtyvG0UlSAuAmzqKJPzDYK5IaBczIimhd2g
         pgptzdfRAup6CUvoHzke/di4A9/pcLtnylm+YiJVYj1QtlDzRfY0sftNnDXyq3I05OJX
         XUBO/dSsPMN6TNJ9hrMRL71v4Uq/h/77zKqq0U9lMzd7I0GCB9CfWYrtHGfMtLYz571r
         W43RwcZn6jUY3Y7ZBS2F2meQBP8oLsVSCU3mrkp+DEfJqEx5IS291gvy27fmJmHvMwyT
         XBg5kOlcuUx8d6BZAuSvV/wRQ7oHeI0nhZnwpqHeuUUiiQ8NogQv98exh9nKNnLH7/cM
         MMLw==
X-Forwarded-Encrypted: i=1; AJvYcCXF7uUofKIZ63DXNDvyOp5dHfbcfMDDgqvTUB2SHvvWlBILAC/KEZeo0WAShUzcEI5hqLz3r37qjsyt@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ12bTJSpjxY81vCjPwXbG24FLcgEfO7AoGEAcl/rvoJDos43F
	nz833t1CWBlO3tUJLRCcruq8djd8NuImC3O2LBzG5ITYs7D7e/E5wU+DsoJF9Ue/hPfyGuQRV6e
	Un1rNmIOk+pdBjT6AI3NpTN9TvpJPSHGrygU2Cl6mMZYkqklPtxa5FT7RfNlN
X-Gm-Gg: ASbGncvIgNm+pjp154WWkw0qRFbI8kdgqs6b2iOufz7T1K+QoWXjEaVZ19Sz4LLHN02
	51JoxrDb2PLUvgn1kmNjVn5yK7+54vfYjeoyRiCGof5rYoAmw5MM1lOUV65ZBlSZgv1OkKupGnu
	jOgDQhkrxmBKBTBlb2/IDcV9CN8/qUC31tXifR/kQzd+a+llF2tTptUJ/Ssxf4KnEyB6ejlqsc6
	8E9UKWwSSL3y1lpBhykJOjbtbPhKl+jXsqJLCZuFs/ODoU/7PGsN62pDJP0qcJ18zdk22wEGTp0
	cOU2zhq2U/6CixKPXJ+cvLuKOG0zdASeAxi442QiWHOHcM9GSi2P1TCgWwqn1K4VAYjZCcpXlBE
	=
X-Received: by 2002:a05:6214:21ef:b0:6e4:3ddc:5d33 with SMTP id 6a1803df08f44-6f2c453833cmr70675916d6.13.1745019617304;
        Fri, 18 Apr 2025 16:40:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEptrizXDpGIInsxXlsRaw2C67eYnfSjGJd5jrhvlihf9BInUzyR1taScSxhCfM1bAd3UKK7A==
X-Received: by 2002:a05:6214:21ef:b0:6e4:3ddc:5d33 with SMTP id 6a1803df08f44-6f2c453833cmr70675676d6.13.1745019616973;
        Fri, 18 Apr 2025 16:40:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3109075e3d8sm3500411fa.15.2025.04.18.16.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 16:40:16 -0700 (PDT)
Date: Sat, 19 Apr 2025 02:40:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] ASoC: qcom: sm8250: Add Fairphone 5 soundcard
 compatible
Message-ID: <thq45vas3rbbwvnwijlhn3bbi4e3wbdoixybwoyactm5yqkwnh@qgpxuj5xytr4>
References: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
 <20250418-fp5-dp-sound-v2-4-05d65f084b05@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250418-fp5-dp-sound-v2-4-05d65f084b05@fairphone.com>
X-Proofpoint-ORIG-GUID: SX0qbfubdOZx7UXULPXiA1ngHvbgYMb_
X-Proofpoint-GUID: SX0qbfubdOZx7UXULPXiA1ngHvbgYMb_
X-Authority-Analysis: v=2.4 cv=ANaQCy7k c=1 sm=1 tr=0 ts=6802e2f1 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=UbG2kAVU3ctyu_xrxRgA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_09,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=857 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180181

On Fri, Apr 18, 2025 at 03:13:45PM +0200, Luca Weiss wrote:
> Add a compatible for the QCM6490-based Fairphone 5 which can use this
> machine driver.
> 
> As a note, QCM6490 RB3 board is using audioreach architecture while
> Fairphone 5 uses pre-audioreach.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  sound/soc/qcom/sm8250.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

