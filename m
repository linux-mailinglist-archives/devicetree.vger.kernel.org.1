Return-Path: <devicetree+bounces-130008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B199ED7EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 22:00:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19731188472E
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE79122A817;
	Wed, 11 Dec 2024 20:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lhokw8CP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A18F722A80B
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733950566; cv=none; b=d40srFPncAQiTbtpbfpZFfeMlXA+tA9lh2EW8F5FGIxJTDIlJ3ZuAcJVk7Uc30ROqOVd+A2qJi6dO/+WwQr0kinfIo79O8mRrr1N3hTkgfXtHsEhOfpvkOsrnsfIZEe2x1pTHMEpl7gxW6N1Iiws/WKKa5WlvW95uxSJJI6P0uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733950566; c=relaxed/simple;
	bh=0EPvJM1CidipSrEUVyRtwHDycmAWz7nKFmR2pFgN5Zc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pNgXs7K/ngrZnRGOLXmDSOBoL8UGlQc+TNEWsjqUto4WsMEIx5bspE56iVqpTMprNtNCvAR8v+AfbN66DtJyK+prjEaNoxI/oNjZBuQNxOLl9JHhWDoa5bm9o3EdcvJ9PP89brnZZJIJ2gWIhDrFM0Uzhga1aEbF03DgAEcAVYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lhokw8CP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BBHDgMT031003
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:56:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Cz0Ob+e6s3LgfOXxmCKJHUCu
	Q2IRtNzVD04yQgOK3d8=; b=lhokw8CPbqlb3bVzAjavaFWKmFFyRBrxAyj9GGyB
	+gRVE2wKM8L02V/IWPHR+1t1tQAVjkWxI1qDoW4gA+sUDdkHRP6Nx+5geg0gOJCO
	Ot/1Ns20TA1sKdAQOf1sZXVTfUXKnLT2m1D7XwCenrsLk7PikSnNA7Ha24LoGujd
	Q+VA13q09v/WFG5skxyGNtGyzEP8MZRFXv7W94O6/2tH3aO/WueJYVmD6X6tWaOZ
	ZVQ60LZICtAhCZuMrJ41SoNZwj1TCGQqCJkBqr7Rr8sn+ldhmdpw1hdjRitoC0hU
	eWXm3GxqC5F9Yz95HpxIahs/cFpR9T906qnUm3HLIYhjcw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43dxw496wj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:56:02 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-725f4b412ecso3017755b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:56:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733950560; x=1734555360;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cz0Ob+e6s3LgfOXxmCKJHUCuQ2IRtNzVD04yQgOK3d8=;
        b=D5Cehtc9i/QibY5hmoa3atzw+VXR14L9U32Fxjei3gqrb2v4OD5nOUcdH70+5TWenx
         SyOwyuiPXXmPqJCitY75N8S8wzdAoJxAEylJBHUZXx+LvyL1o6DtRx2a/Zgf31SbSj39
         EXkKGWPy+SVlfpMy/ahOC1+jhAmp0BaIK7xxi5qRhwGtMpoUyurls4DzOVGcp0FWypl8
         grAyLqBTQHHLmHUpvt6k2n6gO9eiaB4u1bPIgT0gpDgqNeHGEdHP0VOnlgIDCxlxA7Y6
         f2FhnImX9kfuwCnWlIckI4ra4RzzeWojmCUbYCHkrUGeIL2n2UaXOICvmo5/ljZL0/6v
         MLHA==
X-Forwarded-Encrypted: i=1; AJvYcCXUCMQqO053sGs2uzMTBhkQdkemnWwa/UzEX7mTPojfwuilHZzBB0XOSbu8gVhO5ZRCgjSfhhf3NBSX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3ig5g4WraQeAc+6kXUPV+EuQ8o4YaF6ip0ZkoplBpncTOfL3x
	u79MlWZJwb6peolIMAG113DpAXY3D2DsJGdW4L7yBZmzVQPpM3mV2aPYRc3QfW5S8vkOuoD1nkt
	VpNjhuWB1xwtOj/GdsjUTTfW9ji3D05AmX67XUmpC2hvxJLO8m5udJ1oG6B9Z
X-Gm-Gg: ASbGnctATw9Xqovbg8aSpYIx2b/AY859fkBWVddKUSoeZ+DcMFu8rVjZz+XcEI9KIHL
	VVHSdY7k5NxWb8RlXVvwkNc4rtHUTsGrQl9Lyv1WeP9XOjuDWBFGrlJVVVCppkJYyAz37ij0QgS
	DV9qJ2L1etGgbcXcl6/2/gqSrnh1SmHmmW+URjZTeEYSR9AssyJo4alQhGKpYgs9roJpSy1VkMy
	ahc+be05+YI+2Opgcw9gWnao92W5PLZIwO5b5TULdEYbFrg1u8+9nUXPpsCkfBgcwXwDfhFf81c
	OaIG63SvDyAuwoFGltYpPEoWcHXPH+vJvNM7EA==
X-Received: by 2002:a05:6a20:d80f:b0:1e1:a48f:1215 with SMTP id adf61e73a8af0-1e1cebca688mr1120431637.35.1733950560281;
        Wed, 11 Dec 2024 12:56:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGH8f8D4wa4ldohT1wwki2Rnw5Aim3SbcBSFcaHp0PDLIC7xbjoVp1mVCyluwK6DuNmkpSfxA==
X-Received: by 2002:a05:6a20:d80f:b0:1e1:a48f:1215 with SMTP id adf61e73a8af0-1e1cebca688mr1120400637.35.1733950559845;
        Wed, 11 Dec 2024 12:55:59 -0800 (PST)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725df830510sm7377447b3a.29.2024.12.11.12.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 12:55:59 -0800 (PST)
Date: Wed, 11 Dec 2024 12:55:57 -0800
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: tingweiz@qti.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com,
        fenglinw@qti.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs615-ride: Fixing power issue in LPM
Message-ID: <Z1n8XYj0gzh3Q0U3@hu-bjorande-lv.qualcomm.com>
References: <20241211-bug-fix-qcs615-ride-dts-lpm-power-issue-v1-1-a08d12c415f0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241211-bug-fix-qcs615-ride-dts-lpm-power-issue-v1-1-a08d12c415f0@quicinc.com>
X-Proofpoint-ORIG-GUID: AZZQbP00j25x3m2FnU5QvDgRTaik2LBx
X-Proofpoint-GUID: AZZQbP00j25x3m2FnU5QvDgRTaik2LBx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 clxscore=1015 spamscore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412110145

On Wed, Dec 11, 2024 at 05:16:15PM +0800, Tingguo Cheng wrote:
> Change all LPM to HPM for regulators init-mode and disallowed setting
> mode. LPM mode provides at most 10/30mA current for consumers such as
> UFS,eMMC,PCIe. That caused problems because consumers take much more
> than that. At the same time, a lot of drivers didn't set load in code
> that makes it impossible for regulator framework to know exaclty when
> to switch mode.
> 

Per https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes
start with a problem description, then followed by the description of
the technical solution.

> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
> At the beginning, The QCS615-ride device gets some power issues when 
> enabling peripherals on the board as well as in the SoC. After figuring 
> out the root cause which pointed to that drivers should tell the regula
> tor framework the required current the devices need separately, so the 
> regulator framework can get to know when to switch modes to satisfy the 
> requirment. But a lot of drivers did not set load for peripherals. Some 
> did setting and some did not, which sometimes caused problem when LPM 
> of regulators is allowed. E.g. LDO12 supplies UFS and USB. UFS sets the 
> load of AmA(HPM), while USB PHY does not set any(0mA LPM). In this case, 
> USB can encounter insufficient power supply when UFS's going to sleep. 

Why did you choose to describe your problem in the portion that isn't
going to make it into the git history?

Perhaps worth trying to reduce the "story telling" nature of this, but
please do incorporate some of these things into the main commit message
- so that we capture it for future readers of the git log.


It would also be useful for that future reader to know that once there
exist an implementation (i.e. when Linux supports it) that actually do
manage load votes and there is power savings that can be shown, this
should be introduced again.

> 
> There is some discussion about this:
> https://lore.kernel.org/all/5tbevb5wv2s43pccytv4qol4yhq4s7iw2mmqp23vt3ujqd6xev@hkioqmwoitbd/

It's okay to add this with a Link: tag.

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 52 +++++---------------------------
>  1 file changed, 8 insertions(+), 44 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index a25928933e2b66241258e418c6e5bc36c306101e..32db107dc660cff9d2ccbf19eceb5c5539c591a9 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -71,30 +71,21 @@ vreg_l1a: ldo1 {
>  			regulator-name = "vreg_l1a";
>  			regulator-min-microvolt = <488000>;
>  			regulator-max-microvolt = <852000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l2a: ldo2 {
>  			regulator-name = "vreg_l2a";
>  			regulator-min-microvolt = <1650000>;
>  			regulator-max-microvolt = <3100000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l3a: ldo3 {
>  			regulator-name = "vreg_l3a";
>  			regulator-min-microvolt = <1000000>;
>  			regulator-max-microvolt = <1248000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l5a: ldo5 {
> @@ -102,9 +93,6 @@ vreg_l5a: ldo5 {
>  			regulator-min-microvolt = <875000>;
>  			regulator-max-microvolt = <975000>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l7a: ldo7 {
> @@ -112,9 +100,6 @@ vreg_l7a: ldo7 {
>  			regulator-min-microvolt = <1800000>;
>  			regulator-max-microvolt = <1900000>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l8a: ldo8 {
> @@ -122,9 +107,6 @@ vreg_l8a: ldo8 {
>  			regulator-min-microvolt = <1150000>;
>  			regulator-max-microvolt = <1350000>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l10a: ldo10 {
> @@ -132,59 +114,41 @@ vreg_l10a: ldo10 {
>  			regulator-min-microvolt = <2950000>;
>  			regulator-max-microvolt = <3312000>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l11a: ldo11 {
>  			regulator-name = "vreg_l11a";
>  			regulator-min-microvolt = <1232000>;
>  			regulator-max-microvolt = <1260000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l12a: ldo12 {
>  			regulator-name = "vreg_l12a";
>  			regulator-min-microvolt = <1800000>;
>  			regulator-max-microvolt = <1890000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l13a: ldo13 {
>  			regulator-name = "vreg_l13a";
>  			regulator-min-microvolt = <3000000>;
>  			regulator-max-microvolt = <3230000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l15a: ldo15 {
>  			regulator-name = "vreg_l15a";
>  			regulator-min-microvolt = <1800000>;
>  			regulator-max-microvolt = <1904000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l16a: ldo16 {
>  			regulator-name = "vreg_l16a";
>  			regulator-min-microvolt = <3000000>;
>  			regulator-max-microvolt = <3312000>;
> -			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> -			regulator-allow-set-load;
> -			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> -						   RPMH_REGULATOR_MODE_HPM>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
>  		vreg_l17a: ldo17 {
> 
> ---
> base-commit: 1b2ab8149928c1cea2d7eca30cd35bb7fe014053
> change-id: 20241211-bug-fix-qcs615-ride-dts-lpm-power-issue-44e33c8dfd3d
> 
> Best regards,
> -- 
> Tingguo Cheng <quic_tingguoc@quicinc.com>
> 

