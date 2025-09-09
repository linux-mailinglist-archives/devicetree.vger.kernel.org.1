Return-Path: <devicetree+bounces-214866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2273AB4AB8B
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DA787B9EB1
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773B531B83D;
	Tue,  9 Sep 2025 11:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YbPRU7G8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15A732145D
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 11:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757416796; cv=none; b=Sy3Ak0OoRvDk620wg7xSUgkwYYRsEbEwo7uUEDBA3hQLXu44Z5BcZOJRwtUdisS+3JuSWkBHhL2XX0Ac14OX9c2tn2Mm7f3w45Jvm86du3BLVHs0Ik9GKl/Iw4vhAf+TMK6i1t+f6AId6YiQyHnBJvvGTe0ppEx+/KSo/EM06Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757416796; c=relaxed/simple;
	bh=4M1YgHT3LV6yyXXTA5Eblvj1pupiIOclR+QrmGk+Z64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gATQHvY/wLSV50YgdOzGnSkVPtUQ1gJqTPBrjbsZ42XGU3/cb20nfl03jwbU5P+KL9bq7U2WplZYbMOo9vKgkbvbocRtCyHoAQg2DcnDn8jN1A+nGeLFgp4KaZZa2AXmPVeqpzq60VR5Yf2NX6q/6MjVtM8tCNK2GxhaAmpC8Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YbPRU7G8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LSpB020459
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 11:19:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q14H0KT1COSDYSRp0kk+HYET
	w3KiV71BJr5ELJZUOaU=; b=YbPRU7G8kgcfMyBcs0cpK74fK0Wq27pJqrjPwAFL
	jHn8H3TOyLZPmrsuPh+3o+j6OQcNODjqRxN6lqnXslf3vMLS0gRmxJMDQ0A/B0M0
	5D8Qx/tfKtQVCL40gEz2RxqKcxpIQITm45dw0WePWTwMWUoaMuTMLFFKJ9RT6fj2
	uHFAcrxteguq7WRx40QQgskdEK4rHplvrEWUDuXbeokAa8saflNdZJdr0xCAadav
	79Eng+5gPuqcGBfNAd8LOcNK4W8QkGlYKws9B5lB3TPwBSlAnC0XDIKVejEHdGxR
	QfQZMSbnk2Rd9ePNWJt3wve73zn7fKLCIaswm2NjV+xy8g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a7wns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 11:19:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70fa9206690so110383826d6.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 04:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757416792; x=1758021592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q14H0KT1COSDYSRp0kk+HYETw3KiV71BJr5ELJZUOaU=;
        b=DKwp+Bhb+E6E9rr9XBUa6kUnfK6wsqwghW4BZDHYarWRHzK53/n8pjSh6HeEv/rXOd
         yzo0PvnhVANV64+6kEEKjDYJ94prINELyzIcqtHpg9/1Sjr+2AjHpbwI16yuVZPhf4+g
         wE+gpzYebeMHP6hE/0YyB5nR8HXu9hsfC/IldmpgGlXb/Hk27vuVUo1sUAWWua7ZjQRX
         14RO94GrvLIh7VPSXDjxEElJKMPF9LAiGWuojmDiYbdJyVFt3uLSPSK1CjB7C0fv7qY7
         xGtQQBHVbmGEledHbochmOMEXcWrujnKc6/eLJ3YCINujkj3tQjOjYD4/y32gisEhjoK
         KznA==
X-Forwarded-Encrypted: i=1; AJvYcCUAJRRzeeYek5dFQqvDpJOr/9q1QoSD76rbI2RDAYfCA5W7rKCCotLt2Jw/n4n89YdnYJupqHQ44R3v@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb4CzUOPl43EbvRhmhLUWjftZYKHuVfzN4rO1q7nF1J1mDPFwi
	ivpu+/WaV5bUlY4932RNx4BfBOkdJ2OkPVcL5chZBeI1v5n/VbTuUoX7VNQluXeseJEHpz1GO4y
	1MmpJuas81w0lsFRSf/FLfM+wCq0qwDM19g3e1Ysnup02BWVH0FjpUZ+/jRcpRBF0
X-Gm-Gg: ASbGncuO7uZL5arGSeXOyvKdmpGUqANKAMCJnKWVpznpjg5ikCX51mfvKxGEZuqgmjf
	NHploCcFPNAAD/JlQYeQoMSGJtWtbpAUGn/sbA7DYKQK36HVbPXAxWu0YHpqL1sIhZP5C4JeHHw
	9GUOEaHjvvxs+rWFZhEhjdiMOR9oBQ29ihzzdPKD3sZXo4jkn3IqnJCzd+MatueF08sme4ANWpo
	ojH1hZU9pgFs6JskA4Xu41+FF5czFcOCbNSRMFGsBytDysXjSadAsl1oyZzljDCUXh7sulFhhYS
	UioHZVxpY63f2ie+S2dswPsUzLCZb8kUiiZ6EMO4f3qF5P/nifSY9U8eIM882Jm8v4ASFGOZxmG
	RtIRsdLgrUAaLPhCpU7xVH5AwN1JEL6B/VL8kX3y8Rl6g85WLio4/
X-Received: by 2002:a05:6214:224b:b0:715:538a:2fee with SMTP id 6a1803df08f44-72bc3373bb1mr136679906d6.20.1757416792247;
        Tue, 09 Sep 2025 04:19:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFz8PDFRuBVWB09FnFcdYcVbjIUOegYWwGsl9hFOnuToizyvXk+fLn95vq1GBCcAt1nIqfWag==
X-Received: by 2002:a05:6214:224b:b0:715:538a:2fee with SMTP id 6a1803df08f44-72bc3373bb1mr136679576d6.20.1757416791580;
        Tue, 09 Sep 2025 04:19:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680cce9f3csm458968e87.52.2025.09.09.04.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 04:19:50 -0700 (PDT)
Date: Tue, 9 Sep 2025 14:19:48 +0300
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
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Message-ID: <3xw54kzk36u7zrfhgva4p577nzle3ctzi3lyhcxapczv2bhceo@23zcaylkqoff>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c00d59 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=Et_T-Xu_rDMQo3vlGccA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: U_6ITzckSNzyEZEwQWjkvL52XwdJw_0y
X-Proofpoint-ORIG-GUID: U_6ITzckSNzyEZEwQWjkvL52XwdJw_0y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX9MfLEwXwAkUl
 qgEXdsbPt0gnK6jgiNYqcBCbXM0QwOHGNQoSgFJAVCc8N/+ltr93oUNJCvlCZYaEeMisL5aMhJU
 8O6fSStVWJmz/i5QivYiatos2VoXwmZHJQQAR/Gq9WZhXlC58tNhSOesEMZEDZMBD/QFVx2OpiB
 WjgN1qQIToCH66/+aLPle3g8jZ75/L9VvseU7hRfb+PzWV6ngX4FWsCSOfnJ2VnkxBvn58i96v0
 3Gb4aRuZ/jqKbfPTKWLhewxMQMn9JtdYlD3ixDh8NV8GafDb2Xv4nMkzJqpKVG8kYJCASRTj6H3
 F3ccJLDao8E/q3yyy88QtQDZXvhb4AtnJOjPgvovsLaUdJrwehXSC+CH52pVe1tlGAtnOSUCr5f
 LboBzgWV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On Tue, Sep 09, 2025 at 01:07:27PM +0300, Abel Vesa wrote:
> Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
> for the same version number. So in order to be able to differentiate
> between them, add these ones with DP prefix.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> @@ -0,0 +1,52 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2025 Linaro Ltd.
> + */
> +
> +#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> +#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> +
> +/* Only for DP QMP V8 PHY - QSERDES COM registers */
> +#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
> +#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
> +#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
> +#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
> +#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
> +#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
> +#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
> +#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
> +#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
> +#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
> +#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
> +#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
> +#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
> +#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
> +#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
> +#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
> +#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
> +#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
> +#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
> +#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
> +#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
> +#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
> +#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
> +#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
> +#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
> +#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
> +#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
> +#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
> +#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
> +#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
> +#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174

The registers are the same at least up to this point. Would it make
sense to keep common part in the same header and define only those bits
that actually differ between DP and PCIe parts? (Is it really about PCIe
or is it eDP vs everything else?)

> +#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
> +#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
> +#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
> +#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
> +
> +#endif
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

