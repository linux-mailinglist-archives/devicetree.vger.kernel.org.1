Return-Path: <devicetree+bounces-173443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E62AA86F5
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71CD33A4A89
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 14:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0BA3C465;
	Sun,  4 May 2025 14:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ku6FPO7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08261865EB
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 14:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746370126; cv=none; b=ia7fNaXqGKDYOrpoQdZFe2p7+0uYpUMHLkkexz2fHExnxD60QkCfsUz5GvGpINgHlnFM5AwJH/YciFiWdZqPdkyuW0Ls3A3+BaeBy0/QrUIHOMi1dcKUw583pJ4odo3Q+DFfCz/fgo+vZxwv+3gU5yhrvtqSBy8bwQVplCTwcjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746370126; c=relaxed/simple;
	bh=MS/B8ZUUNnsg7IJuWoWCIHTMuL7RXXREXTteuwgvw64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NHNb+tNUMujjHStsoD0JkGVTqfP2J5+l8MO7CUyL7gSo/4rLlqdFmz2cbFKdAuEq94NV5ZxY3IkuQRsH510E8PqSb4I4t5hHcFOfmu8EkwKJEF++zeng1HVkbhDFZcBFPcSg4BNmM0IWEmyngwHPWIauI1E9Zlc8jPMpjvX+WKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ku6FPO7R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544CoEhm014413
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 14:48:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Nz9orLHhAFXVJJfjTniAzAzW
	Ii/GRqSx8BItJUY++IQ=; b=Ku6FPO7RFhyfiyxPf8xse/PunAF+dhK3Bw7BU2qH
	E9U2DF7x2rHuXvwiOVu151e3cym1E6o463zLJmpioMI0m8u3bIzPus7AIutDKPFm
	hRC4h/OELUts5plSb+jVK/kkM5DB6omkA/n3KKXLMJINo8wbN5Regc10CLiuT7Y8
	NSwyuOrs0HskYS3huRDJ5U2VMrw4dMvSWiyw6ZofQps9pPs3zfbBPXTdmBlxkblJ
	C/OpSyiRRPLuw2z+oJLM47xfsj38Km7fOPzemt1y0Z1vrWOYnean7Sexv0FZcOht
	lq22PTCugNf+/YaDayl9V2af6jyeLV5XQ+q6yLRRFGYFLQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dd3n1x7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 14:48:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5f876bfe0so637484185a.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 07:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746370117; x=1746974917;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nz9orLHhAFXVJJfjTniAzAzWIi/GRqSx8BItJUY++IQ=;
        b=Zjcg0FNDeEn4eLJFPsdIdfPXAKDJOv5mYGaVGjnD+SzLpqTLY4AyaGUYvls9+hjJG8
         8a8U5y6Ml5ykUTzLs5XdVquDbktcpKDR+UkZCvWiER6Pyihlw9L63lVqgfBB0wJetiN1
         igmnZJOHVH4Nlw5S4R2xquXj2zOS89guZ1IdhS/zr0jLezewGyf0QYysAHvpLP1ZQfUv
         g+LZ/IiQM7jEJgWJa6g5hWwgjJ15fRHhZADkg0thl154LKqmGkh+jpAJx0QVLw46gGQV
         +DJlbYIvEjuNB73oGgOzzkwE3MgZl6IxIBNutAZT8zb7Mh4Gmj1xiEIAIKhBJEyiH0Tj
         K6xg==
X-Forwarded-Encrypted: i=1; AJvYcCVdtRhIrIpB/nFUfQih7AgeRUZjb5y6agcAZv5emBKFwwr+kLmdPCp54fPwX+NF4BWs3eThw+pteJ7n@vger.kernel.org
X-Gm-Message-State: AOJu0YwfSPe3yNMIl3NIZfPTDAcz1XMacV6dGzz+9Ug8dZwa+lB4rkcH
	78PzdLeOuU0nmAaQw+fxu98Y7PhAX1Hx0gBCHK9M0QPSm26jHCWhDGwZB96bNtUx0TBy659oAhR
	oUyI/aCMIsw28mSonyPGnJ79RkO5bwdAKTIl4CpQZxBYOXQLP/UEW61NXJjUz
X-Gm-Gg: ASbGnctWlEjZFTtb7HKhdMxBA8dvz87j7ioY0CVH1TUMff52tyoLT8dVHNWo15SiWut
	ttlXVRn/DZAxopmzU/4kZFog5JKjYihh2dCwPByZokwXE0tPBc7aS8vTw2kslcpw9zVFsg1S4oj
	irA9POIX26zi/pbxu0ur6PNWvGZ6VRkUFDz81okQHfuGEFcsF56WKywPqeEL86L3ln+VoW9Tl0h
	iJB6u0g44Qal73T5GQhWBgZuO2Nmvn2oJtU91e/wAyDq8rBtpFVTNDQ7Lh1rbo+A+PkBXKpqGTS
	bfmiHy7qmDU+EWQA8w/mHtXQWljmxYs0BvhR9VlyivKbswORTTegUrcJz6aFsiDwSuixIN9RJ6o
	=
X-Received: by 2002:a05:620a:2b91:b0:7c5:5edb:f4d5 with SMTP id af79cd13be357-7cadfd6deacmr738566085a.2.1746370116865;
        Sun, 04 May 2025 07:48:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3Dgpdh6IEqM0qU7DKjeXny5wWp5zIHm1UOfoTiG8Z9nNyeCEmHvi/8i4uuwqAFPEvneWPzQ==
X-Received: by 2002:a05:620a:2b91:b0:7c5:5edb:f4d5 with SMTP id af79cd13be357-7cadfd6deacmr738563885a.2.1746370116555;
        Sun, 04 May 2025 07:48:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202b18e4aesm13074681fa.113.2025.05.04.07.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 07:48:35 -0700 (PDT)
Date: Sun, 4 May 2025 17:48:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Dang Huynh <danct12@riseup.net>,
        Alexey Minnekhanov <alexey.min@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sdm630: Add modem metadata mem
Message-ID: <lapjaf4edsuvnw22khjiuzhtiwrxfyiijcwj6piw5n5yby5ik3@r2jvfgvx2gqt>
References: <20250504115120.1432282-1-alexeymin@postmarketos.org>
 <20250504115120.1432282-2-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250504115120.1432282-2-alexeymin@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDEzNyBTYWx0ZWRfX1nxZf1ilamiL
 ZREdZC4b44yehktRnFT771SDlYYH/9qGAQofGlbCI/D3i/0dyjlZ79dm1N+v6qXuzrEL7FDGVVo
 XwgsP647kZcNDbjuFgRCiS2CKlcoEWkBjCSHjf+Hg+Av/R1q7T4KGHQGTbgpveBMRrNbteBgbtP
 k+vLWlEiquTW3kD28hzxPoItLFhUI4S7A1arOC6CMeLFfDHlpWHdAimIARsTOQDl4oUxD095WpY
 ItEU4ZJoxln2Ifbfbp+/gn1+s8XCesaw3dgcbDJjbkOc0J8kYJ7qD2QFFLapXqo64eKbHv6XiJb
 tCITRX9QLgSMnRGzgXkdiDlyiAPV9g2RTCsyswcFGYRHYs2Vp+eiG/XhZkxMgsiye2T0IHXXMEM
 ym1SBBaxRL4aeFxAEpgC2NTdLCTjQu+Uqx5kO+kwu229fOFoyHYEnvDdCBz44FSpYfyoTTpF
X-Proofpoint-GUID: GBFdMatjmzFLX9lAQK5CDuDuXANxfJeU
X-Proofpoint-ORIG-GUID: GBFdMatjmzFLX9lAQK5CDuDuXANxfJeU
X-Authority-Analysis: v=2.4 cv=UNDdHDfy c=1 sm=1 tr=0 ts=68177e45 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=Gbw9aFdXAAAA:8 a=fVfY8HrZJKPJkriw-6cA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=647 adultscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 mlxscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505040137

On Sun, May 04, 2025 at 02:51:18PM +0300, Alexey Minnekhanov wrote:
> Similarly to MSM8998, add and use modem metadata memory region.
> This does not seemingly affect device functionality. But it fixes
> DTBs check warning:
> 
>  remoteproc@4080000: memory-region: [[45], [46]] is too short

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 
> Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index 2d3820536ddf4..8b1a45a4e56ed 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -509,6 +509,12 @@ zap_shader_region: gpu@fed00000 {
>  			reg = <0x0 0xfed00000 0x0 0xa00000>;
>  			no-map;
>  		};
> +
> +		mdata_mem: mpss-metadata {
> +			alloc-ranges = <0x0 0xa0000000 0x0 0x20000000>;
> +			size = <0x0 0x4000>;
> +			no-map;
> +		};
>  	};
>  
>  	smem: smem {
> @@ -1056,7 +1062,7 @@ remoteproc_mss: remoteproc@4080000 {
>  					<&rpmpd SDM660_VDDMX>;
>  			power-domain-names = "cx", "mx";
>  
> -			memory-region = <&mba_region>, <&mpss_region>;
> +			memory-region = <&mba_region>, <&mpss_region>, <&mdata_mem>;
>  
>  			status = "disabled";
>  
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

