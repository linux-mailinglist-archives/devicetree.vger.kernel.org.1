Return-Path: <devicetree+bounces-217113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 311FFB56D64
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:32:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 547FA1896473
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CB01A23BE;
	Mon, 15 Sep 2025 00:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EQNPID3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC758288D6
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757896331; cv=none; b=udDpP8LAvRR2cOvSYCjB9pFYWoVRg0o8j3TqhMpQZHbzdoxEWisOVD55ULPbrovxM2+0uf6XGA5nmko28GxbswINRy9LAU1xwKGBFZb1g5KGl+zoJa2PPuO1puuWBsNYr6zcvMGW3sTjtoboqOVEcY0KlaEKQdQnnI6SvjuJKSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757896331; c=relaxed/simple;
	bh=fVwiNBmoQdzu12TPo+tBaLZwp7T2wl/KVuYlPKdvW28=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JGPtxIdz3dJwzKqMIsC2Aw7dvGvFXIivcqQR5YUaieLFVoyz20MWxZ50ahZzLhg2dS+laCsnXnvqZtUifSDdeAOqrI42ImAkOtlguqRwVKPwcEwi3Sr78T+E3hrhwmMCPS0Nt3JfRUjE/4Sx0f+arlvdUYkWm4peoPlPz7oIznE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EQNPID3Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EMO6q3020431
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:32:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=X6INT4dFh36gD5CkZ/5tXn9K
	DSDRdeyRZoyjm8V/Qek=; b=EQNPID3Yu0SAMp/ZbVlqVnzQMfFgsPdHp3Rmpj93
	Vp/lCC9qXrYgY/dqjngrtqeTqw6U/7Vf81wIYI+Fbk/2DV5CdBdQyNS59lyf/i/2
	CzruxkRUUZIpQ3wLkKKvnlxvDh/ip+TGaVYvIxry0Kye0ipJbrP7A4XeAlZd4+Ql
	0cOLzHfIpDIvXrE6H8/FS+Pjrp1m+yZpgkP/6ZZNGGLs4QtYHzTJSoSCNRUEEeL1
	VF+t+FPuZcuyAU57jM1aBs7SvlFWRN+bU0z1eHKYzy7p2SNqVTh+pmN7514K1/91
	s/tIfd/KcJhm5B9hW1aHzOKLKmoA2rRvBgPu7us54lwQOg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma315p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:32:08 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7814871b57dso8867276d6.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757896328; x=1758501128;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6INT4dFh36gD5CkZ/5tXn9KDSDRdeyRZoyjm8V/Qek=;
        b=CH/5YGMdXy5CWnJN9GNie58ZKrBhdolRoeCJ5AbA7t6HKAtEjcKhhQ66+Obzc5uMUa
         VPtwEGiWdST6ZPmtZ31s0dmONQEoeSf0a/r8R+P1AtlVB3s82OTl8Ag84qQYNguel3GF
         QWykTBJugE0J+A7BJLohkeWjMO2QNbVnwUPGCiBlNMqD1R1jAjtyqZ6MavyB8l9ivEEE
         0BuwlabQHxute8zapm2+bEYW6tj1UffGtISJKH7lc/aDpPAYHvUOtLq2wO7hkvZ6XAAv
         YUCcJblCdLBICCl7bGr99Szg9YF1GDj0cIPp4UkHcWaMRt6kQRHtNf6Q6nJfG60c0XQr
         zuww==
X-Forwarded-Encrypted: i=1; AJvYcCVOwAsloOe/XDxYRIARzXrHOxYT/0RPs4zZceHpgVM+GAqGrj3SNtIXVFaXP5S/yhtblkE/1o1Fi8KX@vger.kernel.org
X-Gm-Message-State: AOJu0YzhEwbfBX+dvCzzvCrdWB9b1ISsh8H/xXWyij9GGtvRJnxXTWwo
	BY/hFVJ7nZWY9i7K8U3rHIzM0DNuV0r+VZcC6HG8zBhyuE1CKqOQQRVgPS9TXWRqBRrpcBgdMGu
	JKX5sdjCVnPfiQ/xuwVAj6TgK4DBFBaGBtHNwgi7odwCxCLXLonx8e2hmj+814kaz
X-Gm-Gg: ASbGncswkPxS3RA657QgUms0q7mfdAbjGD3EaUcmLFsOCkMPzXzNCwysxgWh1ksxP3U
	OOQ72+WC14wmZivCSho0WHYAw6Ck0jfLIgSHIe5ha+8gXreIAAijFU3g8grfandIyO+VdXmPdsy
	jO+sT5ryTtV780+2o45MfO3HPEFE77agbKTBmwSFwI9cmdul6hKxH5ABCoFEZkx9DmIdngWc2Iz
	8nxaU8RFw8h0OP3rz0gtXnz66XxsMRTpTjeZYe48eebZVOkuO6MUpwGNd2TpCu6b43PXMtOBy0R
	ev1lZdhU0KzvJAbpCQ5w8EYmTOkgJ0nVKie60lAXyNc/y2VU3ArxZjgAni3IP5lfw1Xh5WZbMhW
	lwMt4GV7TFLJ7WGRCNwii13r9F0zJcBfYUvEWvvaqivlmSO1h47qk
X-Received: by 2002:ad4:4ea3:0:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-7621c32efaemr167236816d6.1.1757896327650;
        Sun, 14 Sep 2025 17:32:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1qZzfHrBrw83QUogwWdZ6sXq0A8mz8+e0aG3fK2moYD3Os+D+QtmmTb729sL9JHULQgtuww==
X-Received: by 2002:ad4:4ea3:0:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-7621c32efaemr167236656d6.1.1757896327191;
        Sun, 14 Sep 2025 17:32:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65564951sm3159160e87.130.2025.09.14.17.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:32:06 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:32:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH 06/11] arm64: dts: qcom: sdm845-lg-common: Add wifi node
Message-ID: <rfp5oukqbnrzva6ewg4ehilpt4cm2xybmo2adtcbpqsliwfe5q@d5ayeglq7vz5>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-6-23b4b7790dce@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-judyln-dts-v1-6-23b4b7790dce@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX9ZrfSALEmBb1
 g+7DkSq+DCOL+DkoqdvMP8hD4R/2W5DrmlMdfpyKh9qECsAyVedtANkhbdIK1jzj5o3HfuB7He/
 hP0h4PX84KUS2EAPWpYZU4s627ELwsJkjLNYF+zI4tmEmQqzaVcnj8W3VQZhtm+VHMHehbyDZN1
 u0VPskLFV00VhQ7h4F6OIzPCGXmByUKSZaisEM5ePTbbccj/l7zeS1GzT0Ls7I16xMQ01Exb4xb
 N5DqxGeZHzvuyAXPRaSTrNIEyolyX1FoHkgIwT1YYftGjuqzQ+blkPfv2J7EiAoL0rwDAOp1BnG
 B/GCs1qn8qAMq+N2788+DMuFvUPSKhpVOGFS69rVL3meq4Gfn5ddJgrpZeA0HatOghlxsVBFLn8
 rTDzaPAx
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c75e88 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8 a=H0H2Q2WVq0cUEFHX9e0A:9
 a=CjuIK1q_8ugA:10 a=dK5gKXOJidcA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: raX2SGpbu76hGdlCA0EA1Hg3fePe-7Po
X-Proofpoint-GUID: raX2SGpbu76hGdlCA0EA1Hg3fePe-7Po
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On Sat, Sep 13, 2025 at 04:56:39PM -0700, Paul Sajna wrote:
> Wi-Fi now works with this patch and relevant firmware
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index 1bf2f2b0e85de174959ec2467076a95f471a59d4..585582ff4e0bbe8c994328278d5e5dd3a280ddb6 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -682,3 +682,16 @@ &uart9 {
>  
>  	status = "okay";
>  };
> +
> +&wifi {
> +	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
> +	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
> +	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
> +	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
> +	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
> +
> +	qcom,snoc-host-cap-skip-quirk;
> +	qcom,ath10k-calibration-variant = "lg_judy";

Was it submitted for inclusion? Please follow the process described at
https://wireless.docs.kernel.org/en/latest/en/users/drivers/ath10k/boardfiles.html

> +
> +	status = "okay";
> +};
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

