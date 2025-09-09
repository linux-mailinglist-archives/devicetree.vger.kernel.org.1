Return-Path: <devicetree+bounces-214858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CC3B4AB66
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C8927B83CC
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF24032142C;
	Tue,  9 Sep 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FRKv1ZB8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D81631CA4C
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 11:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757416373; cv=none; b=e/DCy1gAoPeb20GDtHoh7onqc+G4cZZmZVLLgBsZ1jQHRJUm6/xpn9ytgSDekmAGhx8e3+vLBHXfyPnZJ/AJwA+GV+67+iqpB/aE3uP8vpiBWzGmDEoOrDvQKBe9Wu21Zr0ayVapXjDPB07FO+upo77/Te8wJOyCKUbEVDQ44gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757416373; c=relaxed/simple;
	bh=ABXOdEgAp3ROJMFWb1n6PCoDt2CzTceYi5y9YjH8iXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rSOxDtAcvTjIW0TsI/h4t0V/Uyk81ItCkKIuBW8b9893bQg8pBKJ+Bk8CKY0OcjxYhnHlkadWdH4EgVzALptiBUN050Lr+4wyMYhVOY7vfDB51+V1pUN/2AIFO9fwFYMCBObLKmDu980bKYDGfGsuQWsq0NTZNGACvC0FW/eUs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FRKv1ZB8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899M2w5002280
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 11:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M9znp73XyVo8U1TpZOW4OBtp
	RYA4woIw+OLOhqqO3cQ=; b=FRKv1ZB87y1M/oF4ZEp1XPRLMZuxo8qzDytkd9dc
	/oz57l4HCdW/kVw5UOgKmTPh/Z0uAzsypvRAQHfCx2FhrztGBQ/WGG8xs/TdEhIL
	pBpwzMVgJCcVM76s+cjyLDAA8hmSK3byPu3rvKHNAp6qpSNrSZukvXaOlPu4eLUz
	/OMCVTxOn59h0IHU1ZPCEVmrbyNlZsHei/7e4lqvthxAFx81WCsPkWxheQCifoMp
	ik8DA8L4BUQvAVOu4a+UqeSBGLxRPJsosrQIP+yx5nK6WKJ49CPac4y+2XTI/YIa
	Un6x3T6wxnescOS3NIPh4vjmzeey/yWuFajqsNporbml/A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfyu50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 11:12:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3415ddb6aso140862801cf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 04:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757416370; x=1758021170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M9znp73XyVo8U1TpZOW4OBtpRYA4woIw+OLOhqqO3cQ=;
        b=aUy0V1zQSZLfyKGQfhovSy3WvuEDJhitvL2vJCSUs81MPEyZeX5xRspCoYZzJNoAgq
         MYU/yRcVyIEdcq0tcwpzVxAiM/4XeVulL6w6uk2Gkyi31R7G0LgkMcGASydAv1jnnoGK
         kKPXCcALhcw+3SZbM+rr0iNo4MwNUgoEFt0QpylH7y7iUPT7mnbwK7lchNAe0loPIVVv
         wU114ARXP8WyZckMcGPNML1SY4TLpWssMTqag0Xe57twwC+DWEToiY6C/innnVQO99KV
         K2O0RS1DJQRGRwoQTMd83YxVrtfoNBSXOUPrPI5lHMk484NWEchKcQ42Hbri+t3+flOe
         8q2w==
X-Forwarded-Encrypted: i=1; AJvYcCWYlBNzvYJ/6ECDhjCrUa7Pg9KjvOJtp1uzMHyHTF2Kn9XIv5xKcZvTJs6/hoyRlwOG/rzvMvuHs6M9@vger.kernel.org
X-Gm-Message-State: AOJu0YwhKVg0suRWM+8YJeXKMwNAkX7mtyrNep3ne/UCBOx0+Hf7wFyI
	jgTkP7qdK1qTAVShdnvrLj0Sq37IjCNg+3WAQXQQxxnGopJB03zhyqml0mq9VpWiGmZudeSLOtA
	ECEM69FUNeJXN59ZHC40l+ic7oEmB2jqxY73UiVqgZKRPmin7uB4KlmfXIv13HUBz
X-Gm-Gg: ASbGncvyU2CkC4g150mELfGvOQOOroicCoxfKX6OBT6i95h+qGr/BMlCeVB+EcJWgCZ
	XwvByaECwiQsBbRm5Zbrg6UrFbpzhJl+BX1YZ7vsXn+u81fa+gzLbxbu3QqEOjk5il5M0eQYSZK
	h6pckcaY4ia9pFQP16eUJesFxptk0Sr0s2SbiT+GqDr/UAef9ht5erFjBBJGRsZtZGcv5tSrk/J
	u/levYzOJsvoFUAciF1uALhM9YTEc/GJOzMmf1YiOnI5SXgkMX8NRtruFKxSbrZae3dq1rp6Fhr
	VgnJiIUjsDVVQ6ehAE6feb9LS5F7C6OjFXXVMqUqi933Jw8hArLuxsc5tAv7z60WTzrg//9ECH5
	9gFBoXRlfUOo8w1v2bLhQJyD1J8b8s91oT+zNXZpYG5HYZTjs+KLy
X-Received: by 2002:a05:6214:509b:b0:70d:bcf0:7c12 with SMTP id 6a1803df08f44-72bbf21116emr132264926d6.10.1757416369954;
        Tue, 09 Sep 2025 04:12:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFihv061/0IeKHM/2H1vKgpbFBruOQN320dQw48xcHjkKFPI/ERP986jbIwJuh5jmZLJF3Log==
X-Received: by 2002:a05:6214:509b:b0:70d:bcf0:7c12 with SMTP id 6a1803df08f44-72bbf21116emr132264416d6.10.1757416369335;
        Tue, 09 Sep 2025 04:12:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5681795eac6sm454789e87.92.2025.09.09.04.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 04:12:48 -0700 (PDT)
Date: Tue, 9 Sep 2025 14:12:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: edp: Add Glymur platform support
Message-ID: <3bo2xr3jb3hrzsetjzd62dmcif2biizvoanxwtyhr2dmkb4g7x@dgrcvzujcwgq>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-3-02553381e47d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-3-02553381e47d@linaro.org>
X-Proofpoint-ORIG-GUID: ERdvDhAZs-ZY741JvslK9BTp72PSjEGy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfXyNogdNa2Abcz
 bzigxLDQyagvLKqhWuIz8I3TKzWvj2aQ/fxUQtLyYB+LOIFtFe96/RBGEXeyiUMReNgG+MKHPgU
 u7B3FUtcZEE0dnWiGFZHG3/0/C6C24eEXQmZVb19a0eZnUBuHnTkAWLMQUrMH9X0Q9himPtx2UE
 KfxsyoB8CWDTf3lAbHNL9axIG/NVkuRpwXkwivrJ3csrX921H8IXsy2qom16BOMSA5WQHVugb4/
 L9bh0X2ad65YHpyYjVdWvZErKlQ5zmVE7Lb0QVEEn0yfYeMNljilKteH1K2PtPHdFCQ90K6Qajd
 iz7GIqosansnecIRcpYJj7t9K/BC4OknU2tTzthaLAcao0Ze/31ERf/qynSP9RvotiL16BmDjPz
 Kze9ozrL
X-Proofpoint-GUID: ERdvDhAZs-ZY741JvslK9BTp72PSjEGy
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c00bb3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=r658mG_ugU-Z7oAIEg0A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On Tue, Sep 09, 2025 at 01:07:28PM +0300, Abel Vesa wrote:
> The Qualcomm Glymur platform has the new v8 version
> of the eDP/DP PHY. So rework the driver to support this
> new version and add the platform specific configuration data.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 242 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 235 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -26,13 +26,15 @@
>  #include "phy-qcom-qmp-qserdes-com-v4.h"
>  #include "phy-qcom-qmp-qserdes-com-v6.h"
>  
> +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
> +
>  /* EDP_PHY registers */
>  #define DP_PHY_CFG                              0x0010
>  #define DP_PHY_CFG_1                            0x0014
>  #define DP_PHY_PD_CTL                           0x001c
>  #define DP_PHY_MODE                             0x0020
>  
> -#define DP_AUX_CFG_SIZE                         10
> +#define DP_AUX_CFG_SIZE                         13

If it differs from platform to platform, do we need to continue defining
it?

Also, if the AUX CFG size has increased, didn't it cause other registers
to shift too?

>  #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
>  
>  #define DP_PHY_AUX_INTERRUPT_MASK		0x0058
> @@ -76,6 +78,7 @@ struct phy_ver_ops {
>  	int (*com_power_on)(const struct qcom_edp *edp);
>  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
>  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
>  	int (*com_configure_pll)(const struct qcom_edp *edp);
>  	int (*com_configure_ssc)(const struct qcom_edp *edp);
>  };

-- 
With best wishes
Dmitry

