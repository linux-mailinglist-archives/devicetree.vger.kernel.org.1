Return-Path: <devicetree+bounces-228495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8B3BEE475
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 14:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E58D540386F
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 12:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FA02E54D7;
	Sun, 19 Oct 2025 12:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ahbYeK2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F322877D7
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 12:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760875819; cv=none; b=svuLdNEdlhA7BQzK7Rr4w18auGfqQSdkv9PEyWV3iVqkk8wzscRNNQhTTmq5XkbDQUu5EfsYm/v2fZw2U7+r5IAM/ibhPsTcd5uayfejvKgyJ+2V0dhRm+S+VWpB0Q/p2PnfpcNeFNqiOcLxvO6f9YptpIFea26pOMCjvfkRozo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760875819; c=relaxed/simple;
	bh=jTOj0i8zV4tOS+Sk6dFr3QVHcC5lOHnacWBsggnUafQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fuzZ3aWvtd9NUnsllAWd3ET59psxgT62nWkMyZ4t9Fkfc92a3IhnYHM5E9WR+D2BGaIXn8iANtquXAN8zISInWlecZdB5l0WlzkudIcsEBfD7/mZDdB4F3YNTT6/AU1XFTMsZ94y8IM5XfxD5jKhKlXvGTSmGXoCfW98h66JTjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ahbYeK2o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59J9hBl1014135
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 12:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oXZypdoDeo1tvUJy23zlSIGn
	Bm0OAc4gNdKKP1vbfS0=; b=ahbYeK2o/8Z4TcOWA7V0vrwjwOOlrxNo4EGe1Y2z
	AlyPLCVcKW4XXjINHusQVrtGgQiUFGA9cGki/IafqVoPIZahRfs0Mt7sOJXAaZzb
	NVRPw8MUdewgwtBRhMDOXJCkPvVVMWHBQbBQ6HcY3CCaSCIVuhWxRWgSvq12HGUj
	90z9hW0RVVzQ2ZmRaaq642pTY+gbHqa/Ors0a4vEiJ7jfsobx1MjH1WGXH4UaI+o
	6jv3FlK1QBqLYlpqvpRL6s7TIlnBeyF/N+0zm/x+PfX1tWjqv95taezhhl5kwxbH
	HhcibPMRuH5V0PdfPQuMN4aX4cGwAJh4iftnkBIVfGWukA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v469a8pp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 12:10:17 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87c1f18cbc6so190976666d6.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 05:10:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760875816; x=1761480616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oXZypdoDeo1tvUJy23zlSIGnBm0OAc4gNdKKP1vbfS0=;
        b=DGeKRaMhDBj/YtKX4KUA8LnnqpuM0fcRJIbkIWJFYXxuOkCrEtWl3z9CQ0SWImoBJy
         l0D3G3QPKkwp9csVYU5Y6gpBbxOrcHKL8abMsKh4vvreXVv7Go/W+QmA1PyMusFja3fU
         oSWiQNeT56HUOxRFN5jZ0MPCOxO9A0clcnTDZ8pWRM6KKaxO8tHEgcnZwGgEMbWBH8yA
         6imNWSVd6ROhadkn0kxqH5LtgRua0e3C6FB6w7SQESkXFii+8nNooOv4/KF80i00WgWt
         hQA6pLDdPAR/ngXEIIZBmnw23A5bfUNMbAa6Mp5gRZZ08vlwBhYLWSnomMF0/CLF3TGA
         u9ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXsk72Yym0f6WPS8VayAxMQf4Fm0vV0MqAnT03s5UKuBogrocY27zHLGG1EwrB934Vo1Ib0CnZCSe+P@vger.kernel.org
X-Gm-Message-State: AOJu0Yzub8tLNl7k7FXYATuiKvmR17bKbhkdKDby9EYM4UYAVz5xXvAG
	8E77aIB0K8qmIroYuYFn+98BkyXx9TPWjhUGtAwRgbZTTmd9YCqnWw2J+HYIiluEBmevL/EUE3e
	nJraZnlbTpYcb0iHki/I8ckHyyPwlN/uj6eLQ42xngXVOjhMyASZ1EPWz11FFK7/G
X-Gm-Gg: ASbGncujEWp4f4AFyPwdKSoA0XofvGyKiHtIJj3LtZiGfzvKW4eDDZPP1rggbZ+eloo
	CKrYI9KJr8bWIMGcSUfNKT7qZOKj9ZVwjB0HyHx5PvWFpaxCfDYSO25e75aA+aBHNx0DUX+ET/B
	U0cRx1xr29PiDbJW0+wC6gwkbWyvOuY0QcErOjK4vlWCETNGcYEhKyLJDUkNN/nA078bhQ5n65y
	5VEZu/Ed1v3/4MlgVkKUt7LM4T1Rzu4FzKylukcYg4Dor/N2v5ehr1gmdWQk/dNQ88SapSzaQBJ
	0kl2EKg1EbrT3NM2v+aS5e/v7a8d73YusnWCKehkMF7mG6iwGAID3jcwaoInJxyxWiQR9kHlfnQ
	syAg6ByZ1T0B5jJNzJMdWEBusqRxrcmQNTUfV553ulYXDir0EZL1vpozzGNpRAn5d21iDbtXi1Q
	XPFt03MlSW4Cc=
X-Received: by 2002:ac8:4659:0:b0:4e8:a0bf:f5b5 with SMTP id d75a77b69052e-4e8a0bff828mr85087451cf.73.1760875816372;
        Sun, 19 Oct 2025 05:10:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQFXMjwqlRtvoAlv2PTiR4X/GwJL5K60slTRcTbwPnJJj5IlSS9I4MUGzxmIz/JocxZMOSNA==
X-Received: by 2002:ac8:4659:0:b0:4e8:a0bf:f5b5 with SMTP id d75a77b69052e-4e8a0bff828mr85087071cf.73.1760875815932;
        Sun, 19 Oct 2025 05:10:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def28beasm1513557e87.114.2025.10.19.05.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 05:10:15 -0700 (PDT)
Date: Sun, 19 Oct 2025 15:10:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] soc: qcom: pmic_glink: Add PDR service path and
 service name to client data
Message-ID: <z6pivvpgdvwr43s2v5bqhsguvql3meufilye6ceenlslv2gtzh@44omnkrffnqn>
References: <20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com>
 <20251017003033.268567-4-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017003033.268567-4-anjelique.melendez@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: fLrs2pvbwiQM_EO7GnGWaccVNef5mSHI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMiBTYWx0ZWRfXw0bIg4Gub4Rx
 Ysnp5v4rvKyFbrTf0RieWTxYWIorEEbgakmZfDpbC5I8iE8ozh+Q+MrSJVi4JksytDhKNLTkTuC
 rcPbXOzgDae387gsiEnyVacOxNlTOf8Dc/j/bjCAGHxAvMb52QvgrqRygc7cKokwjfzFuO8+2rX
 5ccSjhumGnOqDenQwgh53qqQizIO8bS8Y4mew2A4yBP9zM1EubpTE8rx7lOQ2JmZzSDrbEyLngH
 jldKEwdoLsxSYv+JpHhYoMxGHzNUaLTRbvnuf3ouIsYbbGV/NG/ZIFSleVvLRSTL+b3gUxz/ZWD
 W+ejh6AJu5PYwt8D2LdzPwkyWwWt3rU8E0ahTGvAlAb654t+EYYcLrgMyCD3/GClcc7KV6HbRZG
 SRh8YxRwJo1jl5mWDggv2TaVQHv42Q==
X-Authority-Analysis: v=2.4 cv=U8qfzOru c=1 sm=1 tr=0 ts=68f4d529 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=wtoOEQ1CSsgGxPn1b2UA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: fLrs2pvbwiQM_EO7GnGWaccVNef5mSHI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180032

On Thu, Oct 16, 2025 at 05:30:33PM -0700, Anjelique Melendez wrote:
> Currently, the charger PD service path and service name are hard coded
> however these paths are not guaranteed to be the same between PMICs. For
> example, on Kaanapali, Charger FW runs on SOCCP(another subsystem) which
> does not have any specific charger PDs defined.
> 
> Define PDR service path and service name as client data so that each
> PMIC generation can properly define these paths.
> 
> While at it, add the qcom,kaanapali-pmic-glink compatible string.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/pmic_glink.c | 65 ++++++++++++++++++++++-------------
>  1 file changed, 41 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
> index 627f96ca322e..f64449de2305 100644
> --- a/drivers/soc/qcom/pmic_glink.c
> +++ b/drivers/soc/qcom/pmic_glink.c
> @@ -23,13 +23,19 @@ enum {
>  	PMIC_GLINK_CLIENT_UCSI,
>  };
>  
> +struct pmic_glink_data {
> +	unsigned long	client_mask;
> +	char		*pdr_service_name;
> +	char		*pdr_service_path;

Please rename to point out that these are charger service name / path.
The rest LGTM.

> +};
> +

-- 
With best wishes
Dmitry

