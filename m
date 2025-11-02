Return-Path: <devicetree+bounces-234181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE69C29875
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 23:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 330B63468DA
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 22:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608E92236FD;
	Sun,  2 Nov 2025 22:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fDKimwy2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="czp78i7z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E0F1DE8AF
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 22:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762122100; cv=none; b=A/yP0zBrkzteBIN2YK24PLJdTwDhhiFQ6LPAr6fq905qEbcApiyc0wJTdizbIIXMIo/Ue/1VuBbf/AMC79jNIpz6LoeXbCFMri467e83tdrsz6w2x18RcafhL+izy1ENkUiTmO3JyEDfShaTM3BOawmYuSnodbETjZ1rgbFBXUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762122100; c=relaxed/simple;
	bh=gbVoUCYvZOZMTIY2Rtk2MuTaedqMcgW8WWB/h7K2CsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uk8mRfwRerlKKmcKhP4unb7hMZURLFcFvvcgGCL5pkcnlX+l4FqbXy9DpUNn6kn/3J2EaZ5Af+7ioa57GY9ZaaAiQZQDAz+kmRh53BVIB382zS510FKPbOWuD6VEaNUzncZ/v11yyQqgdc6XlqsLnpU3KF1SHAGK77mEYhZzGcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fDKimwy2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=czp78i7z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2KOiwh1054225
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 22:21:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Fy0+zB1zFcmNDPBHzfEZnFa8
	agZt/sFQo0/x5Ko7o68=; b=fDKimwy2eBdQWL3qZfpEPPgtkkMfxroO9fm5czNR
	Z4vkwatgq5iq9X2qfJL0bNDe2cnzUfGl9fZcnpjki6bMvkee9o5Q7fnR2vaFS8+V
	B5OWZTgy/9+mRIg1FHcTaC7iPdT+xV9yNbJh+28yqJZ2GZwsjdnowkuKXVrQeCuM
	9Edd09cghNSyCbdYyUOtFbcTMPjYiuXTlDGgszfFIxnnSYz07hAxJhq1lBPD0+TN
	1Ev8Cc/+A5YWXTMnZIaZdI2lob6OYMld9ebE8n+qQ6sMb4P2I1T9UdANZS7AePIb
	p+0apkQSA4XWuMPzxlUC2uxAL3QukEEb2ulViBBZTb0pCw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5bg9jmvs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 22:21:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-892637a3736so1275965185a.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 14:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762122097; x=1762726897; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Fy0+zB1zFcmNDPBHzfEZnFa8agZt/sFQo0/x5Ko7o68=;
        b=czp78i7zLFO6nbV15V5pF1ECraf3RO13Ic3Go/kEgn+FGu/kHf+WKgyx0thBowm0Uf
         8YXGdiOUzsGjR5VCeGXRmlTT1JWrmhmBFtBdetnIVmBepii2XQcypx/c1FPJwJ6ELXMy
         7CD+gnHF/1dc/BEGKS6ToEl6TNEHPvtMf2qymeIR9x4UjXqgH13USl9nv2/CQ1T0aHHN
         LYovirol+z+HBsRbl24SZVF2+8of05G6MIq6EJJi7olGGTR9CV6zLkfNQpA4ugCvQfNQ
         OQHzaqnBV0Iy74bzUPxGrROBTtn3YyyIGP9eK03ffcURHoEv70+JiUOsJSMAAymIAvVH
         z/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762122097; x=1762726897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fy0+zB1zFcmNDPBHzfEZnFa8agZt/sFQo0/x5Ko7o68=;
        b=b7heUCz7TV3Jaojt9HDKYoRIE/qSpgexmpM+hcho6urvQYQV0dyd/ufItEfkx1T+H4
         Kc8QtpCsDM6wWaVvaRCZSPQbS2YRt5SROmIMF86t+AbV7Psrq9nNFe6kjurzs6KvfbmM
         UKoRuJLd0XiB+IDg72Ap1NVAyajD1eLjFM/D2FKCG6N0Kn4TUHmogG9o8oU9AYgl10ri
         weiimZt4orKjf/2GFqE1v3iF7UcTPocVHjnPMacbNpnOqtwajdTCdBK0IlGakxnu8mfz
         QNtOAkiRCiFXjV1UbjpP6DFAZJ7OmT9/b0ZsZjcx7OqbDbcTfFsJ6dH5cEIqbhUev7bF
         DVhg==
X-Forwarded-Encrypted: i=1; AJvYcCXk8B5gFXjo+YiO5LsyPwxi/TalzayEZ5Q3hXUXaeGfAdKc0tL2qfp3dXtC5YNL33G+OAWCGs0RgFXm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxobjk2qNtmCeBaewXs3XMlbS2odS9/5wAxHcCnQgmgcqUA5Qzg
	42Fm1vTIr4WYYm4qb7oxaAY5Ojkb6vPUXsUITiAiMcZhl3LbeQFb8rTAvqlHyz/NFXi/zz9gD4N
	Qjg4TObNSab/nFvsc/VepPsrwM6+T0xUMeUs2yXFvS17iBI9Pb8DZ1PKJ7CVSIFvd
X-Gm-Gg: ASbGncuv0qSr/mLI53aTn0sqimxIhywgaZ/T/pjY4iWyV06luD4L/WGfMWKCWCc9hLU
	7u5Wf19sKDzDeGQvabYOnzg9aGmEq6eGkZbtLh4DmPCkeVfDG+MiDBy1e4ieneMWqM7p17SjaZT
	h84/tdXbvnBNLvCF/go4lJgLQSFgEaaLsjuQ910IDtuIiAMg8RCvI979CUP6KMQJpZPEej8M+Ix
	Xz/EwyrePMRZNVsB49a3K8vkEG5L/jGSgTFIiL1H6gJRdYp91AGpguywvhF4U3Ci/NKLcDd6d07
	Px94P/tH93pZ+9FWkLh4OV1Wdrg0HIJHbvGfRWjRPuudGmfDbfEXiahSDxqq5dHrwKWnL5+7YXJ
	Ihjh10cRNfxH7pXRIy3sT5UQSFvR8h5MLNN/nmUe2bvVmBoKiuFa0gYtY2ZbbwzUh49EqqBSZtZ
	DHRnqaESRchPjF
X-Received: by 2002:ac8:58c6:0:b0:4ec:f156:883d with SMTP id d75a77b69052e-4ed30f873a3mr150821691cf.43.1762122096621;
        Sun, 02 Nov 2025 14:21:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKSuBp5T5gQKe8Rxj77+3COdbWI4x8CvKxpNjeJKe55iGjnrgP/lpO6D3eNUdIWsNdHSe8Ig==
X-Received: by 2002:ac8:58c6:0:b0:4ec:f156:883d with SMTP id d75a77b69052e-4ed30f873a3mr150821431cf.43.1762122096189;
        Sun, 02 Nov 2025 14:21:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5942e83f33asm136383e87.49.2025.11.02.14.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 14:21:34 -0800 (PST)
Date: Mon, 3 Nov 2025 00:21:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: maud_spierings@hotmail.com
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 3/6] arm64: dts: qcom: x1e80100-vivobook-s15: enable
 ps8830 retimers
Message-ID: <vijkpvomiv3nonumyqoeut2k3ajftf7cafx56ngjlc3uuwqfcb@7o75sm3kh36d>
References: <20251101-asus_usbc_dp-v1-0-9fd4eb9935e8@hotmail.com>
 <20251101-asus_usbc_dp-v1-3-9fd4eb9935e8@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251101-asus_usbc_dp-v1-3-9fd4eb9935e8@hotmail.com>
X-Proofpoint-ORIG-GUID: PQBiCgKEGgbyXAdUcilKZ4UmYIe8o0gU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDIwNyBTYWx0ZWRfX5aa7Jac4dsFe
 SPG7z7mGU2H/Lz1eQLBAGYwmYnFDUx8IXkvLvUpcoXnsE6QD2a340P6GFLelxJronLeR9JxZb7F
 MQ1gdo9za53+bWyg5y9GTmEosEx9+t45caC4BeXqTt3VD126oaSEEzzzNxdotDJ9Mjg5HVqsRL1
 Vh01mTsDrtLgh5H1vEVWQv3fooSYjNAzWcjLI5wsCfY/9JZwucy0lCxymsU1d/yvSglRL5xeFbL
 YvXdrSjJS/Wl5K0Vk2mWRGdEPv2dMD1+Oh9BXwsxRmBAniA9q/Gm8qCZJP/o0k5kjP7wNJ2I7Ru
 t7eoZ98pumMEOflOlJj5Me802w5a6Zn4m8/I2KBpmVEIOClZnVN9iEYmbpao9/9VblERnc3wS4O
 UpR5eMp4LGROKVlxz3dKPb1NlXaHNg==
X-Proofpoint-GUID: PQBiCgKEGgbyXAdUcilKZ4UmYIe8o0gU
X-Authority-Analysis: v=2.4 cv=TaKbdBQh c=1 sm=1 tr=0 ts=6907d971 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=69EAbJreAAAA:8 a=pijrH-o4oxMIDQe8xl8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020207

On Sat, Nov 01, 2025 at 01:54:14PM +0100, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> The Asus vivobook s15 has two usb type c ports on the left side, these
> use parade ps8830 retimers like the others, enable them to also enable
> dp altmode
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  .../boot/dts/qcom/x1e80100-asus-vivobook-s15.dts   | 310 ++++++++++++++++++++-
>  1 file changed, 302 insertions(+), 8 deletions(-)
> 
> @@ -158,6 +174,102 @@ vph_pwr: regulator-vph-pwr {
>  		regulator-boot-on;
>  	};
>  
> +	vreg_rtmr0_1p15: regulator-rtmr0-1p15 {

'vph-pwr' > 'rtmr0'

> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_RTMR0_1P15";
> +		regulator-min-microvolt = <1150000>;
> +		regulator-max-microvolt = <1150000>;
> +
> +		gpio = <&pmc8380_5_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&usb0_pwr_1p15_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_rtmr0_1p8: regulator-rtmr0-1p8 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_RTMR0_1P8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +
> +		gpio = <&pm8550ve_9_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&usb0_1p8_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_rtmr0_3p3: regulator-rtmr0-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_RTMR0_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pm8550_gpios 11 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&usb0_3p3_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_rtmr1_1p15: regulator-rtmr1-1p15 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_RTMR1_1P15";
> +		regulator-min-microvolt = <1150000>;
> +		regulator-max-microvolt = <1150000>;
> +
> +		gpio = <&tlmm 188 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&usb1_pwr_1p15_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_rtmr1_1p8: regulator-rtmr1-1p8 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_RTMR1_1P8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +
> +		gpio = <&tlmm 175 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&usb1_pwr_1p8_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_rtmr1_3p3: regulator-rtmr1-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_RTMR1_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 186 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&usb1_pwr_3p3_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
>  	/*
>  	 * TODO: These two regulators are actually part of the removable M.2
>  	 * card and not the CRD mainboard. Need to describe this differently.
> @@ -506,15 +618,62 @@ touchpad@15 {
>  &i2c1 {
>  	clock-frequency = <400000>;
>  	status = "okay";
> -
> -	/* PS8830 USB4 Retimer? @ 0x8 */

No retimer on this bus?

>  };
>  

-- 
With best wishes
Dmitry

