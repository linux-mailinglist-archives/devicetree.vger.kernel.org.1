Return-Path: <devicetree+bounces-261950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKZuIjAHgWkCDwMAu9opvQ
	(envelope-from <devicetree+bounces-261950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:21:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA73D1065
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C258E303F54E
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 20:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CA32C21EA;
	Mon,  2 Feb 2026 20:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MbCXbz0G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aTSoARvs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC342C026E
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 20:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770063604; cv=none; b=mkJ4VlqOa7EQtwVQlCN5Hb6egV5A3/NZLBhC/yBMgrB0O8ya+kL4Aqgpsj+E/lqpBgQy1VMnBXe4bf2muJJXgT2A20oGvLynsDim5jvjVET/SYuXhGtodFlh7NnBBQ5ZzN3YGoihbiIr7shpzrI1G79kISR7hRxc7N2ORXYZDB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770063604; c=relaxed/simple;
	bh=7Xju99H6x51vEBIJfDs8SHSFXi48RU8Ip9T8nYkmPtI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JbOz6v6ykFzGyKCWiRmT7ey5ChyQhR/2/tG5ivEDqswACF3O/QwZhmbGfpt5tj0GMpau++8QGWMClg7GueNRunBuC2yu6bZwO+yryy621eumNAHpDLkbjT+rYiGYJxRM9wKf9U77dKE4cvxwBdBDXQDSMddVCQi9QabT/truYIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MbCXbz0G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aTSoARvs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612JoX1m2261910
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 20:20:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hqW79QR/oPjljA0CFL6vvS6l
	MU3MtJNuI3nIr027n3I=; b=MbCXbz0Gyt4+BILhXTLc5YITner4qCqjMj4H6v2X
	4NzDW3DNLYzejr3byOyttkN9cRpxIaqPP9WXLR/cvETc3Je2Il8GrLW8DIspnt9t
	sJ3yCPKCD7Cxj7YZe8Qo2c4if7ARiZaA4KseHK/5r2uIYAHq0s1LgFOrl4IF6DNw
	yyaq7JUHcOSU9JEGeQeU3fuNotDPZdtqrfeR+15gxmg+r6vQxToAaOCqyDNVVDDi
	4F3kxP9vWpbBhO0cumcFg8L3BT35y6JNCGdRESM+zZMTmtdozIroNXt9LW+9FDpQ
	ZJ94pjR/DLfYHOnOgbZA6qLeGTVJU7qyxAy3bXJZ9gEdqQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tmthpdf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 20:20:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a2ef071dso1320246685a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770063601; x=1770668401; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hqW79QR/oPjljA0CFL6vvS6lMU3MtJNuI3nIr027n3I=;
        b=aTSoARvspftsrryNjkXJD97qQYbwpzpk3XBcylzdJ3mnCXddyhHCw2HrbuMyh8chlh
         MktccYEmq4LV+r39mfD4IHH4mHPunv/DICn1Cw0Sqb+vZClGO8cKLOHwRMVXpbCytFyO
         Zi4dTH/Qs4ietNnRRiIe2qiC6pPnxgBtUiGFLIJtFsBQTmgg079h50y6Wxno5YGIky/w
         lJtHDyBVrPxOkgquHwAtX/pzyJCt0q/aUHxuH0vq8iykSO8/si/Jh3Ch9+Y/SuK2DFmk
         x49U1ns23LZrSiufI4JxazDLb3+ub0hs5/qfYJt6xYniV53yWBX870hMNIQ3mybwn7u+
         MuFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770063601; x=1770668401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hqW79QR/oPjljA0CFL6vvS6lMU3MtJNuI3nIr027n3I=;
        b=AjXQuPU8W3rzSY+tvaiFp3c/7yNGRSZQdJFb6IvkIjOKDW3Y1K3EXI63AUmv36jJe7
         EXHi4Xr7WgVUl9qVMeTcm9NtiEJl4AaNL5MfpNRHpI+KAqxwqGRYp+AgK2V5CaDzMVET
         rG3m4fysDME+kL5X5YDS/end2A4hTaMdac7cnruSRNV6rr9b8ST6nkpk9up7DqAE9NJl
         fTa6kaPTuxtElqb9G3/sHEf6JA3VjRR4P0mxZKCpAPyBi69yX8I33nZmdhl5/9DNMdBj
         iFJplPUvPpiE6BD4fF7z/p/2usCH7j3eTcTENGr6HIr9EqfxvOEUxIsXPwOBERcGMVYa
         nm1g==
X-Forwarded-Encrypted: i=1; AJvYcCUtmzkKMfetDQHbgal8BURbWYP6d1YPE6tCOUl5sWQxJ42Cw2xpijSTBhHYcIWgVJRrujOHsj5/aYYm@vger.kernel.org
X-Gm-Message-State: AOJu0YyH5qX12dYxLjx405h5kEtaL/XupPoUvN0MaABLgpzS3AtGK6zH
	lXrs8l1gLFtlHZlDBqkOPxHhjpR3HxpgpNztwBlYggcYvNGmiXBCZZLMwnZIAJB8SS4Xtgd6q3p
	0ptejyNGxz6oNUoAOWZv0aDV3+fWkwBKc75AQMu7Whavydgq8z9M83RGZhHnRZnz+1/1RPBtiHp
	OM5w==
X-Gm-Gg: AZuq6aJcRrHNkIoSfub7E+GJueQF686GiXT+1nQiLh7PucUihyPRkM64qg6jm4cC6a2
	VLZFuhnTI1/XDml4HiGw9d7p70HWzc7JPQrfSt4tcAzfzm74rXzMikWJgJnp803MIZsdWDLgyCq
	DTgy4lAdWpYW5uSXvvWMfTiTSaUmJVjDomRBNLueUz0jVzOmvg3y22dgR0mddz8i3ZO8AwV6iw8
	pSfc9B+n6JLvF1ADNO0IBD+HT+UCrUdbtP729SoFyF251ezbzOvlGT7zWf0Xtqj+Lz2Z9A1hlHO
	fTBByvI6cRYZquhSw5LYpWdtZW0tAF0jq5U48myegIIeOi6ErtTev6+c0nv5qysq4n2WR5vyJeF
	IZOq0WBsP4g5Q2OBG8B2RsdHxqV2x7Bz5XzDep/+a4ZS4/BKYrzq2qAMunspIx1MNWrloY/Wez/
	A6ojms7f9om36yGlyfs1BYcfQ=
X-Received: by 2002:a05:620a:4503:b0:8b2:f1f3:901e with SMTP id af79cd13be357-8c9eb32b086mr1626254385a.65.1770063600724;
        Mon, 02 Feb 2026 12:20:00 -0800 (PST)
X-Received: by 2002:a05:620a:4503:b0:8b2:f1f3:901e with SMTP id af79cd13be357-8c9eb32b086mr1626250585a.65.1770063600046;
        Mon, 02 Feb 2026 12:20:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e07487ccbsm3622116e87.22.2026.02.02.12.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 12:19:59 -0800 (PST)
Date: Mon, 2 Feb 2026 22:19:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: lemans-evk: Add Mezzanine
Message-ID: <f5lobc5k3iyjndtosof37su7fccmbhtg5ufexd3vmeebyl5onl@vvaomdgeaoxa>
References: <20260202194234.3701434-1-umang.chheda@oss.qualcomm.com>
 <20260202194234.3701434-2-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202194234.3701434-2-umang.chheda@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Xb6EDY55 c=1 sm=1 tr=0 ts=698106f1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OyFC6F_nvQZ7iwIFy2UA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: m-6j4A1XXLV3Cq7L_0pXERajhPHPY4E4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE1OSBTYWx0ZWRfX62OlQaTWVZag
 pKjdIYmLDu+xXnZHbAI8PLwqYsOvSRnINUkoh+HoAjnfmT4EET9W7U7NZoLP3b8RdbctayfmmI9
 wKYrku49+YsFqBAFR5WmAsOZvNmTGfUQDKblfUZmwdB6hK8C4nO4E2nilJRNHF5jkZZClJqb2Hy
 7Rh9XRkABWtGZ4nX6x8PA49vsuD6vGpw6mESx2ic1semIZug/0KP3TgDG3RKXq/V//86ZQvPtd8
 VqOaRQHTZY8JqDFXUrGHoNdB7MOkdql9IMwfo5x5g5ZvL5l2Bs4mdRbH2XEJoyEuRLcM52UywWG
 jz/rnv5FvE3UcdyeWr53BPeqZnJ0YTK97CHJqfnPm2Xb9scY13UGBTV1PE14x+ehnUZcl9geLCM
 OYJ78Bb3snLFg/WFOafF0i9e+lAdEZ/HeRTSQNEtT40ar/3XJEFTNHfftM6fwVVAndIC7wrV3c4
 FrRd8XpD2gx2D1vc/Qg==
X-Proofpoint-GUID: m-6j4A1XXLV3Cq7L_0pXERajhPHPY4E4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020159
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261950-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3DA73D1065
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 01:12:34AM +0530, Umang Chheda wrote:
> The Mezzanine is an hardware expansion add-on board designed
> to be stacked on top of Lemans EVK.
> 
> It has following peripherals :
> 
> - 4x Type A USB ports in host mode.
> - TC9563 PCIe switch, which has following three downstream ports (DSP) :
>    - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
>    - 2nd DSP connects M.2 B-key connector for connecting cellular modems.
>    - 3rd DSP with support for Dual Ethernet ports.
> - eMMC.
> - Additional 2.5GbE Ethernet PHY connected to native EMAC with support for
>   MAC Address configuration via NVMEM.
> - EEPROM.
> - LVDS Display.
> - 2*mini DP.
> 
> Add support for following peripherals :
> - TC9563 PCIe Switch.
> - Additional 2.5GbE Ethernet Port.
> - EEPROM.
> 
> Written with inputs from :
>     Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com> - Ethernet.
>     Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com> - PCIe
>     Monish Chunara <monish.chunara@oss.qualcomm.com> - EEPROM.
> 
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../boot/dts/qcom/lemans-evk-mezzanine.dtso   | 301 ++++++++++++++++++
>  2 files changed, 305 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e8..79449004adfd 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -43,6 +43,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera.dtb
>  lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
> 
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
> +
> +lemans-evk-mezzanine-dtbs	:= lemans-evk.dtb lemans-evk-mezzanine.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
> new file mode 100644
> index 000000000000..674afe485a1b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
> @@ -0,0 +1,301 @@
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
> +	model = "Qualcomm Technologies, Inc. Lemans-evk Mezzanine";
> +
> +	vreg_sys_pwr: regulator-vreg-sys-pwr {

Please sort the nodes.

> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_SYS_PWR";
> +
> +		regulator-min-microvolt = <24000000>;
> +		regulator-max-microvolt = <24000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vreg_4p2: regulator-vreg-4p2 {

-- 
With best wishes
Dmitry

