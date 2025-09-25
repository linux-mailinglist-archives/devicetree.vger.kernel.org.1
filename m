Return-Path: <devicetree+bounces-221668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C21ECBA1B55
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79FC25615B1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649FF27B32B;
	Thu, 25 Sep 2025 21:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XK1uqDAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07131F91D6
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837450; cv=none; b=UxSdwA8h69rnkzeqQkfTvpBVgzPyTbrQGF4pGBdf2fsM72CB1+M3A4nBuT7BvVayenUWdFw9FsyXeyUgzICT3HKNg0c+z4bWkwDjwEbzQE0tRX/ITWJ02f6lChsiVBIMCKkp5/MHY9einjcHCcsYK171KIuBBl7NhlXzm1tyDo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837450; c=relaxed/simple;
	bh=XRDf8tTXsDigygdSdMxdsM1FC7hg2Y/Qis9SJR8B9Z0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KJaAGVwoOa8/+uQAEehlZs8+lfps8R6771SBds4Sui565dsdV9xZ8/g1dlQ8I9x9l2P8+454B67Jp+yElq2weiXPtpY0wjMbTuXMp6+szkdG4qBdj19oDVVby9jwF9/foVCqx9gwhtJ1g7eQBv5u80WpuScXgfWXJY86oY0F9CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XK1uqDAP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQ6hQ015742
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:57:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0PwCuPQqx8Z6h5Uvt2HeerM1
	J/nGXO3zl9oVlZVDBoc=; b=XK1uqDAPXweKnTZKlUOckWMutVJlu5JD471YAHDp
	y/fSOf6S0JmkK4x28Vq0wnoZtIin7w3eltmeEw8V79yPXj0zZ7b0UMyR7J0/xPIs
	fQjpuaoc3xwBf7QH1OIbxDaVe4bz9Sb81IKVnoUsi0dLTuzD9g45JhRt8AZaloXM
	ys3kUasTUNUcFLMX2bg64XPKLt1MJjzgVbLqX5ak555SHo5h2kjRu5YzKbiNBzKn
	HOIPcrWZB10fLBBJ72iQo1I0BHrtYLsGW/rIfjHpWwxJsJ2xt6GeJkXB3tTZHqMJ
	4qEkIZXCRRNlH7ZZQ/lLUbdAUoaKEDz24C7JoM/ISZYfVw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0t8hag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:57:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d91b91b6f8so33294491cf.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837447; x=1759442247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0PwCuPQqx8Z6h5Uvt2HeerM1J/nGXO3zl9oVlZVDBoc=;
        b=nbu+osd8oIj+JeeZmfjztr05L5X4QN0JSFn8uSi1ooKvUsPZqY99phFbTl+1h/dztF
         TqBvjuaf1ZbI1QIy2ErsKo/4UZKtPSMDRybctnqHtLNZkOwC/9aUmOg8Vic/HV81FTlo
         gthWhk7/yVFcj5Ilm528uh4nGZzHa9gg6DZ9iEo4tFOQ8ima9LU+MG8mTfJ1i1/rsHlM
         5YZdtZ43rIc6OlVpvNchFRMGwr+ddmDWncQdN+NyGDVYAHEZSMFTiLcepqtijsRse1N9
         V2PIaOGlF12gIXH+xKRaOYeelIJNgLe3zW19kN3wObGHATHd4UJP5ayC8YPywdWtlZuD
         /EjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDkgzdsZ/RfkUaz+KuQeAGXEDNDkAbdAjuaogptGIpN85de4e2TwejjAiTyYMYz6o0Kt3R3W1YmS8o@vger.kernel.org
X-Gm-Message-State: AOJu0YwDpFuTQ6tkojQCrKP2jUZ6QXx2bhr2lQmWShrzqCJBE5N3M+GQ
	Y9+XczdL8QGeXzLiS3jHv1EM2n+/VvD471T3RDVHxzFcdPnakE0mUVyZ2yKWAxFcvTDF4BMZ6ld
	mTQm7GbZIBOhw/LHYOrfMIII51FnMoqG5xIhQ2bImPHQP6o54CbHR36+ciBqzlfRU
X-Gm-Gg: ASbGncv7iY2hI2q+bXDbfmJTAAaQRhqvHY86k4/6lmrA0+npU71H4dep4R4VIom3Jzv
	hPBzfjfL5Y9S8l8kpFUHM3YMeOMvfW/OXBgHerSs7RztJU8lLoO/FzuMYKEpHVNC+rJyWNiUh5P
	IX2LjCASpCjNot0Qcg1jWlZZD0oxss4AfptZ3CyslR4pM3yujhbnvP/PSYCH2atz/IxhdSShCsR
	1wXSwTIU4oRXe/Pcf7lNIEnuXdUEvivz4oacXvb6hvaocyrcYe39dhqARP38Yh71RuuzU5JODzI
	4RxIn6+dZ4OxCOjg3ygicq7edaOfylQdJaFfmt4kGXPA50BM2t/KRjqXbD5ptYAF4kWyg6PtBAm
	tTUOeGjhj/NMhtQnxoSznPOl/18/DBNwCFqup00eWATalOeW3S23e
X-Received: by 2002:ac8:58cb:0:b0:4d6:222:dd8b with SMTP id d75a77b69052e-4da4d31543emr60281041cf.83.1758837446405;
        Thu, 25 Sep 2025 14:57:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUvHFm/VIoqIQAQiQZ6FSqSB9YMAic3boTm5yCXZXNdcpV35T3IBACEQOCvNWiglROD/o5RA==
X-Received: by 2002:ac8:58cb:0:b0:4d6:222:dd8b with SMTP id d75a77b69052e-4da4d31543emr60280581cf.83.1758837445940;
        Thu, 25 Sep 2025 14:57:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a316d6sm1156263e87.98.2025.09.25.14.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:57:23 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:57:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v6 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
Message-ID: <5dtlqq7x36gb7cmiunoreoe2vftq46pusb75sbol47ceazefpf@lxrx3hhcwhju>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-12-419fe5963819@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-12-419fe5963819@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: tEMeYlo4BQoKEGFRetZ5xk1CreNLWgjm
X-Proofpoint-GUID: tEMeYlo4BQoKEGFRetZ5xk1CreNLWgjm
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d5bac7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=cNq2fIDUiLOJNmzcDXoA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXw0rcF/qjmVMh
 KJ5GT+i3vp163VYauLHKJNfxMiaBL6MdT5u/NcREhUHv7RFULmwxzTztN6xIlfv78UHJDREMdOx
 8R3DVok1LRTq4aK74DMc0grlz5omIwH81RIHXOuZQrxqTldMrxzhgNda+1EXPCuiIiTwznjaTxW
 uxW4Gt2iuVkx4H1FWSzrB5W1tDnKGZpKBRCIw9hdF+tM8evsQvRpp/Ro27ueM52Qnf7lnOvny90
 FzEKQ0QrHkqaeiUUGAap+clO2OjZjwIpJobA/SdJY6iueyz68BCt4icZDJHiPDA419mgpZVsFvt
 k6F5/U6HhyxuZ+QzLZYrKsKsrPwvvcUJ4GHoIFiPB44j00FT6piZzMDqdtLQCuSNL3Q+0PfSq41
 c+YGrOHi8O/ueqacuJ5WexpsSyi+eA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 03:04:58PM +0800, Xiangxu Yin wrote:
> Add QCS615-specific configuration for USB/DP PHY, including DP init
> routines, voltage swing tables, and platform data. Add compatible
> "qcs615-qmp-usb3-dp-phy".
> 
> Note: SW_PORTSELECT handling for orientation flip is not implemented
> due to QCS615 fixed-orientation design and non-standard lane mapping.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 407 +++++++++++++++++++++++++++++++
>  1 file changed, 407 insertions(+)
> +
> +static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_rbr[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x2c),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x69),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xbf),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x21),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE_1, 0xc6),

Hmm, I just noticed. This register belongs to a _different_ space. As
such you can't have it in the COM table.

> +};
> +

-- 
With best wishes
Dmitry

