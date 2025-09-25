Return-Path: <devicetree+bounces-221107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCECB9D3E4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:55:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9EC1E7B3F2F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DF242E62DC;
	Thu, 25 Sep 2025 02:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oC6v6fJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B112E6112
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758768903; cv=none; b=b204m3u4LWc/urGiuXIDZJ9X9KSpb0/JsNLq0lRMunt6ToK/mENuw8SHXTmjTEdITxOny/8GZMRoxMsYzj680z+GJ/fx7LPGIMGlwTuqATGJZgBF6gcduszM5Pk37ya/bLIzquOdKu7fL5gjKdTEaSbbe7/tBnJ4hqSi83OVqi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758768903; c=relaxed/simple;
	bh=GRzW2UTFXjkMbCv8ZuBiMaxnc7z24scaXvk2FiPQdfA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RIKq1yhec2IUkLpT3ZX/+VqkAN+S45Enr/Itj3KuthN0oB/WXvITlnbiqmGBYa2EPiO0ddQqwFF0DdQkRrrBHIsxp/zd6kyKKOpqgfIHOUgj7tGfW7N22xlTTuLAuAglGMK0jYEmF43BZtFUQZOQYJ5TDB6hozUZecTjKXddBP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oC6v6fJb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0HiEw021499
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:55:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5qc2kjNdpU+Ilinxlsz6Brx3
	M0lwHT1wZVUtKam6+GA=; b=oC6v6fJbG/C2Sv8NIRf1HC8NhJtgOv1kmlCBKK7V
	W6gZjv97Nth+siQt+Dp7WQb7vfjPWg4+m6Z8ZtbATMtkYqFjUCDeuTn2e1183bZP
	xfiv6fkvr8VrHLmzdfSl//F//rdC9/BlALYGlBZM78WMD4VYBatfJ3Tx0DBZxzci
	f7WMwWx5/Pfsd/MZILKCGUUQ60kkisntAJ3gmytOWKQxRoMv80PZXJxtBuW9UVvt
	SLYaJEccjYJHZbjM7CE5k6xzhfV+/iZyy7y4TzP40IQljR1Xqu1NQm9Y0uhAO57/
	gWa+ArYwrITDdyyiF4NYyNMvVsJB7L4QETVfbQM4x6gXvw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budae2rg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:55:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4cdcff1c0b1so17035941cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:55:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768900; x=1759373700;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qc2kjNdpU+Ilinxlsz6Brx3M0lwHT1wZVUtKam6+GA=;
        b=tq5awSXbKLEwzd/QEeR2X4KEz5NKoKXIFvkn0Yug6ncD6KiZJA+VsiULPKvTxhb7O+
         oKyNPfxXeeLh//HlJ7tqKRwLKukhBrcyfSuc+EOY1meA/7xcub/VhrpSBBtIPU8mWBi4
         +mOKEIqo0rYjYinzya1aOpfEA9/Ma/LgzREQ68ntWHZDl6OYV28/m5hk1ZL8kobgoLKV
         TamFdtYPRvouqKoTrS/BleA38vi/IFiwrrBkRslhkWQ3XU8BHzK75y89KLY6xcIZUDE1
         evI6drKZnpE3QGy4SEmISO96iOrkgBjRzVh9xCHMZZ4gpm3yP6X3lWEYomLRnvAAWf64
         Q0gw==
X-Forwarded-Encrypted: i=1; AJvYcCWT4EMIgz7HFurWtS5PdRfmPlZkVvbsDU2JkIPEKQvaj/r2Ma+NWB2NoXo1ztpQXVdCngY51qvjjYxk@vger.kernel.org
X-Gm-Message-State: AOJu0YwstL3rHfIv64TwE29r0vfd+x3Y2eed4Xsot+VMlWXc0PT26+lp
	8pqqstTxnUmhWzWy5pgYm2NCdakNOInN4d5J4IeOUrazrrIvL8JqhaQuFMR0oMKMiIkCR1+9dLD
	NB6rudhw5qlEL6oOGOqioG77lVvICnaCiCUWz2pOFpcpFq8zdagYF9ouz3Jdar5OK
X-Gm-Gg: ASbGncvuPdIAd+0bdOw0sRg0HQ2wg0rB0oxguKN99bhrVb8ShPh+DUYysWcQXx3Q5k3
	JKgraknZGX5eY9KWEvfZxp4/pCc1mkXv+y9vR/aDtJsv9l4HeevBChuNzCiG1uMaBF5qvl5XGjb
	JXBUT5Kb9yGtOs61u7Oj/B0kVk9mOqU+grCKEJxBMNii6ocQiMsuqqrN6FpCsAq0BuQKCq6z5jA
	EyhC4Qbq2zLEJyKHoJHNoKo0Dc2imc8dPFkioDgbw32H+ZMhniBLY7W0Dt4ZM4yh5UTXJrKW8n3
	MfFzEOjFcf2Tep9yVhBXE/WINUkLnldrtR+/3KFVSNUXT0NsPaLqgHTj1MCiB0nK/vSy0e2rkCc
	7SDGED+v2Tz27CK7Mk0jfx4qVQ0x934NZsXs7J55L24PRkyOPBvvd
X-Received: by 2002:ac8:5f53:0:b0:4b7:9ddb:abbd with SMTP id d75a77b69052e-4da48c83c0fmr29976621cf.27.1758768899003;
        Wed, 24 Sep 2025 19:54:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+wX0KgM5CRfCAhfR9yvHW5QMrj5JET9e3yAt5sYvlw+SROD2nT79PnMZGnXjEN0cJtYx4zA==
X-Received: by 2002:ac8:5f53:0:b0:4b7:9ddb:abbd with SMTP id d75a77b69052e-4da48c83c0fmr29976331cf.27.1758768896998;
        Wed, 24 Sep 2025 19:54:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316ff5f0fsm256240e87.135.2025.09.24.19.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:54:56 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:54:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: QvYOGpZC057wcKo1a0Xb4RA0LkjORBv_
X-Proofpoint-ORIG-GUID: QvYOGpZC057wcKo1a0Xb4RA0LkjORBv_
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4af04 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bgMNcTsuivlx1WpOe6cA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfXxoSRSG8KHBsm
 7wh8TZbIMcsYQmUKsXpaBJPDDHiI9KFNbXP/+1okFhAbrGoVLQDsQPySDSI8nXszLiq8A7b7EaR
 UYISapPykUjupRuSqcgmyS6aP19FqJ3PEGvhQaWdywrIHg2VItorTOjWc6OZ/fvDFRQe6AYhMuW
 ZaLN+qrOb6otnwGXn/Oh+3VGsx5Ei3+d5oeEvDxlk0ROWvIbQbziq0FqwBi4o/46oRCR83KwqsL
 Rlt7c+Yf8xIYE+S/JYG1nSa6OA41+QlVSiiBnCMWqliT33TZxfw8tfhk/sloPitb2HyGpzoJoMq
 PYxVOyx/SvNX60XYCqnu38Trxc2V/4joZW54oVOoDNKGx3+BOu6/AAL7fOBMjUm+h1fAS0+vKQc
 +A3s+ye2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

On Wed, Sep 24, 2025 at 07:28:47PM -0700, Wesley Cheng wrote:
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
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +
>  2 files changed, 314 insertions(+), 1 deletion(-)
> 
> +
> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),

Why is this V4 all of sudden?

> +};
> +
> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG1, 0xc4),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG2, 0x89),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG3, 0x20),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG6, 0x13),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_REFGEN_REQ_CONFIG1, 0x21),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_SIGDET_LVL, 0x55),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_RSYNC_TIME, 0xa4),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_CONFIG, 0x0a),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_DLY_TIME, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG2, 0x30),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_PCS_TX_RX_CONFIG, 0x0c),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG1, 0x4b),
> +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG5, 0x10),
> +};
> +
> +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_usb_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
> +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
> +};
> +
> @@ -1667,6 +1899,12 @@ static struct qmp_regulator_data qmp_phy_vreg_l[] = {
>  	{ .name = "vdda-pll", .enable_load = 36000 },
>  };
>  
> +static struct qmp_regulator_data qmp_phy_vreg_refgen[] = {
> +	{ .name = "vdda-phy", .enable_load = 21800 },
> +	{ .name = "vdda-pll", .enable_load = 36000 },
> +	{ .name = "refgen", .enable_load = 936 },

Is this a meaningful value?

> +};
> +
>  static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
>  	{ 0x00, 0x0c, 0x15, 0x1a },
>  	{ 0x02, 0x0e, 0x16, 0xff },

-- 
With best wishes
Dmitry

