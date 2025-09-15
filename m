Return-Path: <devicetree+bounces-217103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 044B0B56D45
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EB47189A84B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5FC18DF9D;
	Mon, 15 Sep 2025 00:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BOcuaZRQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4412817A303
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757895867; cv=none; b=oFVeCXJBNZB91QaROpg+zPSarjKscvC6q7lv2ppm+zriZWECGL61fIvtkUjfrJtCHJlMeHJBrPlkpC5C3tNHGG9KtiWmhrphjU8yl68aDaFFXxP+7MmyDh9saAshvPwVqx1XVodkIY3WATf1ZAYvgX1gYbgSwhn/CbsbPvyKbMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757895867; c=relaxed/simple;
	bh=0epiH+ZUeSEq8mP5kNV4sAk3iUKmeY22ZVuiXrAkj2s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=scoAEEYouVN+HQIxcE1RiYC8xWC7y2IqESiRjgZiT6s6frCJCnDmMYKlpoC9kbGqfIQnxI3ECRSkW5t/Y/u8wTzu7bxKxGs9D741azK+ZFQGAINMF3VSrMf2je6XE+TEoN/XU3Ma/G+87XSZWXAYMZfR4nXUou45eas8XTrdJxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BOcuaZRQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EMHlki011977
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:24:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IG+hMnPtyAGIv4I4PIBvRlIW
	ppKBCjAv+yzEIrR7LpU=; b=BOcuaZRQbvACb1eDyTqX7+TOiNJB6GaRmsXyMCo7
	VFge5X4g4USsAayS7xq1d9fR9k/3TPwZKqwaeJ8hojKc7mGc9qnDAlsLHaq7PsjX
	gtjwxpBRlJX/wPJdZaKMm5c7w+F+gxr/hAGf7wG1IPI5X8nUxNE6h6lJNh3+AbKr
	QZLJTuxeRlWMmR47Z+E7scLK/60vGBMRk3uT8g5RbLu8JJ2cpf7XFQn4JsYBgcw+
	trPe3YipB1i4rIrSaVtAbiM4Xycr9CqdZZwN55w/rshaidhY3iITeWpdVmoDbu0Z
	Z5ndkC2G/jOyE8ODP8lBphgZOmkUMnbW2NLUo86xn3mEUg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chawg7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:24:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b31bea5896so44199851cf.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:24:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757895864; x=1758500664;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IG+hMnPtyAGIv4I4PIBvRlIWppKBCjAv+yzEIrR7LpU=;
        b=AkbXk8l13s/qmc5i9zXG203TSFyrK1whxsPh00KvPC8d530B/c5qRecdbf+occE0yx
         Jwm1e7Eq64a1yvLcdvy7ijAEHxAtP2/c3NkM0XMugufC1k3B8VBee3PP7cDgck5c2JYa
         CXpILlsH6J0t/2HEWUNSbd6COHl7k4Q+TPgtpo50hPkWTWbKefCvaNdu3oQMTluLPt+l
         IhssY+r2hNsz5/NloqDDhU7RGCkF61sMZoXqYZQBnhYTwD4LG03qcpouF6VNQ7hNCb/l
         YeiAggIBtOOA4SQj17wvWQsmeX2/PQslBbPqtcDmyd5DxbiKxsPCcjcXElhozZcFxAJ6
         h4TQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzHEtiWiQQiF4rKMwDeo2xcJ5r3loOtWXfiDCYTsF9J/lVyb43UWa5L1e9w/7almV291py+nVjAoc7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe6SZCtGOeCWZATA8B+CC17Ch49jv9dw4AWidV1k3D0Xzjr+7h
	HYI0l70FqlInILzTojfAUuYmc8xlIs5YegaCiHGgfgON2Zv1JoMUV8CLlljgPFcf+Wr3MJPWqES
	Vq2ngx7Fw6ucktU8lDdAMy6iA7ezlatgyCKP0+zzv5nu2YeNv3i06yxbxrac0YlRJ
X-Gm-Gg: ASbGncvN0Q/421/MDjNSOkwN/GLW72JP4+XDocJqJ+0BSuaO2ckik4qXzdHC+QnooJT
	FHXCpoJEB9lb5f/aZcuCbwH5oYn2V5Moo1ZWI1rrDXWpHdXsWrBzbd9nyXIAlyAJUAdxB3tFsbO
	CfBgyT3/pQ9wA4nKql/EjIqAIXMkWH1uoyyCBtYbrLcbUByv3LPZFD3qhPb75hzucqzXuY2bJdz
	pLYhUb+rQwMtG3CZ0FuESSxmzSyqfnTO9IuyBtj4gd0/t6OOFyT2zrL+lIGHOPRukmncWnbD5Jb
	iS4ONuD/YXi49bbw9bp/b8h9GVs5Bg1OA0Va6f0uf+cKEnVqwZRaOovFDzqoZ8tO17RhFakzWsk
	S/O2LGsFy2V6+/F/kB6jca8B4SloKC6dP0RbTz2Ts9QTE587Q2ARy
X-Received: by 2002:a05:622a:17cc:b0:4b5:781c:8831 with SMTP id d75a77b69052e-4b77d0d3eacmr164532241cf.71.1757895864160;
        Sun, 14 Sep 2025 17:24:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNufp6n5tz6J7IlL87sSDiBq4UKUZByx3l9TL3yWz4Gw+csNkqBiMMNU7vjpQBYjLOd+YYYg==
X-Received: by 2002:a05:622a:17cc:b0:4b5:781c:8831 with SMTP id d75a77b69052e-4b77d0d3eacmr164532021cf.71.1757895863612;
        Sun, 14 Sep 2025 17:24:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571ed15f835sm1871151e87.120.2025.09.14.17.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:24:22 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:24:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH 03/11] arm64: dts: qcom: sdm845-lg-common: Add leds
Message-ID: <k7igqiimspo5a3wogk2yev7ugqrucnfvxkrga6idfiwnuugtdv@nfy6fgk72kfq>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-3-23b4b7790dce@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-judyln-dts-v1-3-23b4b7790dce@postmarketos.org>
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c75cb9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=sfOm8-O8AAAA:8 a=Gbw9aFdXAAAA:8 a=jDiey5z7ze4iCIxy3qgA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TvTJqdcANYtsRzA46cdi:22
 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: 43NxvCuvvUZXNv4Y5oRUc_ItmoHoi__t
X-Proofpoint-GUID: 43NxvCuvvUZXNv4Y5oRUc_ItmoHoi__t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX6p8nhSXQWy8l
 hzcbEgQ2I2cPi0XJqxM8mbNZf+8ZP+xE7xbqMHR1kKjuYPmoBZvWL6a35B93boERH2AWXyIPc0g
 ksYOPkF+sLqvHaOy3I9lRC/nSs3kdNP9z4GwS0lNTMN9CEgrz+HR6aE2AICu2Hb8v4Kj/0ZxTsh
 7ItDAFITcX8e21842DJ8N4IT2N0MStl0Mj9qDDLqO3sMOfAoMnysmAxaKz4Ygf08giNkBR1UcHn
 JXRGW9dDJWS05iWeZXthXehufgF9H3tKrSA6O1i4EVA9KiJ4lVqhT70AQFas/ZMbTfenJ2WSDjz
 Ynerh4vRm6K9ARujNKv4twliYyAZ3x9gEcmnAJiBcDndkN6E2kBtu2XV0yAfI9i+dSk9oo2oWbp
 p6m/55nh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036

On Sat, Sep 13, 2025 at 04:56:36PM -0700, Paul Sajna wrote:
> Add the multicolor status led in the phone's notch
> 
> Co-authored-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index 1acc418b943443f3ba4f8a8a1cfe2c575da11876..d6129ce03f537f0c8c78c2ae5f39be6146cab7dc 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -6,6 +6,7 @@
>   */
>  
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
> @@ -603,6 +604,31 @@ vol_up_pin_a: vol-up-active-state {
>  	};
>  };
>  
> +&pmi8998_lpg {
> +	status = "okay";

This should be described as a multi-led. See msm8998-sony-xperia-yoshino
for an example.

> +
> +	led@0 {
> +		label = "blue";
> +		reg = <3>;
> +		color = <LED_COLOR_ID_BLUE>;
> +		default-state = "off";
> +	};
> +
> +	led@1 {
> +		label = "green";
> +		reg = <4>;
> +		color = <LED_COLOR_ID_GREEN>;
> +		default-state = "off";
> +	};
> +
> +	led@2 {
> +		label = "red";
> +		reg = <5>;
> +		color = <LED_COLOR_ID_RED>;
> +		default-state = "off";
> +	};
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

