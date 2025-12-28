Return-Path: <devicetree+bounces-249956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDD7CE5206
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 16:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED85A301140F
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 15:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 826012D3A77;
	Sun, 28 Dec 2025 15:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M/CuT1vp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PtR6jzIU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1509F2D0C85
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766936649; cv=none; b=Kz7xS0mg1j6L+NmRA39/7ri3oYUat29VfEV5o06xTivj7bOqwWNxOgJZlxSHYNLS2PQcjAZI3NLLdFuaxPCSFlj0DHZVuJWXdkALASZ0ztuuSWsThnUtJ9Q4YHvhJlvFUmQeTdGlW/0F3qlRfMbXwiCNct8C7a7xd8yHzFiGvF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766936649; c=relaxed/simple;
	bh=MyPf3HVyRxvb60lZMD6KuvGT6pXi5grL8PVBYU+l/lU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qq4dbo+JBeoS5spgdJLbKxZ0ltstI/2Is3/w+OxZHzriAsoDBpb+sRvA51ZYaqBKobp1oz7fnNLH4ppVTD6HGwKC13NFHWwl8NGtIBd6hMvrXl/3Pj5heq8DwZOWZCCcyzBOh4rtKwlQe0olkKY0FqHyziAvzM7Inkw352cf27Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M/CuT1vp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PtR6jzIU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSFUsDd2922084
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:44:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vt3ERzFRmaP+F7T8SqJsExii
	Vpavos6KKtOEhXUpS5k=; b=M/CuT1vp5Tcs1HtvE0IKQkNRpUnpBabOMIMGG3ZF
	S3Bh5Gcd5lC5kJFtkytZsnwCYzcgO1gZfupig0L7YWsBcqRvcftmyiNZhFnhrg6S
	7V+P1+wySSv+Z8OH5KC9AizhUlbn4V0xpZpkrLYq43zlP7gnIbYxQw57Dkd4ruwA
	4cg8a7r8UaGrpJzXi2h1HAHy+b4dqr/a8k7Jp4rr3moGVl8+Mlont1cxJzJllHXd
	l1M2pmfpMA/wJKvlA/r/T5mH8CQm8giQHkDWEov9jigFZi6IVJeTretWKo8vxoTD
	UArKlNzkaCXJY44N9msxOoShcJsitBaonaqdPNnvVVwqEQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba55e2jsa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:44:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee1b7293e7so309197121cf.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766936645; x=1767541445; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vt3ERzFRmaP+F7T8SqJsExiiVpavos6KKtOEhXUpS5k=;
        b=PtR6jzIU1+nlj3GrYBfBpOwtzqg9tR2HymaCaqlzv53nwChpLfmo1/pKaGm3bHwuuF
         uSiVEYQcrM1Fro3yFsCzcUgOjhBwgSrEcbkzYZyclOD8MaCUSANGx5Qd35JbPORYVEtx
         7kYnCV3/Xf9kLrV7khOa+/0qd7PqrHo3HOwXViXQx3H1pFAIT8OCDH95Tykw/KLWphQm
         UaynO/f4rFrROyiZK2Wq9JjrSIi0v/ZpbwQjgHX0yMCAftOzAWjylGpkgUf/e28mu7q+
         Sj36O1/BMWfZ4LTxf+uGg2QgFqlFe40CR3yQJGpA8pjC/fYfcuoeLp0Bdmi0o40TAgvZ
         kDuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766936645; x=1767541445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vt3ERzFRmaP+F7T8SqJsExiiVpavos6KKtOEhXUpS5k=;
        b=jfMpbXhXNxW7CNd/Q8DtXBQYiN+yOvv3y2Yf0BeCjHvaa1vIOuWch+b9ubXvvSFHs+
         7hSQpBnsZztWlM2gmhrg7SbprQ7d3GZ9gHuIw7pQq5RFoPvn9QDt5QinT85M2+w+Dvxl
         qvxTBcugBNHW7bkgo8YkLwDuc74qJVLDIetWnSr2eQZfcCfB50G3umbdVLp0G5Virl5b
         rMt40lWqPO0rFyiFVYfsfaD19V4XNLwmTxQbKuP+nUShOV5lbaThTUsl6w2feHWwDfCM
         sLwPx5OFMfTJHRv7hX4FCCBx7p8HvgK746/6yDG8Bm59xWELbjTYZwRY7e7FjfBOrNpN
         XlKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlWWyDChEBY5QzPncV+kRygVf8Z4RbdjDWwstQYjQka1jhCSLP2Q81Ig06uHShHJ0bMHCnA3US4W/g@vger.kernel.org
X-Gm-Message-State: AOJu0YxLLUJIXCX39q8IciY5Jt9pLqPZK4EAXrXJRqtC9E47I3TXETOC
	K4MXj1tS3OEsfaf10UzFU89zcCPG3uIXIFiIxNWPsYfjwNrWqXZd2m2VzmN8oaZYtYnE2TDtljV
	8zBj2YLP3PFtxspECo8c5IX3EoU8W6B/8nnBq+asabtQJnM1TjgvVgAWUDEXexjeaSU2qLzqI
X-Gm-Gg: AY/fxX7B0oxFFVqAxLPiYSDd8QYftldJJ9/2v6MyKR/kU324h97FYPIObc+YPzLKsgW
	1/Pv9YZwWrtNY4KmXSp+dmiIB9tYsNW4kxwARRRbRoelZ4sr6a71dOuCN6fvHuFCEktUEJlx5vy
	VHhBCqFRICDBrUWVpz4A7L0EhimziAlp8d+QAMc5uiWy615pOSlxxCA/18n38JZphv++sSqW1Dc
	oKnWtKFg9wyqKUYyWWY850kuN7HZI1HhdpjjP4oiYTF2ywpfwqG/dDJuw0rUzUG0PcITuZ6R1EJ
	UKOnW0LeFJ5uHC/PhZoIlbCsCV+pIeT0MWC47C/vE19fKRBWFBOBPArNnXmuXISlem93bcX+Lmu
	sx0mVEFkt2etP3DFyu6vne3SluH61DY6FHO4q25Thxcqvw95SY5SavvAUSGCZJJsAS0qxHncpPF
	/LOWSvYpxQiTCv0+U/512nHlU=
X-Received: by 2002:a05:622a:1650:b0:4ed:1af6:230e with SMTP id d75a77b69052e-4f4abd9cf7dmr431412861cf.56.1766936644758;
        Sun, 28 Dec 2025 07:44:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEjPgUh9rVtjWbj8XpsjqmSrJurm/AxGi4MLoi+LEmZMWFinUu659NqLgcJmefJFeCVUVmZSg==
X-Received: by 2002:a05:622a:1650:b0:4ed:1af6:230e with SMTP id d75a77b69052e-4f4abd9cf7dmr431412641cf.56.1766936644358;
        Sun, 28 Dec 2025 07:44:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5f12sm8125706e87.3.2025.12.28.07.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 07:44:03 -0800 (PST)
Date: Sun, 28 Dec 2025 17:44:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v3 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
Message-ID: <x2nd7fomiy46oi4kiftmuogvlcfyefqslgvz7r22neqgh5spln@icc2j5it6bdy>
References: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
 <20251228-lt8713sx-bridge-linux-for-next-v3-2-3f77ad84d7d1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251228-lt8713sx-bridge-linux-for-next-v3-2-3f77ad84d7d1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDE0MyBTYWx0ZWRfX1sAxbrfg6kH9
 2gO2/1y8xgAG8aHyuWmt+lWQgZciFBuxMblkh2poSdRXYSBUCCLxuWnxTaSJcam0eeUXt2WPW8k
 oOmtR5AU5luktjwQni66x6yrV6sazpCBVlz/XmpHv0QjGooyjrrLCqLEita8r9WFwbKCO4PC8Ke
 WXBn3uwTQHNRYrxMTjGz13ZKlAmdGcbcM8hdEUfNFjjeodXJQNGKlPJD12UpsNYvOXiJXLLDj0W
 hAARy6PD9fLzjsfMGJp/9aX1QUE6zJ/uYnPfAac7Q+0+lTy54BQ6O63gO/bgHWPDkhnc92Ih/Qd
 zx+GcP4TMHo6sY+zjn80UZ/JVjQwNK1pEUaC+jRc23EJUXvuKz4nT/Gv9E1xDx3dQcbvE73O3A9
 jYtJEXe2GYp9Fusq3pP3QslLG+VRAmXoB2fpa2A43yMBsAh/ttMzeC+YVn6NdyG6KSu4FP/il3b
 dS4/m55I8TMbOx3pBbA==
X-Authority-Analysis: v=2.4 cv=UMDQ3Sfy c=1 sm=1 tr=0 ts=69515047 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kbjQfm8kMj6zcM1R1AMA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: A9J86hEk3h1Dee1mf9BNnjULAFjOs_j6
X-Proofpoint-GUID: A9J86hEk3h1Dee1mf9BNnjULAFjOs_j6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512280143

On Sun, Dec 28, 2025 at 07:10:39PM +0530, Vishnu Saini wrote:
> Lontium LT8713sx DP bridge hub can be found on a Qualcomm
> Monaco EVK board for converting 1 DP to 3 DP output.
> 
> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>

Does it really require two engineers to write a single defconfig line?

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 00d15233a72b..5f21bbdca902 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -958,6 +958,7 @@ CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
>  CONFIG_DRM_DISPLAY_CONNECTOR=m
>  CONFIG_DRM_FSL_LDB=m
>  CONFIG_DRM_ITE_IT6263=m
> +CONFIG_DRM_LONTIUM_LT8713SX=m
>  CONFIG_DRM_LONTIUM_LT8912B=m
>  CONFIG_DRM_LONTIUM_LT9611=m
>  CONFIG_DRM_LONTIUM_LT9611UXC=m
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

