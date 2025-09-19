Return-Path: <devicetree+bounces-219428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34527B8AF53
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 20:42:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB3B65A6D5D
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE10025F784;
	Fri, 19 Sep 2025 18:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="blqNXqNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35566259CB9
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758307316; cv=none; b=bvVN1LHIF1powe98aE8vaptji4nXlsFLOuvECTkg2F3ED8U7bSNEYJ79G0oIb+SI1rUdC1cz8xrQwXiX//+jzr8iSWSVUJhd2DrGlzXRA4d5LpJHqgCDDxZJuEuLzRJaanxM0VceIW5jN9eLn/1//k1v1KP8uxlr0aEIkPWBlFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758307316; c=relaxed/simple;
	bh=TUDF5w3G5i2z98+PxLv36xZF6LqeyndtPpfQFG6mm3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=koF9xQy4YnOOomZxK0Iy/yQfWLZaQIIka0Xh4wxAgvhjxAdFfuwZRYuRyCYbh9xsBewrGgx/J0ZdMi1J9Y8Ja+mAKYI4IeATyngEHDBYoDBuhaAGwZf5RhbburlRnVrvTreQFlC6bDujuxrRPwft2QbdyHNF8chaar8o1Px9r+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=blqNXqNa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JHV0Ar011870
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:41:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=i7CxFXs3E+TxXdjR6pU++0nh
	zSKDiXUs6/X+r4T9DOg=; b=blqNXqNap4RdDUrGJHaDIHahSPTcmOFjAAK+36Di
	IhcA+6lelkrQOZIVWpJSuXMeRHzdHh/A85okxRiUZtD/Puq0p0o1Yl9sFuPKUK3S
	GNpN8JmcC0KqZyKFIkCGuQkKMeGpqo+0jIGMOh4UqHFF8icYmbfvlttCkDjGuLFJ
	5o+m737uE+ltICx5CWLeNg1rcAzxN12kRS1XVv7MD0EYOE/4Su0r6i3TCEQf6XIW
	yPJ2GD8bmI49TxO1khkl/iLaIwqip/E3oZfAVS0rqEuAjU6wOFRLCI4EKfiE4irS
	AG8X9GKy5YRMaiXaJVO0WNnRG4/C0yhxFIBUmET0gFBhIg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499bmy075f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:41:54 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5ecf597acso59138871cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 11:41:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758307313; x=1758912113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i7CxFXs3E+TxXdjR6pU++0nhzSKDiXUs6/X+r4T9DOg=;
        b=dlOPmh31rgOXX+3tjcSYXxnPmDwmvFAKH3lyvUiqkg9gsh/4osTtpN+SXmLWaElKJm
         DooPy+4xeymEzGKTNbFEOP3wrvMRzgUVnjUIZW1Jd5gmxF4KIQP+MWudNb28oEc/WaJd
         4fvjswbw5grhl4aV82vBkGkQdxYSYSYwXDuWVJrxHIyIcAO86cLMAFjHldKdXDoGUyMl
         OKSGNXzWZz4EIhnYOxs9lMVjOJMV5yl0lC5lWBAYw/+tGbswhBlqOpJ5SVwAyUOde1RZ
         MfU14qUKdBJurqs5WyOLHJPc3hz4cvYMZWJN3JwaEzBVGZqBACZNx6FeAy4I4CnC4mUv
         8V4A==
X-Forwarded-Encrypted: i=1; AJvYcCXTRxw4tEo9xtug5lxXIZ2T3GcCxeHkkSFCQewddJ22cvMv3RT4hEQjECHN8KsVT3qrMTS2XIMDTStb@vger.kernel.org
X-Gm-Message-State: AOJu0YyMhc0inaWNoatCvEpqCLhf/2kHP+mVcPtu1OpnHltxcLrXoVfQ
	LuC5f9wOVBtbY2xosf/9R9nNnuGvo1uxOBE9sKq5KgyqUdEc9+W4VZ+P7VxcEA9Nq0Y36MQcE2c
	TWXvegeN3zmEBNiOaBDOCe8QyghaWeV/sfoC4rNNmdyzA9FAdBOqE1rX3hEvz/ycr
X-Gm-Gg: ASbGncuFYuKFdyFF8159AV+Vky/bioAF6ZcNd8tIbO59/0H2FCMUfPSh9eXJQ2pJJv+
	ZZWN82XywRBw44sUxtFE7RG1hKG5ZHWHZoRvf5zC9MMeHiuwYLJ8XVZJL9CY/Ejlt8CLlaHA7d6
	FcB2DrvhHV4HgnxqSvZkTDGeRCNfTDaGg6UtodTn1uqbyqei1evApba2cWMNi2mTGybJS2jfs55
	B9gMKjzdgGOX4n1szZ12BQ8rPA2AgRT+veIdQ4gdiIUGVI480MC5pUgoY7HII24yvAhFuihjF7i
	UMr7p1Q8KlArT0WVe4uXOllqW71jH1qBYhKJ6CDKLMpZ1h5BU8DgOQHbBFEQpNMIO0eit3WNlX/
	ubpUq6zNxLBCfvlOBq+OLZRiFCeY2sHhiRMmEBdct3ZjEbLiUMl0N
X-Received: by 2002:a05:622a:491:b0:4b6:2336:7005 with SMTP id d75a77b69052e-4c06d6828d5mr48024741cf.19.1758307312831;
        Fri, 19 Sep 2025 11:41:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+jXszKO5APDEximPKgrAQZzyc5+8giT/WjH1lhXJNUczhHvAVEcXJ87AWsBXaMadhHq3byQ==
X-Received: by 2002:a05:622a:491:b0:4b6:2336:7005 with SMTP id d75a77b69052e-4c06d6828d5mr48024191cf.19.1758307312164;
        Fri, 19 Sep 2025 11:41:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a99e9024sm13738501fa.49.2025.09.19.11.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:41:51 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:41:48 +0300
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
Subject: Re: [PATCH v5 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
Message-ID: <bfpgktxgo2hb6dpzy3i7jdr6w4de5boorx4n6qeapct2vre4sn@4z2mnppridn5>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-GUID: G6cI2_BOwJBy4-0wDchBzqXtATfQZGwD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE5MDE2NCBTYWx0ZWRfX4R8EEmqQyxac
 d4xFsSHZXYfj3pKUE353HUP/nXNx0kYWXXbORUramtUkv5i3CgMniOtUK08QdTGzm4gMiyy0aEu
 Hm6UE3/x6Ulg+ZivJyN1UwzhxqWMHdHdOSF4x2anBEIO9psnj9CvCjz96Fx8dXYIJPFw3XoCdZK
 +Rg7gSmZZkfD8UhDqKL+dTlQEYS7HGhP3CVMfLzWEo5ne2QWuAyXXiPD7ycpwaW3mIECIi1tBYo
 C/BMYVoEuHIWvHU41CJDBf9rG3iGfCYuuldt9mbHlk4x5c0H0P1OwNXd9WfwfVjSLYYl7REQouq
 HY+PgRybEcodGi08wLz+LPjvqEotwdmqPrT88A+4HqRFf8hpuke7J7Q0W/xmZ+3d75X7+O52wx3
 3PdEYkgs
X-Proofpoint-ORIG-GUID: G6cI2_BOwJBy4-0wDchBzqXtATfQZGwD
X-Authority-Analysis: v=2.4 cv=ftncZE4f c=1 sm=1 tr=0 ts=68cda3f2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XgMPAK_adSAUw0pB5X0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509190164

On Fri, Sep 19, 2025 at 10:24:29PM +0800, Xiangxu Yin wrote:
> Add QCS615-specific configuration for USB/DP PHY, including DP init
> routines, voltage swing tables, and platform data. Add compatible
> "qcs615-qmp-usb3-dp-phy".
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 395 +++++++++++++++++++++++++++++++
>  1 file changed, 395 insertions(+)
> 
> +
> +	writel(0x3f, qmp->dp_tx + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
> +	writel(0x10, qmp->dp_tx + QSERDES_V2_TX_HIGHZ_DRVR_EN);
> +	writel(0x0a, qmp->dp_tx + QSERDES_V2_TX_TX_POL_INV);
> +	writel(0x3f, qmp->dp_tx2 + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
> +	writel(0x10, qmp->dp_tx2 + QSERDES_V2_TX_HIGHZ_DRVR_EN);
> +	writel(0x0a, qmp->dp_tx2 + QSERDES_V2_TX_TX_POL_INV);

Are you sure that these don't need to be adjusted based on
qmp->orientation or selected lanes count?

In fact... I don't see orientation handling for DP at all. Don't we need
it?

> +
> +	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V2_DP_PHY_STATUS,
> +			       status,
> +			       ((status & BIT(1)) > 0),
> +			       500,
> +			       10000)){
> +		dev_err(qmp->dev, "PHY_READY not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

