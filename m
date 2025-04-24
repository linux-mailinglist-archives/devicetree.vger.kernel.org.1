Return-Path: <devicetree+bounces-170367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1681A9AA09
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:24:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EE11446802
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA4D22171C;
	Thu, 24 Apr 2025 10:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EpruXzTc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9599721CC6C
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490244; cv=none; b=QlF9qvPr80eQNDvAH4ehffWtLswc1gYKFjfZgT6BnnhgPCzit9tUrnmuGSecByYfs56+i1dDR3C4T6G74veHiufCGNCWvQ42I3dxa6TfCFTtlceFwjyW6RWrMU8wWRnGKuCHC27B1IVES+RZ0CmgN/ZaGX+Y+gxxfXTRVfysRh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490244; c=relaxed/simple;
	bh=6TWXQGTUy8wIt2JEPMNkmc5GEl594rGt7tbRCILOuMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kg/zAaKLIGiU2QO4WmY9ar0bvSxshwdXZNAWjLUas+HW8AynctIDKFtWBABaCGbOQDQMu80RZHjwBZbgMLx2TpWDA+VtjQiMvXsnZmaoHvBxk+l4/6leXXKJvyRndbyKmGnGfNTHjVppMN6B5ia0EvywzNxAmfhervVXFg3ijD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EpruXzTc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OANoPl008922
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:24:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j4BDsTwObQmRXQvxX4u8s4xU
	g+eG5lJxHUSU9lC6EcQ=; b=EpruXzTcKEU5BmMvqpw/QQaUDBzAPkOffdIFSJEw
	FoyxdVwsIhNa31Czq77FhSSby3J1kLf5ezY2h26exod+X8nD+TK44OvLJ1NlMP6z
	yl8IVEbLkDv35gymNNLUqIFB+e0VbbfN/Qf0hBI6/5m2WpXf1Tk9/5e5MIRnfMOF
	UhuCaL7QJee2rrMAqxlHi/OsI5jR3jr7+TLcZxgUWVfOWUkMGy2LMRBmFnz2ZWXA
	kSCEh9R+HxRsWWoHKs2wfE3ECbwU1oiC0VWP095gcpEQykVfJ3KZcc6MpghdUPKU
	eNpEMR7PgVt9V3lDYgN+YpDvFCq8ZSUVLYvMutaFUDrDSg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3d4ep-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:24:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4770594a277so37739011cf.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:24:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490240; x=1746095040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4BDsTwObQmRXQvxX4u8s4xUg+eG5lJxHUSU9lC6EcQ=;
        b=p5S4cHoTV5IszGBlEAqWerRvuY3pOs/oXgfpgtXV9Z48SyIGK9ZatGdDsUq/TpzVwf
         NKPUBaizRPOXC/KFHgKahUt8tRiRz23PP2mIAJmAIxu4RwfoUipNbCPXYfl6vnf5pcYI
         jmJd+oCtmmkqi+IQpzc/Bs1DgmH89P+tu5zXz9H/ozr1rKsn3jZ5tmcT5vcKQ/8aXDSV
         kzp8kpz4IHJEzKknbX7vyyAtd9G5xqovTporPshyycY+le6W7Kq7hpqzH9vwToLBXxPC
         kl11NZtwYxrCyiMP1XVnW3VBaMwkzJzKvFISAmN3Ik3chAg4s7Wf+FsVKPizzxInbomA
         GqGQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4vNEIzYU6HWLSVq2Z8T25N6ySd9QcBiuEzBleKrfqhW+wN8/V2qbetnulvCLMSiqlBd9/9Qomy0Vx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw63K0CY6hmdsOhcVhZ3P6GmRXPDLUsehXalHGh92/EfwU/eVIV
	ViZLJskUcRJhjEo36dj+8ZsZzl/RPnG4efdCcQkr5cIEGXk2hMd9X8mrkBqiXHixPdIIbkE/P6s
	qC/IoqPcUDnAxGnrJwoj4bjsLW1692SCfynHDUcxBzibWpjOrw2n18F/wqngZ
X-Gm-Gg: ASbGncth0Z8f/E7Sd7P1v/7kk193o/JVeDEWDjbfjQu+AVr4+10pzV3OCVSwYRLfRfC
	3bOfn5kGw6Py3CB2ec0LVJoAk0DJ/JawJe7aoo+Mo3E8O80wny/BsN6XGVU3RCLwa1oPYbCoGnp
	iRPY7/zZvG3DhFAIKi5sgEeMz8NZDhpW8nwPcPt9mIAbLs9Fv0NzWZBIZxzSZr8A8oVpHvTYl17
	aEYDijpdZFyVLhfjqeq9MWgE3ZQUAj3Wo0iCp6+9U6zC6pBpFUTwX4x/UlTnN5nQdwXNCXUPu7S
	Kic4XsrVQFOcvXk+tqcXhqDrECSpwR5hcJb3l3RPkVlYg1K4RdUqztGP8b1qgaEDBzTKbAAuM/I
	=
X-Received: by 2002:a05:620a:f0b:b0:7c0:b350:820 with SMTP id af79cd13be357-7c95859b8d8mr248842685a.5.1745490239949;
        Thu, 24 Apr 2025 03:23:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQQEXVZzHdQnlD3zO5Vs5rn2DZ4H/JAobpVLZpVt95WPenNjUM3LZuNMO+8GOdOAF/WC9wFA==
X-Received: by 2002:a05:620a:f0b:b0:7c0:b350:820 with SMTP id af79cd13be357-7c95859b8d8mr248839085a.5.1745490239479;
        Thu, 24 Apr 2025 03:23:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb8055sm176606e87.234.2025.04.24.03.23.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:23:58 -0700 (PDT)
Date: Thu, 24 Apr 2025 13:23:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/7] drm/msm/mdp4: switch LVDS to use
 drm_bridge/_connector
Message-ID: <s63lvzn35d7xcvw3kkmtasyinxbqa35juyxosdscfk6vhty4pw@hu3dotyklo3r>
References: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
 <20250227-fd-mdp4-lvds-v3-6-c983788987ae@linaro.org>
 <63e5ddf6-151a-42aa-b2cf-003d91b34a04@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63e5ddf6-151a-42aa-b2cf-003d91b34a04@quicinc.com>
X-Proofpoint-ORIG-GUID: lM_fQieAxOugz2k5bb0y5vLGUYpAEE9C
X-Proofpoint-GUID: lM_fQieAxOugz2k5bb0y5vLGUYpAEE9C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2OSBTYWx0ZWRfX0lXzMy+2Zqrl 8doKRZSpcqsocrNLIu3KnY7lfFq1DotuazbpxP4AzUd9TubGyjXraGYAfSgxpgNMr6hlu8+eYUd yMi+S9ojQ1eYYZuNPFzgtO6+G052wG0WOFzEP3XXfeGpE1Vfqngv0OnmONxGr1u6rXWZJLXPAyn
 QyKbMnFtHtUR1h3yjSH2hvY+15Xxw9b+nOXIEtphAzWb8kf1FFFy/fPV3Gf/nfTvkOIY7F09w25 WdGXAQHzuoWwTTy2+D8Vpm9EzsGiiq3UqjeT87b0QT7g+FjkldQsfIiAgJjz8N9FSt9HRw911kY dinihSxz7yPEdw9BBsQAd/2Vp9A3UsvKopQVHuPIDMAGpV2daoh3/jGus+20jYCvsvauSXLKreS
 CEH5t9JIfvptR3egUfZ6qz0wz0bnAODMxWn7inMOiBnmUZYuNij2uC2bCklvi2d6YvfUVf9w
X-Authority-Analysis: v=2.4 cv=Mepsu4/f c=1 sm=1 tr=0 ts=680a1141 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=OCSEMTtbVqUzc-lEabkA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=979 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240069

On Wed, Apr 23, 2025 at 07:04:16PM -0700, Abhinav Kumar wrote:
> 
> 
> On 2/26/2025 6:25 PM, Dmitry Baryshkov wrote:
> > LVDS support in MDP4 driver makes use of drm_connector directly. However
> > LCDC encoder and LVDS connector are wrappers around drm_panel. Switch
> > them to use drm_panel_bridge/drm_bridge_connector. This allows using
> > standard interface for the drm_panel and also inserting additional
> > bridges between encoder and panel.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/gpu/drm/msm/Makefile                       |   1 -
> >   drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c           |  34 +++++--
> >   drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h           |   6 +-
> >   drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c  |  20 +----
> >   .../gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c    | 100 ---------------------
> >   5 files changed, 28 insertions(+), 133 deletions(-)
> > 
> > @@ -199,27 +201,43 @@ static int mdp4_modeset_init_intf(struct mdp4_kms *mdp4_kms,
> >   		 * bail out early if there is no panel node (no need to
> >   		 * initialize LCDC encoder and LVDS connector)
> >   		 */
> > -		panel_node = of_graph_get_remote_node(dev->dev->of_node, 0, 0);
> > -		if (!panel_node)
> > -			return 0;
> > +		next_bridge = devm_drm_of_get_bridge(dev->dev, dev->dev->of_node, 0, 0);
> > +		if (IS_ERR(next_bridge)) {
> > +			ret = PTR_ERR(next_bridge);
> > +			if (ret == -ENODEV)
> > +				return 0;
> > +			return ret;
> > +		}
> > -		encoder = mdp4_lcdc_encoder_init(dev, panel_node);
> > +		encoder = mdp4_lcdc_encoder_init(dev);
> >   		if (IS_ERR(encoder)) {
> >   			DRM_DEV_ERROR(dev->dev, "failed to construct LCDC encoder\n");
> > -			of_node_put(panel_node);
> >   			return PTR_ERR(encoder);
> >   		}
> >   		/* LCDC can be hooked to DMA_P (TODO: Add DMA_S later?) */
> >   		encoder->possible_crtcs = 1 << DMA_P;
> > -		connector = mdp4_lvds_connector_init(dev, panel_node, encoder);
> > +		ret = drm_bridge_attach(encoder, next_bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> > +		if (ret) {
> > +			DRM_DEV_ERROR(dev->dev, "failed to attach LVDS panel/bridge: %d\n", ret);
> > +
> > +			return ret;
> > +		}
> 
> Can you pls point me to the lvds bridge used with this apq8064 board? I was
> unable to find it. Just wanted to compare that against this while reviewing.

It's the panel bridge, wrapping one of the LVDS panels.

> > +
> > +		connector = drm_bridge_connector_init(dev, encoder);
> >   		if (IS_ERR(connector)) {
> >   			DRM_DEV_ERROR(dev->dev, "failed to initialize LVDS connector\n");
> > -			of_node_put(panel_node);
> >   			return PTR_ERR(connector);
> >   		}
> > +		ret = drm_connector_attach_encoder(connector, encoder);
> > +		if (ret) {
> > +			DRM_DEV_ERROR(dev->dev, "failed to attach LVDS connector: %d\n", ret);
> > +
> > +			return ret;
> > +		}
> > +
> >   		break;
> >   	case DRM_MODE_ENCODER_TMDS:
> >   		encoder = mdp4_dtv_encoder_init(dev);

-- 
With best wishes
Dmitry

