Return-Path: <devicetree+bounces-244878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5907CA9F09
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 03:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5275F304FEB4
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 02:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D83280CE0;
	Sat,  6 Dec 2025 02:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OUtMvQCX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PhZZ3qvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C19253F13
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 02:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764988957; cv=none; b=LX1F3LhkPWzXInFENtqqR1c73WEDQpNr3s4qyoubGozIre+pJ6+AihYEsAxlzAbZml1fLDnpNOp9C1Hf7DqIRzzTrY3jZ1hhdbmoimMXLXr+tuci6Nb0dV1b5HCOmqtUV67c7o7PftzDNsoXJlyh9JN3/3bHArcAPKDaHvcdn9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764988957; c=relaxed/simple;
	bh=MKsciCa0+SHQkqm4A4AT4bdozTfRaIXOTzFhta4uI+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LM+JzgbRfO5m1Ev+7c9ZHoN2cMZSPP29Jwzo8n2qvb6lRQjLfhguaXbokhJk2ToKtzH0wUTRITWOAxb/tQHWsqnw7FtlMpC5kl5te5356Qd/g8DE94upOZMkC0ddb6N3sBKqdJeUzcg99HKm5E2RQlAy6z1uPnf1pATgehwOnk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OUtMvQCX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PhZZ3qvG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5L8e5h1418803
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 02:42:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8vEYaCwRf4ka2cYpl/v1Wd4a
	/BigQgYyC6ih4TwIs94=; b=OUtMvQCXsQbMMNha1WY5gKNYmEJzB+/DiVcjO9pB
	KOjPlwXqKD4yAHPJHRbg5YIlrbxSMXGdlHdsSCzkEgaOb8ujIdpDZXLvQKwsk16a
	z4MXHbN2A/hxnTtyz0eOVbSFB0Mg3oaJa/UUeLsO6Ho4xl9uxBVsmeDDqbRH0FDC
	wLwYCYrlRPkp8swHTIODHVCTOV0yV1RgcUJksMYi56jDqfe2Gg+59IxS/KS8BjLY
	Yh/+3h5M2RlnRN4KFKPPtHBMoqMoIyV6gMwQzrE3agtcgAZk4DkK49xz6rdjRR8S
	2x19JiHMh8TLYc5CaBYi0PXvvDMwEiqUjMkRfL/xRe6zDw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av71kgkjx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:42:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b17194d321so320476185a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 18:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764988953; x=1765593753; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8vEYaCwRf4ka2cYpl/v1Wd4a/BigQgYyC6ih4TwIs94=;
        b=PhZZ3qvG/YDr8+CgS0GjrrOXO/ow4uyQcjjYTJy/4XAL/SJvLatq2xspuLFKZRdos3
         fp4zXcxWcd8EFI98JKj3bninEDKvBoCMPGsMEEWrWnnc8+rFlj68FBcyPX1ikxmP74zx
         B+ba6+cQGt+wQ0G5/a4NpwV2f8jP7sbUj0UhpqAOObdjPpELEHwRoo+kZ46VSFvcLCY4
         VN+O0wja2mScZmocg0Cewq2aKPEE78E5XbVR983n3ZOxMZU/GMKLvnLwGpDPyA8c/+CR
         K8ofRyusjKmPawFMjF7BCy3/nhg7g58RsP+LzmMBUF75Q3YXlpLJPHbLofGz6DHdD+d4
         TQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764988953; x=1765593753;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8vEYaCwRf4ka2cYpl/v1Wd4a/BigQgYyC6ih4TwIs94=;
        b=a6nBCnYXzgILUP7qFH+A1h5LXKv/swdDjj5CgkHljNWo6qysBpaHbTK+n8EsG5D94d
         /EFSiDeYiWzcVB7MbhYTFc+afC0nra/y+f8iVsRUdg93tRpgLWvikNVZGJ1UxS65tIi9
         hntqi+mA6GvlrIoJ3qwWcsTjagGH9dlVGyQ+lCYJwGoeRhMKWSJ3vUnuTYw3AAIkZ4YO
         kX3+F+1s5y7EXswAYE7H59KryU71S16uWPeikWgTbpJelHiWyxryPt0snNkv6mL8iZUy
         UAb9mUdyEFedUBI0fyGXUtxs6FwlZ2sis1XecqyxktzPPFkRs9Wj2UfDaFC1UMTD/1l8
         yQfg==
X-Forwarded-Encrypted: i=1; AJvYcCUCnhK7oUn+DgqzHyrcfz01dwgAROsFR59xbJeqFkAiZhfVEad7Fn41gq6put+YUrg9/urifzV1sLIJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzZZoPr2130BmYb6ua4vHErMA1Tp9aBf7Zy7W5A7lgrXkCNXfdz
	i18ZjSHG8O8tEo7VotlOxOOhH8aWHoS1OkNYxon9KebXpRULJPDEA3a3CM6lWM0p6L52aGI0Ejo
	a+OzPCMZkcCdp5LI0QqVA28gLQ6Dxre2yzMSMWHCHFxONtllSSZOz7A2aqk8GhaqP
X-Gm-Gg: ASbGnct3cixAtrPwlp//fdRZA5v9E5n6tPURJMPubIYnvNQKomFstPoH9YamN2aTeVA
	dY2p/sTOqZLZxEVfuJOaL6YbF9EtYgkMPkqx22MNgX56mA7cU6fz1wLnJnWP8mR0x7FCAZZTtRo
	jaNkwR0hpen8/X/mjGwjN4LNu57KqGRNiplh+HY58aFKkGm9rHp/ddu0UeaZXApM0bg3OYcSOMY
	A9WA9Q6vENjfA9y+UcAI9KUp4MJI4maYRsuvpKQp8BgD/dDJuTBQiBNFRo2Fwu45G9Gop7GKmr2
	TYRDkaE2SLcAJL2YCyPuPorqnGlsny8fHfCsVRFfBGQqORS3VQ5o0FhKc/BR6+CaUjNnekvhq4q
	YlQSOneXDRdwyvs68QxnQPoJiTtfrg2BwEdD3iGuPqhFlqMhd5+mD2YS3poaBxIFT8+wFw1BET1
	JFnU8BDCQF8pH5q8u4faZDpOo=
X-Received: by 2002:a05:620a:17a8:b0:8ad:5014:53e3 with SMTP id af79cd13be357-8b6a23f81c6mr177352685a.80.1764988953177;
        Fri, 05 Dec 2025 18:42:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRqUvtPN9NAU+ela3AHwHLV777OGLCjqdCKb79Qr645PXFZ6TuLiGxpK85Cw98NJo+sy0sPw==
X-Received: by 2002:a05:620a:17a8:b0:8ad:5014:53e3 with SMTP id af79cd13be357-8b6a23f81c6mr177350185a.80.1764988952687;
        Fri, 05 Dec 2025 18:42:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e6fe88e54sm18173041fa.11.2025.12.05.18.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 18:42:32 -0800 (PST)
Date: Sat, 6 Dec 2025 04:42:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: kaanapali: Add base MTP board
Message-ID: <dzi353lv54eusahl5wyjlvinuzhn4eujxilksnz63urooskgrs@fxo4ancdzcmd>
References: <20251204-knp-dts-v2-0-596d8398c6d3@oss.qualcomm.com>
 <20251204-knp-dts-v2-4-596d8398c6d3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204-knp-dts-v2-4-596d8398c6d3@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: bi4KcLEicKTPU2otDPAOgYlLIUGrss9t
X-Proofpoint-GUID: bi4KcLEicKTPU2otDPAOgYlLIUGrss9t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAxOSBTYWx0ZWRfX0MUAIfRt9f4i
 q//QRpwGykmPBcRzf144SAySRYvICMPQJ5M6SjuiOGkdT6OhZptm+zG48532C9ll7NfnW5NNkzY
 tqDVPP67z3IZCx3cgo/cix/4qoiEyMV93OW1e3UMhyNApGyFLFyqks07XkZftyHRw/PcsLgoN3X
 q9aXInZjjjg8x/KiCjUtjceTg6rUONl8mN1p4ZWsPeE0FTl25VpRwlTjR9LCiRIwtSMsiQ6L0f2
 wxhMey+kNBe5sidYpqXF7DNWhCxD25fbMeBnWIK9CLzp8bSx5S4MALl4Agvo+uHpMLf7brJU51P
 6zLBbEzY/7aqqKB570dnPZ3n1rV1XeInXuOBjGKBcnGGR8+GimbwLk2sUyatVRMT4QTA6KVXXF1
 j229/7QAvTyiGIQLM7sQchRhLhHmsQ==
X-Authority-Analysis: v=2.4 cv=Uvpu9uwB c=1 sm=1 tr=0 ts=6933981a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=uvgPYyQEPnCC316Wsg0A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0
 impostorscore=0 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060019

On Thu, Dec 04, 2025 at 10:31:22PM -0800, Jingyi Wang wrote:
> Add initial support for Qualcomm Kaanapali MTP board which enables PCIe,
> SD Card, UFS and booting to shell with UART console.
> 
> Written with help from Jishnu Prakash (added RPMhPD nodes), Nitin Rawat
> (added UFS), Manish Pandey (added SD Card) and Qiang Yu (added PCIe).
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile          |   1 +
>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 754 +++++++++++++++++++++++++++++
>  2 files changed, 755 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6f34d5ed331c..ac6c0178aae4 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
>  
>  lemans-evk-camera-csi1-imx577-dtbs	:= lemans-evk.dtb lemans-evk-camera-csi1-imx577.dtbo
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> new file mode 100644
> index 000000000000..32a082598434
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> @@ -0,0 +1,754 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "kaanapali.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. Kaanapali MTP";
> +	compatible = "qcom,kaanapali-mtp", "qcom,kaanapali";
> +	chassis-type = "handset";
> +
> +	aliases {
> +		serial0 = &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	clocks {
> +		xo_board: xo-board {
> +			compatible = "fixed-clock";
> +			clock-frequency = <76800000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		sleep_clk: sleep-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <32764>;
> +			#clock-cells = <0>;
> +		};
> +
> +		bi_tcxo_div2: bi-tcxo-div2-clk {
> +			compatible = "fixed-factor-clock";
> +			#clock-cells = <0>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			clock-mult = <1>;
> +			clock-div = <2>;
> +		};
> +
> +		bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {

If you are defining the AO clk, why is it not linked to gcc (in the
previous patch)?

For this one:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +			compatible = "fixed-factor-clock";
> +			#clock-cells = <0>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK_A>;
> +			clock-mult = <1>;
> +			clock-div = <2>;
> +		};
> +	};
> +};
> +

-- 
With best wishes
Dmitry

