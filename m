Return-Path: <devicetree+bounces-162369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D45BA78088
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04EFC1883AD9
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4646A20C48B;
	Tue,  1 Apr 2025 16:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="igExcAsn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EE420AF7B
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743525234; cv=none; b=CuX/t1o5kFllBDP3aRIo1/N+SnfBwX7d2mnex2NuwEc7e70lToU2eqIKNtncEPaErmk92KuOD+3rhBGyrTnLUyl2WSXNij+pqwFhm6lWacrAxQccG2mULyKep1jXTNcvMJr0ikELFnUMLygLXPTezT6U/Nv9339uABxeba7leto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743525234; c=relaxed/simple;
	bh=M9Pbj3w+PfosHL3d5ziPoL/UrIYCJ5YGd0n78EmfXyY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CudRRTS8dHuPS3abhu1n8u9ZVt+BCe5zE6C91sDQRw+ayi2z/g34IpvEwawTfFdfYZb2K51yJqvQYrtYvvL0tkCnIsvXYN59YNBD+inqrXk0gCSYP1Cs7GomjaffZ0ikNmgWkRDl4N9fEKlPG/5QV4cI+nUtzfJ9MP8EurglSIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=igExcAsn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531DeJVa007223
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 16:33:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sdH5ImqLsAfzw0rN+DyjtJIQgSEvd6hICuNkLGBItwY=; b=igExcAsnkCz+EENS
	n+r3cHHD7H9QT+jWp06limHSJswkuTXBnJWp45rP2PZWrNJQZZVhhbAYl4kDCEwf
	d32x7tcAVzz+v/7d3bi3PZE2BabUMywXAZJPUOwLqWje7uTy/D/svWats74TMjTz
	Sg5+7Xh+3IS0LmREbfAqLTA8T3jHNWam2Trw6DJ2wqjnArLs4wYFTxsX6Y1PePZR
	BzYutlN87FomnzkxNYcYc53gHpJITQA5ZpnEYleMV1cskF7IkvAzoV3ul9glbFjS
	9SBomIeWxwwW8lD/noKeNNrPnov6YP6pxrkJS/pp07Ju0boUHnMvqpwcRJa3IuXf
	/sAiCg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rh7yggdr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:33:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c547ab8273so29602885a.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743525230; x=1744130030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sdH5ImqLsAfzw0rN+DyjtJIQgSEvd6hICuNkLGBItwY=;
        b=vaTqoz/Y5knIjegXCp5Y56Uf4Wd8hvsHatFn00JEOJhVQ61e42TmlNIEbeGuInBvIU
         a5ATPw28pHOvkxUmcYXdL5jOL9hoYFa+9Gk6P743MApiE9vtTX6tsQsXT39iBU/YvZIz
         nmVVWIuV0v+SmDNyvbzZ2u0wewheuw5kjCosGdlAs1/UX2YWU9bD+wyGN+1FOUMNk6M6
         a+LHUozYbtAtslOPf1n+lqhB+F2r0wtqEmIejHZZvnFDE1s9XTAljGE8Mytvoe+emrPa
         Go4Vnl54V8hGWUvrrVt78PlZPXBB040BJ7/Pg7zZE4U3eEnq9g0i6/ytm08HjXWJ1Djm
         QX1w==
X-Forwarded-Encrypted: i=1; AJvYcCU8By/US5bSTn56HNFoA4AX9CrsWpJAKUhmNVgFaNdfTiwXLHTkGwAFkA5H4LvqVYTbNmg4jJp84aOU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy24v4iA0YJyw2SqyqZBblo/vmQII8xetHGjrNh4wp2bESEuW4a
	Re5zC7kICUYLV9n7vlTBJ453CcVl9aitFwNHe7wa2pDwsfdj5QrAay7WThhtANSYi04oT8ztIal
	ppCsqoyHk1TOc9wMUHg9jdATUZkTWy3VP80ggtDfzTvK8WugPCflz01EQyfhl
X-Gm-Gg: ASbGncuuC79Hxieabvj9LDxHCc49VSR+ovRYAFzPK2WkiHtcc857ORRuJvx4mU0/u4N
	fHhw7LycnfvgEKW3PgvplV56MOKzW8jowBDbr98HBxn+b1FxYFGJB+G1baWQ+k1UNFUC/32F+U7
	A9zH7HKcgnbyyjZfzNJBWQ+QsNviv1CsrFp9l34GI9HWIXz+L6Z094wxHu0pcLENedquOB26z2M
	2GMFDHFcT6nO2JHfLetgGxUtAunq/LtxGspIEdBLSJ7lniCaB9b8jTtYTrA2att/BWsGS3H3sG2
	9R8wR6bQ/f0nsttjeLLyBt4oc1ofGp9Tf5hB9DEuICYcP4cKmxrhKy3dnejEH2u0/V1m6w==
X-Received: by 2002:a05:620a:248f:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7c75cbc08bcmr142817585a.11.1743525230490;
        Tue, 01 Apr 2025 09:33:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8gYIudImK0VRmpucB5H3+jOQkQkQDY3SIRjp3Zb82Fo8Z11SPAmLmugt5+xJrqRVHr2iRLA==
X-Received: by 2002:a05:620a:248f:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7c75cbc08bcmr142814885a.11.1743525229514;
        Tue, 01 Apr 2025 09:33:49 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71967fdc6sm779778566b.127.2025.04.01.09.33.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 09:33:48 -0700 (PDT)
Message-ID: <1c09fee5-9626-4540-83fb-6d90db2ce595@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 18:33:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm6350: Add video clock
 controller
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250324-sm6350-videocc-v2-0-cc22386433f4@fairphone.com>
 <20250324-sm6350-videocc-v2-4-cc22386433f4@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250324-sm6350-videocc-v2-4-cc22386433f4@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IYWHWXqa c=1 sm=1 tr=0 ts=67ec156f cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=6H0WHjuAAAAA:8 a=ESNO-uGJ9VKVP_wUy7oA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 3xvvG_XIFoZU325Cv7sgkOo8IqhxG1M2
X-Proofpoint-ORIG-GUID: 3xvvG_XIFoZU325Cv7sgkOo8IqhxG1M2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 priorityscore=1501 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010102

On 3/24/25 9:41 AM, Luca Weiss wrote:
> Add a node for the videocc found on the SM6350 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> index 42f9d16c2fa6da66a8bb524a33c2687a1e4b40e0..4498d6dfd61a7e30a050a8654d54dae2d06c220c 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -1952,6 +1952,20 @@ usb_1_dwc3_ss_out: endpoint {
>  			};
>  		};
>  
> +		videocc: clock-controller@aaf0000 {
> +			compatible = "qcom,sm6350-videocc";
> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
> +			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&sleep_clk>;
> +			clock-names = "iface",
> +				      "bi_tcxo",
> +				      "sleep_clk";
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};

You'll probably want to hook up some additional power domains here, see

https://lore.kernel.org/linux-arm-msm/20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com/

Konrad

