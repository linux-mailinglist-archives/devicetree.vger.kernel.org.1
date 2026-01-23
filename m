Return-Path: <devicetree+bounces-259107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMFiLt3Hc2lZygAAu9opvQ
	(envelope-from <devicetree+bounces-259107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:11:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B19F7A0B2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B49D83050D6D
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FEAE2620DE;
	Fri, 23 Jan 2026 19:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G41R9t1p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HuV0z4O/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE231F03D9
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769195395; cv=none; b=mQcLQHEQLztCR2lBAwG1m4um/a2YC4ynJKeArot5HpwPrnzb/H0A/5PvLvdvMeTkao8sCH0cwu9cPVnGWNFNCuO6xD15W5VJCkcz8hnu+74d33A7/TSKTpOkS4ncVSHLL29/aq+BOqb0y1HPTP1R4Km286BVg7m5zknyKVeMUS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769195395; c=relaxed/simple;
	bh=BeoZj4Fl6JdDZ3Hlx3tkx4xppCnx5cXNsW1rw57SB1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DEnLtVJQJV7FHFpfWjUgD2uG/TVCIIU10CV6CpIuTU0TVrDeEZ0lzRnnLorw/dE1TfMVI+zgx9dptnUszFrjmVEf05N7q+2S/x3ZQCK9itrpP3N436V8SzdEJO+geyn6bmLo8o+x/p2QIUtWrU6AI3tZwYHjRuMDi3pR1OLlleg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G41R9t1p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HuV0z4O/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NHcMvR3648929
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0T0XPnkEToV8Aufux3/ltEAf
	YbvRoDx8ubYhNQlQeks=; b=G41R9t1plK7A8osjs8Yin07n4LZzvI9bC24Nt3IN
	E3t9AxIlhN6/7Dn4d41PuykYqUl5rJTmC2C1fZGUNS7K0rFibDUBjg91rCgz9psW
	R94sotYzb1VxDjIvymBN1/gJXDVxg4NIw2YMDZhks//7hpAi9tTmsClOAnnL4tel
	0IKV80L/eyPfNDFgdbucNBIzv24Gl750ZVhk/0IAHrnv9Yd8DgiZ/B2dqf5vIU/f
	GAXSzw/kI9vOStsoQmugQJll3k/1ptQJvzJJLmEQWSOVfH9sYhuhWFymFRoE5jyg
	CBNm4QqtyvBt/zALv8IOZy5F2bCKjL30PXMgD+cowMy1bQ==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buy4nug1m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:09:53 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9411b2335f4so7145871241.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769195393; x=1769800193; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0T0XPnkEToV8Aufux3/ltEAfYbvRoDx8ubYhNQlQeks=;
        b=HuV0z4O/hO0NC/konui1uYABi5G64qqNKjsp4C18JllxUc/zWJGoVSFjEoLjEtr4HH
         XHjDg3XBWV1GItfXWd2DXMI+A5kIRhZNWoNQWojvTzXc/lMRs1DHSI5CimciF1lU5o3I
         6g5h/1wP6fElWTfXFv4l8816f8tjqxbzzh7eCsvfLpE1U2C6Y8vG0NO2G7YNxSOABaSj
         FN2oDAFrxdP6W+hPM/Mdxg1tlT9VIB/bH1FbLca5u+5K9EpkKaKMq6wOB2g1dl4IYGh6
         b2JvcN42cTVwwD2ugW4cASqJjWdy8ll3ybkhMc3RIH+YSAttXrVqGHKG7AJV28jWlAH/
         xbAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769195393; x=1769800193;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0T0XPnkEToV8Aufux3/ltEAfYbvRoDx8ubYhNQlQeks=;
        b=ifwXyA7yA0Q0OieyCNxiLh27T6ecvFiaf7SUrBlJmJPcjTU7O86XVricdjyI3J82xu
         0ah2/ZcO6mteutMDsH+55aFRKbl5wkqBEsEzmApfaju22xatv3QbRZOvOCgnrDpU5usV
         9bGKE+s3gHArqZMkTf+mxDNIhjkj+jvoy1E6y/4iUsLdS6iZFmh3XGVhTvXiQrVOjO7U
         6NZvXjSObQpxzLFhzI8B30+kCCyHnkS/WiaDZRNE4bw01rmoHDZPKeDwU9lMvOGRJ2Kq
         u2SkKmw8E13YZXvTJW5B4VxlAyXDyjt0ibpydflUUJQuwXglK0zy+IsX171dUCXuNZl1
         DpxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa8RuZTjCxqjXCuhYoAOYSOrEqaxkxdF8UDV4seFPyInlyUbu5ETNF777EqFZI2ggmS/WTeRHlDQTF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2+wJVr03O8QO7LHMSTOF2sl/8ej/pY5r/fHhb26QDqC16zBF0
	UwE2hjs1ZB3KtQX8CtwJdOTCILfQmbJF6ZWxPADJ7AoCNID7XOTla+0gRWOhJHocpu+olplRIRN
	Mur81ZZF/Lgbb6FGcue22RIJSx/glNsGyHDz8VhIkC5RpMLOEFQsK0c/Leseu9cem
X-Gm-Gg: AZuq6aKEUou1ntn/NdkanarN7qT8UKOp1uZHS0Bce7twp4JTc4V1oBt8XfKQi/RB4XD
	ajkDuZfudrQVdigQLChL1HSeQemJ5RtZIGelgJyYTLmNVG0d/6qNqzpyDVhFd3Cco2YBIySaiHL
	Dm7ZPP4xHazKAALUaHDtLpp54nB/v3AzzRfWtNpJvyhzW8LgzdbIQJvCOECMkBR5sFq0nhN7rSF
	aAva9rFlYvo8G7U41t7T368rC/td8J6g/PQKqm+Rf2VVkq3UyGNaZFUW09B38DWF1nYSg3cRCXQ
	NyHCx/+az/H9Wot0iaKE+NkWfHNUunMpk4bFRzQ1gFYNxut7g5onN5Ni4Qqx3MeoGrExGSjsOD9
	RSkHfxSFoQE1WAKiawCYhjeMVf8yf7vjLN+1PPCceO+yNk0C/vc1YXhRdv+QBuvJz+14t2xa3rA
	A49IzZCOfWpN3+gFPq5JNOgl4=
X-Received: by 2002:a05:6102:2ac4:b0:5ef:a164:ebed with SMTP id ada2fe7eead31-5f54bd36d33mr1458105137.43.1769195393042;
        Fri, 23 Jan 2026 11:09:53 -0800 (PST)
X-Received: by 2002:a05:6102:2ac4:b0:5ef:a164:ebed with SMTP id ada2fe7eead31-5f54bd36d33mr1458089137.43.1769195392587;
        Fri, 23 Jan 2026 11:09:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de49189casm829979e87.47.2026.01.23.11.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 11:09:51 -0800 (PST)
Date: Fri, 23 Jan 2026 21:09:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: ipq9574: Enable eMMC variant
Message-ID: <yrjdxfyfrslr4iflok7iqaq7lzm7lvq7quxquh3ge47bhsl3br@gm4y3usj7wfj>
References: <20260123120016.3671812-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260123120016.3671812-5-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123120016.3671812-5-varadarajan.narayanan@oss.qualcomm.com>
X-Proofpoint-GUID: SKI2cK3lMc2fabSJwX5iDfcZgGtz1imt
X-Authority-Analysis: v=2.4 cv=I5lohdgg c=1 sm=1 tr=0 ts=6973c781 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=psUOJB6t_zCGlG3Wsw8A:9 a=CjuIK1q_8ugA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: SKI2cK3lMc2fabSJwX5iDfcZgGtz1imt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDE0NiBTYWx0ZWRfX2AkVnb44dK0G
 2RQG00/zALLGPjfBBNpGFosBw6hK2FV8E0N06E1m+Kq+18sWaFVB2iN5qpP+bYjlqqzfyH9Yj9I
 zZyo/Jf7lZ3YPMnuEj4DkhYJU/MHOZSAB6BvMUGVD02PuDeh8WZb9f5MNnE+kgDpHl7pF5WKAxq
 KjMivNFiVz1u82W8Ps0CrTj+6OTXg1YaoXYoCXkfkvqtlIga/cOxP2RBS7SVZ3XG0ieiJ6Y2icM
 dIpr4cgd6WK7iYZ5OsQmeBUCtiy2340NgsaS5M4+rlsORxJr8meulHMa9yHaLuIDtOlt7IUN5VU
 nL2yscSZwTd3AEXaoEIV5X9cmXQu2W/UsZSLEbetgWBLilqXDHe/L1aEvM6XO9VkkfxriY8D6Aj
 hdpprGiwPXEC02RuWPeanhUA3xZKtdWjwkd6eEATq1UxXoaXQS/luIQubqWbrJyBnjxVtKAEpv3
 XaxeAPxjZjk845dJl6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230146
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259107-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2B19F7A0B2
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 05:30:16PM +0530, Varadarajan Narayanan wrote:
> RDP433 can have NAND or eMMC based on a board level rework. Since the
> same GPIOS are used for both the interfaces, only one of them can be
> used. Add a new DTS file to disable NAND and enable eMMC.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
> v2: Instead of including ipq9574-rdp433.dts and disabling NAND, include
>     ipq9574-rdp433-common.dtsi and enable eMMC.
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  2 +-
>  .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 32 +++++++++++++++++++
>  2 files changed, 33 insertions(+), 1 deletion(-)
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
> index 000000000000..c4989d00b18a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> @@ -0,0 +1,32 @@
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
> +&qpic_nand {
> +	status = "disabled";

Please disable nand in ipq9574-rdp-common.dtsi and enable it where
required.

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
> +	bus-width = <8>;
> +	status = "okay";

empty line before status, please.

> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

