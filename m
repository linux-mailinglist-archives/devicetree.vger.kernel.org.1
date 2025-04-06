Return-Path: <devicetree+bounces-163476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B325A7D04D
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 22:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17FCD16D527
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 20:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489E21B423E;
	Sun,  6 Apr 2025 20:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nbQm2k1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5861A9B29
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 20:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743971468; cv=none; b=gdruwUgNCe0ORDcY1ujbwtBDsP/SKHPgr9TRpjt/ypZ6aRGYDqfmSIpBq37RIsMCawc3lbeGINMWtqAgtpJZ5NSSrpCr8hAxAGoL5flKpNtupLQdtXImsemhSyjv9XnscoVdLFytczsmZQMqGIfqSuk7o2n4XPT+wHA3S17ZzzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743971468; c=relaxed/simple;
	bh=0dJzKedoDUjfyYan4DVIZtP6ZwALUN7Ce6VUy4c7Hmg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XQDAV1Fe7DVXE+NStKwRaqrr0NAhTp4oAoUMKVCxNwzTer9LSmE/l3VTxJqmjMCOgVrb+hhMF0TLz49yA7QqIqvdfuPrtCtrYv4KSza+3ULxnIV1SvRAdlxfYg7GDFxJTzcHYMPzk+hnRCRKtyyiwzOk4Gxe2NGbSFxk+8J+OM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nbQm2k1D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 536JoI6f005445
	for <devicetree@vger.kernel.org>; Sun, 6 Apr 2025 20:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=D3SL3RFEF7ExCpjlHS1MAW+1
	sKINZb/uEY7WG2e/dtQ=; b=nbQm2k1DHVgO9JyDnG/Cu3Htvankzz/CS2tae7sC
	KDwdAl5lhABX2+aeuKLhea7GRdFldmwz12BGRLczfzFCJ5eYdHnpqyXtjKY15L1M
	FRMOotG9L4ujTKWHcjmfWodCc6Cia5h4JPtwFBT14Ul4bW7DQApKgs2iYOUPTlRW
	Q2LlZaz3cW89OCRvGNIQmc8DVXYzP1/mM+AY1/lLydAKRxpELBInQmsAc1/nnYOL
	xLDum9ZNVG0pJoStxEAYIVNVf4QeOkPKtP0M3+fNe2EZD75vwH0Ztd4gxki0MaqO
	dNvr4XpxUjw5uX6kuVleWAC+mifBGqolKjtIU3L5gmFiRQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcyt9xk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 20:31:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c543ab40d3so564461685a.2
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 13:31:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743971463; x=1744576263;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D3SL3RFEF7ExCpjlHS1MAW+1sKINZb/uEY7WG2e/dtQ=;
        b=N3Iy6L35H+cT7zxZ5Dbx+1zz+u1xqRUG65zF+eZFXymlLwAGFboNXATSNqbufRyNGG
         Ui3Yb1wEG15/YvgpQTa31JcpliQkdO7aOHEUUujT+SOoh2DNyB5wfgTBTdJ25RM3hHKe
         l8/PHqxsRGLqkcHI1eGHPMGqpfsC64z4pA8EUTYxQE30kfxEX6ce5dEAFEb0spj5qega
         eRMG9dxQe/uubkhc1NGs3RKbWgZN2NBkGKKTTlGy70e4FUGl0MGNmzV9YhkR8EZAvkk4
         7LSjqHNa9RxYDekS5VLXPmOzwP/CsR+nEMelbA127VxzDLm8sAxLa1F0Gasf3c6qOdDl
         k0SQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKvsLwF+tQNRO+kW/1dpV5B7sWCQFJ9XDHt2hMp1iC0BK2osbbyU/NtqEUn7xnPGXp/7u8DM6Qms2F@vger.kernel.org
X-Gm-Message-State: AOJu0YyAuRiHVIjUK8Kz5W0mpT/TYfLmyJPKD2jJSh+VS0ZliXGGP7NU
	ktuvrTymhMNbciFLwbCWYswT9F/aTrO23HIyNmNGDvqvQgywOzBuLngls2wXc9kBif8DjdrikyK
	vyGTvJu+D9BKJqoF/t6a89pCgM6yh0ofb7Hcgvjh1M/Cndr5s5tD28mQqKjTdDVY5RB+O
X-Gm-Gg: ASbGncv6tfs+VDJ0s4rutOxE/vo3gNN2D8hl9RbpNdbXd6j0MgkLfIx3PsExo7w6LWI
	YC+BaAq/9pcfj4mdrMzWS3d5VLl7uaqGxW9qNrOMYmWrXWS606Eam0cm+Hf2soxQY9PPkCT4B7t
	EnGfTBXeIELv7fSgqjnOa6xcWfomjrgzUETJdCneli9+yt+sBfjFTnJuJjtnruy3CUpJCenpZxO
	StZeM21Zyz3JAZ/JbO7sXJUeAXdGreLefmlkS4auQAGoUvqtXffsdwDYXMNFwSQD+MFLdB6RaxM
	gFkfmghTZeLKnzRPmPTi3tEF+VKD7QvDm3YokBsa2DHthqj6HZy3rSqELPO9chWpMCnUypZLq9G
	y9E8=
X-Received: by 2002:a05:620a:2891:b0:7c5:57b2:2cb9 with SMTP id af79cd13be357-7c77dda1c09mr772035885a.26.1743971462518;
        Sun, 06 Apr 2025 13:31:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3veInaAbq3I1bKUD5eq/cfgw6MPpVDuHnLn0g2UE+IdMIGdhBMtA+oqNpUDXsimNCO2y84A==
X-Received: by 2002:a05:620a:2891:b0:7c5:57b2:2cb9 with SMTP id af79cd13be357-7c77dda1c09mr772033685a.26.1743971462156;
        Sun, 06 Apr 2025 13:31:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f0314b908sm13667311fa.55.2025.04.06.13.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 13:31:01 -0700 (PDT)
Date: Sun, 6 Apr 2025 23:30:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg
 override handler
Message-ID: <v6cra77j7q7gwwqcdylrp6eegdkcgtlhxbtvehfxhvdnaahp6q@emcwrbbzhyyf>
References: <20250405174319.405975-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250405174319.405975-1-mitltlatltl@gmail.com>
X-Proofpoint-ORIG-GUID: dbliS5vHxm3iQ3qASVriWQrp3yBDJ1TB
X-Authority-Analysis: v=2.4 cv=Q4vS452a c=1 sm=1 tr=0 ts=67f2e488 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=MVnmeVZX-4zFk2mnhQcA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: dbliS5vHxm3iQ3qASVriWQrp3yBDJ1TB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-06_06,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 mlxlogscore=895 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504060150

On Sun, Apr 06, 2025 at 01:43:18AM +0800, Pengyu Luo wrote:
> In downstream tree, many registers need to be overrided, it varies
> from devices and platforms, not only HS trasmit amplitude(0x51),
> HS disconnect threshold(0x53), Tx pre-emphasis tuning(0x57).
> 
> The device I plan to upstream also uses it, so I write the patch for
> it (Oneplus Pad Pro / Oneplus Pad 2, sm8650-mtp based).
> 
> In upstream, only Sony Xperia 1 V is using this, so fixing it for sony,
> in downstream, some crd, mtp, htk devices also use it, I have no
> such device, don't set it for them.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../qcom/sm8550-sony-xperia-yodo-pdx234.dts   |  5 +-
>  .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 86 +++++++++++++++----
>  2 files changed, 72 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> index d90dc7b37..99f5fd32c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> @@ -673,9 +673,8 @@ cam_pwr_a_cs: cam-pwr-a-cs-state {
>  };
>  
>  &pm8550b_eusb2_repeater {
> -	qcom,tune-usb2-disc-thres = /bits/ 8 <0x6>;
> -	qcom,tune-usb2-amplitude = /bits/ 8 <0xf>;
> -	qcom,tune-usb2-preem = /bits/ 8 <0x7>;
> +	qcom,param-override-seq = <0x51 0x08 0x53 0x06 0x57 0x07>;
> +	qcom,host-param-override-seq = <0x51 0x08 0x53 0x06 0x57 0x07>;

Other than Krzysztof's comments: In upstream we describe invididual
properties / overrides rather than just dumping the whole register
sequence. So, using a single 'seq' property is not acceptable.

>  	vdd18-supply = <&pm8550_l15>;
>  	vdd3-supply = <&pm8550_l5>;
>  };

-- 
With best wishes
Dmitry

