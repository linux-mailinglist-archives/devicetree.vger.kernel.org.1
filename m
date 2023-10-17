Return-Path: <devicetree+bounces-9355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A397CCC82
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:43:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73C9C2818DD
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77CF02DF95;
	Tue, 17 Oct 2023 19:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="RqKYroHG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8222DF90
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:43:18 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C89698;
	Tue, 17 Oct 2023 12:43:17 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39HEPN89008517;
	Tue, 17 Oct 2023 19:43:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=KZ86qm2Odn6qaH8UjSDuQnMrT/mDzTTCaaJv/fM0SLI=;
 b=RqKYroHGPl2bNn/wwNHMW8AAnON1yPuHytJlcBRG6Jgy17UB5LR00qJrpWUIqZ7AnoyT
 AeqkG+/EIVqu72k258Vo+Viv18ztYrUvAXOhrkVrdk0Gcj0iqsUYGRJKqICgeyWnk75X
 76Syo1k7fsTpoEz9yWNOLYE8lEKe0THmMwhY9LKLiIv5swy5WsOneCeUE3L8GJ0E5N6X
 fpLtIGVXNAzOp2Zz1A/JXEvAXKIhkUsObxfAcV0b8bab68XDfnlkhPhJpvTa9N//QE3S
 /8wjSPMTOiY+XkcHPbjbRSg3YqqpaxYBbK+QLTe0qUEtI8aKfkGa+ml2TvMO+w9utDiD dw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tsv0v0uk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Oct 2023 19:43:03 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39HJh2GV015529
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Oct 2023 19:43:02 GMT
Received: from akhilpo-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 17 Oct 2023 12:42:56 -0700
Date: Wed, 18 Oct 2023 01:12:53 +0530
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
CC: Rob Clark <robdclark@chromium.org>, <freedreno@lists.freedesktop.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <cros-qcom-dts-watchers@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <devicetree@vger.kernel.org>, Sean Paul <sean@poorly.run>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "Rob
 Herring" <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>, Rob Clark
	<robdclark@gmail.com>,
        Andy Gross <agross@kernel.org>, <dri-devel@lists.freedesktop.org>,
        Daniel Vetter <daniel@ffwll.ch>, <linux-arm-msm@vger.kernel.org>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        "David Airlie" <airlied@gmail.com>, <linux-kernel@vger.kernel.org>
Subject: Re: [Freedreno] [PATCH 1/7] drm/msm/a6xx: Fix unknown speedbin case
Message-ID: <tqxrahhvxmzxicru7qyifqcgcc53vzdsuqukharyz2rz5oqn2z@3eppc3t4nw65>
References: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
 <20230926-topic-a643-v1-1-7af6937ac0a3@linaro.org>
 <bjcjeixkmvhjv7nke65maknrckxjyosqsqpdf5i5v4iingfwj4@bkdhb2nbwbqg>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bjcjeixkmvhjv7nke65maknrckxjyosqsqpdf5i5v4iingfwj4@bkdhb2nbwbqg>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: -T2DgK6rkz0P_dvCFV1TA1PJcvaODXgX
X-Proofpoint-GUID: -T2DgK6rkz0P_dvCFV1TA1PJcvaODXgX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-17_03,2023-10-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 malwarescore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310170167
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 17, 2023 at 01:22:27AM +0530, Akhil P Oommen wrote:
> 
> On Tue, Sep 26, 2023 at 08:24:36PM +0200, Konrad Dybcio wrote:
> > 
> > When opp-supported-hw is present under an OPP node, but no form of
> > opp_set_supported_hw() has been called, that OPP is ignored by the API
> > and marked as unsupported.
> > 
> > Before Commit c928a05e4415 ("drm/msm/adreno: Move speedbin mapping to
> > device table"), an unknown speedbin would result in marking all OPPs
> > as available, but it's better to avoid potentially overclocking the
> > silicon - the GMU will simply refuse to power up the chip.
> > 
> > Currently, the Adreno speedbin code does just that (AND returns an
> > invalid error, (int)UINT_MAX). Fix that by defaulting to speedbin 0
> > (which is conveniently always bound to fuseval == 0).
> 
> Wish we documented somewhere that we should reserve BIT(0) for fuse
> val=0 always and assume that would be the super SKU.
Aah! I got this backward. Fuseval=0 is the supersku and it is not safe
to fallback to that blindly. Ideally, we should fallback to the lowest
denominator SKU, but it is difficult to predict that upfront and assign
BIT(0).

Anyway, I can't see a better way to handle this.

-Akhil

> 
> Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> 
> -Akhil
> 
> > 
> > Fixes: c928a05e4415 ("drm/msm/adreno: Move speedbin mapping to device table")
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> > index d4e85e24002f..522ca7fe6762 100644
> > --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> > +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> > @@ -2237,7 +2237,7 @@ static int a6xx_set_supported_hw(struct device *dev, const struct adreno_info *i
> >  		DRM_DEV_ERROR(dev,
> >  			"missing support for speed-bin: %u. Some OPPs may not be supported by hardware\n",
> >  			speedbin);
> > -		return UINT_MAX;
> > +		supp_hw = BIT(0); /* Default */
> >  	}
> >  
> >  	ret = devm_pm_opp_set_supported_hw(dev, &supp_hw, 1);
> > 
> > -- 
> > 2.42.0
> > 

