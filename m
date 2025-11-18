Return-Path: <devicetree+bounces-239604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A8BC673EE
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:25:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 9DD2A29FFF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC7928640F;
	Tue, 18 Nov 2025 04:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ezJOZ8pO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WjZerpLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AD7261581
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763439950; cv=none; b=GV2g6BY7+PCqony0XAfcw/Z2ZmtxPiXQeiTdThnGxxRb+IXTqJgRdPplNqM0Y4jYdS1JPV4SL7yenHHfZ1g46it5aZN7+z9WB2kYACTVG+AhRIX4x1pQPxoTp2cTS/RZUqUijEMpPb4TBhqNOBw9AzXK6d5uXUtA7ivsqoAvp1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763439950; c=relaxed/simple;
	bh=M1wpxFJzMAKT0UV18Y+2RhrMURzgjPzWrkRwsKc/weY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z7IxQ9IxYq/zH1IE58/udvMbfhCFkOoQ4fksZVOyZxu3IVpCvPOb/6nqukFcw6xXkzt2GRKUnYK7WdUrwfXBObiXAAYQgwlwozcxnVliOdKgGcUL/CI/GTGjqloG9XNPFANxk4TwNqejn+Dn0hzG/ZAwtrq+uXHdjbsbSs8UVHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ezJOZ8pO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WjZerpLg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI1LWS54166688
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:25:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z6tnTtV5Grvt5BmOsxLpeDqg
	a0EGEJInAFcDMquUjRo=; b=ezJOZ8pO+a9kAie7oiGxqPCLphpjyyyNZzFbQqFK
	xh4SYoP4e1T9sD7R2osMvvW6GorHUzNazRs94jkchsDBRnxXdL7BUs8Etngxl+Qs
	ljaFk4aFFzWXng6x1TP7d+xSf1Wi1VZjaaPx/b0F0v+iingXY3PqFLzI0O9zde1y
	BGDSjWcR7kzQwwQSYxCZf12Q0Zi7/ovQJXcwSJ+KfD0uHVpqgOnYWTxWs0ctIPqo
	WWtcO1CFG06xbIiZGPjMb6yQXbUjKNbmvgIsmuUq0ZnPhUudyI53uZBDHhFxV3nu
	wnBViRukaiJy64oQXhdOyuPu1yjfCvuIbnDF25wEPbTlxw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag593t5p5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:25:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6855557aso156395051cf.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763439947; x=1764044747; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z6tnTtV5Grvt5BmOsxLpeDqga0EGEJInAFcDMquUjRo=;
        b=WjZerpLg1Wtpdi6G7V/hlOfNsysbS/WPwjvZ1QcVbr6pQIAQ1QH6eXcqsSkimH0wMj
         XTSjYIlTDJFG81drVQJaUKPf8z4KbAmCAyFwqNL04WldGUiskS0SRpncW0AoQ3mhvwQV
         2nfxbiQ5eSPw3axsZd9Va3fUfhLZ2ValpTkpPgjE+NwlJAhYi5h+kjSMa/wgUaTkhQQO
         ZF5FsUNaMbgfXW7RzqnftJjGTJA77uB3QBHMy2WiyR5SneePMCdVmM/dy4e7FiQbyOEi
         RqZ3PcFqy4AZSRUWVChzOA020kQ9yMNYyQGB9Fs6g1xEI4IdyGBcL9QAqyCAuSfPuL6M
         CoJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763439947; x=1764044747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z6tnTtV5Grvt5BmOsxLpeDqga0EGEJInAFcDMquUjRo=;
        b=hbRu+n1HreWJikei/we+vnkgyFel2tpi3g+RowDKdhMscCU5N74Sa0Ban7k+4jR/R9
         RSD1WfVXA/s9AUR74hxkH2dRkcaDNwJ/mlK7JQScLfX/39QUxU3QIcDF80K4/tFVDwyQ
         L4BPyFJiQD8oAtdYoX/UK6v4U3WD+Eb5oP7166yuLWh5C4EHeBtU9uG0N16jmAZhenQT
         dX9O5Te4CTArLurf2JaGKSxBm43xz/+DpgNhl/hkEoYW18gY2wZUlcUrNHcrhM2c713I
         ezIQACLy65FWU5oU75/rqExNw5xsgtAzzLnx5CTAA4IIeUouBPjCM1B+YIeT0k+c0nTI
         +mLQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1wMdq2m+eO849OxDF7BqfJ1NJeXKjPTNbq3lzbnq6TTYf+S/A1QaILm9XbXs8gsxqSqiUnjQuAxcH@vger.kernel.org
X-Gm-Message-State: AOJu0YwDHk82aCxmRm7O6X9qOBdzZ3sbwZtz8eBoqP48D0f2qmlXeS7h
	zKWg2L83Dw3auwQQow/9AAlbxwJPzX9nTfWjYVLFzYmFDHOYW6goRAlw9VJLR9m8dOBAmzyfHHU
	BcY4ornI3LEFHo8Q3YuzZPJJbIrLZOcXBPrBt7ZadfM7gApFzZQoJRLA5pCGoD0V/
X-Gm-Gg: ASbGncvpuwNPmCe8HHhoApUKOvs87LftrcYtJqma+9ryYZmUWPpN3Z637SRbgUbvqoC
	UtMgrp5qMi/n/oMfkb1pFCkS821O42O1gXPZtFHHa4zI4RaK5L10kzhJlP3xDurXZg8n/eR/i1x
	khGMyqvxysigcDkeqqsa5qNHnPMTRqnEdDIoVD3c8uL/IDqNe2v6jiaRkzG8o0sDe6md3b3bUBe
	4DGXU1WCZ3Ndgl9UYHTfWsmmfhWD/hL3luuFz0t0+SbAP9rx8+BFfL0HzjUyaG01dWe4CLyGHlv
	EhGll2CzG+WuM0qbaK/dSV3ZeuM6Cm1GUGdZHRFqwUbVXfCzYrFZPOFzkDKwQ4WRUBb2BQkxkh9
	86l+GCAbAQpRE9+5CS3ZhRvov06hjoiFNXQR1UIiRGbG2WUb6ytl6WRo41BCk7MkQg6XF0TiH4Z
	MDxrLpBvJKG5RI
X-Received: by 2002:ac8:5844:0:b0:4ed:9408:3583 with SMTP id d75a77b69052e-4ee308d43b7mr24858111cf.42.1763439947376;
        Mon, 17 Nov 2025 20:25:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyOIJmNUx6nEUpekjtxEoP4L9+kR4X9dbdgqULkLVcy1OzEVutc/b/gc0s3FwJl8kmst2uyA==
X-Received: by 2002:ac8:5844:0:b0:4ed:9408:3583 with SMTP id d75a77b69052e-4ee308d43b7mr24857881cf.42.1763439946895;
        Mon, 17 Nov 2025 20:25:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b9f7csm3606387e87.48.2025.11.17.20.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:25:46 -0800 (PST)
Date: Tue, 18 Nov 2025 06:25:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: qrb2210-rb1: Add overlay for
 vision mezzanine
Message-ID: <cftururqj6mfajhwdqplvqgxi3bnuwyx4tq6u4vy75fwnrpidz@wbhok6xyfdlf>
References: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
 <20251114133822.434171-5-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114133822.434171-5-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AKSYvs3t c=1 sm=1 tr=0 ts=691bf54c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=yU94huOJnmwj8UPTFJ0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDAzMiBTYWx0ZWRfX7PDMAyGYWaH/
 SR/9gu+9EcvoanGAcC89rRENoqefaNBjb/NHFGIzuYZ1yQvSJfywONhYjhERrL/ONkDIvB7vmWR
 W7w52zZmnYmFOZF1uTRIaIv7OLwDsY+yuYCeRV2AZrNrySsOB0XfuhffwJXidmAZyW0dMRhC4VF
 txDErZlJR/Pu3BW1LDiXDsXowrlvuJN7vsuGtdJUK1+K7Qa/vKHkdMpRL1udyZMhLnr/WWP//jO
 IoeSgi337ugV5Buzi6c9edYraAp/JGkFE8AaGswE2gMaIqbrIolATOxQpf+IuOPc8J32BBoS8/u
 273swLU3adl3cUb5kv5Bs9txPmjS1iJ7ANxNCF3s/BldxDxLX2BNT8USDw5xlX75vsLD1CJ2R+2
 faRciaymkcqf+jif5p8kflypCfcGBg==
X-Proofpoint-ORIG-GUID: EwMiDdgaN_vmOB4vcyUgolA5oiF9pKnI
X-Proofpoint-GUID: EwMiDdgaN_vmOB4vcyUgolA5oiF9pKnI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180032

On Fri, Nov 14, 2025 at 02:38:22PM +0100, Loic Poulain wrote:
> This initial version includes support for OV9282 camera sensor.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  5 ++
>  .../qcom/qrb2210-rb1-vision-mezzanine.dtso    | 65 +++++++++++++++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6f34d5ed331c..af029d04758e 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -144,6 +144,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
> +
> +qrb2210-rb1-vision-mezzanine-dtbs	:= qrb2210-rb1.dtb qrb2210-rb1-vision-mezzanine.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1-vision-mezzanine.dtb
> +
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5.dtb
>  
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> new file mode 100644
> index 000000000000..6f3d8de950ad
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> @@ -0,0 +1,65 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/qcom,gcc-qcm2290.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&pm8008 {
> +	status = "okay";
> +};
> +
> +&camss {
> +	status = "okay";
> +
> +	vdd-csiphy-1p2-supply = <&pm4125_l5>;
> +	vdd-csiphy-1p8-supply = <&pm4125_l13>;

Status should be the last property

> +
> +	ports {
> +		port@0 {
> +			csiphy0_ep: endpoint {
> +				data-lanes = <0 1>;
> +				remote-endpoint = <&ov9282_ep>;
> +			};
> +		};
> +	};
> +};
> +

-- 
With best wishes
Dmitry

