Return-Path: <devicetree+bounces-245391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14986CB05F3
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 16:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5A3E30528F5
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 15:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD432FF648;
	Tue,  9 Dec 2025 15:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EH7AwVSw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gbnQwoyL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10392FE053
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 15:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765293255; cv=none; b=oNRclsZVNF2q2zEPSWHymkIMSSnf7qndriQHcdjpImORPegslar37fxozA6YPCx06pU2KGl+psRBdvVJKG3G5/IlFesXtEGGRD7sw5liCkIGQdgouMJ9u7m8ju1tYw9hnVlBvv6dNkXCAJwJkDkEcvZYOegu8KyX42xyFGXLOwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765293255; c=relaxed/simple;
	bh=FOMD6U1DvpjRdPVkx9tK85NtED4e25mi2iDMNC6fXqo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rTUFxjt6ZA1nK9bUwndb1cE5bqBBBtpOx2hVPnhJHINOuvBXPSeVBTb5meFTwjisXKpprH52lZ+Uo5IZ3yLNW40jyghgOGWrPO50QYMPmuuIKm6eAAHjsNYLJ5YyS76te+xiR9meqrkaAYT6aYJjnZH0GwZYy/utJ3pD8Dfi7b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EH7AwVSw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gbnQwoyL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9F1EjA511864
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 15:14:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7ire97PnRkZFa6lbtkmqUdBf
	J7CD1UcmGngbNRC1tcg=; b=EH7AwVSw65I5p3aB2q1FjY0+3/tLM8+kuGiLttb1
	xMI+0YNWmiBMyAn87TlGeVzHgoLCuEsRIVA9741d17O+fqafjzDqTLg4bLvUOc9T
	SK4kFABAlcDmyfmPlx/MaAKK+/45DeKykMMwlgv3dzURvfksAFPmmjqYLmeQzDDa
	d+H6wJPSkKVxbY/I9XWQYWNkso1uvc0RwUNh12xzkVgeLj6heP/Ea+3c0mihmhWI
	B5y129oQjxl0wbnbz7Mtk1uHyG2S1F/ML78REhSEQ/oNYaLap7s8iS1nU8iEalNh
	Struk5RovjF85qK8XbeDJGSQaOyhd9/m+lXWlw4BmmRCoQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axjjm8s8a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:14:11 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-55b29194c04so3580502e0c.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765293250; x=1765898050; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7ire97PnRkZFa6lbtkmqUdBfJ7CD1UcmGngbNRC1tcg=;
        b=gbnQwoyLn07zv/vpKHZWatZDbK0FZlZzh/D4Y1HcrYsV+Q3qr75XAoqP36FsS/bCG0
         38zL27EnvSo+A2hj1KvPGPEwli1pQ0QJvzLjwL/GoWzPATrugYzKPPU9hiO+gtO3hkpE
         jDSDH/KQxVprVgKXv4JzCxe0QGmIj9tptgzGmm/HftbzSmkFPDgLnl/cO3bua4WPeDcM
         n40IUDZ790D3qC6ugaURdTVoeMXexicA51WTGT4q8JUv2wL/OsV4jKWCNgp6/wFYQTl5
         9C2+CR6GI7YGRWrp/lcMdi/Xz7pkVieWUJeEik9dz/dIM3xqrECgya10V1ByG+/tck+g
         CwZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765293250; x=1765898050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ire97PnRkZFa6lbtkmqUdBfJ7CD1UcmGngbNRC1tcg=;
        b=nMThIUhubyw2kcguWT/eK9ckG39CY16/0+CRPWowABllJLSvwP/tkUC1jZZjETdG9s
         w+TQXNnJjF1r1ky6dzRQnqScParTGiEm3SsCmzZE9X5cBOWQc2cHxoTqJtdiknmuW9Ib
         BAiI/FwQLa0XbR2gWTKYqpOshLGKVanjblZBA3F2+Bj+S7JaYvSckP7vvi0bL+f3S5Qv
         u8Z4UZQVaEFVrwlIxjdRQI+XBEQReGCShctGUkFc8/R4ar6ZeM22/U57IsrXg95Xo/AQ
         pCEfr+JzMAYn1Ka+9LlSKClZIcAttpPImqjlgZlb0rraOuTvPqPddN1HER+41NKGNkWR
         7b0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUYwQ0xIrOceB1yFjwFeSVelrtx6rox4lDmV5pt9VFAGjltjw/iqwsqHZO3qVRF8u1mDXwC5glqXC6E@vger.kernel.org
X-Gm-Message-State: AOJu0YwxSpXmp6qT27ATzfXz32rox27VjLVI9xvIveCtsnQEDj0yr4OS
	J9yp+L1c8MFVPlM/y8NXgrm/BccdccZlHMw4p1UlqLMK97Z8Ix49kagCF+lccGc8buNJaDJ2GtG
	riGK12YKPbN8dIMb7bBbPb4A/aOkcArUbr7J8IqRS7lPcOohiWwwSQjaCRvLpe28V
X-Gm-Gg: ASbGnct1uldr+Ik1VjnjjIJEW7XlOruS6msjt/OSZQgW7dd/ybwK6ObHgVFyqHcG0NV
	IE4IUr6gbXtuPHLxRymzjXswD75ZXUv+3UOWZgDYCHFimq95mB8P2jzfC0vmpJCG6nxj//7RP6i
	ciWS4clXjkyKoOvTKS5l5g4sbXhlzSlK2XcKnFLsg/JhqDBCUOOupUkPqhTeTRL+B9kQ6W2yu3T
	Cszl4B5Rol5NcL25JyDUwTwukF5RjSET7FkIorckBAsDjex4GLtb/okY1qsYffdhBqiE5p90oj9
	yjhwN7qxcQ8raPYXiJfd9Edj6oBhjetKhLQi/Gpds7FqzfkJc7pxlfc/p3QoIK03WbyQoCArSF1
	B2YZx5c5kA0ge/yxtyot4FKADuCyIgjCxtxaXis9wXCJ2XD+EGKBIFs6TiOUXr8sW6JBynyBqsa
	WLfjWCe45PUNvtj5cQMw3otyA=
X-Received: by 2002:a05:6122:1d92:b0:557:c467:7994 with SMTP id 71dfb90a1353d-55e84610542mr3014382e0c.2.1765293250449;
        Tue, 09 Dec 2025 07:14:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbbWxeB4rnjgTq1ioAT9szYToVmyeTZMFP9zFTqVOEMCpo51BFim6bjryWjkLUilSbubj7WQ==
X-Received: by 2002:a05:6122:1d92:b0:557:c467:7994 with SMTP id 71dfb90a1353d-55e84610542mr3014369e0c.2.1765293249872;
        Tue, 09 Dec 2025 07:14:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2e9e9sm5288888e87.94.2025.12.09.07.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 07:14:09 -0800 (PST)
Date: Tue, 9 Dec 2025 17:14:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yingying Tang <yingying.tang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingweiz@qti.qualcomm.com,
        yijiyang@qti.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Add WLAN node for hamoa
 iot evk board
Message-ID: <gah6rlxl6morhezm5dyknb7dg2uaqdd2uk3y5cvzsznpywal7k@xzfxc3kuvds4>
References: <20251209115924.848165-1-yingying.tang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251209115924.848165-1-yingying.tang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QtlTHFyd c=1 sm=1 tr=0 ts=69383cc3 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=F_M07mZuuNwCdFhuFMUA:9 a=CjuIK1q_8ugA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: 9CKZ_pIBjS32v-Jyjl1GdNfsK4XSLovf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDExMiBTYWx0ZWRfX1bpCWfzihOxi
 3gCpLUPgmwobbUmViwNvGVvyfbSwypsbu7H3k3y8sSy2yX+1v/9RvplEd+haOlU7qsqRXJt85e7
 Y6M89yyWr6Zd4ADXqTDfR0rKD9xaH22I9HN+qRZ6Jy81Yg089/pKZJplESn/UTQMOWmCibdxBBS
 o3hO9NJcm7Db935zVrI2P71n3g5e+x1kAaeROeHesU50PCwT8In4qDG41EZXG4tYyBVNenH4wi1
 S8b6aqrAk97j+Yel9noc37bUPAua7OiRrXh91rRKUapGsuDKVW2qLOp7zKKIetHT8Svcr9gJkrl
 i8MoL+3djfkaDb6y7ejHz8EdLKCWwq7r4ihUYgNC+TV15G+3gqRkn5vNZ+8JVH86L7nywWTqYa/
 N40tjMstGK3rgAve1N8mUKpLNWLXTg==
X-Proofpoint-ORIG-GUID: 9CKZ_pIBjS32v-Jyjl1GdNfsK4XSLovf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 suspectscore=0
 adultscore=0 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090112

On Tue, Dec 09, 2025 at 07:59:24PM +0800, Yingying Tang wrote:
> WLAN card is connected to PCIe4 on hamoa iot evk board. Add WLAN node

IoT, EVK (the same applies to the subject).

> to support power sequence for this WLAN card.
> 
> Signed-off-by: Yingying Tang <yingying.tang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 26 +++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index 36dd6599402b..d66d337292ef 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -534,7 +534,7 @@ wcn7850-pmu {
>  		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
>  		wlan-enable-gpios = <&tlmm 117 GPIO_ACTIVE_HIGH>;
>  
> -		pinctrl-0 = <&wcn_bt_en>;
> +		pinctrl-0 = <&wcn_bt_en>, <&wcn_wlan_en>;

So, it was specified, but it wasn't a part of the pinctrl?

>  		pinctrl-names = "default";
>  
>  		regulators {
> @@ -844,6 +844,23 @@ &mdss_dp3_phy {
>  	status = "okay";
>  };
>  
> +&pcie4_port0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1107";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
> +		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> +		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> +	};
> +};
> +
>  &pcie6a {
>  	vddpe-3v3-supply = <&vreg_nvme>;
>  };
> @@ -1143,6 +1160,13 @@ wcn_bt_en: wcn-bt-en-state {
>  		bias-disable;
>  	};
>  
> +	wcn_wlan_en: wcn-wlan-en-state {
> +		pins = "gpio117";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
>  	wwan_sw_en: wwan-sw-en-state {
>  		pins = "gpio221";
>  		function = "gpio";
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

