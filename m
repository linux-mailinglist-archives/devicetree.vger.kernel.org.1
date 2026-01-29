Return-Path: <devicetree+bounces-260878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP+gEtVRe2m3DwIAu9opvQ
	(envelope-from <devicetree+bounces-260878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:25:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 658A1B00B0
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B0A93016264
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8A28385535;
	Thu, 29 Jan 2026 12:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NtmXpPkl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I55MKUC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EB928850B
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769689550; cv=none; b=EP/X9ULROCmDAlMfZ6ptiMRxhoHkTofq13XNJ7hTDNZ5O0bpMsLHtfRMXJCtBgOvImz6cCKkQxQetAqNlmwM8zR5mEtxU757bjF/zOwcqqIKRRrzqFnqH2gYtbaIXYWJqluULfI5+JxApJSR2BGrbvD6mNvX+TBL1r9Ui0MzwHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769689550; c=relaxed/simple;
	bh=SLSpXRFms5PKk7pecOicO+UvyPTN8aa+jIBJ9HXDiB8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=muXLs7Nvv15JAfacVO33czhzI+j/8/KG2cjekvBohbbMITnpoKb8HbU5fXe6wX7XVyTqq63n7THA41p8+AYsY9k15/9l6TTNaerMKivnE5fNZKXf0uGudRxBgYUJUGc8gXiRpfxW+Qs+pzdkZoFRrgsfLyOSMXk0/BriMIrSevc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NtmXpPkl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I55MKUC+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TALQJS2033398
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:25:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qob23DBD+bSq7eIQOQujBH/vod+svy0OVOZrvD7Jt/Q=; b=NtmXpPklguVlZPIJ
	PjezfJmv+cnx5gCqzgnX4AxxolNP0a14YEo2XefhypyikKaIJslezK2vgeIvii1q
	WEYCR6zFonIO54SUfdOgyS82npfXsppWlC/v4v3SVQiL5tlOv5f7KlAyHo4VEvnS
	rRVGZb94ggnkrMWXI+f8mwIhZPEAcLcfkX6odI6XFjxqNaG/AHiy8jV3jO7hBQ48
	VeyI831yodY7bxf6ZlmCG9wxPcVh6S8EEx25HnhXuU+XDd/Ti4e10rS63QATltOj
	SK3ITQnS3a8ah6pBT7yFVef3fDc3xnH8wUgDNvrqecwVUd+RIkccevk2dMv+qzee
	Gv01bQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byna7kjuw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:25:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6de73fab8so28095885a.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769689547; x=1770294347; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qob23DBD+bSq7eIQOQujBH/vod+svy0OVOZrvD7Jt/Q=;
        b=I55MKUC+zHAR+VBPIc/OGXuzpe86HQ3GDXncVpuKjvW/NG41SFZc3SOntXIXkmRWbZ
         yJNAI/QkJ4yKf1NYnwszdCmcrjhUoVmzD/wPlC0Oy9gsd/tgx03eVHF4TvZNKqnkbj5L
         SmIIP0tRZCPgLwqjvGhfP3NiGgFG3cRTRL17UjR5luikUbHIZlmOBc0Bp9A2fbByZB8f
         B25FeUORqENf87tZJx9GcXFLHcBG7nXDHUcZOts5flyN3nx06KFXA9qE4slSqxNU2AN8
         B3HYAE8qv/XzY+sfJRvIYLUQ95rc+bIcuox0HzN85P+lGqfEvg7FZWJ6I7PuKbeU7z0L
         9qUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769689547; x=1770294347;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qob23DBD+bSq7eIQOQujBH/vod+svy0OVOZrvD7Jt/Q=;
        b=lXWXXtiHGwNZMWc8Z3/TBsZEhzuOrqCzq+UpdyDMmFKo5uTvII66iufUwRIltiBbXb
         ZksN/15VXfhdgu/ye35OrWseIggct+mfF6l5L0YPKw+kLwt6usijRi5e6nTxl/BkgqBr
         VrX+ZemZpKvl2CKLzBUndxIAiRaoipkrS1n7ZS1P6YSn5TIULlyEM1NQpOi0cDH+kljw
         +VvRrXTbHjxBjhSjDr/XtEiIYbR3oXmRpb8EEn7Htkfx4PCjaeAtuydRV1E82Biln66F
         FRPQF08nWuicjYPIRzY6mXCXbzpImW6GpIM411WxW/a37B0xNoNCPk8oecOfk+G9ghMx
         Jhjg==
X-Forwarded-Encrypted: i=1; AJvYcCWvVne3/ZhSeDNplIGj5i/2Ji+Qf/cpJDQRfOySGFNDSV4vrzk/lbeqDuw69J6XsSGYb8rb0dm9MxS+@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz8JKkw1hfsgeI4O/ZThiRFnf5ns3RWKYjbfMWJGAL6kJ7iqc1
	X78x+cuVyfxbRNHHU3Zgj1MrImILTp7B5206DHpv7zenf9dRbOmm0n9/3M6Q6N+x8XodrGNAE3q
	baOn3XkE84fjGs+VD7nfVHQ9jqt0ACqh9XgwjoZ4KV36ufV0SvJjcWvxtISlEGYad
X-Gm-Gg: AZuq6aL/1rGsQH9ep83d+kt9bUCByfeLcCZS11D6aw+WjnbGkpGy6DD8xSvnVYdqSOv
	g8n+Gd94j9MJ519zdOY/2t9xoX04vYLn9Eg80bzsS1IDMzcJUqE78MEbIXc2X25AAxbTtMJkGe8
	MkncFDV9iAkC8mgpMxu34H+4UBnznOvOnQLLKa83X4PTVqoAFcN+66rhTAst1sEp7oxCp2qLpuG
	1fw+sDo9dVBQgJVICZOcQgPHFqmBz3EqNaJllFiSJxxyq0GDKpirOOspKOSONyWmJ9GdGjfr96I
	GsAVDOiCJUWnu9ZMgVCfuXXFVG2l32OPmhGP8w8e9t47TuZXcJYO899Vr3IpqTUDNOOxK9cBn+S
	tKQB14niVZPFZWbwpLN0SctvsIuU9i1jnG7WLAm8gDQRpq9o8yQVPI/ju+dZk959HMCo=
X-Received: by 2002:a05:620a:4621:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c71adc0ae0mr369270685a.11.1769689547383;
        Thu, 29 Jan 2026 04:25:47 -0800 (PST)
X-Received: by 2002:a05:620a:4621:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c71adc0ae0mr369268185a.11.1769689546930;
        Thu, 29 Jan 2026 04:25:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8debc6e956sm50055766b.64.2026.01.29.04.25.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 04:25:46 -0800 (PST)
Message-ID: <f5af2b4f-e2dc-4aec-99c1-f06ef0eaa000@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 13:25:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: ipq9574: Enable eMMC variant
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
References: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260129062825.666457-5-varadarajan.narayanan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260129062825.666457-5-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3PwBNuc5faTnx6nckvNyO1M6y1Z4ff6q
X-Authority-Analysis: v=2.4 cv=J72nLQnS c=1 sm=1 tr=0 ts=697b51cc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vLnTREUV4GIbjpHtmtAA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 3PwBNuc5faTnx6nckvNyO1M6y1Z4ff6q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA4NCBTYWx0ZWRfX7yE19IaecmsQ
 N3m4d0GIx9Asgio8Oph2uU7/i7ExdFSOnBNBPm46UCCt+rGKYs/uzEnV2MPQdlGU9FkuOuPNrVt
 DIbh8lPlDTjfJPmK+YTz04b5uc8JFPBK/8qjm5RCJy5i3WLsad84Lut2rz/RWOOLWr2gSdNFAFF
 HX9jttvvYsAsf997UzNLearDQaoTJjmA7OMoCqHoj68i/x5gHt6NaMs4KJQBQ4FJ2h+lBv/iM3o
 Z5qjIC5GP8K4wXS1QN+LEb+G+6Ys8WnZXuGo7JfWu9q4bBm8YSTvtMkgt7ASomlEvnHTp9nZxQp
 ZwcRHWkiLrbLqCQInpiKg0JHyAQSdmQmaGPKJ/mIqdGXHwG6pRUvx9WtEPie8gGCONnkyHGO3VS
 j8neXb+J6HyX3Hsjn/M0jFSUCmmyuXQBJdELXLnOPvlVPwr483AkqiMh3QTtBXDCxfm8pkix/Id
 LabjUQl8cTlLImSr51Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260878-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 658A1B00B0
X-Rspamd-Action: no action

On 1/29/26 7:28 AM, Varadarajan Narayanan wrote:
> RDP433 can have NAND or eMMC based on a board level rework. Since the
> same GPIOS are used for both the interfaces, only one of them can be
> used. Add a new DTS file to disable NAND and enable eMMC.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
> v3: As qpic_nand is disabled in ipq9574-rdp-common.dtsi, no need to disable
>     it here. Just enable eMMC.
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  2 +-
>  .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 29 +++++++++++++++++++
>  2 files changed, 30 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6f34d5ed331c..d5fe12ef4300 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -26,7 +26,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp418.dtb
> -dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb ipq9574-rdp433-emmc.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> new file mode 100644
> index 000000000000..249b8e07db8f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: BSD-3-Clause-Clear
> +/*
> + * IPQ9574 RDP433 (eMMC variant) board device tree source
> + *
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "ipq9574-rdp-common.dtsi"
> +#include "ipq9574-rdp433-common.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C7 (eMMC)";
> +	compatible = "qcom,ipq9574-ap-al02-c7-emmc", "qcom,ipq9574";
> +};
> +
> +&sdhc_1 {
> +	pinctrl-0 = <&sdc_default_state>;
> +	pinctrl-names = "default";
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	max-frequency = <384000000>;

These are all properties of the controller, which the mmc core
later validates against the properties of the card, please move them
to the SoC DTSI

> +	bus-width = <8>;

This is arguably a property of the board, but in reality it's so
common that it may as well reside in the SoC dtsi too

I'm a little surprised to see no power supplies, are they always-on?

Konrad

