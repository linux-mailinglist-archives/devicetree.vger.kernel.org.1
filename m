Return-Path: <devicetree+bounces-273115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0N2TJ2Yvr2lzPQIAu9opvQ
	(envelope-from <devicetree+bounces-273115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:36:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD4A240EB5
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E8C70306BE02
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE10336A02F;
	Mon,  9 Mar 2026 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ijo7Qj+z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WJyGUBPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2F736655A
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088463; cv=none; b=GZ+YxgzDZc1unU3nQBg2AVIWcS053SZE3/joP9Qh+GrsvPITgm72kWV7YYf9BMWwkkLQfoOqzCG+2tUaQBaXO8Cj8hYbOHPZQtn/QnM08jd3+C4Tg/Xyyn6eduL1z7Ri7RwBJDbuTdAqmUKsCd6442JfQr9lPaIpDws9Jr4MGT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088463; c=relaxed/simple;
	bh=Gfh40nFIc1xbRD/JUSB3S/Qzs9+tS8XAdm/Iqkz+S3Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P5/E1/yS4p65GVYAgy/YG5XGYLvaBJ1bY51coJyZsGAwm6uE6smILFjHRB1t+AWlvh7ugK83KXmfXYLwXmTjTMXEfIAbTdWwAxU07qm4h4lOTde/QjP2FsY8Em6NsBBs4ynrMR7zyVD/R8iP26Qsz18gbt84RrtkIEOqtE7s+IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ijo7Qj+z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WJyGUBPZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBlU4296216
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:34:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=e22jJVs5Vi/WQJ4HEx3MO2Y1
	yTgEvou+OrZknzwHnMY=; b=ijo7Qj+zl6EPKfc6W2JOOYJRYyp278aj5dEoiD+g
	wo68l/XRIIANJZPxqJ7TGE4aBCoyOnrEbfBWVNT+3R5BVsPamM2tOqAU43EUeAOd
	eXEugHxwmWxNiCbfOzIlexN+JybM7iFtGXgnVlGDMVQCerJd3Z0fr+yoTi2GZiXc
	ZQTHbFg0BWDXkX7n8bywY48HUInQAvkpm9+S59WgCVxxS8eRjpJvuYzkk5Q653NF
	r6LWPyVOYeBk4Gez2eDOvUaXdqFe9g9cV7NJYbHXdQEv1NznrukbiL2ipg0ylO4+
	EEpuELkAtXspTrlnJwxHAB6VEYZgX7mf3PKON+5ffBWuvg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyfy1dfr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:34:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd820c6a4fso1489409785a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088460; x=1773693260; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e22jJVs5Vi/WQJ4HEx3MO2Y1yTgEvou+OrZknzwHnMY=;
        b=WJyGUBPZxhk/HFM9OwjSkP3BgYjxZ8lA2WWrd2UZyEW3yf14Gz1uTaUHy08L2WBFGB
         ZNpzEjGdTEtSqjJCrK0IIfoM6oEIar0gHvCpg9I8qd4FT+KcSbRGuJVT+TcaiS0W9/oe
         ulRZIgo0vHjw7cm0hvRhfFPLAZCmlMI+Z4iu3w5f7N+EhPTE3gwyYpoH/6zZBAKEkk+f
         XBSLtQvQWNY0Qy0uN2wv7x+FpM9XEI4TWRZ8NM1Ipx4BT6H3ADw4Q6i5Bi18vih4iGBW
         Uw+GClujph3gOj4qvupiH0bnFWFKgP2fejjBI+NXjtJjzLQ8/jJi1We5ixSdtXtrrLi4
         agTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088460; x=1773693260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e22jJVs5Vi/WQJ4HEx3MO2Y1yTgEvou+OrZknzwHnMY=;
        b=pYkUHhM8AdLxRYhKeK7qymj3K/ucJxV5/tgKlJkuhgcHYFrhIf93RJMLHAmsMDJr+c
         trfOT6uGJLOrAsBaYgtLHh+jkNd8gsW68/PuZrfaKVnWpArhGY076q+G2ipudinvv/iH
         rY0Df9m8xs0yclabJHSNOyPxNj4t6CTftKoEZQPn18HLQXjoaOzwQTxdWe20mApXSWFX
         GpF5DRoUTd7GuXfP1XEyoDwTBYvT33HHSb43Ig9Zn4nFmGX1qymY1+jciyVivTQs9YMi
         bXPg89ky+fKUdMYWDpqEnPu9u8KsAO3Jgsng5jh0yXLL81rM6WTL3dNvO+bda0rcpx7x
         FGOg==
X-Forwarded-Encrypted: i=1; AJvYcCVknz0jAnz/mUgHaAPl5+qy2bjNwqE7YDAQXCyfOySXTTNWbvnRpvg+JQIrW4PRy7HAQXBmxjYWHaQY@vger.kernel.org
X-Gm-Message-State: AOJu0YxhKxQxk3OB1sd4NIgODjduB05sRxEmjpcbgG+XMgxGxZRm+x+/
	Ed/HhfH4GpWvfnZ9qxySvWLLBCOJonaQ1Gmi67nvkQ6bUbBBRM6EIPF1wuhwo16VQ5VVTCgpJE+
	5NsJM35/NwgDltE9fKfAEZBbmF9ewni/SHyKG+E8tzM2C7PWuZf8pw9TB8MFrLNiH
X-Gm-Gg: ATEYQzwyYF0GATUCz2t1d6RJJ0d/nDJCLv8AkPxaQAJk4ujjOk+mExlK/hEenDfZyd8
	OHJocC4aI2hX+W6oye1her0mB1FiyUOcIijRB42dIQearADtApxg4zKVhzHH7iOVp2UoA+6+3Jc
	enplrFn9BpKusst5eqDGUJ99llR2W/5H6q3/wSaxcdKf2cwnJG9KfZf++jlOsO5ER3z3lCQNr0z
	vd/yuqivmkTVS0GFfonRNL9TybCbzRdbRZFi7bMF4NPhSaEdIPs22ErXRcMoHHs0cbZ2CI0tAuf
	7h6byvURP9AGEZZoct6Q8EJPBKLhQtfVxPCD828pejUJhZujQgUolzGoGid+DNK7phgfSdGZB6T
	527amMd4CaE9dcwniPS6dYWmxhSmhQlVNPKMEjgwwIdMuSn09vBEJHkBgmM05bCW2HzoYASZtek
	XZ7SM85lOAYkNoYpiRxfbEiG9yOFKejxSI7Fc=
X-Received: by 2002:a05:620a:2995:b0:8cd:83d2:cad7 with SMTP id af79cd13be357-8cd83d2ce1amr722141085a.33.1773088460037;
        Mon, 09 Mar 2026 13:34:20 -0700 (PDT)
X-Received: by 2002:a05:620a:2995:b0:8cd:83d2:cad7 with SMTP id af79cd13be357-8cd83d2ce1amr722137985a.33.1773088459504;
        Mon, 09 Mar 2026 13:34:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d01cd7fsm2327867e87.19.2026.03.09.13.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:34:17 -0700 (PDT)
Date: Mon, 9 Mar 2026 22:34:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexander Koskovich <AKoskovich@pm.me>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8250-asus-obiwan: Add ASUS ROG
 Phone 3
Message-ID: <pu56z7dorbujx57yzfclcncrj4zwgtv3gshntnlpxcpbunxsiz@2rckwcyjgetg>
References: <20260308-sm8250-asus-obiwan-v1-0-3c72941eb796@pm.me>
 <20260308-sm8250-asus-obiwan-v1-3-3c72941eb796@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-sm8250-asus-obiwan-v1-3-3c72941eb796@pm.me>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX0ff2R9rK9twU
 eCEsH7uF9JWttx8zwD8XLxHEIlrKCS/fsPRuXdBQcQIH0I8RCyBSe+fzHRplslfLUPCe4yUrABT
 WAr+bqp6RqtouKlmd9XcD6m3YS9Vcp+9IljnLyjSswk/iN+OhYT3XhX3ud1D//ZTVVnngenf4qq
 J9kPrIhAlET6yRf4OQzpoqaFma+jfhajnfwr60Q5NZCYfe844cqNldhldHtCDkZxxEwp8SFAz9o
 ntpSH3vB3Q6Y5Xld5Dda+YV+BaD68Bx4MWfD1Semct05OkzwLMcHOTKGP4bvvo1pSsXh0v9Q4dM
 QFtnaTV/fRMnrw7aC+Woe3IfXIRU24iqfZEni51n4WmB8Rk+vxsB696LrBS9h2Nq1zqcFyJCx/J
 XR/8Vv0crD0ojxnfuwV8YZHGsfwC2dXBUh+Wzx9pD48JB1GIXO8YTD16GSRSSQYl191wE+IhTiF
 9eKagqtSdW4HjsVrx9Q==
X-Authority-Analysis: v=2.4 cv=OcmVzxTY c=1 sm=1 tr=0 ts=69af2ecd cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=7y0UcImRt_ijhTAU5DAA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: BUPpGN5nWilk3L83TVeeoUho10eKIgUi
X-Proofpoint-ORIG-GUID: BUPpGN5nWilk3L83TVeeoUho10eKIgUi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: 5CD4A240EB5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273115-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 08:40:44PM +0000, Alexander Koskovich wrote:
> Supported functionality as of this initial submission:
> * Armor Case & Dock Hall Sensors
> * Camera flash/torch LED
> * Display (Tianma TA066VVHM03)
> * DisplayPort Alt Mode
> * Macro Camera (OV8856)
> * GPU (Adreno 650)
> * NFC (NXP PN553)
> * Power Button, Volume Keys
> * Regulators
> * Remoteprocs (ADSP, CDSP, SLPI)
> * UFS
> * USB
> * Video Codec (Venus)
> * Wi-Fi / Bluetooth (QCA6390)
> 
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---
>  arch/arm64/boot/dts/qcom/Makefile               |    1 +
>  arch/arm64/boot/dts/qcom/sm8250-asus-obiwan.dts | 1328 +++++++++++++++++++++++
>  2 files changed, 1329 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e8..cca71c3884f6 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -307,6 +307,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-microsoft-surface-duo.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-sony-xperia-kumano-bahamut.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-sony-xperia-kumano-griffin.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-asus-obiwan.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-hdk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-samsung-r8q.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-asus-obiwan.dts b/arch/arm64/boot/dts/qcom/sm8250-asus-obiwan.dts
> new file mode 100644
> index 000000000000..e414e36e859a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8250-asus-obiwan.dts
> @@ -0,0 +1,1328 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/arm/qcom,ids.h>
> +#include <dt-bindings/clock/qcom,camcc-sm8250.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +#include "sm8250.dtsi"
> +#include "pm8150.dtsi" /* PM8250 */
> +#include "pm8150b.dtsi"
> +#include "pm8150l.dtsi"
> +
> +/delete-node/ &reserved_memory;

It's a nice approach, but typically boards just delete reserved memory
nodes one by one. There might be other reservables...

> +
> +/ {
> +	model = "ASUS ROG Phone 3";
> +	compatible = "asus,obiwan", "qcom,sm8250";
> +	chassis-type = "handset";
> +	qcom,board-id = <40 0>;
> +	qcom,msm-id = <QCOM_ID_SM8250 0x20001>;
> +
> +	aliases {
> +		serial0 = &uart12;
> +		serial1 = &uart6;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	battery: battery {
> +		compatible = "simple-battery";
> +		voltage-min-design-microvolt = <3400000>;
> +		voltage-max-design-microvolt = <4360000>;
> +		charge-full-design-microamp-hours = <5800000>;
> +		charge-term-current-microamp = <200000>;
> +		constant-charge-current-max-microamp = <2750000>;
> +		constant-charge-voltage-max-microvolt = <4360000>;
> +	};
> +
> +	gpio_keys: gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-0 = <&volume_up_default>, <&hall_sensors_default>;
> +		pinctrl-names = "default";
> +
> +		event-hall-sensor-case {
> +			label = "Hall Effect Sensor (Armor Case)";
> +			gpios = <&tlmm 113 GPIO_ACTIVE_LOW>;
> +			linux,input-type = <EV_SW>;
> +			linux,code = <SW_MACHINE_COVER>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +
> +		event-hall-sensor-dock {
> +			label = "Hall Effect Sensor (Dock)";
> +			gpios = <&tlmm 121 GPIO_ACTIVE_LOW>;
> +			linux,input-type = <EV_SW>;
> +			linux,code = <SW_DOCK>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +
> +		key-vol-up {
> +			label = "Volume Up";
> +			gpios = <&pm8150_gpios 6 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +			debounce-interval = <15>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +	};
> +
> +	qca6390-pmu {
> +		compatible = "qcom,qca6390-pmu";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_en_default>, <&wlan_en_default>;
> +
> +		vddaon-supply = <&vreg_s6a>;
> +		vddpmu-supply = <&vreg_s6a>;
> +		vddrfa0p95-supply = <&vreg_s6a>;
> +		vddrfa1p3-supply = <&vreg_s8c>;
> +		vddrfa1p9-supply = <&vreg_s5a>;
> +		vddpcie1p3-supply = <&vreg_s8c>;
> +		vddpcie1p9-supply = <&vreg_s5a>;
> +		vddio-supply = <&vreg_s4a>;
> +
> +		wlan-enable-gpios = <&tlmm 20 GPIO_ACTIVE_HIGH>;
> +		bt-enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
> +
> +		regulators {
> +			vreg_pmu_rfa_cmn: ldo0 {
> +				regulator-name = "vreg_pmu_rfa_cmn";
> +			};
> +
> +			vreg_pmu_aon_0p59: ldo1 {
> +				regulator-name = "vreg_pmu_aon_0p59";
> +			};
> +
> +			vreg_pmu_wlcx_0p8: ldo2 {
> +				regulator-name = "vreg_pmu_wlcx_0p8";
> +			};
> +
> +			vreg_pmu_wlmx_0p85: ldo3 {
> +				regulator-name = "vreg_pmu_wlmx_0p85";
> +			};
> +
> +			vreg_pmu_btcmx_0p85: ldo4 {
> +				regulator-name = "vreg_pmu_btcmx_0p85";
> +			};
> +
> +			vreg_pmu_rfa_0p8: ldo5 {
> +				regulator-name = "vreg_pmu_rfa_0p8";
> +			};
> +
> +			vreg_pmu_rfa_1p2: ldo6 {
> +				regulator-name = "vreg_pmu_rfa_1p2";
> +			};
> +
> +			vreg_pmu_rfa_1p7: ldo7 {
> +				regulator-name = "vreg_pmu_rfa_1p7";
> +			};
> +
> +			vreg_pmu_pcie_0p9: ldo8 {
> +				regulator-name = "vreg_pmu_pcie_0p9";
> +			};
> +
> +			vreg_pmu_pcie_1p8: ldo9 {
> +				regulator-name = "vreg_pmu_pcie_1p8";
> +			};
> +		};
> +	};
> +
> +	reserved_memory: reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		hyp_mem: memory@80000000 {
> +			reg = <0x0 0x80000000 0x0 0x600000>;
> +			no-map;
> +		};
> +
> +		xbl_aop_mem: memory@80700000 {
> +			reg = <0x0 0x80700000 0x0 0x160000>;
> +			no-map;
> +		};
> +
> +		cmd_db: memory@80860000 {
> +			compatible = "qcom,cmd-db";
> +			reg = <0x0 0x80860000 0x0 0x20000>;
> +			no-map;
> +		};
> +
> +		smem_mem: memory@80900000 {
> +			reg = <0x0 0x80900000 0x0 0x200000>;
> +			no-map;
> +		};
> +
> +		removed_mem: memory@80b00000 {
> +			reg = <0x0 0x80b00000 0x0 0xb200000>;
> +			no-map;
> +		};
> +
> +		camera_mem: memory@8bf00000 {
> +			reg = <0x0 0x8bf00000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		wlan_mem: memory@8c400000 {
> +			reg = <0x0 0x8c400000 0x0 0x100000>;
> +			no-map;
> +		};
> +
> +		ipa_fw_mem: memory@8c500000 {
> +			reg = <0x0 0x8c500000 0x0 0x10000>;
> +			no-map;
> +		};
> +
> +		ipa_gsi_mem: memory@8c510000 {
> +			reg = <0x0 0x8c510000 0x0 0xa000>;
> +			no-map;
> +		};
> +
> +		gpu_mem: memory@8c51a000 {
> +			reg = <0x0 0x8c51a000 0x0 0x2000>;
> +			no-map;
> +		};
> +
> +		npu_mem: memory@8c600000 {
> +			reg = <0x0 0x8c600000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		video_mem: memory@8cb00000 {
> +			reg = <0x0 0x8cb00000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		cvp_mem: memory@8d000000 {
> +			reg = <0x0 0x8d000000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		cdsp_mem: memory@8d500000 {
> +			reg = <0x0 0x8d500000 0x0 0x1400000>;
> +			no-map;
> +		};
> +
> +		slpi_mem: memory@8e900000 {
> +			reg = <0x0 0x8e900000 0x0 0x1500000>;
> +			no-map;
> +		};
> +
> +		adsp_mem: memory@8fe00000 {
> +			reg = <0x0 0x8fe00000 0x0 0x1d00000>;
> +			no-map;
> +		};
> +
> +		spss_mem: memory@92300000 {
> +			reg = <0x0 0x92300000 0x0 0x100000>;
> +			no-map;
> +		};
> +
> +		cdsp_secure_heap: memory@92400000 {
> +			reg = <0x0 0x92400000 0x0 0x4600000>;
> +			no-map;
> +		};
> +
> +		ramoops: ramoops@96a00000 {
> +			compatible = "ramoops";
> +			reg = <0x0 0x96a00000 0x0 0x400000>;
> +			console-size = <0x200000>;
> +			pmsg-size = <0x200000>;
> +			ecc-size = <16>;
> +		};
> +
> +		asus_debug_mem: memory@97000000 {
> +			reg = <0x0 0x97000000 0x0 0x400000>;
> +			no-map;
> +		};
> +	};
> +
> +	vph_pwr: vph-pwr-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +	};
> +
> +	vreg_cam_dvdd_1p2: cam-dvdd-1p2-regulator {

I understand your wish to group the regulator devices, however then
please rename the nodes to have a similar name (e.g. regulator-foo-bar).
Also please place them correspondingly ('qcm6390' < 'regulator' <
'reserved').

> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_cam_dvdd_1p2";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		regulator-enable-ramp-delay = <233>;
> +		gpio = <&pm8150l_gpios 3 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +


> +
> +&cpu7_opp_table {
> +	cpu7_opp21: opp-3091200000 {
> +		opp-hz = /bits/ 64 <3091200000>;
> +		opp-peak-kBps = <8368000 51609600>;
> +	};

I'm a bit concerned about this one, I haven't seen it in the downtream
SM8250 DT.

> +};
> +
> +
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		memory-region = <&gpu_mem>;

&gpu_zap_shader {
};

> +		firmware-name = "qcom/sm8250/asus/obiwan/a650_zap.mbn";
> +	};
> +};
> +
> +
> +&i2c15 {
> +	status = "okay";
> +
> +	typec@4e {
> +		compatible = "richtek,rt1715";
> +		reg = <0x4e>;
> +		interrupts-extended = <&tlmm 175 IRQ_TYPE_LEVEL_LOW>;
> +		vbus-supply = <&vreg_rt1715_vbus>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&rt1715_irq_default>;
> +
> +		connector {
> +			compatible = "usb-c-connector";
> +			power-role = "dual";
> +			data-role = "dual";
> +			try-power-role = "sink";
> +			self-powered;
> +			op-sink-microwatt = <10000000>;
> +
> +			source-pdos = <PDO_FIXED(5000, 500,
> +						 PDO_FIXED_DUAL_ROLE |
> +						 PDO_FIXED_USB_COMM |
> +						 PDO_FIXED_DATA_SWAP)>;
> +
> +			sink-pdos = <PDO_FIXED(5000, 3000,
> +					       PDO_FIXED_DUAL_ROLE |
> +					       PDO_FIXED_USB_COMM |
> +					       PDO_FIXED_DATA_SWAP)
> +				     PDO_FIXED(9000, 2000, 0)>;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					rt1715_con_hs: endpoint {
> +						remote-endpoint = <&usb_2_dwc3_hs_out>;
> +					};

Just HS, no USB 3.0 support?

> +				};
> +			};
> +		};
> +	};
> +
> +&mdss_dp {
> +	status = "okay";
> +};
> +
> +&mdss_dp_out {
> +	data-lanes = <0 1>;
> +	remote-endpoint = <&usb_1_qmpphy_dp_in>;

Please move endpoint connection to sm8250.dtsi.

> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l9a>;
> +
> +	status = "okay";
> +
> +	panel@0 {
> +		compatible = "tianma,ta066vvhm03";
> +		reg = <0>;
> +
> +		enable-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&tlmm 75 GPIO_ACTIVE_LOW>;
> +
> +		vci-supply = <&vreg_l10a>;
> +		vdd-supply = <&vreg_l3c>;
> +		vddio-supply = <&vreg_l14a>;
> +
> +		pinctrl-0 = <&disp_en_active>, <&disp_reset_n_active>, <&mdp_vsync>;
> +		pinctrl-1 = <&disp_en_suspend>, <&disp_reset_n_suspend>, <&mdp_vsync>;
> +		pinctrl-names = "default", "sleep";
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&mdss_dsi0_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0_out {
> +	data-lanes = <0 1 2 3>;
> +	remote-endpoint = <&panel_in>;
> +};
> +
> +&mdss_dsi0_phy {
> +	vdds-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l9a>;
> +
> +	status = "okay";
> +};
> +
> +&pcieport0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1101";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
> +		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> +		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> +
> +		qcom,calibration-variant = "ASUS_ROG_Phone_3";

Just to check, was it submitted upstream?

> +	};
> +};
> +
> +
> +
> +&usb_1_dwc3 {
> +	dr_mode = "otg";

This is default and can be dropped

> +	usb-role-switch;

Please move to sm8250.dtsi.

> +};
> +
> +&usb_1_dwc3_hs_out {
> +	remote-endpoint = <&pm8150b_hs>;
> +};
> +
> +&usb_1_hsphy {
> +	vdda-pll-supply = <&vreg_l5a>;
> +	vdda18-supply = <&vreg_l12a>;
> +	vdda33-supply = <&vreg_l2a>;
> +
> +	qcom,hs-disconnect-bp = <973>;
> +	qcom,hs-amplitude-bp = <1110>;
> +	qcom,pre-emphasis-amplitude-bp = <10000>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy {
> +	mode-switch;
> +	orientation-switch;

Please move to sm8250.dtsi.

> +
> +	vdda-phy-supply = <&vreg_l9a>;
> +	vdda-pll-supply = <&vreg_l18a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy_dp_in {
> +	remote-endpoint = <&mdss_dp_out>;

sm8250.dtsi.

> +};
> +
> +&usb_1_qmpphy_out {
> +	remote-endpoint = <&pm8150b_ss>;
> +};
> +
> +&usb_2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rt1715_mux_en>;
> +
> +	/* Disable USB3 clock requirement as this port only supports USB2 */
> +	qcom,select-utmi-as-pipe-clk;

OKay, this answers my earlier question.

> +
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "otg";

Default, can be dropped.

> +	maximum-speed = "high-speed";
> +	phys = <&usb_2_hsphy>;
> +	phy-names = "usb2-phy";
> +	usb-role-switch;

usb-role-switch can go to sm8250.dtsi.

> +
> +	port {
> +		usb_2_dwc3_hs_out: endpoint {
> +			remote-endpoint = <&rt1715_con_hs>;
> +		};
> +	};
> +};
> +
> +&usb_2_hsphy {
> +	vdda-pll-supply = <&vreg_l5a>;
> +	vdda18-supply = <&vreg_l12a>;
> +	vdda33-supply = <&vreg_l2a>;
> +
> +	qcom,hs-disconnect-bp = <1332>;
> +	qcom,hs-amplitude-bp = <2000>;
> +	qcom,pre-emphasis-amplitude-bp = <20000>;
> +
> +	status = "okay";
> +};
> +
> +&venus {
> +	firmware-name = "qcom/sm8250/asus/obiwan/venus.mbn";
> +
> +	status = "okay";
> +};
> 
> -- 
> 2.53.0
> 
> 

-- 
With best wishes
Dmitry

