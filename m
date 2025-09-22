Return-Path: <devicetree+bounces-219950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0C9B8FD8F
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:51:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9785D18A0DD8
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 09:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149532882B4;
	Mon, 22 Sep 2025 09:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g00bKmK5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85056285058
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758534697; cv=none; b=KAfh3QV14Nd5qzLD1ns6VGgQTrR+5E2zixvkrzhDvXpF5J5h4CWS772SmPFH0xCwLsluRux/ct0V+UqPhEOn3qai6NnpgcCLbr1YiHycNNlHjdeixqtliCODxPKmZCNMkUdWmJOP2AmnnnHRb6/5B8D/l8GfmabX+mGKJ143Xxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758534697; c=relaxed/simple;
	bh=Wd7MXk7KVvMKiL8QsKVzK7/O3AGc1BJP+qNpHFBkcrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZiWVC/65JIo7bfRUhfvXXs5Q12W7c5GHEXAEoBY0dI9Hqt2bcPyhPSvcqwQAmB/mukW8MxCI0bAsZCxccJe1B85dSFzM2r9ODvnoEHsfAhqCt5z7ZCzn+PnLQvpxmuACNIQdi/lagcxaddSjLz3yQ3oL4mT81tPtpJYJr/5+WVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g00bKmK5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M90s4d007045
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:51:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yAF4yxuR/rHPPnaXohNM3mKvMvsG55hvpoK6MrwhJhU=; b=g00bKmK5X+iyT6uJ
	BwwkFrqPb/8fMndkoZlDRAdF5JCjZ2u33EG0dixZvArwSBfHbfVkWdBQ6AEOtLYP
	YneL8oWNwt8gPDS18jhrN8m/90eS5ok+EeizhllVZQlX4r64xYgDqYhJH2o+IgUb
	mgYCMrfnXa+yL7YgU2j+OqQV6HVRxugZBv+KMaUqVTIs2sbHrzIZL1xxUzOZ8dCT
	iGW05FnhuouX8q12uvMTcI2Ewxq17xNWcrLz97qkB3/PbU4yJHwwbex3gS3dnVbW
	COgxkaU3NsY7vfhs4QzzGObrctjQ3y8BlWwliEB5LGi4RiKg9rcDysPry7GuHMXB
	RD0IYQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnmjad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:51:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5e303fe1cso71096541cf.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 02:51:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758534694; x=1759139494;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yAF4yxuR/rHPPnaXohNM3mKvMvsG55hvpoK6MrwhJhU=;
        b=Xmx/jB3vr2U9SH76sjvPi0gsCKlHMMtRKPRiafO/G3uUnEgJJrLs6wQJzh+fglqTR3
         d3gKV+aXqmGSViRrnbTcqAP5yNfH73HzzAdnfqtMw85bxIxwtCkxOTWBxHHEbGzxwG6d
         MljYvrnq2OpTZat0DMKQquLO1BDVLHSPnP5sRH8o8a3C/O342hgJ+EE1Xo808FkxsatO
         KFpvc1f2VFN4eQZ6EzrgruM4tenUpVOwhfb8XnRcyhVB0mdUPx3Mt/OGhqaTmUY0w/5p
         aI983l9Bju2Q8Kn2p2PHqe2/KY6mK/KDBZuM+3QEqEL7GHh0kj5fVJty8uTgmAp1Vigf
         J3GQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiOUF3K9EWaxxNHWk+9zC30GTQNviFyomzrQUnSkBed3uwPO2FQNHZBPvxXHBz1M0LYohD/Oc6dOCE@vger.kernel.org
X-Gm-Message-State: AOJu0YyGZq54lSeSvk6R4W+xesLaOTi3emHuWdOpOR05kxjfJhLVLJ8F
	gM46dUJzz7/MP4k0aNuQLEMEQuf1TVRbzvVwVxoJuH1huQ+fwuj8iEyD9ehVBhX4bJMMS1LCoHS
	79k5rDT4Oq5LN7zcv8Y6ec/+gQXL7AKCiI2Kkq6Y9RncjNcQv95zKzcf7NY26gf6hVMMAxiMQ
X-Gm-Gg: ASbGncu/1EHkaC5il0VmQZt1SpkVgx9bi5T0AIpleeSlLAdo5+CapJMGxzUB43dh1pX
	ylh1GS9zhqLrSgPa+PmOqmBgTA/ci20PQQ/xzQFcxkEQZKb3XrGLY/qv3vAN4Uf2a2cKRkS8z2n
	YMrqcXIpyqBJe8fzRfm+jGabOs1suSkhRopswNYC1bXPjSLcSfTcEpstNAacsRWGSYd+sU/SZBD
	UAfMaS97rB0lO2kZdN6e/D4q96um2ngUfwbdVtLPVrQIMHw2990n3VUE5Ogt+R/G3A2BjEAhZI7
	cZte/93Pkgo9bvdLI0LpKT2xJ9MQMhk91QLfYN/ImdZ7lG+yZPhvq901qJJejisZNQuXcIOI0oN
	oA+g6oZYW7AqljxKlB914WfBgM0BvZ8sre5vlnxmThAkesV8oi6X2
X-Received: by 2002:ac8:574e:0:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4c06e3f854amr129598301cf.17.1758534693622;
        Mon, 22 Sep 2025 02:51:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEojLDIZ5dwkeP8Fy6MbtD8yJ4tYri6Xinj/1tvHaAC1AZVzLBWg33l1NfA/vlFrxCb/mR7WA==
X-Received: by 2002:ac8:574e:0:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4c06e3f854amr129598121cf.17.1758534693106;
        Mon, 22 Sep 2025 02:51:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a8fadb2dsm3183075e87.90.2025.09.22.02.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:51:32 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:51:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8250-samsung-common: correct
 reserved pins
Message-ID: <aar5oq4xvlbpjmitnwzti5w7gitf7wxdas4bflx6eqh3r6srt7@iccpujd6xc4m>
References: <20250921135623.273662-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921135623.273662-1-ghatto404@gmail.com>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d11c26 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=jqn0LYlPQ9Sjq9uXwicA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: zEIdhNihrJ53MHrvHZF4SgKfXHzJfOph
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX8HfH/pN1zY+f
 bIE1mIzAOF7gzKXFtvxvKPbD0euBJ/l5UYyTKDLJvt//mK+znze97WgG2PRmGwfHzeUCNS/8T+o
 zBHDjO5KSs9+opu0QOQrIOMJK8VBg0l1Sxusod2x0IUSdaUfVXqGin49Cq4U+EypRc9TsQQPHTt
 0AY9kUp4hGep4DBHYqIRO55DP42SXInySG+5C0T3BfHBCgVGdiBSCgIz2sdD8VM4DrLwRMDEk+U
 5ottMi2hJ8ENjkMMkLy0RkP6EiFqWqwYhrEUDAIKS03k2RbWCHlaBqDWQhePVC1xB4e6kkm+aF/
 g1kXzM9L20nt343Qkjh2bknpz3UFXRj8zwOfP77wUKSHEyHUP8aoeS0TbzcWfTwHk3Pob5gouS+
 xsguhCZg
X-Proofpoint-GUID: zEIdhNihrJ53MHrvHZF4SgKfXHzJfOph
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

On Sun, Sep 21, 2025 at 01:56:23PM +0000, Eric Gonçalves wrote:
> The S20 series has additional reserved pins for the fingerprint sensor,
> GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> index 96662bf9e527..1680be67e733 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> @@ -159,7 +159,8 @@ &pon_resin {
>  };
>  
>  &tlmm {
> -	gpio-reserved-ranges = <40 4>; /* I2C (Unused) */
> +	gpio-reserved-ranges = <20 4>, /* SPI (Fingerprint scanner) */
> +						   <40 4>; /* I2C (Unused) */

Typically Tab size is 8 spaces, not 4.


Also:

Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung Galaxy S20 FE")


>  };
>  
>  &usb_1 {
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

