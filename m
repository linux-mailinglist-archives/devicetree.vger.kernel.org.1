Return-Path: <devicetree+bounces-170335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 834F4A9A8B0
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71A311B86010
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337872236F3;
	Thu, 24 Apr 2025 09:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U8a1newR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4921022258B
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745487543; cv=none; b=aD99gDKeE1DbYycX0FLJSUjB3HYuorpbxc18AGepYTpCJwxo19E2HYiBUmL+UwaTGSFfrvMz2wW6iQ2/vlGS8xvZoGDGpKYVfY+kUVRW806gj5dX7vjYnT4gSbBf2sLsdUzYbLb3bZuPdJNQfxjIWemo9Vw99o5DelArTkDfVcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745487543; c=relaxed/simple;
	bh=2o94boNKwWycSx1zjXKauuQvyUDTL1W583B318Hd2lE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jtN1nwyWmA4a+dmMhrB0oDKMOGsEesQZfdAPDyJyTwS3TcCXdxW92IF65FQHnhvbKBMgV+C9Dx+nxugBY7v98c1pu4hM7S9ZQR9z85/yl+ggC4FX1LpOblJ5RGMuYERHvB2O7Ck9vktnmhDVF3npj8gHEl0keqMQSjGHsulVbs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U8a1newR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0G2ff032238
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:39:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2f3dK7+MKJ/z1loG9CU/AAII
	V64HRI5KTaq4hfss28E=; b=U8a1newRJEdS9P6IAa18vzlihzo2D9BcXOdX5yOJ
	Oa4bDNC3lgOmphXitQm4leabcGaZDhhlNzJl9KhHxDTKGiliBt58f4p+ZiX5y/Fc
	HFqmdOOHc4yXGvsNx2kWMnpj8IGnoxW24Im1ZkxZFykXbRWmjt2K34atY+Z6STWf
	Z5zU/4rlDMrOGtRiG2dbL4MAJQ5MUAyC7YbQPvoQKvfVIzOicN264g1THBFin/xW
	WKSOuTeu5IUxqn/gNk78m5HtLVbVsx+CJZq8zMjBJTb+P4Jc9VyvR/pazAHoljvX
	PU+FTpYnToVVBWwDfWS9azPHsXRkF7YqnR5IMTSOYndiMQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5d0uf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:39:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5d608e6f5so210614185a.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 02:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745487539; x=1746092339;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f3dK7+MKJ/z1loG9CU/AAIIV64HRI5KTaq4hfss28E=;
        b=DtegiN1G/JF9LTJ3TOOk8rJXkHZ2LcAugUbwmuC7pID0Qg3TIKKujqrtGwwGoT1Uyu
         w4lSfmCMTyKFt22s7txrA5RQfHGt3v2wMnpc7UCnP+UrepXISyXqDobQwdl+QO0Fu8IF
         Uut4LGouwR0YAKziWPbCAkyq3/5AQjKxMT6KtraxUktCodnc9mhISGNkTTZ6ntGyhZri
         zQZuNNdsN20asewMsnMdmQjqYjiPiDonktPvYyz8Zk1jqVXEGkHraLbRKFej1TRqxqq6
         YXjYT4xkaRd+9UuHfaOSXtcQSqqjGFH81tqbjk/w23nSmpctMIeb4N+jkMVT8vN8L1j8
         RMkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUq84e5zUnkiFwtLP/klAY7ihdb2kZIs+uneQ6BdmD/7YDbmvygS2WXmU6D5czvyVidKW9f5aBQcAZ+@vger.kernel.org
X-Gm-Message-State: AOJu0YxhaszRKN3MLqu/MSnqjHDCI52BNzLAcS+zz9eFLP3ZqxzHVto2
	pQ/y3RUJogwhQmz++Kjim7erge4OtTBIqJ+meXxbT0j/XTnlfzHKApDfbicyGgcEr0xjQFW8YWe
	RojEUmGk7iE4FMjUeIS+s63in/m3rzKUcGmHIDB4BgFVkzw7nv2uLKWq4gSkd
X-Gm-Gg: ASbGncsCXKAYcNmzJI/VDKUDU6EQ/I1EcXzlHBRViHG7+f+X3DxE+H4+WfZ38clUOFX
	u7ZDFXmk7KUjev2kdCF9NSVcXp8/waxKjK4IPlUacrsLLeT4h2yml6IOql92+f+qy/AhUIaZ560
	pBqg58SXTEpbu4SGtM56zpbwcj/70Y28erMr8N0Cz30MJhQb5WkJCKrspPZI21gxwKoXvlmZNF3
	CK/RStXJdvnNC5RAVw/TaBMc8K8b8kFwQCXC0L+ZEuqRHYOKk3Lt37XAeWSY3Ch7lcHs1OTnLEt
	mvnslsVlgJ4hXmQmqU4Af6cOxsEFsY1yqO/xdFx9jao/Ym/ke75pWOlgSebtcFjLmfDbr3owSLc
	=
X-Received: by 2002:a05:620a:290c:b0:7c5:9a2a:aac1 with SMTP id af79cd13be357-7c956f281admr276028985a.46.1745487539302;
        Thu, 24 Apr 2025 02:38:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVpA1BUKeX5X8TebYkgy0ZTMhGuaFRaUuMOgDF2vXdicDx4tCttKkvklxUD+kzOdmlB27N+A==
X-Received: by 2002:a05:620a:290c:b0:7c5:9a2a:aac1 with SMTP id af79cd13be357-7c956f281admr276026285a.46.1745487539012;
        Thu, 24 Apr 2025 02:38:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7791sm166472e87.211.2025.04.24.02.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 02:38:58 -0700 (PDT)
Date: Thu, 24 Apr 2025 12:38:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 07/10] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
Message-ID: <rvjdnmhn5pb4dbhp3jxcmytr2svumafutopjwue7nueu6ymcsh@dbl7kkoipae3>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-7-25c79ed01d02@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250421-sm8750_usb_master-v5-7-25c79ed01d02@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2MyBTYWx0ZWRfX38JG8q4icbuY SH3Ra6gYN3DvBrlbN6gK1ou4mM0MitqWFxJ8JxsCK4N1Ir3175KkbF7EFzXuLOnEyufo9lyf846 9jmk+ColJ7lsFwWMbE0w+mr0qIFEQOY+7JHhCkqHRELBdmZ60dOkVBIos9wQFnYFVFhVbkhqncp
 wbltGj0E8GppKr1PbIef+AhqNxb9Kl+eRfvLd68vU+bh5w39Bznr4ibHGEndZ0dVCX+gAWzrANU qeZn0nRDgd5H/ORP6DdzfmWBh51awqczTPZuid2ffpyPpgg8kJy2FIjdNnEIuuECp0kZ5yFhABh PtaHtfLC7wJJMggoIYmyFM95ije2ZQTUKUgqBLZc7x7WcxRQPTRHl9MF+WAy8GMSdMBaQOjmV/G
 xLrWib7X765VlWpb8JGs4yKRVrX3I+7Z1KVtZWuVOO46PF8vkO6chrAO8N1IDpdHfJE5dKIG
X-Proofpoint-GUID: KASvmcyR-K7ebbcPwspxL2tMQN2x_LSz
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=680a06b4 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=oz0Rim8_5s926H0KrIoA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: KASvmcyR-K7ebbcPwspxL2tMQN2x_LSz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_04,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=508
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240063

On Mon, Apr 21, 2025 at 03:00:14PM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add the base USB devicetree definitions for SM8750 platforms.  The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
> transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 164 +++++++++++++++++++++++++++++++++++
>  1 file changed, 164 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

