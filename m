Return-Path: <devicetree+bounces-202070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7322B1BF5C
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 05:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67C253B36EC
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 03:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DEC11DF73C;
	Wed,  6 Aug 2025 03:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ky5hYJjO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F148C1C8610
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 03:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754451284; cv=none; b=TROGjPyneDgojWiY2toy9LtNtqRDFUrOBgjN5dFeDjWVlaAVJR2WjNNYc7DaaYvuuSp/BUmCaRnuK2Nj6abux3JUN7i25gjFsGWisWpNmfC0wpO7OEAJCCwaWhALODxZbg4j+vM0XQPBdpTa10k2rsXTqKtBzvDhQq5sc7ALwQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754451284; c=relaxed/simple;
	bh=NzrlrfT7twieWqubi3dpeNuoCN+FVi0qfUc+p3YFJVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NXkOPCn9QCk7ywMv/yZyyNLbEMyJi/l4kMDA4N/WeIl5F0mJE1HY24gjYIY5pnkcXJ8ArIAOnTIPtjb8xPE6WHGnlBrqSTxj3bMJyhZAm4JaCly7nNJyOcfmIT3aa0+2r2AELkZnTFLK4nXoG4/KYI6455QBUbahAqcJUmIzxrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ky5hYJjO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5761fPEa020027
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 03:34:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vth/2Y/jgsPixg8dhAKuw2SN
	Go8Ue+WIsJu8g0n76us=; b=ky5hYJjOnww1R/xoC4N1pXPVFWroBLAe5pfNyjWy
	66AqCAs3NHStzYDJ1JJoL1iWs74SksGM36HfTCwAAgFPNjW1KEV7oTQAeJA00FMx
	yzDWagytDuOdPwbVUdq6SD68LVW1P/Kb9epzZcap+Jo+d+xDmUyB7PCv/XhUiKrM
	3Pmv6UvuVH8x+0DhWSROpkExfXOF0dukgqXa7sZ5PbCxQT/p7c0/cPJ7UOKQqdVG
	XlmsoePLIo7su/iy0Jt2gdYAo7pHIJ38NZpU1i2Yoc4CMNqkICZ8ssML8FKMKj7N
	+x7uoip+lMbk/nGPVUqZpRgm59TpRWPfsYsqcNIgYxdGZQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvvs9x2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 03:34:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b06b67d99cso67955861cf.1
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 20:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754451281; x=1755056081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vth/2Y/jgsPixg8dhAKuw2SNGo8Ue+WIsJu8g0n76us=;
        b=mBsk9Qr7++GI3dwLZhU3aE5wIqGXdv7CmT4i+4t90ZW97BAWgskkaKJ/HKazumMcKv
         H8ln8RPU3CXXmzGqOZi8QK/juVWy4r2xqcSriObLFSn9J/t/q1VruOrMENX0/aX3h6YJ
         upOGAs47qICpxmSOhdLvXly10MbNHe5UGeYhR7DmpQ6cQKzyWx7hbmgtqYSWksmhaMel
         2P63o9SFPx8DFAh6BMhAq7UH/J/4XGd9ZvKOIDuzsPg7/jdCCKJc18ZjjtIKyarMPOD9
         zM27Nr5hs7mISwHEg3x/ZuYF+2vwO7LeARyVBs4nwPG7332CJ1khR0f1pHPSrmp48O29
         cKZA==
X-Forwarded-Encrypted: i=1; AJvYcCW3rxcyPre6ZqpWlFImMG8sYtgmYG9tzGZMlfvQta50LN+vcW8QdXQ70M7gyRwPuhSgiqdmZ3q/5r51@vger.kernel.org
X-Gm-Message-State: AOJu0YzYxZ9Y7561myAExRdx5a9qJsoxTf8rASRTN4r8LM8GGRjSJFqC
	Vj1XdkUcVWAU+9qQpt4P9L/2o4QwfvSlkcx3WeCFgYsXgU6wwg25PcnwSuBMvtej44gH4zmk/8U
	HXfEn9FXkA4+UYdJunUAHlclwhpMMOIyIKQB1MoeXWhOog4Xjfdt7mTvGnHGH1hMk
X-Gm-Gg: ASbGncssJd5Hp3mX5IF3wJlGaAr9NJJKW8kw+kxx6PdSt1Ux7Er/9BoWw4IPZGjatXn
	/klWunC2ZundcwkfuqAIz9CHW3JxWOQtS0R2gQL6b0aqCc96IYV0kinIl6VafBoCXyMpEbDd1V0
	KrfWoaQmb96djciUQuoLNkOm3Anoh+T3OsRu5Gpf4QDADSMfPJVJhv9GLE6XYaJDXEtKbnUQCL7
	ScRmmBWWnB27j9KPa6pE8lRNOpskV8/rh25YpjABYDFtSKbPgzUNAvO9/zXi/EdcCA3aHzHH2SR
	YEjgBC8gfDVabu/SxTRmapepB8HAPuYyLR4wa6m9kDzpWomNu1bTd1a41jt+r6Nesipk2Rv+0OK
	tPVx40S71LXib3aF6s2G0dsyZWOrbbkpf/GAiGVl2K1+UFk0t1VoR
X-Received: by 2002:a05:622a:5a99:b0:4ab:5c58:bb33 with SMTP id d75a77b69052e-4b0915e48abmr22499141cf.49.1754451280680;
        Tue, 05 Aug 2025 20:34:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7vcXFUJ30iJDUbRPzNDGIhCemggG/HQOqpvhQreed4gLOPOyKQ2xyiSwmnN889jRgtv0Jfg==
X-Received: by 2002:a05:622a:5a99:b0:4ab:5c58:bb33 with SMTP id d75a77b69052e-4b0915e48abmr22498721cf.49.1754451280181;
        Tue, 05 Aug 2025 20:34:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898beeesm2165977e87.17.2025.08.05.20.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 20:34:38 -0700 (PDT)
Date: Wed, 6 Aug 2025 06:34:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/6] drm/msm: mdss: Add QCS8300 support
Message-ID: <edsul4zxzcgg2lglxpor5xlzfq35c7r6gmw4o3iermf4z7ftpr@elzstjjft5m4>
References: <20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com>
 <20250806-mdssdt_qcs8300-v6-4-dbc17a8b86af@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806-mdssdt_qcs8300-v6-4-dbc17a8b86af@quicinc.com>
X-Proofpoint-ORIG-GUID: 0GjJArsDbTC8xTZxeJBa8WElfxJkjoau
X-Authority-Analysis: v=2.4 cv=GttC+l1C c=1 sm=1 tr=0 ts=6892cd52 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=FdNK5TKXhCwMvpUfx80A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 0GjJArsDbTC8xTZxeJBa8WElfxJkjoau
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX/yrDmGTKbj3n
 n7O1AUQiDAImGd9sq1r3TyHxqbqg1ZvZmH8bU2OoVSy+slqsQ+ihq8b+MTe0GSYKghsVeYSI3An
 bROWKk7kT/k3FytgbduAFQXVb0teioxQtwaNYGnplkBPVTIH1hFVknIQ7Rzv5inSkvrqBgR8YOS
 rCEW1lNFfYkGAaMg3kib/Eaqb36mhNDGdORm+I0W4DYt3ZK8zSpGiSabcao7X6HZVzov0R39u+5
 J6DjryNTsSiniGKsDgYWVXAdUBMi2Yx6XjDSJS7kY85RfTi+rH2DYDcuxw7uZ0LFeJ4+rphKMah
 BAzYjOydllchXlXKbQBJTS+Gr+nkNuXF/PWD0R+Wyw0KhbQohJ6VFDzs1+zII1rFoel9k1gYZVs
 dOVZL40M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On Wed, Aug 06, 2025 at 11:16:48AM +0800, Yongxing Mou wrote:
> Add Mobile Display Subsystem (MDSS) support for the QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 1 +
>  1 file changed, 1 insertion(+)
> 
Nit: the order of patches is incorrect, UBWC should come before MDSS. No
need to resend the series just for the sake of this change.

-- 
With best wishes
Dmitry

