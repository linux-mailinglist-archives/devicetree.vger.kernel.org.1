Return-Path: <devicetree+bounces-221119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DF378B9D4E9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 05:22:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2EE4E7B5E5D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF962E6CD0;
	Thu, 25 Sep 2025 03:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DNQ7Qxab"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B9F1A314B
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758770558; cv=none; b=mn4M/6w9555FltPc/IBH0B0HRzryUBshdXnJha/9fZuthpE7v/6swh2ButkLgbSc+n7KqmJ3lH9EZdMQKMf+1jrEFaaAqDnKe8Q1efdkXt8pA+hYObeeNh18D1ghO8JZ+GYaLcg2Rq8WkCRQk+KyZ7TpU+aIslWZWFwaiKZnq94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758770558; c=relaxed/simple;
	bh=6pmeTUqKLAywnwstwRk80ICI60VTQgJd12zVbpW8u88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DgEkZESQeFZbtvmm41OjAWH5LYHpwHeM8jUWH+BTRHBfQHW0GbEoh4JJPTANA28DLwi0KZBFZZhEdZMfZ9sEXE2OoWfHlmiWrq9McBWi9PnLNfBJIlBRTR1T2Mye5c4HxNZGhJ3nUcTMwVPbv6SlYRBDPYT0t8Ga/lXkTtI0tyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DNQ7Qxab; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0qvSI025084
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:22:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cpArUBkBwSCGSXirYH+a+MgH
	TCrTiPbzylW7/OuHCvc=; b=DNQ7QxabAyvg9uEPlYgehRAKOktqYaejEjwFOyAZ
	/ac4Rf4Zl2Z63RH3YpptKjE7xpJclHanT2KLfcT+JuyO8quzgoISSaKoT9R+PZDD
	+MRm8cGsyUYz509hI/35e1ivnXQ03+mZGzG126a0xL38cTcBBEQ6vUchsi5P09J3
	hf27GT0up7zM20LK1f3njmN8x5Yxdm5NcLXEMabTztb6hAsGs/3/IqIrtYmeK4JZ
	S3wqEbBLG2lBcyHh4axmPWWgNk0Km/oH08aqWyck7fyxrUnLKBTOoAANNDKfQ+Oz
	k6ZKnI2EijzsbdSQDhVrHCsYmi6Xe2AkwWNIHTtLNKShuQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexw56-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:22:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d91b91b6f8so8483821cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 20:22:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758770555; x=1759375355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cpArUBkBwSCGSXirYH+a+MgHTCrTiPbzylW7/OuHCvc=;
        b=LVjBZaMg5CKZt4ahkbOe5QM4rErb2bxHr3UdPpWPR0+BtNbZGjRrDyb8Sh1FKvHkwH
         SQnBIe2XuJFFbn6wNsKV5LURKuWwzvrGM6JbhzDqfD672CFkQFmsuAxSllFwwPKf7Aer
         FQtkDwprmUPGJjgh5rxmlkFrjJcUjYqT3yDPpQbcXKjxuZ61rgFRImowcLdia9zx7AlX
         tF9+7VJRc7ALjIG+Wised7dvzWDrphsugEU0YUMb0mH9Dd9143hC8QxoOrhnv9WtstY6
         WRElsp6/t9zdWg5fY7hEwExTUDvGYnlLmxrfFC1ub5l2He/Wg20iDXnacaZyht8zHXyS
         i2CQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe6H6hyvMj8MeYx/Q6ba8rQ4mQfBn0H5YBtbimMQNFoglPS1wKwXu8/zpVJWKsv1mWRvt7Qq0fb+9r@vger.kernel.org
X-Gm-Message-State: AOJu0YzrRdf5CdzuL7Zj7URxrsADIgdJnx479WVGnkBqDcsOLmOddJwF
	Vfk7LtALgJrNceinZ/pCx3ZL/jUnUDAPUq2QjgvSwqrf5imU7WgBouqS4H+UG4bDTWHwa70hdQv
	1cMS6j7mvIS9WYx6lxdXO6FMmSkHcKcGWVjIr3iWxyWv8nE3PJinayX3Ho+kBMq2Z
X-Gm-Gg: ASbGncvh+8043BOwKPSp1IhildSxzKnZuncqxb4/1TsVy1REFnchkIdCQCptcqmxbTo
	XM/ygPeTMATXdQ88fb5mTIXfPFuceOZeLINfh4W2xoyyVpH+N9nFudx/z5vqhkcy9lKuLPTcHS6
	r6oY35hRQZXZ5e6nb1V8Hqr1rUltr5QIFrmOnVtXDcyNUPVLeoWTq70chReedw852sqogQ5kjqL
	nPybLSJ248rWNgTHgLogzJ8/uf2Axw3H5q+WHe3fLsxLA8pNBRfn/84YgE0qsR7KQYmJEq8SZOc
	IASzPZfuGxKxDNM7+DquOQiz9Md8nhOrj8cg3ixj45YZnEmLZTkKQ3Uw07nZV3SE9+nqwwSIXpD
	nq3W0tiIcZ2CqWgjYBM+k0Csjef4Er6FT8XfQhGX3CMzaVL2JmaPk
X-Received: by 2002:a05:622a:5508:b0:4d6:3a5a:269d with SMTP id d75a77b69052e-4da4c39c529mr25537611cf.67.1758770554797;
        Wed, 24 Sep 2025 20:22:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTUdtmrhyn0t7zzPYoXxLVVNyi0tAdluJQRBBaRFKrF7eL5xwBNXuv++LT/1rjvjlu3hyNzA==
X-Received: by 2002:a05:622a:5508:b0:4d6:3a5a:269d with SMTP id d75a77b69052e-4da4c39c529mr25537391cf.67.1758770554315;
        Wed, 24 Sep 2025 20:22:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665624esm285483e87.69.2025.09.24.20.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 20:22:33 -0700 (PDT)
Date: Thu, 25 Sep 2025 06:22:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>
Subject: Re: [PATCH 02/20] arm64: dts: qcom: Introduce Kaanapali SoC
Message-ID: <oitgxbjkjftsq6an6dbtqrb2vfwrpv7tybmo4zck24hzh7p6gr@4gochzskawnm>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-2-3fdbc4b9e1b1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-dts-v1-2-3fdbc4b9e1b1@oss.qualcomm.com>
X-Proofpoint-GUID: ScD0_ZwtrXSiDBrM_PWIzmwxZ9nj9MXL
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4b57c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7sPlXishrNHXYsHdOZMA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfXy+AvEwpAHFYx
 Cx41gx+HgY88QuCakfq99M+vJ+IV11s4OYlBt812Xz9fRtttIYLuGq/Lyb+ZmODUS7Ukx5z9G+D
 /UqXc0Q3J4hEBw3j3Nv+X/JEWW0UNl4gi5M86lZibjAiSL6sSp6N6X07Z9ifK75mdFMoQmC3G98
 SbjfpktJgg/afmidvXKY7P2ozmaqj5TPUR7HkrG/zKusnQhnHKy3ic0H9PVkyjh/JJFHncDorI2
 rzEfPWo8PLekXNBneWuryTft0AZAkcf0FexiESodRli6kVjDz1VZQOD+lQ+oMFHQlNphhA5d+9w
 jdLMWGu0dWGCwGCDmhw10fA/4aGjpxkCpSCQRws+484i+C3K/Fb3Q/1fsP/qV1d165TSt3GhQLw
 t97suJNR
X-Proofpoint-ORIG-GUID: ScD0_ZwtrXSiDBrM_PWIzmwxZ9nj9MXL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On Wed, Sep 24, 2025 at 05:17:19PM -0700, Jingyi Wang wrote:
> Kaanapali is Snapdragon SoC from Qualcomm.
> 
> Features added in this patch:
> - CPUs with PSCI idle states and cpufreq
> - Interrupt-controller with PDC wakeup support
> - Timers, TCSR Clock Controllers
> - Reserved Shared memory
> - GCC and RPMHCC
> - TLMM
> - Interconnect with CPU BWMONs
> - QuP with uart
> - SMMU
> - RPMHPD
> - UFS with Inline Crypto Engine
> - LLCC
> - Watchdog
> 
> Written with help from Raviteja Laggyshetty(added interconnect nodes),
> Taniya Das(added Clock Controllers and cpufreq), Jishnu Prakash
> (added rpmhpd), Nitin Rawat(added ufs) and Gaurav Kashyap(added ICE).
> 
> Co-developed-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
> Signed-off-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 1320 +++++++++++++++++++++++++++++++
>  1 file changed, 1320 insertions(+)
> 
> +
> +	soc: soc@0 {
> +		compatible = "simple-bus";
> +
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		dma-ranges = <0 0 0 0 0x10 0>;
> +		ranges = <0 0 0 0 0x10 0>;
> +
> +		gcc: clock-controller@100000 {
> +			compatible = "qcom,kaanapali-gcc";
> +			reg = <0x0 0x00100000 0x0 0x1f4200>;
> +
> +			clocks = <&bi_tcxo_div2>,
> +				 <0>,
> +				 <&sleep_clk>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>;

You have UFS clocks. Why are they <0> here?

> +
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +

-- 
With best wishes
Dmitry

