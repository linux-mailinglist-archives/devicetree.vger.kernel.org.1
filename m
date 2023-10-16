Return-Path: <devicetree+bounces-9016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD507CB388
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 21:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93621B20DEB
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 19:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C484834CD9;
	Mon, 16 Oct 2023 19:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="hP2cbTWo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F87229425
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 19:52:57 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE7ABF2;
	Mon, 16 Oct 2023 12:52:54 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39GIQZef032666;
	Mon, 16 Oct 2023 19:52:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=CSfTVt3cN4X2d6P5ijagINIHmjZ2J0w7LRo2wDpzxQs=;
 b=hP2cbTWoVW5mnUzjTn0W+hbejfwFE7oN5vjANqS8Bsv3mGspvyEA4DjkQyqWk1ogSPbV
 2cOQcDPe+fAkejoG4dszfzDPU/EYo0fA8XTRYoVg90ExIdiCGul9GsZvcj784r50Gs3i
 3Dsgn/K0br+V2/qo5yIclVE8UzTXP/O2UJQbcekUnLiNQUkRjtvM8+Gi97Z0y6RKaL2z
 WkXVBY5mYGLXcw7m245K8NVT+L48mgHXjZbdNKD+6wxu9qtEa0SZjwmiTxFA6nbCMBZh
 mJIDhJ33gHBp/wQ5orB3E3PLLERWekC3qoWQh9WNLO4da4z7CgrUGv76JwJg2A+CYWTW og== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tsaf0r7sd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Oct 2023 19:52:38 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39GJqbns006120
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Oct 2023 19:52:37 GMT
Received: from akhilpo-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 16 Oct 2023 12:52:30 -0700
Date: Tue, 17 Oct 2023 01:22:27 +0530
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
CC: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter
	<daniel@ffwll.ch>,
        <cros-qcom-dts-watchers@chromium.org>, Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        "Rob
 Clark" <robdclark@chromium.org>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/7] drm/msm/a6xx: Fix unknown speedbin case
Message-ID: <bjcjeixkmvhjv7nke65maknrckxjyosqsqpdf5i5v4iingfwj4@bkdhb2nbwbqg>
References: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
 <20230926-topic-a643-v1-1-7af6937ac0a3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230926-topic-a643-v1-1-7af6937ac0a3@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: -A8NT9JnHrPrI5PwlHH6CjgHuQP9ALY4
X-Proofpoint-ORIG-GUID: -A8NT9JnHrPrI5PwlHH6CjgHuQP9ALY4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-16_10,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 suspectscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310160173
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 08:24:36PM +0200, Konrad Dybcio wrote:
> 
> When opp-supported-hw is present under an OPP node, but no form of
> opp_set_supported_hw() has been called, that OPP is ignored by the API
> and marked as unsupported.
> 
> Before Commit c928a05e4415 ("drm/msm/adreno: Move speedbin mapping to
> device table"), an unknown speedbin would result in marking all OPPs
> as available, but it's better to avoid potentially overclocking the
> silicon - the GMU will simply refuse to power up the chip.
> 
> Currently, the Adreno speedbin code does just that (AND returns an
> invalid error, (int)UINT_MAX). Fix that by defaulting to speedbin 0
> (which is conveniently always bound to fuseval == 0).

Wish we documented somewhere that we should reserve BIT(0) for fuse
val=0 always and assume that would be the super SKU.

Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>

-Akhil

> 
> Fixes: c928a05e4415 ("drm/msm/adreno: Move speedbin mapping to device table")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> index d4e85e24002f..522ca7fe6762 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -2237,7 +2237,7 @@ static int a6xx_set_supported_hw(struct device *dev, const struct adreno_info *i
>  		DRM_DEV_ERROR(dev,
>  			"missing support for speed-bin: %u. Some OPPs may not be supported by hardware\n",
>  			speedbin);
> -		return UINT_MAX;
> +		supp_hw = BIT(0); /* Default */
>  	}
>  
>  	ret = devm_pm_opp_set_supported_hw(dev, &supp_hw, 1);
> 
> -- 
> 2.42.0
> 

