Return-Path: <devicetree+bounces-206841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D1BB2DB98
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 837DB1BA55CD
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CFA2E4251;
	Wed, 20 Aug 2025 11:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B89iNIsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392C92E2EED
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755690363; cv=none; b=lQeETu5JELyiyuB95bz6BrW/zkDqd4btl7F88Q9bonyGE2WiOuj3CILOE/7lwWk/Ek9Ar8ys295XE3DNQTUxAlJ7yv8+8NYvxpcrai0oLq5JcFFf5sFkjU0YzO0QCRtHDL5hIVNcK6Bu6kJ66CXdd9f1nRFbSV4rmwkMz0gkSUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755690363; c=relaxed/simple;
	bh=8r05lY7gF/iBShhxcOR5TR/q1dpTHr0X7S5saZrhy8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAGPcPlXupyQdku8EW/0qKbyvNP1lWtLpKP1U5IGz3KYF60LLcKV5u6Ikvg3myqDt7TKcSm01TtsVRntQxxYVwWPItnyyoYzYSp/XhIHnd8RtI54N8kbyTMjLuIYOYLMwU6uLMQpr7GwO93RdZZyCD6OeOV65pk3YovATZBJdQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B89iNIsy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9rsu8028960
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:46:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=86Ln+09pzyozcQ/MppaK2YJ1
	etLMTMvIuD/Ncqfow7s=; b=B89iNIsyfpDobeJi/CKyI3/jrxOpQ+j9kBlRJmMt
	oREaLSNisve+CUXbIxSjxOHyK7NRV29nBJxgrtbXZ9wixa3qempgSqCMBFOISd2I
	aXXYfKEmz8jR9Ulph1oLhCuRyvkjcuD+oHqosGJXPkEYVd/UoUAImN007rwM3MLD
	ag6Gza9tPLGhGtYbPWD2AoyITlvn25eSjqkpGpgRnS05zRcQfrbAcfoAhjixaRtr
	WwBiD7IhRQZDHdIN2jjC9u2k5RDC+CwQPJdpnb/sSLg/BWOv8c4KTSJueKqtyfqN
	QIe4VrhJxUtK/GKAhUebGerKKN/I4DvYbwbtwjvxy+0FOA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ashmb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:46:00 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9289baafso17243836d6.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690360; x=1756295160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=86Ln+09pzyozcQ/MppaK2YJ1etLMTMvIuD/Ncqfow7s=;
        b=xH00FQ4qFFOOHMaVGTUoSRH2xYq9+V8ZkpvKF3TLN3tJp06HgN+Mc2Xja5nxt+ADK3
         rdfFF0enfH33tqB/0yMlFri9fDuUp7YrLyYmb1rs3Q9ADWtqCr49L/8ow4PFx9/p2gAc
         OKj/7YCgy10IL8vKKR50zKobHzq3InHwfEW2VBepw6CErL7IOoP8SDHMnfOltQYf/iQK
         mRWnvgz3SUZlXozm6YIg8rZmPfiFEJYjLFRf13IpAKGuUEbMb23TPYiqDV9f6svq161P
         uJQBIbZg9Zu6SEwnNcA5W4IP07t80BLZkge9FV1nzk+Jf5SxPmITVvl+H2VRUr/nTUQC
         jwLg==
X-Forwarded-Encrypted: i=1; AJvYcCVftVHi63+SEH2RqUV6giaOrs4q//zAaA5CO7lLpWia7h6jhIRZT29aMrhVW4AZ1ROoNdeWO1vz36gX@vger.kernel.org
X-Gm-Message-State: AOJu0YxT0MvFllNg416Vb90ey3PaSGLAySyTJtchwI6l+kkNZyzE3f/R
	OYnjrJHS4G8rlTcUjNZRTlraF2nHeMeVpKrU7gfrGZrsAyE5n0vIsDCBX83umUEDeLWlzjFvKRA
	Ghxg0foW4CIQbFrns9mrq8uxJJUYT4pSa6A6Dpst1VPDWYtcNrNHpZEOEhJrlVKx6
X-Gm-Gg: ASbGnctPhfpdfGVc24uhq/apcNtL6tqcBtv5BLKCr34DxP7vWEiQzNGfgCw8xrOkZ64
	Ct2nf6N0Q+ZljX7VpkVSr5SdibvbIC9JCL/dhWzkclxomIBTW6EPKh2c8N7R7UYIQKbZ5+Codjl
	Y+NepPikcZKb0Y0AL9yHvGclFFzWw3nc2XondrxDOqHUPXsOa8kMffhBO3SVbC4IcJmU0n8MdYF
	oHFpFEw7HYWvansBSUXN5PFZPmKJLOXdUoDo7FM+PRc7yotkvw1DmOAO9nK+NLyug+M7wG2yadq
	Uzoo2s4CoMukaG1MOxmW2pC5OVv7HjML/v8PEJti9tpAlJ80v3Vn5Gtbqrfqd3/cq/+dI5cga9n
	Jk0TuTuukS+oLpVv2xu8tEaWCN/dtrjBmBzABDy/UqFecH9nMrPTi
X-Received: by 2002:ad4:5aa3:0:b0:707:4a94:2203 with SMTP id 6a1803df08f44-70c6a8bab6amr59972296d6.25.1755690359710;
        Wed, 20 Aug 2025 04:45:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlaN2Z2SMVVXIYqO8llzjIfBnKuhBBs2TnJOJtmy1FbGCyh3MeXwdPwEtQXchEguz6D2cJ7Q==
X-Received: by 2002:ad4:5aa3:0:b0:707:4a94:2203 with SMTP id 6a1803df08f44-70c6a8bab6amr59971906d6.25.1755690358997;
        Wed, 20 Aug 2025 04:45:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e02c31498sm660064e87.12.2025.08.20.04.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:45:58 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:45:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <3pr7ninjxr4pgsz56dr6ojjmx27fzzszmtt6mx4r6qaqt25tnc@nrgx5qiqc7z4>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-9-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-9-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX6x8IPL+LziyE
 XTdmcWvCaicMi9LyrpN0Us5VX6p/mLItjni7IFnMviYGjrQBeZhQqQpbykTx7JR1SW0rc7xiIuu
 weTeIF7nMIQ+Ej/E0fWm6zcqXlrHkgIWVRNQzZTlMvdtwltDjJl2p0iXEyhoe2QBfbZqk20KpeF
 xYhpNxdDS/Z4EDSBJUkDetVhusmNj3eBjIVix7lp3POHsnB9izYOoii5jP6GPTmi1jizO2tj/EL
 w7jdFWyd9BhtoHl90rJGdHxFVaRAD+o2sHJuNsL+fN1qoWzJEncN9gu9aUyphYl3du15yy78yrr
 j+nmd2aaU4QlpdVmp599mPdtCTP2i/949YwEXYA0/rNrYAtxpyZt057i1SB4J3Acfjf2QvqbJlM
 HpAiPO8A92o8Jrwl70gzh7j6ayL07w==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a5b578 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=0tJ4ROd8JQyD-KrPA2gA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: tt4KDo3jO6AoYXKJg-Nvwj2TYK_DiqfY
X-Proofpoint-GUID: tt4KDo3jO6AoYXKJg-Nvwj2TYK_DiqfY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:51PM +0800, Xiangxu Yin wrote:
> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 163 +++++++++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 1508a4a5f57aff85318485b79528325f28a825a4..a1495a2029cf038bb65c36e42d0a4f633e544558 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -22,6 +22,8 @@
>  #include <linux/slab.h>
>  #include <linux/usb/typec.h>
>  #include <linux/usb/typec_mux.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> +#include <drm/bridge/aux-bridge.h>

This one is not necessary yet

>  
>  #include "phy-qcom-qmp-common.h"
>  

[...]

>  static const struct phy_ops qmp_usbc_usb_phy_ops = {
>  	.init		= qmp_usbc_usb_enable,
>  	.exit		= qmp_usbc_usb_disable,
> @@ -1095,6 +1248,16 @@ static const struct phy_ops qmp_usbc_usb_phy_ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static const struct phy_ops qmp_usbc_dp_phy_ops = {

Please try restructuring your patches so that there are no unused
warnings in the middle of the series. You can split the next patch into
'parse' and 'enable' parts, then squash this patch into the 'enable'
one.

> +	.init		= qmp_usbc_dp_enable,
> +	.exit		= qmp_usbc_dp_disable,
> +	.configure	= qmp_usbc_dp_configure,
> +	.calibrate	= qmp_usbc_dp_calibrate,
> +	.power_on	= qmp_usbc_dp_power_on,
> +	.power_off	= qmp_usbc_dp_power_off,
> +	.owner		= THIS_MODULE,
> +};
> +
>  static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

