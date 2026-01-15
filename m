Return-Path: <devicetree+bounces-255430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE1BD22C8A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 055FC306CCC2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48B5E32863D;
	Thu, 15 Jan 2026 07:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YIIuhiHI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BS5AzU34"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585A632862F
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461595; cv=none; b=SYQHlc1VnCLwyH1kfuHzy40ZU36hjJ3y/mDZ0zK/RR81qLDJ5TeHu6J1M0Vu4gyI1jnu1O4cp10TWdxv6RCkgKfGrS65zLLP9HNYTqKZqhNlBaq46jzic/KDszSW4TJQ6VE8H7laf4e6CYDon957Tshfa1CH7B7bswUhFY8Xyw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461595; c=relaxed/simple;
	bh=2YP0p7KvQlhxBy8aGgjeDod6ufapFGcpOkKLPGk2E44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AmDKQJYgk0PS1KI+jTLiqtVP22jSU2si5mzYnPHqGaXDIJ3Wdvqnqi5LP0Lsm3n5HTWAnccK09+XS6OP6mGQZ0pstL/yBeJsGyf0MikL7wxaSwHHczXaqPWm/ZmbMGIHggm+cK0C/SoXI8ZsvRTQV+eMXQHzatzisAw4gXfRHJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YIIuhiHI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BS5AzU34; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fhYo1581837
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:19:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vgKsPJMB/JF7dOkXman7gnd/
	dRfYFowAvZ072kvli4Q=; b=YIIuhiHIAXWjQWMdT4CRbclfvTEE0BAcF800DzOo
	PGGDJ7ujKG021pCAZS7B1fI2I6EEWznErnVdKypNEQYV7ZdJKvqmosEhnDodT/p5
	0TtU4b88WjdvqEiMCBAnQ9vSvNAdNQLnl6vDWrXldiHXIHABdM0e9uOID9cQfMHI
	2P7q895EWNpwXQlEPO2BlA8R9aU9O8wUxdIv14nyqwSP7QZRwSwymznFVG/S5564
	BDGPA5Sui1jBRmONXpP18i8MAWhgiOJJUBhIgPRFDjQMW8RfMiH7DyFRVFuyBX0+
	lgpg/IauQEnioLr/jAc1GL0Z6B4rnSCNOt4ZeOkbervquA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpj1pskft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:19:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52f07fbd0so279353285a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768461591; x=1769066391; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vgKsPJMB/JF7dOkXman7gnd/dRfYFowAvZ072kvli4Q=;
        b=BS5AzU34nEvDuT52LFA1E+y0K7huBfuwMJBgfEPPtp7dqw+dfVWSoVrQMMkXt0eav9
         bWMYCxvhkylGroPHZjAZyA3oARmgZoHwdZYmmVS74QNljDe59LVu8smIA2OLB1L6HH7i
         8z3hTpqUEDuWMkTCL8qk6iFUs+Wk4yFdf9xKyJiHJTJqe57dGEtaT6XaBR69dZCygX42
         HdW0j4ZG9liG3/OQr1rUrgRIiOR/bFAniOlL4Nws1dHASwNovSU17kfJTVz5OjidRg6v
         NLFA9DFL4zA7LcyAmqR/jE9Jfo3dU6gYHAx/ljxqJbS7dg0n4U2wQcNfpAfl165Mtr2n
         uEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768461591; x=1769066391;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vgKsPJMB/JF7dOkXman7gnd/dRfYFowAvZ072kvli4Q=;
        b=rpn241Wu4Y53F7ic3xoKvakb96l0o4mZl+luIfrBZ4QAaa/8xNEkuutHJkA6Nz9dYQ
         9ykZoejK9K7rx1Bb4NyHHZQ2ObfSSyJu6L9dJX0iy2SHMTJ5eYUJHxTsBNAgAvrxjiZ6
         4WDr4NCz/xZAUchpQmw7cCRJyoLuFk+POOwKn6WYbB2UR9oNItuuLBPyZw9IRE12Iw+A
         9Gw48y5PY+t580K4HywZAsJNPqxiUR91fbW4QXnCoojugZoVQtE6U2yY40j2gLa9LH37
         0pz0HhQIe03ZWYW39bCeW3gb81eWTv+VRSNwru2/ljpzuNsVv8G2xcUQF8fAmybEfnKz
         n7/w==
X-Forwarded-Encrypted: i=1; AJvYcCXJMv1xjNmx9c736YCiNsP+BNBnTHFUPJIsDnGJ1pLzX8dwUd+kI13Wfo8L7Sb6eFoiXu9p9G2BvhDj@vger.kernel.org
X-Gm-Message-State: AOJu0Yym6p8lAtGHzc51hmLPAxCSwBJe6Soa/FVxptOU0BJr96Tyj+XK
	WFqrVFqMW4pJx3KBgNbCxy9hhYZnnqBiLD8qQCMTxBkPSpKEv3a1myv637zf7kusoaTQStXvx4C
	BLNWR9vQV6OB2ZXatc0+EJWqgeqDh/XIZVTbS+x11XAVp5GLZTVvJKSWH2CCdeOEW
X-Gm-Gg: AY/fxX7PWQTJ15z0+o7sfOmgzTi9uY1GRqpiuV71rYTWPGw3fAIr9AwQiarwVyXTY+z
	ILfKiuDV0XRn+sPcn358KghVht08dDtHfCYft1iX3EZv2CdjH1xS/lrzAZHyA2goPLTFpWadEQt
	h+JKDQOzEzaAkVs3ZzQoCkOFHxiJZUcJt/jRNxqdHeQ5Qyl1dPPfMrzAob1Ei2Rj23vvjBqqD05
	UCtvHpAfaWprHO98L5KvjiZ7CiE+dfpyTZ6Lu9nSBrG4bUE53CpR3JwzBpZG7ORF2PdEPJ4WN76
	a5Nr79L+1La11Wi9Z79aJ805ouqYPUOKBHzZq/lSgYczDcdgn8ihlNeFcTXUnnyYNtV1CJ076Al
	HYVonQEBcWPHDW79z3GNl1Ry/WrvCbDzv5KK/xmIXViKyJ3YWFs7oymhdCzlz4FIuRi+ydMyw7m
	xEXSN6Rj0gjeBBDiwn94nhupE=
X-Received: by 2002:a05:620a:19a7:b0:8c0:ddb4:2141 with SMTP id af79cd13be357-8c52fb56d6cmr753243085a.24.1768461590612;
        Wed, 14 Jan 2026 23:19:50 -0800 (PST)
X-Received: by 2002:a05:620a:19a7:b0:8c0:ddb4:2141 with SMTP id af79cd13be357-8c52fb56d6cmr753241485a.24.1768461590146;
        Wed, 14 Jan 2026 23:19:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba104124csm1423788e87.65.2026.01.14.23.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:19:49 -0800 (PST)
Date: Thu, 15 Jan 2026 09:19:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH v3 09/10] arm64: dts: qcom: kaanapali: Add support for MM
 clock controllers for Kaanapali
Message-ID: <idz7dsvyrrf5t46hvogmertavqvszwzw4pwzdy6bg23gst4yo3@cqvklmtp2djy>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-9-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-knp-dts-misc-v3-9-a6cc9e45de93@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0NyBTYWx0ZWRfXwX2P9+dn0YW+
 zVwt/1IVrFfZgIu1M6W/KLwXpHsjU0Lx1/8onCavXOZ4d8cLzhG0cy2m++9PBiG/KREI7C8nWiS
 cxxP0IQU6p6l9HVOP/GTPrumlsb9eonBvEVMc5FyQ9M6ckXguUSeG7NnsOA3dlufqLJce1CpcnW
 HETlmIYKwu9gEIHMhxrhgyIlVI+kplk2gLEFBH4sqsCFfvy7aTTo7BMgNnKG5mqH1r7gjblVVIv
 3wP+hBRxfkZVNACwurIQnandHnOQePwKdDOLuhWbAKZwbiVCGaspgZDzZQOJrLe02d0Bk4L4EJA
 pP8jBwiTU8hHTToTnundSdEfXzdJ8/qEhhG9OT+heX3Jmk54BbVWB/YYEQpU/h54fJQmiqBfLEd
 P5WyU/0z1zHAcb/DXYVxirvxGNMHaPZA6PoXQjBTOqqZSS50IGKUf1eh/i3PeUIuer1QZf1RP7a
 WRQwSaUcujokRxV02fQ==
X-Authority-Analysis: v=2.4 cv=J+KnLQnS c=1 sm=1 tr=0 ts=69689517 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=nW5VOc3qUOKf0w1BZLgA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: siYS63sPKz0kZcPA50FqhBXDbulGJGYm
X-Proofpoint-ORIG-GUID: siYS63sPKz0kZcPA50FqhBXDbulGJGYm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150047

On Wed, Jan 14, 2026 at 10:49:11PM -0800, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add the device nodes for the multimedia clock controllers(cambistmclkcc,

Somebody took away a whitespace from the previous line.

> camcc, dispcc, videocc, gpucc and gxclkctl).
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 102 ++++++++++++++++++++++++++++++++
>  1 file changed, 102 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> index 30705483ca20..8689715ae24f 100644
> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> @@ -3,7 +3,13 @@
>   * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>   */
>  
> +#include <dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h>
> +#include <dt-bindings/clock/qcom,kaanapali-camcc.h>
> +#include <dt-bindings/clock/qcom,kaanapali-dispcc.h>
>  #include <dt-bindings/clock/qcom,kaanapali-gcc.h>
> +#include <dt-bindings/clock/qcom,kaanapali-gpucc.h>
> +#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
> +#include <dt-bindings/clock/qcom,kaanapali-videocc.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
> @@ -1594,6 +1600,24 @@ aggre_noc: interconnect@16e0000 {
>  				 <&rpmhcc RPMH_IPA_CLK>;
>  		};
>  
> +		cambistmclkcc: clock-controller@1760000 {
> +			compatible = "qcom,kaanapali-cambistmclkcc";
> +			reg = <0x0 0x1760000 0x0 0x6000>;

0x01760000 (and similar issue with other reg properties).

> +
> +			clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK>,
> +				 <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&sleep_clk>;
> +
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MX>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;

Is it a reset controller?

> +		};
> +
>  		mmss_noc: interconnect@1780000 {
>  			compatible = "qcom,kaanapali-mmss-noc";
>  			reg = <0x0 0x01780000 0x0 0x5b800>;

> +
> +		dispcc: clock-controller@9ba2000 {
> +			compatible = "qcom,kaanapali-dispcc";
> +			reg = <0x0 0x9ba2000 0x0 0x20000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&gcc GCC_DISP_AHB_CLK>,
> +				 <&sleep_clk>,
> +				 <0>, <0>, <0>, <0>,
> +				 <0>, <0>, <0>, <0>,
> +				 <0>, <0>, <0>, <0>;

One zero per line. Or two, if you want to pair DP and DSI clock entries.

> +
> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
> +			required-opps = <&rpmhpd_opp_low_svs>;
> +
> +			#clock-cells = <1>;
> +			#power-domain-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
>  		pdc: interrupt-controller@b220000 {
>  			compatible = "qcom,kaanapali-pdc", "qcom,pdc";
>  			reg = <0x0 0x0b220000 0x0 0x10000>,
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

