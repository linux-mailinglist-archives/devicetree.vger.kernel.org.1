Return-Path: <devicetree+bounces-231316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 787A0C0C558
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2E7D188D1D0
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 08:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D872EC08F;
	Mon, 27 Oct 2025 08:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aHoznKfo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195D02E7BB2
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761554207; cv=none; b=PtVnay7LciEuBUHujlOWMN5D/U3F6+kDmWCsKbM8DQBgOSB92ji1YIMhYqyRUMLRzSg+/gn/0cZqU0aAOWLfzn9YjbEndmAYJh2iX8rTLOmtWamrM08I9C7HyPHiNN5V1CQuAz1Z+qET2VLt6OQILM20/SqSIK5UHshyMFHayFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761554207; c=relaxed/simple;
	bh=r0uthwun3uYanqM5VA6Ncp5m/vK3sbk/57/hXner8c8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PUMP3NxVZcVRPYM7hLn7byhvnHr6mT/eLaeqcwhXCstjvv4+ZehSSPpnIZP2HQ4mftjeuAFXdqKuVMoiQU3ddMwtdSdSxRFonpT64tNkyzFVqnm8MhlmoSOeXgCfluvWS9xrwULEON89u0pQuidQv/d/3h4/OIRxwUfWJnSSZnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aHoznKfo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R88qTw1052055
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:36:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GGmrTyCU42ZrdU0m3fMjn1h4iKQkzqG+z7CEE0xZp18=; b=aHoznKfoepIGO6fh
	7JqeC4aO7K2Pg0+CFVldon6EmYYvGQjptvN7eFQf33zE6jlfYK5LI+uTGe1u+r2X
	99oOy2HubxsYi2hS1fLwMNiY5TMWNF6cIQfh0HJxZvz0kSK69t9ajjlFZnIORuLC
	JcXIiZYLJci5KRcV3bl2lg7d4VzXqRHfEDYxOD2UuMmUQJrcB53J4pCJyy9W7knd
	7MZPCcnSUNu4fYDMJ0zz14p47di6rRSf8/3AFl0UpIiAMwBIpWVYixtiXncRxZLW
	kTbHacxxYWQ/70mXd9A1hHbl2H5zBlZIH+oeYxyekwmg5eD9iKsS7ZFGXY2QH27F
	GWmN9g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nkakwrb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:36:43 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c1c70f1faso19845546d6.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761554203; x=1762159003;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GGmrTyCU42ZrdU0m3fMjn1h4iKQkzqG+z7CEE0xZp18=;
        b=FMDt3g9yKvZT9AeKe9HFzpb40HKLPybiHfFBvzCUFIM3cwi8mC/Hb8tuODhklms5+U
         SW/TeskHC8zbbR5NA7SKtrMHNbOtgb9jbkJ4NpjVyVseUylyeiszef2UzRoGlBZQCkly
         IPmmcOfdQs89F7D81O6fzeQSHTl3R0sVN4fmpOg/N0LJHnmLSTXqppPba//fDWKHTC0i
         ux0tUrTV7ESUQxDWkR5HTXMaA4LaDSrYmsMeKhXX5wtiMxjukTgeSOZEx2KWPy8ybjz3
         D6AnUj3zQWcioPx4q6PleRlF19AIhl5LuJ+mghIfwq1AMqJSz4QaQAZxZj9RLQskYK1c
         r3+w==
X-Forwarded-Encrypted: i=1; AJvYcCUKnVn1mh7ZFZtJSqVoWIhvr/fKaiGmXaylvmhLow4CWwCceeabYbZiXfedHY/HXqYpp97295SNF4rn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+dsT85odEL4CqqKJ+J4OP7sC0NyVVtQztHJOT8Pow59guUgRN
	Da362SQcdztLc0fUzu08mPElJqqJaOCv6NSSizfsui8FuFBrZ+LGmFF5HoSES7sPea9yrnlX7h1
	6bmy4hv42euIgnkBn6fYAnefDwu9Cx0Dbk9YqdhJRpmVyaB89I4SALddeK5FpI/Ov
X-Gm-Gg: ASbGncsgGF57ULqer9ULcoqrFU+GJYHupjjYo6u2enzE5O6d6cJ7LB6o9ztM9u4wWDY
	ukU6W+1jWNfS0XFi1kfGtbBPpaFvC/l6+bDImp+X2W/Haf1rBEGf4ZLSXeSIgmq6sGvDY4n2MC/
	5Pj/RXZHmd8q/UY+e8msCZ3Estjsk8SbgR2Ge80vZsAqqKuVKSC4UZjbcibfPnlDHln7Y0Xwlbk
	77ZUT27rSBukBDqYZZmpTGNfLCGgUBJqKNFTEsrV3LcGPbF9PKNmjJUcCDvyjxIAe11bSjZA1qL
	YExq/E16G/bbtY/K6RiqJbtOl/cZ9mMEdWLEWvhud8sqne2wrweV2kLmI3aIYle/REqEfH6150H
	0xy5rdOqVbvvgzk7HZxlCQRUYoADtlBY3t81dlrv12jIFLWmB4mdqyhya
X-Received: by 2002:a05:6214:1ccd:b0:87d:c7db:7897 with SMTP id 6a1803df08f44-87de70be59fmr193273376d6.2.1761554203009;
        Mon, 27 Oct 2025 01:36:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBxZSlLSLq628XOcOmQkPcgLeRYWLr0nk7UrCJ/G25yRVawT6YRbJyjiyHjcmiuuMvBfY5Jg==
X-Received: by 2002:a05:6214:1ccd:b0:87d:c7db:7897 with SMTP id 6a1803df08f44-87de70be59fmr193273206d6.2.1761554202473;
        Mon, 27 Oct 2025 01:36:42 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm693504966b.39.2025.10.27.01.36.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 01:36:42 -0700 (PDT)
Message-ID: <e83730a4-f270-47e6-9bea-336c142eed11@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 09:36:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: lemans-evk: Add OTG support for
 primary USB controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251024182138.2744861-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024182138.2744861-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AYW83nXG c=1 sm=1 tr=0 ts=68ff2f1b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=asFFNcRf_TYdFNsIYgAA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: mZl_xkERU6UDwre5BWNaBMAK42vKbTFU
X-Proofpoint-GUID: mZl_xkERU6UDwre5BWNaBMAK42vKbTFU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA3OCBTYWx0ZWRfX/xs4YbD92JEv
 02I5KZ910AaCL+rV2AsHK1Ok4fCEvWCh0gpd+9Irh9I9vTVPJn2jSMuPddE/YRzfn0GbECFNrqL
 cs/srbVEjSBjvtG0+hHYeAWSjwCoLy6fysokC419ClzeBX0c4P0XPaq1cPlojjonaZ/6Fp8dJGr
 iHBlodrIlVA3lbSLS+x06huPI+AJHexPrua8aSknft8PfKboJaaHbxN5z+cQx264mDHAFiwqy/p
 YccB1uTaC8raZQg+6fjoB3BxT8dLhGE0JLqr2EIIVaPCZKLwee+pyDhg8ZHYA3qFE8C/mbyVfii
 /siG4i1VQ5EtK7ezGcI+kidJsCCzv8zGGUwHpXFV/zzY96e5Csh3aYm1GO2VN3thT0AyRl+QVF6
 1X6VNfdcbr7hryIYkKFAv2XWspN0GQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270078

On 10/24/25 8:21 PM, Krishna Kurapati wrote:
> Enable OTG support for primary USB controller on EVK Platform. Add
> HD3SS3220 Type-C port controller present between Type-C port and SoC
> that provides role switch notifications to controller.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
> Changes in v3:
> - Moved "usb-role-switch" to lemans dtsi file
> - Moved vbus supply to connector node
> 
> Link to v3 bindings and driver support:
> https://lore.kernel.org/all/20251024181832.2744502-1-krishna.kurapati@oss.qualcomm.com/
> 
> Link to v2:
> https://lore.kernel.org/all/20251008180036.1770735-1-krishna.kurapati@oss.qualcomm.com/
> 
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 122 +++++++++++++++++++++++-
>  arch/arm64/boot/dts/qcom/lemans.dtsi    |   1 +
>  2 files changed, 121 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index c7dc9b8f4457..2baad2612b16 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -37,6 +37,35 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	connector0 {

"connector-0"

[...]

> +	vbus_supply_regulator_0: vbus-supply-regulator-0 {

Other regulators (as can be seen in the diff context below) are
named regulator-xyz-abc, please follow

> +		compatible = "regulator-fixed";
> +		regulator-name = "vbus_supply_0";
> +		gpio = <&expander1 2 GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		enable-active-high;
> +	};
> +
>  	vmmc_sdc: regulator-vmmc-sdc {
>  		compatible = "regulator-fixed";

[...]

>  &usb_0 {
> -	dr_mode = "peripheral";
> -
>  	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			usb3_hs_ep: endpoint {

Please define these ports in the SoC DTSI and plumb them through &labels
in this one

Konrad

