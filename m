Return-Path: <devicetree+bounces-242164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A051C87718
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8403D353BBD
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F6D12EE274;
	Tue, 25 Nov 2025 23:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JtmwZoE6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MdwQmYE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12FE2EA730
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764112664; cv=none; b=i0i7QrUPrKvjW421KSgMBAbdKpzT5kqSi1XLlP76Wwm7z9ZJyHEfw14HTmJ/7rCiVkPMPW6g96eBFFJrXtkzhCmiuRiXIz11QGD7/UFM+9MryMFmI9Cle6C7dzu81mKBm8NZ3Rv6dmruJiDik0UArjREBXtt/QxovEUqInsLCeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764112664; c=relaxed/simple;
	bh=VDfTV9mVlqel2Jl8z4qwJgsngWN3cDqLjSDdxwI9guk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bQAww+MfLWsW1WY9aGO1WO2qWJc7xt/l6eB/G1qe0Yxy3qI/PU3W8ChzKNtVb0j8+nKZOVM6U0/WahaI9ZTyncgzvrFUS7hnXLeYcJjcq5LAZsdrnllCJeEBIEoBvzE5mh9ANfb8SAd6hvVD5MK1Um0tnpgJT1UJ3o7zcLpQm4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JtmwZoE6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MdwQmYE7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APGemea2655459
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:17:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZJG/NiRgpzwQ2de39BRzH5Av
	KoSMIYV8Nj7NUhsj2IM=; b=JtmwZoE6d5C4hcg7sz/PV64ymF114dUHFCX0FrUr
	JHfQSC6AzXInXRwu32HCuRP0rRqyIgL9NHaO3lEkThXo3zLsh9d+ZPTaKCdJlI93
	c0Q/Fq7UMUMuC/z0UWLGuS19p0tgB7BoKDhQ5P7ZHKBl+AanVHnzT2qopBnxtaJq
	kIPYgz5V8M3AcnRGpSZrnvzFnjwbYbArpkuq5NcnwHxQ9b5BnaUMho7+m/u0QkpW
	6RznyEDO4g9VMeVshbph5KCryxqtP1hKkLKev0XVbQgRq3qrFGQrnqpXfa3J9j9u
	+puVmWBm+RZ3bs0v0wbvo3LYNnxNQxgh0AKOsaznUoXsbQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4an9fxtbys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:17:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b1d8f56e24so1684646085a.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764112661; x=1764717461; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJG/NiRgpzwQ2de39BRzH5AvKoSMIYV8Nj7NUhsj2IM=;
        b=MdwQmYE7ByT1TCvnDkbSkFRvfS3UW/NnAeQS1IqLYqe9M0xYK11F0RI4ug4sCf25u+
         N8KoUABa+9VHzR2xhuZHbB23yMEX05dc+8pNv5uKYiGFfbnIwGBtmtxj6nwJANr4tku3
         WT/Fl8cesORJ04xCIdB6zPUqzkpJ1NtJe4Mi11lmer9FXTJWbfpKEA2aNtmJqVXFpvO9
         jpqwxGVjdYyv765vaynGMzd1g014zmyzAevG1/P8Xjfg6ysXG/52FfpnM2fhLsZQK+Y4
         5AmiITFFR0p525vh1Z+aJ/m0pwfGn4y7heTnEynSE6D6g+a8G/SBL9FyW7BjgYxPIwNI
         oxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764112661; x=1764717461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZJG/NiRgpzwQ2de39BRzH5AvKoSMIYV8Nj7NUhsj2IM=;
        b=Y+kZRcnaFjkq06rXrIoa/FGjQ7o7BKQ9MiUkOeYXvIrNlQeHewxmFSE3z6C0xbaCjN
         s3Urc9/7kFw2sex+H0d0LaWNXQr6xqJVgEXj0m3bMGN2jSdOQs6/7Ynux/pkmtGju+MF
         EbfVmQssKS0xpo4cd71eL5ASkPUnhC4o1cm6O1c7tcHwNAGnfLTqQgtPiw6Yr7EvGa6s
         eYqmVIj57/OBnhat+vxTu9ROjpBSRp2+2Ztcw8e49qraAqWgi/7DpIQESILAh/T5mg4z
         RJHt35NIthCEeq6jVuHSMCiGZHFsdhMzCAUkP5RRFlFTi3x8kK/0C9odduAE84ShqIdf
         KAFw==
X-Forwarded-Encrypted: i=1; AJvYcCXT2fj81SPLPyO3GNKhyr9CCsTaPeeSi+M8L8g+5gPQTO/xjLNt1OLJxB0TxFoAhqetvkvKIBRUTLKt@vger.kernel.org
X-Gm-Message-State: AOJu0YwNs1xuXRlaWszDZsR5BgIJitYL2teFsHto4eh7vblrQnkwvqnR
	qlqappPnmjQRfIO003HN0fgwcjgYfaJN0+ktz+2DGc+gBPg0H52rFn3WFVzPyWK+fk5sKf4rPhb
	JRc8/K1vo3/RJDG04prMi2tLF29whLsV2QXhngUYQFxMsJ1CICDPT6L5jnV8WH81o
X-Gm-Gg: ASbGnctACkj9/cMd9bUszP7OEIp83lUFU2Hu4LiOYFD4qn7zq1c6PDeYLS3yezbB5XQ
	TlorAEn+FEGetRPU+VhfQDA+sMFQF7dtgjdyTATC+lTUh0PPPYzzAdLXa9EJ1O7vzChbyA4wWuz
	EVOJs8iW1t2fl38ozs3OWGluHrPHqT9gfDykk07+lAKoUNzLOiyOyTIEAfstExogyOBSIfc5Qyk
	VEtGyEJDXWF+okQDJJZNgkmmO5AHzmOJJEWxLzxxz5ULXjHJvawj5X9LkCtkFLp3+Ol4Me6A0VU
	qurzt2euzNI+KNveVDOGeZD8GitnT9NmPgzGKp5tYPtUnwJtSAUtoL+QJoMXbCPTn7wKxMWSKe6
	poh4lbYidKDslkkKjEojjF8aV/ghHqfhIaRgfBXOcRjRGOGf9MSkO819Y9JkjiOh/CYdcgYeQjS
	VVfbhEX6G7MOTXf+NPBnH1QjE=
X-Received: by 2002:a05:620a:2907:b0:857:890f:7fab with SMTP id af79cd13be357-8b4ebdce57dmr585244385a.85.1764112660953;
        Tue, 25 Nov 2025 15:17:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEASLoNe1Ymtvsojx+MAbOgMVURUVbmfT9dl4AeK5xsAaEViYLhvW3H/OERaypIXSVZ5j11w==
X-Received: by 2002:a05:620a:2907:b0:857:890f:7fab with SMTP id af79cd13be357-8b4ebdce57dmr585239185a.85.1764112660465;
        Tue, 25 Nov 2025 15:17:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37cc6b59d3esm35879241fa.14.2025.11.25.15.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 15:17:39 -0800 (PST)
Date: Wed, 26 Nov 2025 01:17:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH RFC 4/8] arm64: dts: qcom: pm660: Add fuel gauge
Message-ID: <z2n27amgfsnyw4ytavim3cnthqtzhtu7rjp4kbnyd3n3r6ts45@qotrzrgbkrml>
References: <20251124-pmi8998_fuel_gauge-v1-0-dd3791f61478@ixit.cz>
 <20251124-pmi8998_fuel_gauge-v1-4-dd3791f61478@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124-pmi8998_fuel_gauge-v1-4-dd3791f61478@ixit.cz>
X-Authority-Analysis: v=2.4 cv=I6tohdgg c=1 sm=1 tr=0 ts=69263916 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=NvILeP0D0bf023pIXisA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDE5NCBTYWx0ZWRfXxf5fudpl2R4X
 ctDenMc3B2/D/dctUG4/fhrjJFF0tWwB1uv42HdL73qcr7VfFvAItP8Sd09DYqgfTgbzBmCMoQF
 36KomcjJAPgtatWMPe6UdtHxlQbIAwIn3DjqDLxwCd0Ck8PwCJwOBH2r+QrMVWw0a8aV4DLOfZf
 YR657z2Xq+O/H1DdZJBjdczy4pb/paRneMPUg/Mglghj70pkXZVLXttYcolVieghy/eu2BtyQE4
 ENxIZcZ4EkKdPXhabvelvXww+7smOBh8A22+eRYgwHp7pfFJxgK4MlSliFAr6LSZPSma8NqLbQ6
 vJD/DbwZIN7CQMmwBPVVfABe18U39Sn+rMyo0U29Q==
X-Proofpoint-ORIG-GUID: MiJzRM4Fp4hiiawrZ8Jk5eExAytvIBKb
X-Proofpoint-GUID: MiJzRM4Fp4hiiawrZ8Jk5eExAytvIBKb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 spamscore=0 adultscore=0
 malwarescore=0 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250194

On Mon, Nov 24, 2025 at 10:53:37PM +0100, David Heidelberg via B4 Relay wrote:
> From: Richard Acayan <mailingradian@gmail.com>
> 
> The PM660 has the same fuel gauge as PMI8998. Add support for
> PM660 battery monitoring.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/pm660.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm660.dtsi b/arch/arm64/boot/dts/qcom/pm660.dtsi
> index 156b2ddff0dcb..ce53f5ddc4bdf 100644
> --- a/arch/arm64/boot/dts/qcom/pm660.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm660.dtsi
> @@ -197,6 +197,16 @@ channel@85 {
>  			};
>  		};
>  
> +		pm660_fg: fuel-gauge@4000 {
> +			compatible = "qcom,pmi8998-fg";

Please add PMIC-specific compatible, use pmi8998 as a fallback.

> +			reg = <0x4000>;
> +
> +			interrupts = <0x0 0x40 0x3 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "soc-delta";
> +
> +			status = "disabled";
> +		};
> +
>  		pm660_rradc: adc@4500 {
>  			compatible = "qcom,pm660-rradc";
>  			reg = <0x4500>;
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

