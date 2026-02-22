Return-Path: <devicetree+bounces-267187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMiUGaxKm2nxxgMAu9opvQ
	(envelope-from <devicetree+bounces-267187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 19:27:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8197C1700FA
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 19:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F86130086E7
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 036A2350D7F;
	Sun, 22 Feb 2026 18:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LB1R9IIp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IH4/4sSb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8500814EC73
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 18:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771784871; cv=none; b=NqJJXFXGyTDXNVasEQc8ZcTtqo/zTIA4ktG27/vRQXKjn2S8alPFkr3PpPz/aHqafBMlgEHym1T7UGwrd0iw6dYvk77h6u5RsBI+c5/9U35qKv3TmwpayRA3/gVx3bJvzGswMkkrziApthIojaGJp7Tzapg7UDfhZrZoFi1vZOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771784871; c=relaxed/simple;
	bh=NNftpgPzP2E091ERRnqtZVn2vkVT8VI+2oF4t5ZwIzg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uYHoKT9rOb+Nwu/L8pyE1pX3rWFKAuXawNOCwYQTPVTYTvICuHEgn2OsKLsCFBpPvbamaZco8kjhxDD+IYgVKdEeA0FKIq9QlQHAxHnUkFEw6Rbm/ERw2C58v50kWiszr0Yn0WIcJWCxaxOIUwrez8pIT/TDylUtK3WYWpdwsds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LB1R9IIp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IH4/4sSb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MBeCsv623298
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 18:27:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Jb3hjyUD3tMoU+zITBgMwrrD
	pLFVqnNuzDJ2O+O/fa8=; b=LB1R9IIp85OmlCVZVMGJvWixz3Xank5EHKADgZ5L
	Ds5h+4Dng75mVAolfGuSTgYnWmQPGsR+1nCRFEvI+PPA6ztCNGfzJsmzjAmF7hzU
	/z8NZZwBsrrBVAnEsyr97RF49NChphEYUru+1pFOlgoyhqQa1I6lS6GMvHN09o44
	ElFHAm3NRrHN+nEokhWknzpZ8+4rcJAl0N3M8tHq0kZRmQ7+osxrf2sRSDUjLlUZ
	6Oy6ETzaCGT5BEL1o7C/ZeeRGoNhClk7VwCQIK+rNm+7qJgPQ38hOeDGlggZYISW
	wzMmoIirv5Mk5bEdcKDb8SVA38YoLp8JrVawQ71v7zt+6g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wbajy9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 18:27:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ab7f67fso1616554185a.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771784863; x=1772389663; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jb3hjyUD3tMoU+zITBgMwrrDpLFVqnNuzDJ2O+O/fa8=;
        b=IH4/4sSbyG53DIzryr0Jorm5ror05fE+kEokyBjfjfccrLN11+5Vyxpl6VEruMpx29
         1ch2NXJiPDLE0GrgZ275su9UYFXcDdAiypqnUWrF5NmZ/nWyc1mlmX8iRwRGpd96tCJR
         ipIFKyzJIKB/X5L7Q9Pwc/1IhtvQJlS2zBCssY2jCmsicBnHqhsfBLSpOY8Xv7FtarDv
         pJ50FgEsGpNE3gVJDzBde6LqZOwooGK0C1QPnWyfinp9y1DMsifLE58h+mTMyweXs2ey
         rMsr5yCG/IZnmRuShPvU2C+0kiiRciH3ES1L1RDEwnrmBFibNiBzzr4k0tXf66sbbo4O
         hQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771784863; x=1772389663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jb3hjyUD3tMoU+zITBgMwrrDpLFVqnNuzDJ2O+O/fa8=;
        b=KhjiX3bOu8c3QVEjIkGVfEJa1rxBXVX9UBXFrgSA5jz7L1rQOiUoHeoqF5ZzIz+LWS
         6P1b8OtolCJnTVqyEmZz87sS4Qh6YWZkQ/9yRsOSemPUYbpfk8/k678BXK9OXITZ1Nvo
         Iss1X4tHXcDE3jLLe3DQ4ZerjuhL/jlSRWFz6Av1IPVVj2OrFM/DPzGkAqew/gHPmxTo
         nLfn2PCc3iSe6VEhAgPuWWk9jCuxCxW2XkChxdlHhI964+hyMjxrIGE7Ztc9mqCQpCTf
         wRK7brOLX9T+SfEle9akgaKl7goD56FVyMhElendYpt2VsA4zT8FQixlXkgic8+hHa7o
         1Euw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ7/e9vAWcXJIqquA9CS9SygayR8klvk5KvC90DJcYd9r97bQ6DrM/rdjPSVg5N0AbXSRtL/R6TIf5@vger.kernel.org
X-Gm-Message-State: AOJu0YzV6+c2YTOvCNgl7Z4qv8LLEy/Gqujecq/6xowRmu/fCE938A8e
	A27RdYaQE9xk3a/C6r+TIT+mb9MxALqdFM0WsTEKNkaTg4r6GBtfNfiLmIUasZSVNHtL/fVDgVn
	1SzySOLQO6PkNKKv3n1QQVtTYh5SKhBmMCyWQWANpnT9/5ukhkg0w4WpD55M0ziDI
X-Gm-Gg: AZuq6aLPRDg8qiO7/2nZlYXlrgEMGYIdKeqb3In5FlXNS2Z24Nx/eoG3/E/LwVL1GDJ
	7hgH+t4+ht/3YCFBa2akc79siLiVe7ov6TI0hxilVlrqXwIlFlPyRMTgThY9MXTRoUdsj49MBe9
	Vu16yTC4J2gtnyI74f67iTksiZSCj7sopZa1TxlO4skKvnhFg5oUWjm7BPHFvoCjg3Te2PvpxPg
	b7/9jauP37s7aSwn9954VCL6XLtWd9POrxHl4hSAj3ZLYjLgAD+DarVxo49/Lat9rWueXZZR5sT
	PsjqKgoza6/JZ6joEeb5PrPggnRls6ws4M7E+q7aZTz34Q/mcFtOYquSIaVnIPBlD6wxZMPMtcn
	NYRVUgcP8bGcxbSYPVDYMraGfGRLvuPpZD4jArhqhcsFbW/ptm3lQSwCFkT8wXq48NhVk0WUhgN
	3jHfM2lURzHDcMKcbwvSjD4tjWz8shiqEORj4=
X-Received: by 2002:a05:620a:199d:b0:8cb:4cb0:8d4e with SMTP id af79cd13be357-8cb8ca9dd5emr740400185a.77.1771784863480;
        Sun, 22 Feb 2026 10:27:43 -0800 (PST)
X-Received: by 2002:a05:620a:199d:b0:8cb:4cb0:8d4e with SMTP id af79cd13be357-8cb8ca9dd5emr740395985a.77.1771784862856;
        Sun, 22 Feb 2026 10:27:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb4760csm1103670e87.77.2026.02.22.10.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 10:27:40 -0800 (PST)
Date: Sun, 22 Feb 2026 20:27:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus
 Mezzanine
Message-ID: <at7j3kbdixd7aveiol37pwgudl2hcogtdrvdgcvgbbm3t5irfc@4nvv5ptoezyk>
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
 <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: GYb-sFiBV-q59K8BsC9Lbc0rOCoxa-eI
X-Authority-Analysis: v=2.4 cv=UZlciaSN c=1 sm=1 tr=0 ts=699b4aa0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=DUeAZ88jvR8M5Yoo4rEA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: GYb-sFiBV-q59K8BsC9Lbc0rOCoxa-eI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIyMDE3OCBTYWx0ZWRfXya6A7cy5a+f5
 AGGxMpTPMGVuG8mmj/ir0dTmqkMojw16VuA1U8EZMax9JAKodPxNo95gF45SV4+zkDIoDp2HczN
 rSbESpP1N6drhjz+q6KegCWFSf/mHOtKmXtG8X1MWDiBeV1CmX2+DdpbPxL/pUcbI4Ag53e023g
 lWgm/ZNeBKJSusQk/fFjas79jIMoxphdtrYJvNLQFopd67Mh8ZrOmil1EtFFan6H5S7A79wvlfg
 W6mecAzct+1lexh0llqdpeeCVC4gPFZ83dQsPKDrdH+I0kGS0QClGqze252tb8maZEAHbSTAwEv
 EmxpXnsFogbRO0Fub8k7NJbSOOgA7L3IjPpNWJ/DmNYD8GKe6X7O+2U+AU/ycHG3xR5P3Irdunz
 9gos+bM6HmiOM/A98MzjTSJ0VNpM/qo/NIP/1N2wFJonOPtGR/WnmZjRTzlU8HewZ9L/EUNU2r+
 banNTg0wEx7VF6j5g5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-22_04,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602220178
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267187-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.0.0.1:email,0.0.0.2:email,0.0.0.3:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8197C1700FA
X-Rspamd-Action: no action

On Sun, Feb 22, 2026 at 11:05:45PM +0530, Umang Chheda wrote:
> The Interface Plus [IFP] Mezzanine is an hardware expansion add-on
> board designed to be stacked on top of Monaco EVK.
> 
> It has following peripherals :
> 
> - 4x Type A USB ports in host mode.
> - TC9563 PCIe switch, which has following three downstream ports (DSP) :
>    - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.

Nit: routed to? Is that M.2 only suitable for WLANs? What is "WLAN
endpoints"?

>    - 2nd DSP connects M.2 B-key connector for connecting cellular
>      modems.
>    - 3rd DSP with support for Dual Ethernet ports.
> - EEPROM.
> - LVDS Display.
> - 2*mini DP.
> 
> Add support for following peripherals :
> - TC9563 PCIe Switch.
> - EEPROM.

If there is an onboard USB hub, please describe it here. Also, what is
the story of mini DP ports? If they are to be enabled later, please
mention, why.

> 
> Written with inputs from :
>     Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com> - PCIe
>     Monish Chunara <monish.chunara@oss.qualcomm.com> - EEPROM.
> 
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../dts/qcom/monaco-evk-ifp-mezzanine.dtso    | 184 ++++++++++++++++++
>  2 files changed, 188 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e8..9d298e7e8a90 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -45,6 +45,10 @@ lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
> +
> +monaco-evk-ifp-mezzanine-dtbs	:= monaco-evk.dtb monaco-evk-ifp-mezzanine.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk-ifp-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
> new file mode 100644
> index 000000000000..f0572647200c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
> @@ -0,0 +1,184 @@
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
> +&{/} {
> +	model = "Qualcomm Technologies, Inc. Monaco-EVK IFP Mezzanine";
> +
> +	vreg_0p9: regulator-vreg-0p9 {

Are all these regulators a part of the mezzanine?

> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_0P9";
> +
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		vin-supply = <&vreg_3p3>;
> +	};
> +
> +	vreg_1p8: regulator-vreg-1p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_1P8";
> +
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		vin-supply = <&vreg_4p2>;
> +	};
> +
> +	vreg_3p3: regulator-vreg-3p3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_3P3";
> +
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		vin-supply = <&vreg_4p2>;
> +	};
> +
> +	vreg_4p2: regulator-vreg-4p2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_4P2";
> +
> +		regulator-min-microvolt = <4200000>;
> +		regulator-max-microvolt = <4200000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		vin-supply = <&vreg_sys_pwr>;
> +	};
> +
> +	vreg_sys_pwr: regulator-vreg-sys-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_SYS_PWR";
> +
> +		regulator-min-microvolt = <24000000>;
> +		regulator-max-microvolt = <24000000>;
> +		regulator-always-on;
> +		regulator-boot-on;

... supplied from what?

> +	};
> +};
> +
> +&i2c15 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	eeprom1: eeprom@52 {
> +		compatible = "giantec,gt24c256c", "atmel,24c256";
> +		reg = <0x52>;
> +		pagesize = <64>;
> +
> +		nvmem-layout {
> +			compatible = "fixed-layout";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};
> +	};
> +};
> +
> +&pcie0 {
> +	iommu-map = <0x0   &pcie_smmu 0x0 0x1>,
> +		    <0x100 &pcie_smmu 0x1 0x1>,
> +		    <0x208 &pcie_smmu 0x2 0x1>,
> +		    <0x210 &pcie_smmu 0x3 0x1>,
> +		    <0x218 &pcie_smmu 0x4 0x1>,
> +		    <0x300 &pcie_smmu 0x5 0x1>,
> +		    <0x400 &pcie_smmu 0x6 0x1>,
> +		    <0x500 &pcie_smmu 0x7 0x1>,
> +		    <0x501 &pcie_smmu 0x8 0x1>;
> +};
> +
> +&pcieport0 {
> +	#address-cells = <3>;
> +	#size-cells = <2>;
> +
> +	pcie@0,0 {
> +		compatible = "pci1179,0623";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +
> +		device_type = "pci";
> +		ranges;
> +		bus-range = <0x2 0xff>;
> +
> +		vddc-supply = <&vreg_0p9>;
> +		vdd18-supply = <&vreg_1p8>;
> +		vdd09-supply = <&vreg_0p9>;
> +		vddio1-supply = <&vreg_1p8>;
> +		vddio2-supply = <&vreg_1p8>;
> +		vddio18-supply = <&vreg_1p8>;
> +
> +		i2c-parent = <&i2c15 0x77>;
> +
> +		resx-gpios = <&tlmm 124 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-0 = <&tc9563_resx_n>;
> +		pinctrl-names = "default";
> +
> +		pcie@1,0 {
> +			reg = <0x20800 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x3 0xff>;
> +		};
> +
> +		pcie@2,0 {
> +			reg = <0x21000 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x4 0xff>;
> +		};
> +
> +		pcie@3,0 {
> +			reg = <0x21800 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x5 0xff>;
> +
> +			pci@0,0 {
> +				reg = <0x50000 0x0 0x0 0x0 0x0>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				device_type = "pci";
> +				ranges;
> +			};
> +
> +			pci@0,1 {
> +				reg = <0x50100 0x0 0x0 0x0 0x0>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				device_type = "pci";
> +				ranges;
> +			};
> +		};
> +	};
> +};
> +
> +&tlmm {
> +	tc9563_resx_n: tc9563-resx-state {
> +		pins = "gpio124";
> +		function = "gpio";
> +		bias-disable;
> +		output-high;
> +	};
> +};
> --
> 2.34.1
> 

-- 
With best wishes
Dmitry

