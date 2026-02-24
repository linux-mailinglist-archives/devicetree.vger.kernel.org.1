Return-Path: <devicetree+bounces-267686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QakuBCERnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:46:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52536181182
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F19A13047500
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4DB2367BA;
	Tue, 24 Feb 2026 02:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iOHg+c25";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J0AqqGPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDB41E5207
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901214; cv=none; b=l76oImzkdFTzv9TFYrl9/g6L5HJyDsfj4H9RoQCp4u1a2+sAoZiXIMl/byQ5+fWdZKNiU5WRT1mnIoz9aRkYHYl5zibzQ5s0TMviAbGQoUj702bVRqfOygnSzezMUQ9wI2rlTJBZtJ90OWbxp2JZWAe5PFQPnSvukb+xE4culhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901214; c=relaxed/simple;
	bh=qRUYvlXxIZY20zPk8ECsuhVKz0x+UxNCptPuC6juTlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=noniyF/mx60JGAelXzxIsKqNAGDna2oWt80pll+u/wpr6s3YNEtl9PmK84Ubwxan1Kkyp7mCeTcN0xONPZrbn8zjFT3jUUwZFfWdkNXS+OdvGeQ23Z+CEnmHCs+GM7+bZwNo/9LiDajvDrHugfj3nG5KpSCftVmoGXvJ2seFRTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iOHg+c25; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J0AqqGPg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGFIgG3936170
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KKvDDeqz+mNOB5u9/ZS3tcm3iKJq9M5SZJMjlZE1ub4=; b=iOHg+c25+5djRIqJ
	XGV9nWkpGpWGQPQbjDJW5LBWS3k3RYhB0iralmu44PhSuERAWVaN02ZJ6KJ0ErAU
	bLYr9wNktRf3vHUZnNPt+rkfEip2o/2LcEwzRc1TjQ9aerEayBJsIvE9pzgm787a
	EX0KLSyKUmJ+4MffxPUHvY4kBDFGOqyO1gA5BNCXpWORkrxGXbsghKsqDJPw4Tm5
	sVGkJB1zzGLqbgtkprwl50NUXJyn64mRXuXVZsu4imuPLLwr5m7gHGss+sk19q4V
	kfZp5xPugFHNfGZ13f+FW+fyVHbb0lrfOnmnTGNdUV7b/I9ivuDdi9vC4jTSes0B
	0iZDVQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgt8mhjf0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:46:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb403842b6so5079253185a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771901211; x=1772506011; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KKvDDeqz+mNOB5u9/ZS3tcm3iKJq9M5SZJMjlZE1ub4=;
        b=J0AqqGPgxzKlAH6Be0EftVnrEcdjugpa/YI+gf+bcr86O/uQa75S/ReKdI5THFn0nj
         GlRR7SgwsbEb20MMm5WwPcHy+DSRgCE7ywSIiyegfHSH1CHB/AXqtLfvkALHSgdpJ84c
         vixEDkrKjBqWI9EvDWHv3C8Jq+OVWg868Da+x5Ru+1/ZXHC4Yf82ZbktW6DYzpk3Ixcm
         Jy95XfMD9lTURhHO3Gsv+stc7FMgccL0R+VA1mXd9Cu43t641kVYhVGBOMkgxWhBEarZ
         UKeYE4SSb4tuITIRptqoTmEUqT68JR+JDp472uT4mbbFOwPPEnQjfNFCklNawTd0gn0S
         4ChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771901211; x=1772506011;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KKvDDeqz+mNOB5u9/ZS3tcm3iKJq9M5SZJMjlZE1ub4=;
        b=n0dHDnWwsWGDEKLCoFbcSoIaL3l8k1+9i/0NeAPR4j/HSkuF3fgdXKRlPyGrhJYX7F
         ZWSIhToRhTVRNQDTi63qsf7+ZR1POKVmfLKtY7bl7tSgbKtReUEuxpglaIyOm9MsB3QJ
         j6T7tFlEXBR5gAKyYkMQGULymVdQdGakx2sm4RkIuaMvf43oy2t9Rr6H0p0MHPz2b1sC
         VDcs3P3exVbOMc8dIro7UAiBjHudt/jJuu29PJKdUxMIev0UJiw0zUhFMb9TZZfCUBpP
         Z0XRiX/oJsfNgcdrTACQvokly4oztVZqtsw5cPMp17dfSRfCQXGhcXr3+rMkQGboxwtw
         b7SQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCRqe+rHjeo3cZ+UaDqliYPsB3Gi5xBWwp6tAv0DserMMmojM0vfC13iKOi0m8vttITbqPbF3BSYp4@vger.kernel.org
X-Gm-Message-State: AOJu0YwFLyoKpyO1nizSUtgii7R/ccm2+5fjyx/Altc/38k1U9W+tAXp
	T/tin+NYWuNFPLWx0F9hEEJAdE4X2YgssPt41nJu686O0vI62zWJxUBlQ3Fxra5pmTgH2hnMA5P
	XvW590E2/6Q3iYVHhlPjo/ayFKhrVuDgLY3yu0LOHLt88IeHs4KtpP3GrHiYMnyju
X-Gm-Gg: AZuq6aJSJsNeejGLdGf9+/iopRt43GhTttzH2Y58dhGad6qPKNHydNDrO8C0St5VYr2
	cN4iMKK4aXRSE4KMp5c3/XxYgzG+sAN7aDSBIpX8DBo2OXqLwvawpP5Bq95lY379RM40XXWu0/+
	/qg4QBNMlOwrd8A1CrBnqhP4SCWSSqf0M9OExL/n6DL2k8SJPULdaEfGUCAiLHlbzT/VXKpsHgU
	EhzIbXgsFFT5IZTaxiH1x1UV6ZSe99HOCZmWMrdQOBaaUj+Ie8/KLKPCrpQa0OHwNcj2uemOoWl
	hc4oXvaG0a4ZenuyGVkeNpxCbvFCGgQzhWd5fr8TD0aVyAXGkKcB5cVp4mzepE9ta9+lXbF6exI
	I42pGw9hYU0+f/d4kbP5s1sXT105BLTnfnmqv2AOGNUTBR9vCr6uS/DtGYFoouSk2Tnz6ESsDcg
	6MSO7fF9BgRNKVU9SXPgK18/OssMHHGqjG/o8=
X-Received: by 2002:a05:620a:4891:b0:8c9:fb65:7f0d with SMTP id af79cd13be357-8cb8ca033cdmr1325733385a.28.1771901211132;
        Mon, 23 Feb 2026 18:46:51 -0800 (PST)
X-Received: by 2002:a05:620a:4891:b0:8c9:fb65:7f0d with SMTP id af79cd13be357-8cb8ca033cdmr1325730185a.28.1771901210619;
        Mon, 23 Feb 2026 18:46:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7b02490sm18350771fa.45.2026.02.23.18.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 18:46:48 -0800 (PST)
Date: Tue, 24 Feb 2026 04:46:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yedaya Katsman <yedaya.ka@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kamil =?utf-8?B?R2/FgmRh?= <kamil.golda@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Enable MDSS and add panel
Message-ID: <dko7l6iage7blup4zbpsm32d2elvxpengqwbzcsv4v4zedjmpb@rsdrb77acgme>
References: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
 <20260223-panel-patches-v1-3-7756209477f9@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223-panel-patches-v1-3-7756209477f9@gmail.com>
X-Authority-Analysis: v=2.4 cv=J/unLQnS c=1 sm=1 tr=0 ts=699d111b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=sfOm8-O8AAAA:8
 a=pGLkceISAAAA:8 a=FNN4Il8BKJnmybe0k9EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: W4fzUK7oBQrA9yStpokJee3zDjnetnLw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyMiBTYWx0ZWRfX7MgP7D9uhzio
 8B5wWKUqlzIZL4pLh4UzUsxOhOCkPaetdM+Nf7e9YCiJOJpMw3A7b7B+JbebrxRKTJ/FgEd2EsF
 miTMbtPYbkN8l8b0PHUzG015pKgV98cGG9+QRTl10w3P6RTOj5wcnIr/94ufUrW4Rj6IAA8ERgD
 a7sEZ2lEOgW3HfQi60B4gcSqk297NbSS3YLmTZRRtVJRNedkJJdDeynf6nuqt83y71hLvUiycnK
 u30IrBMuFr7V+zlnw6GgICfv6hjEGpP6HU4ge5CErs4d3IEWlZ3vfldvm4Yt+GEd9k0IRnhqcAF
 We2X1NBxK04KSHmDysuqGsIuJ5Cf1J3ZmE1hWS9RNokI0EHvTo0YTRvGpZRfXjzwEJiC9mPNWu2
 8ojfWqmGsj3UHISYGQCCEFYcNxXNEjuJJQ6l3My6hbhrThnXMoVFjPq0g2572L7FnXGMCVwBNap
 +78mNLeJvARg3S3TI6g==
X-Proofpoint-GUID: W4fzUK7oBQrA9yStpokJee3zDjnetnLw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240022
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267686-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,qualcomm.com:dkim,protonmail.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 52536181182
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 04:24:04PM +0200, Yedaya Katsman wrote:
> Enable the MDSS nodes and add supplies and bindings for the Samsung
> S6E8FCO panel.
> 
> The ldo and iovcc pins boot up with a current of 16 mA, but they work
> fine with 2mA, so I used that.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---
>  .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 94 ++++++++++++++++++++++
>  1 file changed, 94 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> index 994fb0412fcbdf5466f87a325c48b697a37b514b..10fd01143a644004b807fc455d2235f8e6a9737a 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> @@ -82,6 +82,32 @@ key-volume-up {
>  		};
>  	};
>  
> +	panel_ldo_supply: panel-ldo-supply {

regulator-foo-bar-baz

> +		compatible = "regulator-fixed";
> +		regulator-name = "panel_ldo_supply";

Is it an actual name (e.g. from schematics)?

> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-boot-on;
> +
> +		enable-active-high;
> +		gpio = <&tlmm 26 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&panel_ldo_en>;
> +		pinctrl-names = "default";
> +	};
> +
> +	panel_iovcc_supply: panel-iovcc-supply {
> +		compatible = "regulator-fixed";
> +		regulator-name = "panel_iovcc_supply";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-boot-on;
> +
> +		enable-active-high;
> +		gpio = <&tlmm 124 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&panel_iovcc_en>;
> +		pinctrl-names = "default";
> +	};
> +
>  	thermal-zones {
>  		rf-pa0-thermal {
>  			thermal-sensors = <&pm6125_adc_tm 0>;
> @@ -128,6 +154,46 @@ &hsusb_phy1 {
>  	status = "okay";
>  };
>  
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l18a>;
> +
> +	pinctrl-0 = <&mdss_default>;
> +	pinctrl-1 = <&mdss_sleep>;
> +	pinctrl-names = "default", "sleep";
> +
> +	status = "okay";
> +
> +	panel@0 {
> +		compatible = "samsung,s6e8fco";
> +		reg = <0>;
> +
> +		vddio-supply = <&vreg_l9a>;
> +		ldo-supply = <&panel_ldo_supply>;
> +		iovcc-supply = <&panel_iovcc_supply>;
> +		reset-gpios = <&tlmm 90 GPIO_ACTIVE_LOW>;
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
> +
> +&mdss_dsi0_phy {
> +	status = "okay";

Missing vdds-supply.

> +};
> +
>  &pm6125_adc {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&camera_flash_therm &emmc_ufs_therm>;
> @@ -387,6 +453,34 @@ &sdhc_2 {
>  
>  &tlmm {
>  	gpio-reserved-ranges = <22 2>, <28 6>;
> +
> +	panel_ldo_en: panel-ldo-default-state {
> +		pins = "gpio26";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +	mdss_default: mdss-default-state {
> +		pins = "gpio90";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	mdss_sleep: mdss-sleep-state {
> +		pins = "gpio90";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +
> +	panel_iovcc_en: panel-iovcc-default-state {
> +		pins = "gpio124";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
>  };
>  
>  &ufs_mem_hc {
> 
> -- 
> 2.53.0
> 

-- 
With best wishes
Dmitry

