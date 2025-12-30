Return-Path: <devicetree+bounces-250617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D33CEA70D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:11:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A2A53008569
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74C1321421;
	Tue, 30 Dec 2025 18:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JcUq3ATE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V8kIGFYq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D31932D42F
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118304; cv=none; b=GTz43cRh05m/nXXuSp+ERt4NckbV5Bam3H2uqDo0NAY7LeQcs87ntMBYghGNCyCO0r3WS0oL6+QPaRO4XgRICfpKWbFr4w0sa325I3hGS0tBkL4PtGGUNgBSGhajgca7qaXgYvZfjRbABxGVkCGQAHxKRnhNrg54AENZydx0ONM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118304; c=relaxed/simple;
	bh=AsfXHPjfughjCw1oztFOjFkk8oxo6dEWaRReSexoSaY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bL1YXCbY8jgpytBAEqCDdjzBoUETEKiCX1jqcspcWGKYv8s+8wQV+yzv5mWfZUNeMRtp4LfXCONFQfKtDwzHeTWww6pQTph5EQgWVSuWRk3NYv13XUg6wU91k7sG1iCGzl7/sHE38YhxErbIwl3D8MVojcJ5R0FqPI6jtHXnFwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JcUq3ATE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V8kIGFYq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUEFWrZ3538683
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:11:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HPNCoFW0b1ET+3JulFr+b4L0
	SqkCQC1DxA4qIwg6NPc=; b=JcUq3ATEUmLzbxJpIZjjgwKJrX2YQkrbILoNvTKJ
	PqFopB2qaDTGSp3+zgEqlrlZE/oos1WDqrWj7a0wE+miIj/T1IETgS+DxqFL7Wmw
	XG//pFvAJ+pgqNEruX1NHNFFJjrGI7bszquBxmkuVAqP9nSqVZZmn1nvFWoQ5vfv
	SjgOS43JCEVWOZO/qB2s6g2JCek1lEo7VqXI4m5O5qjLpqNFXdtVWim6SX/E1SzL
	yasCK/nhu/fdaZkvt4NM3H3WIozK+4Z7VLWaf72s3/Lj+iGjZIP+oSZuoQcD/O4v
	22qMk5ekGf4hLaVpc/YwzSQZbXJnT8Z0fJ4OEFhoFKZ53w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88yhsxy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:11:42 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so240070041cf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767118301; x=1767723101; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HPNCoFW0b1ET+3JulFr+b4L0SqkCQC1DxA4qIwg6NPc=;
        b=V8kIGFYqweTYbgul/DZSrZwdZlWJfKLVIWg4XxNqJ0vpNgdsdTyAEKJM3DmDJ7/y31
         kMTASvu2ef1t5Z1BOe1fTfmOSZZdrafV9aT/c03tdHn5zXD0IR1P4SHqtOJq3lexFAEf
         SCyMyMAXmjS/4MhY2cqxMVTa29XN+6NoLnrxIZD/od4DeJMQJqbWB7/4motrd36rvo1b
         uRxxT8E9/LvyHyYyO6QmhKijQwXkF2/W2nIwzd62+/DATeXTa/Qn+nTxbzkSBY0XsQ0H
         AamoNfNu3UtPnC6iiusEXOvV2JmxeaPUk32bkvotVb1Oysc2P0RnKgXD6qtHUVwMYl62
         BWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118301; x=1767723101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HPNCoFW0b1ET+3JulFr+b4L0SqkCQC1DxA4qIwg6NPc=;
        b=dKhpOqMTUT1660dolNe/PFtzGfa89xrGzPH4XOMXW9NcuKpaxSCLxD8K0k3HDOq0HX
         sea3vrpapDas2r/ArnKgx06IK8rzjWHuO3dpZf2bzIbXJB88tdeLnLNFXVAn8hYZVQpP
         806vB1zQOT5IXtcIu1NaoChFt6QaolEFffGRxLLtshk9TrRYNE98BrYpOTGzjMC68DrK
         xwcKlpNbYUX8EI4CCkXkN+ymsHUjoHdzCHloRkpwWCVRDIOYhZm+VKedTm5b+v8cAWjf
         aQ1mQB9dcxmtuWOW3pll2EVkHPRb6BGIrSE1PedtQ2ZdHX2h3Gp2IqDPclyaBN5j/0xm
         5T2g==
X-Forwarded-Encrypted: i=1; AJvYcCWaof9gEnsydE5m66efteZlK7EDA4X6PtZNUQt0rjdOIgkGfQqfMKcQHlB2ZLSzjwdPs9MUKD9y/z5l@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdb4tc5N/n4F+x5AJWHqomwzi2lxOJj5T+1FVKRPyLlIj6sLay
	8oq5Mn0/ugAk7pJJN+VTP5A78AjT7rlPErbGGp1B7YxVX868KO8HHhnIMK/BXgYiUTOXtAXa9/p
	rPzKzOXHrpWhJoVqvdUL+OOErvHTMKGBgxmI2fGNUZQ8MaxzIsBvzYdVjlZkKKbuu
X-Gm-Gg: AY/fxX7l8UYpfXc8hF6Zacv5G5JsUOnP1ocghFWMm82VVzk9AeLdSwWjTaq17mDKYs7
	oCNptjYjecbsJp7m4bBYyXltBVCISN6RT/rUKAN3+GBgjy0Zn2Jz6Me/K42lQLmuYZP0OBZwOtx
	N+l1siMd0/JTz89IB9qc5GAQJLFh4xIpgiLAaEk/gfoCEbRqM7oQhRmrnmB3vbUkUW0V5wh7GoM
	mA5WhjJ4/tLxUvG02aQ7reQNK8FLCUriAF46kHk37f4zR7WZTB6vCHJoArr7oo7hFfqd8sEgrvp
	Cl3q8BuEkSHpQ5Ah/hm7hGJzt9834x2lO+EARTAShWDk8wZsM9zOljKPgb+sG01MssytWKI2mg7
	IhVeEVaWyz5ziOHCXswF5xTBkuGaBuSvtMCyZNogrpNiRAe3boujiezSQ0JwX29Mif+a0cLXkhL
	4rqOSDYQeu4+22bW9O3UJfOtE=
X-Received: by 2002:ac8:6f11:0:b0:4f3:530f:d752 with SMTP id d75a77b69052e-4f4abdf0a9fmr509773281cf.81.1767118301295;
        Tue, 30 Dec 2025 10:11:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIGCnUN1Iw2knaNpvsFWnvKFe/sZ9X6NUNsCPxK4IICAv/qOnSJjlR9vMcYrxElHEnMhkGxw==
X-Received: by 2002:ac8:6f11:0:b0:4f3:530f:d752 with SMTP id d75a77b69052e-4f4abdf0a9fmr509772661cf.81.1767118300838;
        Tue, 30 Dec 2025 10:11:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5cbesm10707751e87.13.2025.12.30.10.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:11:40 -0800 (PST)
Date: Tue, 30 Dec 2025 20:11:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH RFT 2/3] arm64: dts: qcom: agatti: Add CX_MEM/DBGC GPU
 regions
Message-ID: <n2tagk2qxv3bhblivjjhrjaahzhyscz4gi7s2vvwadikgphtka@rxv7rmhxbshn>
References: <20251229-topic-6115_2290_gpu_dbgc-v1-0-4a24d196389c@oss.qualcomm.com>
 <20251229-topic-6115_2290_gpu_dbgc-v1-2-4a24d196389c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229-topic-6115_2290_gpu_dbgc-v1-2-4a24d196389c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=695415de cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ZSAiGDBkxcGykqJOsrAA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: hPqmDlkJ2oV5id9_3DjqLqP4rBBlm-fr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE2MyBTYWx0ZWRfX5rUxkSmYp0gS
 fERqwec/YoZRoZohJVbJyzZx1pzI6A+/0CTsqjL3dv2CuITCfyXoBMx50L5+pzAe17X55yWQz81
 goZT0jmZii+/YldjhTeEZni7YzgaZwxZLPKg2P+/tEg6Ua6HkUXVKwblHiuU+/8LXiLbyKAnMec
 VRGxYYPGtGTKM8e6XOHPzK+L8SXbh4YJT2d5ZwMB1G9aX24v3i9kVRovGIBwTH5z8WxQaWAEyah
 ksI2Owegy29QJSf8hb1zY4O/4phGZ+KHlC56omTBiRKMWW/pq822wz9SEDoPnWiFOa6PYH6Om/A
 6KLIYS9DxOY5yyoXX5MvQX4i781lgNxRcoG2JZ6mBNph8LFQ18nBeAKmwzUp3mwIXQ/NBFoIa3b
 Vz/A1JvKYdI/FHkTdUkS1lpaE2XSffpcKX0P8NYrPJfZHvWd4bKJt9zjHf3iE1jG821Mr3/9RMh
 dmBs/qD0HuLYH1X/FWw==
X-Proofpoint-GUID: hPqmDlkJ2oV5id9_3DjqLqP4rBBlm-fr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300163

On Mon, Dec 29, 2025 at 09:47:40PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Describe the GPU register regions, with the former existing but not
> being used much if at all on this silicon, and the latter containing
> various debugging levers generally related to dumping the state of
> the IP upon a crash.
> 
> Fixes: 4faeef52c8e6 ("arm64: dts: qcom: qcm2290: Add GPU nodes")
> Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Closes: https://lore.kernel.org/linux-arm-msm/8a64f70b-8034-45e7-86a3-0015cf357132@oss.qualcomm.com/T/#m404f1425c36b61467760f058b696b8910340a063
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

