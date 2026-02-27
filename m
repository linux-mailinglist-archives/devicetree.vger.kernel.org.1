Return-Path: <devicetree+bounces-269410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DV4Eof4oWknyAQAu9opvQ
	(envelope-from <devicetree+bounces-269410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:03:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B78F71BD2B0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 970F6300E14B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5114218A8;
	Fri, 27 Feb 2026 20:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pCwsaGfc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UyIbOiIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA3A37BE6D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222596; cv=none; b=jV65JXJJv0wRfA2I1bcWEY3XwD9MT+u9f8t/oYxJYiHhwZYkEVgHRyp9YZLgUnpZNw9wtFBMR7OQuZqoI5B5vhbrtpl918BOoEk0JDfYNeOwfXlBfdFuPDGQ0o8OP2Q21xlQQoE84Pdvt6kN77C4Q+HwBOCCyMEjjo7Bb9uGFl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222596; c=relaxed/simple;
	bh=OV5MhdjQGcCSSrJXEjhHklpOJPuKrgXwdF2gCWltS60=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JYa+/8mF3st+RlpMOLy/ivvFDKV0nJJ77VfpnAYwovCx8sEpV9sHsBLNKihPNA64oNX8+C34L9u+yBwWGyVsZaGxV+adpr4ldaGP4xMU4ia9vHkIDJ4f1S8WnOjIu1k5xpj1Hr0EwaxzR1UWCAWFTdoVsJ8ndNIZnchhoG78Sws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pCwsaGfc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UyIbOiIf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0VhT1366229
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:03:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iYhAEo28QEJUDMFdd9XamQte
	euXqEAgn/s1gbmx9H+E=; b=pCwsaGfclQKAQrMdBHTjYCuMOYqSiVRydG5kAjV0
	DRjvJLAbcQqZXLAwulLAVEj5b9aruVEzWYmdH+DEieBfltBNFnav6C8qGmgfImgZ
	etzMOEAoyLKE5CDv2tQBgiNk8T9zeo+RqKjeOb0J0ffGXbdDssrFHDefQrUM+Ox9
	vLCGRiPYe745US3gTkVATjg0d5rT4d88zGBqbLtJ07E4CYcU/zL4rF3GA93AGqZ4
	FulTFO2QofkQDbIRUlozYT6Q5UEgcARbzWhbqgiUpjb/s3u+6GIv+1ekkfWGuJbh
	V1jSIscSigZ4E8N3m7xr44DPo4W0caQghx5GYCGHffqewA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck9f01tmx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:03:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4817f3c8so1685687985a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772222594; x=1772827394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iYhAEo28QEJUDMFdd9XamQteeuXqEAgn/s1gbmx9H+E=;
        b=UyIbOiIfH2f9ZoQRo335X+6WBzQWrjNx1QYNStggfNxAHokOA7OP9nNCXRbagd/9wu
         YMZ2CExuebhVr0aAe+EvnnTcJoFgGQVS2w44cnlEWvh0D8ldLZUXfTT1iibpyIyudFFv
         Op1FuyZMFsVTiWFQaASu1eBuu/DwOXbg60s3WXfKMzWFHB7z7OnMg3o3GM5cl8FgTJft
         UQukRooMxLeownpPXaVx0VXUWvRsn98etAeNtXXe5g5TS5jbQ7TjJ/fPz4Y7QULWTNtS
         7NhAWuiWL4JGNTShPXmbn3ZuYzm7xfPdlyz4tKkfDF3qEYHXMDQx0pYQRe6FnOoJX2nj
         FFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222594; x=1772827394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYhAEo28QEJUDMFdd9XamQteeuXqEAgn/s1gbmx9H+E=;
        b=GAOpff5+9vrKatnNxa08JUxWaGLW1hNb73AjO5FV3NwI3yJE9qld0BAf292jD5mo7f
         ebpCqeieDWPI8mV1LAjJYo5WFQyqQt+Bwcfnqrw1QVlLmRfUqsDM1wUk4kt7K4J+Ph21
         vG76cAZN2W8Cpqw2kQiMmz2EvOZsJ9rktjL+mUwFycCHXJqq11YA3DjSHk9WgjnVMDAO
         evjwUFTjwRFB7H1KbtpRn86JpRxUwNVF9K1+pKCiIGpdS+LluFENaMOAMhFlYPNVX0Jm
         DiTsFfWvkVFNEMD1DXxMArHXwc4q/Bhseq5/ZOUeCwRyYO1dCuD7vNbbWKKg6PlWkPmP
         OXrg==
X-Forwarded-Encrypted: i=1; AJvYcCXWE+zwpMK7P7YFi71HgYtUrCt/+X7akQpjuvspNFurqZYlmU5R+AHoAogWrc8P8HSH4g+1N6ujH9Td@vger.kernel.org
X-Gm-Message-State: AOJu0YzrhX1VhEWT9x4dyy07/FkdotgfHmY7Waxcn0Kfelcs+PFCm40U
	TbjzyvlBguqdcixp46sIEzDU+IQa6WBDnfuydIbPtaYRFVe/ya7NdJW80bhCrB9b5bsizurIYi/
	Mq20Cf9mFczYdP3igaWdRQP2iX+P9nRmq5V9MJ7XkNNo04Fy6Tma35eUKs4nOuOdb
X-Gm-Gg: ATEYQzwKTfMDoKjuWfFjPAWfLZb5UxbRKHRaZmST5ypMQxzTg9mwEKXb2fnwZ1Y1I5C
	w0XeM8VsBZV2RG6GwJsRwA3zdB5pwSN5DKE/uIxkFWR87R3QzTYzhKh+qtMWELhi3mm1diVYwLa
	ial72lKpBNf+i6sai60JmIjQk4eFTe/mshUF3vZDIIlR+VpNi0lz4K2QyZp0h7ABXq/E5JhV6gO
	ogQyzoRWu3q6jd5cx5E2nphlK/LaGgXN6FK7jtcX3QSgVVCjhiAuVscnzTeruDZhVUXkZVp40IL
	H316Y9V4+jOZ8xo+GpN7aGkHlWxc91lL8Zi3YWNfIhjopThWhM76t9/kARC2L4fK4rJW1gFTbiU
	HqTtCqGHA7eEIBflA8XC4haYP7wXQG8/KTGRkUoMYzF7MmAcm0BO4Oas/vTfRJq+c8xFWTmQHrG
	3X0sQDuvTHD3heeDDCXoY4IYNch+x/nuJ7GT8=
X-Received: by 2002:a05:620a:4050:b0:8ca:3c67:8923 with SMTP id af79cd13be357-8cbc8df71e1mr518303685a.53.1772222593462;
        Fri, 27 Feb 2026 12:03:13 -0800 (PST)
X-Received: by 2002:a05:620a:4050:b0:8ca:3c67:8923 with SMTP id af79cd13be357-8cbc8df71e1mr518297685a.53.1772222592959;
        Fri, 27 Feb 2026 12:03:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a10a319f1csm2045789e87.54.2026.02.27.12.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:03:12 -0800 (PST)
Date: Fri, 27 Feb 2026 22:03:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH 2/3] arm64: dts: qcom: monaco-evk: Enable SDHCI for SD
 Card via overlay
Message-ID: <2ra2apfephjl2au6wel25gbxoxyvohf2ysq4yzaufp3xb7mtoi@g5p6asbk2fqe>
References: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
 <20260227105055.2364348-3-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227105055.2364348-3-monish.chunara@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NSBTYWx0ZWRfX7CC+u++bXJcw
 IC1Rc7Ql1M6QOej4EJ08gdrrNt8rU/5VEUcy/kcIyJAjurTYEQINZ2LoTVncldAcsJJr+qX5Cov
 poOfwpfdGJn1WWxXda26P9pWyVXCwfCT7+XOIJdfk14DsX1R+Gb7Lomp8u/Suu+on3phi7w95TI
 XQIFEX31Tc8QlAo1v+kxMAzso7PV6rInoEnXLLgXAlKQYNRREKSOviHSXRnrec1ITX5SjeiKHAq
 o9QOBXIpLS0kf+mrpXLy1zowEE9Dn1awx1/xZ/DjwF6evKYJJzFFoPArr5rBeR04dhgutSr8jJJ
 q97mZtm4v9K3oFXUicr+cgYxMXZqSasvLw0GIQsDdJKPe+P8Y7A2cohtgdQh9ZMw/D6T6ta55vT
 6KTjRyNXUYCNcnjjSlYXVCoWC+ZV4GSWFazSCAtyfGsI9GD+iai3N6EFdPmHl/MwNJgTCEWItrF
 oS4Biw8X3t6HwtvX8oQ==
X-Proofpoint-GUID: FCsBLiNUPpXu7yyB0Z-5XYkCHPJ4Ri-N
X-Authority-Analysis: v=2.4 cv=bIsb4f+Z c=1 sm=1 tr=0 ts=69a1f882 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=Ok5KoevZxSgNYAnRRaUA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: FCsBLiNUPpXu7yyB0Z-5XYkCHPJ4Ri-N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269410-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B78F71BD2B0
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 04:20:54PM +0530, Monish Chunara wrote:
> The monaco EVK board supports either eMMC or SD-card, but only one
> can be active at a time.
> 
> Enable the SD Host Controller Interface (SDHCI) on the monaco EVK board
> to support SD Card for storage via a device tree overlay. This allows
> eMMC support to be enabled through a separate overlay when required.
> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  4 ++
>  .../boot/dts/qcom/monaco-evk-sd-card.dtso     | 72 +++++++++++++++++++
>  2 files changed, 76 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 317af937d038..c86242a1631d 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -46,6 +46,10 @@ lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
> +
> +monaco-evk-sd-card-dtbs := monaco-evk.dtb monaco-evk-sd-card.dtbo
> +dtb-$(CONFIG_ARCH_QCOM) += monaco-evk-sd-card.dtb
> +
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso
> new file mode 100644
> index 000000000000..a0bc5c47d40b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso
> @@ -0,0 +1,72 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +        vmmc_sdc: regulator-dummy {

No dummy regulators, please.

> +                compatible = "regulator-fixed";
> +
> +                regulator-name = "vmmc_sdc";
> +                regulator-min-microvolt = <2950000>;
> +                regulator-max-microvolt = <2950000>;
> +        };
> +
> +        vreg_sdc: regulator-sdc {
> +		compatible = "regulator-gpio";
> +
> +		regulator-name = "vreg_sdc";
> +		regulator-type = "voltage";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <2950000>;
> +
> +		gpios = <&expander1 7 GPIO_ACTIVE_HIGH>;
> +		states = <1800000 1>, <2950000 0>;
> +
> +		startup-delay-us = <100>;
> +        };
> +};
> +
> +&sdhc_1 {
> +	vmmc-supply = <&vmmc_sdc>;
> +	vqmmc-supply = <&vreg_sdc>;
> +
> +	pinctrl-0 = <&sdc1_state_on>, <&sd_cd>;
> +	pinctrl-1 = <&sdc1_state_off>, <&sd_cd>;
> +	pinctrl-names = "default", "sleep";
> +
> +	cap-sd-highspeed;
> +	no-1-8-v;
> +
> +	bus-width = <4>;
> +	cd-gpios = <&tlmm 11 GPIO_ACTIVE_LOW>;
> +	no-mmc;
> +	no-sdio;
> +
> +	status = "okay";
> +};
> +
> +&sdhc1_opp_table {

Why? Is it specific to the device or to the chip? In the latter case,
please define a separate table in the monaco.dtsi and switch to it here.

> +	opp-100000000 {
> +		opp-hz = /bits/ 64 <100000000>;
> +		required-opps = <&rpmhpd_opp_low_svs>;
> +	};
> +
> +	opp-202000000 {
> +		opp-hz = /bits/ 64 <202000000>;
> +		required-opps = <&rpmhpd_opp_svs_l1>;
> +	};
> +};
> +
> +&tlmm {
> +        sd_cd: sd-cd-state {
> +                pins = "gpio11";
> +                function = "gpio";
> +                bias-pull-up;
> +        };
> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

