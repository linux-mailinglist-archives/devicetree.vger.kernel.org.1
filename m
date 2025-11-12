Return-Path: <devicetree+bounces-237701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5248DC5314A
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EA4BF506998
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4969350287;
	Wed, 12 Nov 2025 15:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OdIZWY56";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iAi1aot/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EF234FF6F
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762959753; cv=none; b=MP3yj3IOkpZv7EYdiSwtc6G/RLeLHq7Zqa0RkPsVTJrz8d20zSlyD2KsF4yuPuPAuAHMS7haiAZzzu7trC889cyqivocXpFavQ4NU8IyyPB3E+HJn6SSv80jPuXm130MA1pQeVgDSVB2YEbf1cyDHAKBauxKVb9pkgvAPhNI0Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762959753; c=relaxed/simple;
	bh=CfT77znIg9qdeT1Z4VjNAk8vqIo08d7ivaszU8MXIws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ebPSVdRQwLSRk2RGV2Dy02oC0SIcVh1X3U5Zg5Da8DvxOtU24H5FmHuAEWzh4KPXTFDwXdoKnHvuaM4BKP8K+BtQPUMVOIPpnfOTrNB3bfXRBa++75Gb+CYmmvSBJu7BlGzHz638z5Qxvj393T9ewUQHNZkeBLPB9hh3i5igVRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OdIZWY56; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iAi1aot/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACE2w9w1269959
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:02:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9PwAEKpczd8XRoN6RgeDHwaN
	B5Dd8dXsbN63rEAf4lU=; b=OdIZWY56RLFypMiDBZMb8JTFBEG9ggXGawUiuOw1
	6vYu90286O9tCJTuf0jGZJ2VH/j7/2+GiSPSlyTm6/WKy2nU8HlUpv+1o2NsV3qU
	L7aj/GPnCo1lucGgMeVfRoO961pWqGkm/wRT/jZMfV/94j6vlLtwqeLFBNNrfF6W
	9cMC8x9MxqojE8BNmoDRnT+FIi6sJ4oStSMPPH1ykBXXFGvlf90QZSETL+7Fds1r
	JuJAKONXGgkJ7/+aDjVuop0b/Eiy6IeCLCPSMRoQusN/eYB4rWqayLjti1kS33Yg
	f1K9mM8JkjC9JIVJDyDMKkADlc8FQhgxruTN0Awa44u2LA==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acunm065k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:02:31 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dde32b5498so653346137.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762959750; x=1763564550; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9PwAEKpczd8XRoN6RgeDHwaNB5Dd8dXsbN63rEAf4lU=;
        b=iAi1aot/1F8MPbh7aF4zN/PydA1sW+64zWpjsKAKrT4bKgjs04PUw9e95B8eQgydSe
         Ez2H6ixbv5JuH/p4EHGibTcJl2Ih9KOQdot+MDpxO+2kDRunA45eDfpX0ZAPnlXi46pi
         1Kwq5PWd6TymiBH+8Cvfy1jIlKFvCInWvUq/L+cTR4zhjtyJeIcP1uKoaouE2YGjWIYO
         8eEpqdC8CBZO1wL+U9xDGd5T7JAT+VSAsE2Ug9SLFOuGR72NmgrYAGua/l2iw1qECNts
         ISok/d9FQickY2/pUEXo8G70jfPr+YegnVyLaUf4hPVy0IYIXvaRQqm+xZdWsjNh1QLa
         WDow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762959750; x=1763564550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9PwAEKpczd8XRoN6RgeDHwaNB5Dd8dXsbN63rEAf4lU=;
        b=QRF/Fnhs+mVuebFGwaADZphHna1T1fnWiUPaHKCXMP59s5l54BjJ40esA3ye1zAk9H
         n32q6Dh7p0wOFAfGbemNnh/4GwQA0Og9sMS/v1xdn1kPp5bFetpkFcPzcG95h741bW4v
         IeuVqUe7fsD8X3fy1ZNOc/RaUCj06wInn4j6QW9gGEZwi5nweL9jNDo/udShSaBbbI9K
         CVZtAh0L1M4ygnPC/1GUsLtSEQRm81vHJu67Oo3O2iGYX5vS0d1XDtwpp22LbAxUb/FR
         2X0RCQkXOLdLZRN2pA7XO0CmPe89pSbY4f8cDxS69rn1T7Y5bRILZxCQmVqNvQd38KDn
         ckFw==
X-Forwarded-Encrypted: i=1; AJvYcCXm3bjhfsV+oYftZIZIYSsUwmKzkzQ3EzpWth4qwEeP+84pf2uPmvlaiIGo93WZxukJulze4Q/gmh7f@vger.kernel.org
X-Gm-Message-State: AOJu0YySW3bWd1ARB/WSzZUdgzapuDMQdYSO6H2U+pvS8QUuHfADXi+I
	XYXRYDx0/w7t3TRgGWTFczkPeqW0aej54rusogcyAlXopoQibdS7N7POz9vsurnf+nYG1daBfc1
	x0Xk0QLtbVKfKyLW+6onkUWJ/DNg3kcqDHQAc6Gt5yXEdTrGdB4i5C/4uplmAXVLB
X-Gm-Gg: ASbGncvMchC4SaTbC/jKf1yTCU7tb9UXgD+DFmlherOrgnkoyBzTy/ricYJKhrOH9P5
	b2ykstK6VesHf12VyMKHT0orLl8IhmgWuwgNqg08CATktgEOr7daS50T2MJ4w2z9BC5JrtpMf/8
	BPgxzYy7NzSvATh53m16kSvmW85rCBxRdI9+0Djt6tSoMyGeXd3cOcCz0jQu7d05dmny+whJRwL
	3m0RxBrFPF4Glqs2hDVpTRSCf1rPwpUN1UWtXBTucGzlqrp1wrL0jVnPbBdqf4tkKRzbVDIzZcD
	YJe4xruw88icw7ZrwhKrwqfKJms8wtMqFyVNXnNwlWyOg8mN9DzO5luf/6MfCJLEglyn2T7e4jH
	+p0XsYDWAYcrlD6dgpMk88zrhXPDYJ2sJTWCfTzwT0ds0pwy8nMwSbSfO2ca2vq8jOxVHFfEqd2
	Ep76ZbZ2+kyvz0
X-Received: by 2002:a05:6102:1621:b0:5db:d91a:ff38 with SMTP id ada2fe7eead31-5de07e29c50mr957350137.23.1762959746987;
        Wed, 12 Nov 2025 07:02:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFje5CR/7zyERYG2PUvXBh2UoOiDNi3xoVPPlazkQeKcFFMRcCIpeMZ6qUlePdrr38PAGnB4Q==
X-Received: by 2002:a05:6102:1621:b0:5db:d91a:ff38 with SMTP id ada2fe7eead31-5de07e29c50mr956797137.23.1762959743942;
        Wed, 12 Nov 2025 07:02:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5957b2ab3f4sm615018e87.89.2025.11.12.07.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 07:02:23 -0800 (PST)
Date: Wed, 12 Nov 2025 17:02:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01 for
 rb3gen2 industrial mezzanine
Message-ID: <kosvayxmpbngn56v7t734f4qqrc2rptkjdd7q5q23brg22dvov@cxs7kzzuapim>
References: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-0-6eab844ec3ac@oss.qualcomm.com>
 <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-1-6eab844ec3ac@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-1-6eab844ec3ac@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDEyMiBTYWx0ZWRfX1wcJ1U03hB0V
 GUW16U9lmUPuQwFfPvp7Yg0BuVfz2cZSchRDesbFwT45DDMs+f/MGrIrCzy62BwRMuY03R2FAbz
 JtZbU2e82in3c1mL7DkgkmogxFMeQrzyPOmVAMEu9weZGRyCcf2D9DJ/ISim/lMTO6LInLenOPL
 baZETnadYhsxs4MCJiFcxq8W8fXuIA9M0feK+x8vAo0fiWid2muDoI5FN6KwUTQvdCI1Z5hJIW7
 qFi+JNTLwEBt6v9/MsIGaherHAOFJL9v+QMP02i6FWDjkdCfTU8BJnAuimFkhvQYgaAfGWlsyhN
 pNtno2sau92xsIzKhbyyy5jmaUxvvhtZmDkoGu+1HOqUvh6Bk/Ck8nkwQG8Cfvs8sXD+xQ1o6Yq
 NTS7zX7ABJ4nbBAYmzmWQtgIncYXmw==
X-Authority-Analysis: v=2.4 cv=aLv9aL9m c=1 sm=1 tr=0 ts=6914a187 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dL66UOUvONAFlYJuld8A:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-ORIG-GUID: LzX5WbxmIJ9iyIDvPW0sDR7_H52Ykm9P
X-Proofpoint-GUID: LzX5WbxmIJ9iyIDvPW0sDR7_H52Ykm9P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_04,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120122

On Wed, Nov 12, 2025 at 08:18:11PM +0530, Gopi Botlagunta wrote:
> Below is the routing diagram of dsi lanes from qcs6490 soc to
> mezzanine.
> 
> DSI0 --> SW1403.4 --> LT9611uxc --> hdmi port
>                  |
>                   --> SW2700.1 --> dsi connector
>                               |
>                                --> LT9211c --> LVDS connector
> 
> Disable hdmi connector for industrial mezzanine and enable
> LT9211c bridge and lvds panel node.
> LT9211c is powered by default with reset gpio connected to 117.
> 
> Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> ---
>  .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 106 +++++++++++++++++++++
>  1 file changed, 106 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> index 619a42b5ef48..cc8ee1643167 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> @@ -8,6 +8,112 @@
>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  
> +/ {
> +
> +	hdmi-connector {
> +		status = "disabled";
> +	};
> +
> +	panel_lvds: panel-lvds@0 {
> +		compatible = "panel-lvds";

Please describe the actual panel using compatible, etc. It's not that
this is some generic uknown LVDS panel.

> +		data-mapping = "vesa-24";
> +		width-mm = <476>;
> +		height-mm = <268>;
> +
> +		status = "okay";
> +
> +		panel-timing {
> +			clock-frequency = <148500000>;
> +			hactive = <1920>;
> +			vactive = <1080>;
> +			hfront-porch = <88>;
> +			hback-porch = <148>;
> +			hsync-len = <44>;
> +			vfront-porch = <4>;
> +			vback-porch = <36>;
> +			vsync-len = <5>;
> +			de-active = <1>;
> +		};
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				dual-lvds-odd-pixels;

Add one empty line between properties and subnodes. Drop empty line
between reg and dual-foo-pixels.

> +				panel_in_lvds_odd: endpoint {
> +					remote-endpoint = <&lt9211c_out_odd>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				dual-lvds-even-pixels;
> +				panel_in_lvds_even: endpoint {
> +					remote-endpoint = <&lt9211c_out_even>;
> +				};
> +
> +			};
> +		};
> +	};
> +
> +};
> +
> +&i2c1 {
> +	status = "okay";

No clock-frequency?

> +
> +	lvds_bridge: lvds-bridge@29 {
> +		compatible = "lontium,lt9211c";

Not supported in mainline and not described as a dependency in the cover
letter.

> +		reg = <0x29>;
> +		reset-gpios = <&tlmm 117 1>;

Use GPIO_ACTIVE_foo

> +
> +		status = "okay";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				lt9211c_in: endpoint {
> +					data-lanes = <0 1 2 3>;
> +					remote-endpoint = <&mdss_dsi0_out>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +
> +				lt9211c_out_odd: endpoint {
> +					remote-endpoint = <&panel_in_lvds_odd>;
> +				};
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +
> +				lt9211c_out_even: endpoint {
> +					remote-endpoint = <&panel_in_lvds_even>;
> +				};
> +			};
> +		};
> +	};
> +
> +
> +};
> +
> +&lt9611_codec {
> +	status = "disabled";
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&lt9211c_in>;
> +};
> +
>  &spi11 {
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

