Return-Path: <devicetree+bounces-231573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B12A4C0E5F4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83E3819A2FDE
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAE6305E3F;
	Mon, 27 Oct 2025 14:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lz6svji0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5981990D9
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761574877; cv=none; b=ptKDXKJQxDGHpKYSd4nW7ukUTh7foQCqTkMJ548w1ByhA3/bE0bUo6f9t8j7NzXXdP2VSASXFxRrjdcSdKfa8q4dYy65gt7yG1o8zxhKCiGtuaeElMNfr0Z3i1oNkGwSj60NVnUkQJ53bocVx2pRuKQJ8Ynw0sFp/QstGt5+Y1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761574877; c=relaxed/simple;
	bh=KanisSdvUuqgfjIrCO03nYS038DxVQro9rkHP7ZoWyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mdpboGTOu5DXrW4O0o9KvDXV8aVUl+EtHIS3KlgYgx28XOdew16L9kV0H90rb4z5i7xnAsSTER9UaT6wnEqPBcSacSkvWZx4v99V3R9pvSqU0Jzg2Ja1+L1+Hh9f52eUdYNvT0z1v5c+qVUNfV4/JVPNNecx+zEExY2eXOquSrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lz6svji0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RCL2tL2752124
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:21:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mqEyAlMoyPjjWri7Dhksmow/
	X9ZTGgqFe54wF7mS7tY=; b=lz6svji0iESdcxo7j8VyKSWbWSl9BSItb2x/de+V
	far2Ky74YViG1RqiH0WZogOvlNxRm/JaUIY7/EOzokXZc4v406JobrKPmyfvbdIt
	KeID2Rbpm3xQwEjgbStrmIQTo5hRcZc5SVJh9/1dHVYNdTigbGdM3ruBay3f8JQ9
	D7kZX3bEKAqHUCem1ls1ElRqKt6rHBLOXZjOZic4YyxBPhtsE/8xTM67wdCAlfF4
	824olMRlEB0njJ5W4EaAAG8I+JfEvMDHo7306zfBaWM9iQ3WgO7a63lHWKYy6Lfr
	+XUoSs3+cBP+RNynSt29MJX4XAw6Fe5AL6gbxbwiE1Eusw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28nsrcaw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:21:14 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-932ccade3f0so2577770241.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761574874; x=1762179674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mqEyAlMoyPjjWri7Dhksmow/X9ZTGgqFe54wF7mS7tY=;
        b=RToMUBeBMNAbmhIHviWcEm0bczO6q4h/mXnruUDWUsKG8cLfe9JakySCMn/TiQk0ES
         uQHBJdzR1tBHYG3H/+fww9e5SQq5hZjq1cUD24nR7uqcAF1tEN4ozJIesDJPwQq0hu48
         eilo6gmHSnoU38VjBDsOH8Y0EbI0txeNkd6XNUHlfCkaylPq3CIiDpTvjH0k+EHc0vWN
         jiGOT2CckPoVudJSder/wkz49m7cikLmFdg9BX2HgCh/4Lnu1W+uD/7jGiJFNBmdfRJD
         A/51hNsywaVXtxjxsF12uziP1fb+IsiB9IuL4iueMUZml57aSITQzHimBAbWlrc9/FTt
         xFAg==
X-Forwarded-Encrypted: i=1; AJvYcCU2pyvJkn8T7ANBufhwwV2+C96XN4uAYzMTpHYLMdwKiy8UtCnWdg5ks5Zgr/M/hPXtA0RK5rgFcsT0@vger.kernel.org
X-Gm-Message-State: AOJu0YwKMGg+Z0MddbeyQhrNGP5MJPRkKmeTAFk6anH/KExip5hqhwET
	t0R8Bn421MTbGRSM83bJdFoR7uArQmEXgSrFMGxwiRfc9iA85m3Ma/6F0PVo7P5IHReHwZhaQFX
	LaW47cmH/bERRVW4prHrwQw1UhSLBWw1CHRHRmJSHsAez5Fy4+OXs3YIzopN/qipKsQTdwTe8
X-Gm-Gg: ASbGncsHwL7own8VdfNnqV07uenbUqWWy+ra6+VhMzeJlrYEXsGU7i8ifB4Qft4h9LH
	G8/tvMTQo3l02sJuafIvdihFPoYYWQ6e9O/pR0RCpBYfk+SA2LAmedb/LamBMaIwblOzOOSbNi1
	Z0lOSkTy3gktPnspnvg5b96ULui7C7yvRsn9TN2jYK+w64lVaiZF+qM1/04trA6LwuuARmIt0Sg
	d9a8XELktqee7NMsW2m2LG+yhbPZTiokW3/2/fU88icyuHoo6RcTdk3u8oboMZlVpax6IFRvqKX
	u1L26zhZY1pSOgrnlWjsHuk9sivDMG071UdeGS/x3aXVdDyYBKHE7zD9KQl8eOWZKAyTVduZz0u
	u1od/begkEjIex3NetFVNeITQtmzcopKNA9zXxHE0RvDF1cjCd5KyIH4kOywlqm/2xd97yxvkC8
	kV8M7UoN2hGVnn
X-Received: by 2002:a05:6102:952:b0:5d6:c3e:5728 with SMTP id ada2fe7eead31-5db2e5b4d61mr4460442137.42.1761574872176;
        Mon, 27 Oct 2025 07:21:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7HAlRUzeU1w/co5sVduYcLtN7aHEyD+NXHR6xe1nr2J4PfzRBd84Kx4ZOyIrMj9fsP517cw==
X-Received: by 2002:a05:6102:952:b0:5d6:c3e:5728 with SMTP id ada2fe7eead31-5db2e5b4d61mr4460422137.42.1761574871359;
        Mon, 27 Oct 2025 07:21:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f805d1sm2312703e87.93.2025.10.27.07.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:21:10 -0700 (PDT)
Date: Mon, 27 Oct 2025 16:21:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 6/8] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <ktjmbmfd37tm6ij3pqbrbhfounizz4znmqvearvh4spvuky6i6@pw5czztggbjm>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEzMyBTYWx0ZWRfXxUgd+zC9WHHN
 DFyoaLE9DNPnzZeANsmWxyQYfJKlBs4r2Nr1xnrFzzrVza+TsSBLbY8fNEmCDxOh3Q8LrUIGR48
 m0VM65IKaOqAYfuztaWtXaVuV+WBK4g9yIQ2L6qy6nt0mrOr/drEXKE/fNs6OvXyhWWmBJwUXNb
 tQTZqGPAVDNGfl4aeHLH6/oTsFmPBfXlTXPOq+kJVBS/CvEgiJ9UuN0xLlAyRMhvOiiNQen06AU
 I7hJBYltmWkDpO+IYV5Fou3yqAXjNO5M9qsY5h1SfHLldNs70GUULhYWRTH8Wxw+1DsKCP3ENFF
 l76m1l8lP+VICPMrSzR4pLMM+EBq8LoSKKQA+2IQt5iAgmlEeqgf916gzofvzBuSctrEVkb599r
 5lrHKckC5IUJ6Vip11BFocIXviZqzw==
X-Authority-Analysis: v=2.4 cv=RIW+3oi+ c=1 sm=1 tr=0 ts=68ff7fda cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FO_8yRmWMXsdvDet6fUA:9 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: BVLRpy39fK3pSedAkpEQpYOHeQtQ552u
X-Proofpoint-GUID: BVLRpy39fK3pSedAkpEQpYOHeQtQ552u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_06,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270133

On Fri, Oct 24, 2025 at 05:47:44PM -0700, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 288 ++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>  .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>  7 files changed, 1215 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 1caa1fb6a8c7..d1534ed7200b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -30,9 +30,11 @@
>  
>  #include "phy-qcom-qmp.h"
>  #include "phy-qcom-qmp-pcs-aon-v6.h"
> +#include "phy-qcom-qmp-pcs-aon-v8.h"
>  #include "phy-qcom-qmp-pcs-misc-v3.h"
>  #include "phy-qcom-qmp-pcs-misc-v4.h"
>  #include "phy-qcom-qmp-pcs-misc-v5.h"
> +#include "phy-qcom-qmp-pcs-misc-v8.h"
>  #include "phy-qcom-qmp-pcs-usb-v4.h"
>  #include "phy-qcom-qmp-pcs-usb-v5.h"
>  #include "phy-qcom-qmp-pcs-usb-v6.h"
> @@ -46,6 +48,8 @@
>  #include "phy-qcom-qmp-dp-phy-v5.h"
>  #include "phy-qcom-qmp-dp-phy-v6.h"
>  
> +#include "phy-qcom-qmp-usb43-pcs-v8.h"
> +
>  /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
>  /* DP PHY soft reset */
>  #define SW_DPPHY_RESET				BIT(0)
> @@ -97,6 +101,7 @@ enum qphy_reg_layout {
>  	QPHY_TX_HIGHZ_DRVR_EN,
>  	QPHY_TX_TRANSCEIVER_BIAS_EN,
>  
> +	QPHY_AON_TOGGLE_ENABLE,
>  	/* Keep last to ensure regs_layout arrays are properly initialized */
>  	QPHY_LAYOUT_SIZE
>  };
> @@ -259,6 +264,236 @@ static const unsigned int qmp_v8_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V8_TX_TRANSCEIVER_BIAS_EN,
>  };
>  
> +static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_SW_RESET]			= QPHY_V6_N4_PCS_SW_RESET,
> +	[QPHY_START_CTRL]			= QPHY_V6_N4_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]			= QPHY_V6_N4_PCS_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_N4_PCS_POWER_DOWN_CONTROL,

V8 PHY should not be using V6 register offsets.

> +
> +	/* In PCS_USB */
> +	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> +	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]	= QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
> +
> +	[QPHY_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_USB3_AON_TOGGLE_ENABLE,
> +
> +	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V6_COM_RESETSM_CNTRL,
> +	[QPHY_COM_C_READY_STATUS]		= QSERDES_V6_COM_C_READY_STATUS,
> +	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
> +	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN,
> +
> +	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
> +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V6_DP_PHY_VCO_DIV,
> +
> +	[QPHY_TX_TX_POL_INV]		= QSERDES_V6_N4_TX_TX_POL_INV,
> +	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V6_N4_TX_TX_DRV_LVL,
> +	[QPHY_TX_TX_EMP_POST1_LVL]		= QSERDES_V6_N4_TX_TX_EMP_POST1_LVL,
> +	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V6_N4_TX_HIGHZ_DRVR_EN,
> +	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V6_N4_TX_TRANSCEIVER_BIAS_EN,
> +};
> +
> @@ -2528,6 +2784,27 @@ static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>  };
>  
> +static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_usb43dp_offsets_v8,
> +
> +	.serdes_tbl		= glymur_usb43dp_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb43dp_serdes_tbl),
> +	.tx_tbl			= glymur_usb43dp_lalb_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(glymur_usb43dp_lalb_tbl),
> +	.pcs_tbl		= glymur_usb43dp_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb43dp_pcs_tbl),
> +	.pcs_usb_tbl		= glymur_usb43dp_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_usb_tbl),
> +	.pcs_misc_tbl		= glymur_usb43dp_pcs_misc_tbl,
> +	.pcs_misc_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_misc_tbl),

DP tables are missing.

> +
> +	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_refgen,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
> +};
> +
>  static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -3024,6 +3301,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *com = qmp->com;
> +	void __iomem *pcs_aon = qmp->pcs_aon;
>  	int ret;
>  	u32 val;
>  
> @@ -3059,6 +3337,10 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>  			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>  			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>  
> +	/* override hardware control for reset of qmp phy */
> +	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE])
> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
> +
>  	/* Use software based port select and switch on typec orientation */
>  	val = SW_PORTSELECT_MUX;
>  	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> @@ -3236,6 +3518,8 @@ static int qmp_combo_usb_power_on(struct phy *phy)
>  	qmp_configure_lane(qmp->dev, rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
>  
>  	qmp_configure(qmp->dev, pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
> +	qmp_configure(qmp->dev, qmp->pcs_misc, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
> +

Extra empty line.

>  
>  	if (pcs_usb)
>  		qmp_configure(qmp->dev, pcs_usb, cfg->pcs_usb_tbl,

-- 
With best wishes
Dmitry

