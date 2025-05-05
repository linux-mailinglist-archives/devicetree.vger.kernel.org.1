Return-Path: <devicetree+bounces-173616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9D4AA9081
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:02:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5B3B1897DE7
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 10:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341F51F9F70;
	Mon,  5 May 2025 10:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pr5Ovneq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F69C1DDC22
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 10:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746439356; cv=none; b=hhm53JvImML6EbLHj5WxfEp122i8QRVxoWeJ+IpkV1znfXLHt0cJzpO978Dm5o8Z0RrGTMfQwcxIc2e+z5Yk1197V2PJio0xEBsvA3QCUErOGAq61b2hlaP6iS0JJU9p0CBseQ8ii4epkgrDyGcaTuw2gBsN3ieGVBED6820bjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746439356; c=relaxed/simple;
	bh=mxThnLi8OPPkVYNsFzOw8l6BCiHqLnhHqhkWRug5/jc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THJze2Kt2G+7YNiHMuPpUQ/EemI24YBPObc9Ofes5Mjq2HBpk/N8HIRGH3+oK7v2PgMIx/9L7VofI/x0ZWlgBN0BtiSMH53mjV3CvGZKSMc2YLHOhorv5sUkC9nfs0KwTyOHxLGoQvB2uGD0wDUcuPAkFSzFYb9S4BEmK3D/aeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pr5Ovneq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544KF2hR023465
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 10:02:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/9fYSq5DweCt0c/mKdUYu4zF
	2w/AfXBHNdWtUjJsnQE=; b=Pr5Ovneqtq/III50Kuv4i44I4PfmNM4qEPTCqgeW
	2MZSh/b5Mjc5oNqAzl10w9BJwm9CzrB/vf6fUEdCtZwD6RDJM1kyoLkcOVg8DdPJ
	O4oftrZklUGUjpBPguK9FBGPc824v543r30vi7PsGTamSJUsFpW04UDxIWO2CXoU
	CdcK8tWfAY8j5DHQsxxSihY10/MHpK8ylhfZcFDcrQ3maKfeIhxS6DUijW7EfmWX
	tAkWpT7Gxs2JzY2DkB6Maz3l92h1VIdbS7m11lMJ3hHXevr6hco7cKPEyT7uGtDh
	6cVgc3qHOSq5KITO2YSPaF5lWc7cZYZZUG1R0fvh1tfwmg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46d9ep3u8d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 10:02:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c793d573b2so114376785a.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 03:02:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746439352; x=1747044152;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/9fYSq5DweCt0c/mKdUYu4zF2w/AfXBHNdWtUjJsnQE=;
        b=a0bh2FX8u5vC4hw1X0vz5n9joLu041M/ExWdSmAUtD3F0Calshh+qTWixSBX/vjT+u
         ocXv8idBkjSxGApfsfz6h0UE8c8KDj7uyVQFWXOKq7QYTrZUTM8g2Ng4lnBO2QrnCdCI
         VF4fnoYtI7MNRwluFq7vG0OEsmRNjCl+DZ+dbz+f58cTQp/FES3/0ZDZxyUMj+iAvQQM
         oQU9skUs5zkEE6b+sPOnNyFJhGD2G/FStzHkMFcKL4ienK6zKfdTNWaB5unNl5uzaD+U
         nQ/JuM4vO92Lt6//tB8+sH8NkugeuBkU/KczFcOTTVJJdRD+Dm6hhc53l5aQuDGIUr95
         3DvA==
X-Forwarded-Encrypted: i=1; AJvYcCUJU8x4sx1cPUM2nwslo3dNYcAAWJppXFZsfBCtD9Yk+gW2oGwTiOG2jQYR92uMoN8cP0Z51vUdswQN@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2RGKmeUNFw2kLRq1G/QpiNpZ4+syErPOhJ3Z0wrD8pXRX9Zjo
	TUeGErJYOia4I7UQaMopPypvkKMleTknlu4PsK9w5tAlwwUSVRfRmMQIuGzejpPQTMoMbJ0QSq+
	QnShTO702LSZLlqmrBELtX6l60RzhDhT6vr5tkZebmnSS3M4W7ZijlPv2Z+ov
X-Gm-Gg: ASbGnctgOeHZzb0fMSbQhNdHidlB2OsAOApXRAzsfExdyvZyyh4lBrAxVnE40zHbNMd
	KYuvRN2elQbj/LXXkQOltkQEusuUmchg1KR96O+Lwm6ANkY2ORd8nFxqAnkN8eG3TF9eeVtLdhI
	vb+scod9e+0z5+G9IpNImNiQUVS4zrxsC9JhYIQV6dSrcYriWWbp4siYUju0RVutUwwSavXllpr
	yd4OOvcZSx8ozegqHJuVaSorG9VxtO+TQ6/QhCmSuYXjHedRiGgTCLgXEJUTmEAc5+biq9ckpVg
	Hh9vKigUGm6ADUP5PiIXnFQFIGTyFYmLeFacpp/06B0j+x6T5bdsSc5Tz3JnfmHn+72mOwRplkM
	=
X-Received: by 2002:a05:620a:271a:b0:7c8:e67b:8076 with SMTP id af79cd13be357-7cadfed7d3amr1246674385a.50.1746439352353;
        Mon, 05 May 2025 03:02:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqWph76clESWo+RRt5n+cffHDapDxsmW2FMxzwgdEB/oc5DR9lfIjFKZY2YWluhdW3xKhUNA==
X-Received: by 2002:a05:620a:271a:b0:7c8:e67b:8076 with SMTP id af79cd13be357-7cadfed7d3amr1246669085a.50.1746439351979;
        Mon, 05 May 2025 03:02:31 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202b18e4aesm16561471fa.113.2025.05.05.03.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 03:02:31 -0700 (PDT)
Date: Mon, 5 May 2025 13:02:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 07/11] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI
 to DP bridge nodes
Message-ID: <grwlmrgi5cfv3jtuki57ug7gsqykpwdf2to2l7di6glfxtb7vz@6id6cpfkrbuh>
References: <20250505094245.2660750-1-quic_amakhija@quicinc.com>
 <20250505094245.2660750-3-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250505094245.2660750-3-quic_amakhija@quicinc.com>
X-Authority-Analysis: v=2.4 cv=EOUG00ZC c=1 sm=1 tr=0 ts=68188cb9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=NFKUjzz3svuqp3DBVBsA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: HSoqOEqUtImOPzIgoaGU3o1PziXsSMrU
X-Proofpoint-GUID: HSoqOEqUtImOPzIgoaGU3o1PziXsSMrU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA5NCBTYWx0ZWRfX03ttGLPCNC8y
 pM4Zwzg42wG8xUzJmAFQXT7vwVylj68+c26248vk3z8mg1XYy1p0ZFilsNmne4tzt4wpNnPWtpo
 pQyoUe8MUkjXFu1XgfS+7IFuSZFmU5jC5J/3V4s4sEu7WGisPkfkXhrV3dyYDtDZY1+AdWQ+hkT
 4FcDW3kBjEYAVe/MfjIfrDLZlNPUP2z88emHO6C/Wox+X2rGDu8Z5g2xdJNb3bWcR89eOBB+KOa
 XDEYOkoKK8JkfsyVU0EC8ZfjYsSaGDoSHjveo8MOpbSaXNNCRouQ6hCkvNXfitK8M2dqR4+oYk7
 xaL61jauKqdMgVcXYUGuzuSHIBR6GKULURwwXkGQAWD+IlZ9cfl2N7YEeyT8weQcQXB4AwuDq/Z
 2q6DsvBHfBb8dTmAaQnMgmpj+q8w/rLB/ZkjLRcYf7a5X832C64K19I6AS1tQmnGz9GjRBo1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_04,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505050094

On Mon, May 05, 2025 at 03:12:41PM +0530, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device nodes.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 183 +++++++++++++++++++++
>  1 file changed, 183 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> index 175f8b1e3b2d..de14f3ea8835 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> @@ -28,6 +28,15 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	vph_pwr: vph-pwr-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;

12 V, if my eyes don't deceive me.

> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +

[...]

> +
> +			bridge@58 {
> +				compatible = "analogix,anx7625";
> +				reg = <0x58>;
> +				interrupts-extended = <&io_expander 2 IRQ_TYPE_EDGE_FALLING>;
> +				enable-gpios = <&io_expander 1 GPIO_ACTIVE_HIGH>;
> +				reset-gpios = <&io_expander 0 GPIO_ACTIVE_HIGH>;
> +				vdd10-supply = <&vph_pwr>;
> +				vdd18-supply = <&vph_pwr>;
> +				vdd33-supply = <&vph_pwr>;

Here you are saying that 1.0V, 1.8V and 3.3V pins are powered on by 12V
supply. I wonder how the board doesn't trigger all fire alarms in the
building.

> +

-- 
With best wishes
Dmitry

