Return-Path: <devicetree+bounces-215515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F8CB51B76
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:24:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 353027ABF38
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD29D322DC5;
	Wed, 10 Sep 2025 15:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z9EHScQQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C866C24113D
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757517812; cv=none; b=iTablmM8L4QbL4subN6inVvET18aheyN5lfIf8Lqw2R2YJ7ZtRINMqPT4oAjwj6wbyzBEzXbMXyOLbwLnnDvKGjU1tPjqxXYQHWB6a6JHrItQm41Zlmq4VAGODuUtI4HmhrKSOGpF0px9YTvOTiE0Tgq5x1MqRcUKHXUa0idBG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757517812; c=relaxed/simple;
	bh=mMvHiXaIqdEztb0GmfYYTzoj1IAJtybwAgKmLEN3GaA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pwzVMw9eY9DySRkbmBGodTPXnDRwESy4z1M9XP2s6qVxv7G1s3lpO4nuoHQNm7XRV3n7ti16sBtD/QADQEYWGcUXFmy7cb7Fdl0Ed/AF5+sT3SSB8bSLVbXkCfp/b2QJkOLMruk3vcXp5QKjjOvkfW8XVgyvWUHpmzKivYwgBJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z9EHScQQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACglua030068
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:23:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ANxLOXFlXZv8uHlajIytN7Il
	IseSzgePw1DqeOok1Tw=; b=Z9EHScQQ8u48V6RehaDG80Rspv46gWZrPHxFKP4H
	h+78pWwiD8YrKeNSRBLttlTHqj9gcG+ythablH1KncaIH6pzrHQNkNQS+D95Zle5
	/D9oGIV5kWlHx/zslms9JyZKu+lxnHeh0+0KSzh9EdEnT15yUlZ4i4e6nXKNx0cF
	FsQ9ETcGGgmS2rKUmx0uxaVJtkZFkM3ECGeTya56s9sPBFQqWxbeDDeJFm3aFDbN
	8Xt3tIkG7DudJ5RyuZ+U0NfvQ9ZItpvbBeWDllwdSn7d0V+PKDIbJuMSW62Cuw+u
	SN4Xy/wJM8xzwrNFEhY/wOG2aMWHyQeAUy23C3wwmUeeDw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapmj7k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:23:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7296c012ec9so72835416d6.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:23:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757517808; x=1758122608;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ANxLOXFlXZv8uHlajIytN7IlIseSzgePw1DqeOok1Tw=;
        b=jTq/bnNKGMWq/N6Ts89wv8KmPbhZ2ZI8dtk5IcWPNSKRjqfZeu4+Q9mPo32+vST131
         BQ2EVNghcPqqvYVBJ/nKkaoMvQ1g3AzlDuu8dDri3i3r2kQFIqWzvceFX8Jh3sqQ4kKp
         wefIMp1GSwTTf8Pkq7kTSy1Qh2ztMkf8KdtlXGNjwwE4FUvPpMq5rkTj8RChPFK7pVy/
         pWWN404eZRNUy5OyLXcgkgW/o0/7u+Ic5TsVisTeC71es5UONLH8ScJGSt+9oiU4XADp
         UvCTe/kLE2zrfaYBIPhSS/BmB0q8SJQ/3zqi2deKcy8pzqWHc97LQUvKe/wRFL4hAQ99
         vBOw==
X-Forwarded-Encrypted: i=1; AJvYcCUkPl8Wa3SIIMlVFRpD9BTxSYt4BueTU8eYZi6hII1OMGXo1ymwjQtFgji52irUGomIlNcEMnpyeQPZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxbsDxEOgfOEVxgv4gqc5D3ZGC8BgZVZdEJO5Xi8Bq3LchVETEC
	jUR2iZvflvXY4j14n3GoRxTkWayQD/ah3DDS5ygENDhDYsiuRgugtsLTvbQ7fP2d8ixHgq57idx
	GJ/J+0qNIzD33kA3eccFrx+D9UkP4KLbKIcVkkXGqN6IA8CXPYqRT069xh6rWH38N
X-Gm-Gg: ASbGncs45QbC7Ps8oaAw4z9/j/15QYjThB2PPQUbq+plYmmLlqgGiPvBGJJp2jopwSx
	x+WR2CXv3cqAK+7rA5u7JEsaNsri9uWOFgovI9WxAl6s3hOC60A5yYTdsmv3hzqHWxflAgmYo3O
	vP2hAPAFj7boPRsN2aDR/jc+7423bRpWjIFoSnf3rjaCygVWaZQRInPm/yH4J1qj1+AI+/3hPXY
	XiEt4W0cmWH/AXTiz4onNg0qhvNysNjGySqU9sW38ZqdOcEyS/Sm/OfO0WTwBuODEZK5R40/Z5y
	nzkDCDcWV+khBJhjNRTAJv8sqAu9ZuT6sa3zffkiWBliM3Ypy/WuMBN9/E7RUXkrI9mfxT1CigF
	lT2D9pY2G2ioTAC5WT1Z4dxrLJqwJLQcUSBuvEc+1zdxl1qxO3LEG
X-Received: by 2002:ad4:5bc1:0:b0:70d:749f:177 with SMTP id 6a1803df08f44-73940035cdamr172628386d6.33.1757517807496;
        Wed, 10 Sep 2025 08:23:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5Lb/Gj9Uty38HJPbt60WosvULTHdWQ65OW86uLHRn17q5V3PGeS08NkMbbeRO2k/y5Nlcug==
X-Received: by 2002:ad4:5bc1:0:b0:70d:749f:177 with SMTP id 6a1803df08f44-73940035cdamr172627696d6.33.1757517806697;
        Wed, 10 Sep 2025 08:23:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5681795eabasm1293007e87.91.2025.09.10.08.23.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 08:23:24 -0700 (PDT)
Date: Wed, 10 Sep 2025 18:23:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <quic_wenmliu@qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, todor.too@gmail.com,
        bryan.odonoghue@linaro.org, vladimir.zapolskiy@linaro.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: lemans-evk-camera: Add DT
 overlay
Message-ID: <u437qomhok4yg6pef4xttd3a6zibuybzaeys33gxu5frbyp2kp@mgmym6c5dr72>
References: <20250910-camss_rb8-v4-0-28f44e1880b8@oss.qualcomm.com>
 <20250910-camss_rb8-v4-3-28f44e1880b8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250910-camss_rb8-v4-3-28f44e1880b8@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c197f0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=AXas6eWRmEekrqqxQa4A:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ohCCFrB79LRIYqt2OSAaimNMfZLfoDXj
X-Proofpoint-ORIG-GUID: ohCCFrB79LRIYqt2OSAaimNMfZLfoDXj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX7SoT9yI1mTFD
 7/y3Zfki+WWOpHwjC4Az8l0/2zliGDLOcSUepB4ao6b9nw2zZ2uEaOil1yCGosWBoXO4dnZlnCU
 xcqyEkxMoZSew8ltFFNxeJ2ThJuGvio6eWwVpNWKQpn6dJIP5AEar5SoLp5JqpTvQQVwZdEPhlM
 +Syzbm70YEXnWXRhUtGADYb7Y8pMM1nZ9ixu2OrYIgsBl3xUn/u0ISQEdj46aW3kqkDUHTsaE1K
 Mv1fctX/vtm77hiZEbm7WZ6ZLRxMiu561fKsbsMXTDGlDfpagL49EovDmyRXRW0aXrxjVoCWwFY
 yI7b0+GMGdGhhTM2cAoU1NMV+djyz+UwngfopciDRrRWdthYWGRwcHjadDBPhdbvuysCo3BDnRB
 rKcsS4DF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_02,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On Wed, Sep 10, 2025 at 07:06:23PM +0800, Wenmeng Liu wrote:
> Enable IMX577 via CCI1 on LeMans EVK Core Kit.

Is it a part of the Core Kit? Is it a part of some kind of mezzanine
board? Why is it being enabled as an overlay instead of being a part of
lemans-evk.dts?

> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wenmeng Liu <quic_wenmliu@qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile               |   4 +
>  arch/arm64/boot/dts/qcom/lemans-evk-camera.dtso | 101 ++++++++++++++++++++++++
>  2 files changed, 105 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0a7c308dec365263bbb7aa5f5cd306dbeacfd3f1..b27f60fbd527146027eebd4bb7b1f8a0a82b3af2 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -30,6 +30,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
> +
> +lemans-evk-camera-dtbs	:= lemans-evk.dtb lemans-evk-camera.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk-camera.dtso b/arch/arm64/boot/dts/qcom/lemans-evk-camera.dtso
> new file mode 100644
> index 0000000000000000000000000000000000000000..629992ced9b13b23505fc20562929a0ed17a9566
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk-camera.dtso
> @@ -0,0 +1,101 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/*
> + * Camera Sensor overlay on top of LeMans EVK Core Kit.

This is pretty obvious from the file itself.

> + */
> +
> +/dts-v1/;
> +/plugin/;
> +

-- 
With best wishes
Dmitry

