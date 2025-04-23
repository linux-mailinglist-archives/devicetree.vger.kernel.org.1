Return-Path: <devicetree+bounces-169918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D93B9A98AFC
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C389E1B62442
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7603516A395;
	Wed, 23 Apr 2025 13:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o8A/Sy+J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3661156C6F
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745414928; cv=none; b=GXmFR3S7EG2CqBckv/TXqSzYyAiacRYkinrLZlCNy1wuSOXYrjeNAzGoX82Y36b0uohFPE1Pq2nfeZcCUdOQYi1WrJrTOdlVImBvHsAUwWmoEZ//xacgdUg/Lymkx1ZiZwczRbHBt6oXrMWWFl9BcxaShJQ5mjmcDMcXGNsbYqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745414928; c=relaxed/simple;
	bh=U9OtDZeDCzanLJBDLtmfBqU2PmEPFD3p7Lovsa9a7nY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gvSQZGwKp8I7F8Ici9oSlzZIAQ0mQMGKh2RXDGkvlUC41PvB+ss4yM8qKuu695rX9uudxgBolsZTcMZSRe81PJZt7b2eQthTE7NHrxy7IduN7Jug+dIFGKxneL+0KMqkk9hHd0ubgFuc/l2A9eEk+ExC6uQsRCRS6MvQtIqkZIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o8A/Sy+J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAlWvo014042
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:28:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PB3zeJwysZUF/ByBSq+dhGKR
	vdPDfw2nxYgcYIOLE7k=; b=o8A/Sy+JMV06jqoMqAEv5+g+6FDVaLsmlIWxloNE
	eyZ/EllNAnyYMZUJHD7/qcGvvCxNbY1ME4C9kk6kfMRheml5qkIeDP3rVubG4PAA
	UziHFc8yy16AMPfamL5IOvke+Fk+GhleIfMLJBVwlcwZHzXdSsfhfoWXPaFy5HEQ
	pyuys0GQ73qgTa1J3xXaPu9/TPENp+Mfpy7RQyZJOYaSj3pqzGmqJzXeGFGuMxHA
	dsyUxzDaHCrDmKuKy5i8O2VeZX/H/BE7JXFfoFEarVwBhw7chpY7vglyw+ByK0OZ
	Jz7r2tgbdUcT7JMPxrJqh/7p8DaKWSpx7E0BjYzm3AdHLA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3a7sv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:28:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so188316185a.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:28:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745414924; x=1746019724;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PB3zeJwysZUF/ByBSq+dhGKRvdPDfw2nxYgcYIOLE7k=;
        b=o0rviinlMg1+xTY4gsaUYY1LRQ7Nh9K6tSgFh1TVYNhc3vRnh1z/zUUQ9T1c0xc3Z9
         yoovO6Hrz23oG/ecJefQeKzg88xMb2jmMwM1EGnGQudz9BceAAs+pzrdDyobqVhMj+yp
         5e6XY6w+DK5QDVQCBg0IYc2pXfXcv/etoI56KQWvHzrUW0ApDQGvBqWgGNr1lIkmtBoN
         ahqkYk7zCIdbrT8m+HhRiZ68rykjFLxkTnZebSzYvdl3H14p2Ju6XU/lmq8MMv1cl/oE
         kHkcdDuF1wkd9KHJXluC63AFm95pvEX+QYiNxqNrsnO3/zHHXJFy9smJg4Kj7t99gGjk
         mN6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWUsx4CnG+ZwDvHaD1Dgbbm58lUIB8L+HzrhpNsxMO1kYW2tzXDQZ8NB+/4hhEcz8B6XOxO2qjRH6/C@vger.kernel.org
X-Gm-Message-State: AOJu0YzFA2BUnKHhOg/eNoIXtmW1vbVvJij0h192trhDGIjjkkIqEtan
	BQ/flxrgiwINmN2JNh9J4ERvubu0khNH3ew/ERbPf9FxvBJ/15QYu4kKO+dsK9mTk7/k5c0AFdH
	/Y1vymabTevsuq5TkU4uQJiSeGBc2IgaztRrawGemaRpmioB5b17I7OWOd0sm
X-Gm-Gg: ASbGncuz+GEM1qIkkiE0rcKKm7Mf71LY9J21yY8NF7eUbRQGG4uR4OwXVPIkbjulVA0
	xpgWU9JzKQSK5Kywtd/UqlCr5rhcxzXJSw6eUHEoEwdynNaD396seWBqBZEHmMgwUIrU3HL1kUa
	wMMVzZS50a6QGQ/CGdv2qZp7p43H/XWqtFbtzatebz/JDFAb1oWx0RLADHdIekeUisbBFd3+dVw
	DqhSmD2bBp+I7A5lvmL0TGdB6Txk5Pvf+uT6/QJ7qsTg2sYCd3gb6iufGv4tCc9fLjYQ4fTourx
	B3coyzY386d9HahWGIANPgIvfPyzj9fkeOUlsN34+9UPzJBoYCThPkHZ91hcUhiGBp36ItmuUmg
	=
X-Received: by 2002:a05:620a:424e:b0:7c0:b350:820 with SMTP id af79cd13be357-7c94d80df6bmr443624485a.5.1745414924637;
        Wed, 23 Apr 2025 06:28:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFk636fFRRkvuLyPaBe/JMMbB0DmZRi+A72gsKa2vsyQGLytxQjLxNTJxnnRLMfxvaeNdGcxQ==
X-Received: by 2002:a05:620a:424e:b0:7c0:b350:820 with SMTP id af79cd13be357-7c94d80df6bmr443619285a.5.1745414924226;
        Wed, 23 Apr 2025 06:28:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5423a2sm1534611e87.101.2025.04.23.06.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:28:43 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:28:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Anthony Ruhier <aruhier@mailbox.org>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 3/7] drm/msm: a6x: Rework qmp_get() error handling
Message-ID: <skrb5hkl66gt6vr6c42tx2ipfn62uuouztd2g37xlhreeq7nqj@r6ohzexpwmy7>
References: <20250419-gpu-acd-v5-0-8dbab23569e0@quicinc.com>
 <20250419-gpu-acd-v5-3-8dbab23569e0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250419-gpu-acd-v5-3-8dbab23569e0@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NCBTYWx0ZWRfX9jLb2GHsgkg5 R836sFczAVAnA9NojdIHMoyl0Tip1Jx4Q0WTmPxrrMt3a7zOPqMko+vc+vW2NCIerBDTlB6Xicd t7J2Uwhz4xjEbuZ4rL5iqvzxUlPNc6QzAA5s08HYWL1wFzu2kqeBfVXXJmHAY94z+T9uRIqOi70
 TIujzt82mC7w+NUK8Z5BaULFJiUmfbZs2YkR5EpgWXTiZVmB90fCMR+HjCu3Y7TltEF2H/7h8qJ mw3zakvZJ5F3IuF+DYrFTuJ8h8D1bLC0ihKGFPLyjdQr/PShZqvFeIEZGM4gf98aJ0/1oqGHmR6 hpzbNRW7SI+HmIIK0bTJi/m74EZfKgqqkK+Dv2ZMgbW3HObdJ6PZHz4PmgQ540L8gzeRjJLENNv
 2lOwuG4btgxqv8kThm7YGGz7HXRc5dEjSDaSFPCnC4lhdAL6Iffcs6Uh22DBXNeWrSrPRwaG
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808eb0d cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=b3CbU_ItAAAA:8 a=3mVCJS2yw26y67mb1AsA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=Rv2g8BkzVjQTVhhssdqe:22
X-Proofpoint-ORIG-GUID: 88BdPG7bLw3nGdxVmeJ588Uuh9bxErPi
X-Proofpoint-GUID: 88BdPG7bLw3nGdxVmeJ588Uuh9bxErPi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230094

On Sat, Apr 19, 2025 at 08:21:32PM +0530, Akhil P Oommen wrote:
> Fix the following for qmp_get() errors:
> 
> 1. Correctly handle probe defer for A6x GPUs
> 2. Ignore other errors because those are okay when GPU ACD is
> not required. They are checked again during gpu acd probe.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Tested-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

If this a fix for the existing commit, it should come first and have a
proper Fixes: tag. If not, please squash it into the first patch.

> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> index 6bd6d7c67f98b38cb1d23f926b5e6ccbd7f2ec53..48b4ca8894ba38176481b62b7fd1406472369df1 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> @@ -2043,9 +2043,10 @@ int a6xx_gmu_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
>  		goto detach_cxpd;
>  	}
>  
> +	/* Other errors are handled during GPU ACD probe */
>  	gmu->qmp = qmp_get(gmu->dev);
> -	if (IS_ERR(gmu->qmp) && adreno_is_a7xx(adreno_gpu)) {
> -		ret = PTR_ERR(gmu->qmp);
> +	if (PTR_ERR_OR_ZERO(gmu->qmp) == -EPROBE_DEFER) {
> +		ret = -EPROBE_DEFER;
>  		goto detach_gxpd;
>  	}
>  
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

