Return-Path: <devicetree+bounces-253644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 73447D0F776
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 17:50:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 77E65302EAC6
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858BB349B17;
	Sun, 11 Jan 2026 16:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JGRN0Yy5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d05+K+su"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88C93321A2
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 16:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768150228; cv=none; b=hlZVdgw3iPACI3l+DPDRDcR6YVO68kZuYSOgKi8j2d7lR7JZAVvjSqrNBc7G04rBxM4ff/P3/vrMse/VqriwthpE9bAvBJ9oMMnC36HKxAs5TLqTnwFrJvppATEfquuNT68/EJ72UhN1+7oMEKvpKuoKgmO6q5phlbDlnF+wZDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768150228; c=relaxed/simple;
	bh=4NxPxoCZvpiVAPZppmK3orfq5RwI/4SOA48oKsTZlgw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UTdDXb2PFkhfeCaCpMnAYoZBiBZp4lDv22jAoi9+k+lrivb/nyPdHcVrdKCgDbiDNybRye4LDiMi+WqEnQUeBTkbUUhPuhndXzubJkXLtNv6YeNGs9UmobrmVEMmGdsLhQPQ2hzaC08xvsfVkW2F+1BMqmawFBKbNl2NI3zKL18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JGRN0Yy5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d05+K+su; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BDMU0W2488398
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 16:50:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rRk4AbUOzi+/H5CTJqOkDCLC
	SDPusl2C5U2GZhOe9qg=; b=JGRN0Yy5nb+gE8B9yntwWSBE+OFpw2kVVNwyWG3s
	/5cWfyN5ENpcSaCW+2nmKjstqnowVQK+SN5UuQBVGs/JIIA876nL9uMvCyOJnKre
	wXKJriwAoOGZcpagcTPnDpTO3IMu+lb9+AoDwflytKkqDuBxD7imGLC91fMHD14I
	HSP2+B84W1QR0Bf95KlIPEZHSZzZfbGw6GGoTxJfq+Vkg6ziUeAUkMfhSncNgYWx
	hq7i7k+X/nWEjU7PRjEX9zhxhaFSS6uikyfGLpHk1c6zbXDvaLVt6rUSeVDtqEAp
	hhyU5TYMYt6LRjurlh8+7q76cMqIDsJgW6kUNi5uHCJXMA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkjvxt4wy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 16:50:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b19a112b75so1432831185a.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 08:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768150225; x=1768755025; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rRk4AbUOzi+/H5CTJqOkDCLCSDPusl2C5U2GZhOe9qg=;
        b=d05+K+suRICr+0u2LKGKxgf9KlzY8xKXmeQFhPI/BeMNYaMMZSH8oK82l6XCfxP8UB
         DXdL1YzUP8BOElydE8/hrGhJZJJMjCYAXl++3dUNIP15R/9tnZ3em8mPivbmC717AuMW
         MKCBprGiNuppIk/6NL2z9b1c/wQ1xNdqhRV6nCYDuxT0aafT77wj+lUUQS9hecQiaPRW
         xxVM/U7sUq0ABKho/WFNaE+Aa1Xp+F0JgV0Y+g/HwZw3YsPUfkLeqWBe3T3nwKKyYCmE
         OiWfUKZgHADhzQfCHS+f96exhpRQEwa3vbUK96iRs0hSQ3GyzTKh0qYu6fS2//o/4fqe
         ioQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768150225; x=1768755025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rRk4AbUOzi+/H5CTJqOkDCLCSDPusl2C5U2GZhOe9qg=;
        b=oOH6E0cCVppAW9W5ebsztn1xTUQR3cYZtQEaykmKycT+5eqzLNTA1S0UHvl+Gez5Za
         S2RQmvTS2cnqbhwhfyAFltBbwtkDoAS0cyaLgT2kOmd04Ym11d94EbtYS8bWYY9qLOcb
         fZCLAmeqLR9RQcVvKM96BscMmbyr8bPfoYZ4QZBFud1u/9ILuWh0jnbXzQF32yF0iazq
         w6EzPvVsH0CiYGbIIBq2EX7hdgtRCIvqZQxOhfS4Fm+d5B1MPQEEZKjQivI6Cianzvb2
         b2ldBK9Ma0as0csXGhotu8phfiWFh3f9aohRnPnYZWA5mUaPweMAlhJ3rVC+iZzzDZzI
         arvg==
X-Forwarded-Encrypted: i=1; AJvYcCWr0EMc9yfShu2LQnwTjd2/wDNISumlNkOJbTNdXNk/nqWqDaKBKlNj+VqMSBBh1Peib5vJdtazBU0Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxZzaw+6WO2H8cHCusLtpISVGVqIcudCa++sCNeoWUQ7g3j5NeO
	ylyzkvmcGtYDRQpH+yWS37JgylxEu+wvG1qCaprBCWlKSgvtfvE8hlXfadeIChBsoGzt/Mk/Foo
	WLc3Mbs6CDvv7KCBX1ZfWZTK3+B9Pre3jHkh33wK1hCHPGTzhUrnukgdPUNffxMXm
X-Gm-Gg: AY/fxX7+9StWKLw4w7XFnqVwT4+T9V1t3RTzsHg7FVKM4nB7LuLrjGFOU3rmlM2w0if
	CGy7iRAXWdWOoGPG4bRAkNxsC8mEnalc1k+l/JpcRdSg7ng2OUDGKWGW2Obh+0JaFmd9glPpqAB
	MlBr3wgHLHjF2IogO3+2RtxBJRJR8P1iDcOX8Uq1XsFP03qIjy6qwVpVYbmVNDwkLGhkwNHYyM4
	bPoMSCNBfrnuZIOF4988/jWDSd0MVRU7twueJ18K5/7GwTcJX6DdxpE4g1UTLPyeQVq3Rspt7iH
	8UhH9PYyqSf6QwSBQNk7h6hTswUU8sFQoGDMUJaLfmaqmP/z0f3a3K0f3/KpiFysjV4UhACmsba
	IXtUI6nbByG/Jq9ZsUgpvfY/07Y4P25+E0WQSvU4BqUJO373PjelJI8SBT+pkV8c0YEDTe8Ix3d
	RgCYfM93F86lR/8z6onT1/UUw=
X-Received: by 2002:a05:620a:4541:b0:8b2:1f21:ccdf with SMTP id af79cd13be357-8c38940926emr2420541585a.48.1768150224958;
        Sun, 11 Jan 2026 08:50:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvHmufj8RuP6pen0dCkA23Ia2CNyV/3pStMiOsRosk+htDAAXr91AD/6+scyZ7QK1uTMEDoA==
X-Received: by 2002:a05:620a:4541:b0:8b2:1f21:ccdf with SMTP id af79cd13be357-8c38940926emr2420539385a.48.1768150224532;
        Sun, 11 Jan 2026 08:50:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b66697eaesm4191538e87.53.2026.01.11.08.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 08:50:23 -0800 (PST)
Date: Sun, 11 Jan 2026 18:50:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
Message-ID: <wyqml5ywfzwh3uulp4gzlfzx24kb2545w36pkpnz5g27xtnqoi@yywysi37tdor>
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111085726.634091-6-val@packett.cool>
X-Authority-Analysis: v=2.4 cv=Wrsm8Nfv c=1 sm=1 tr=0 ts=6963d4d2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=UWtPkuyo7FYnxAHutw4A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: GcL6WgWua650xcgX6rd1vHFxmEQjjybx
X-Proofpoint-ORIG-GUID: GcL6WgWua650xcgX6rd1vHFxmEQjjybx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE1NiBTYWx0ZWRfX8nQYRvzusZtu
 9K5z6hmdkHF3shyh4fmFPHfq6vJ68yHl3+16aevBwiLXDCjrohV0gBW6/pbl2+kOnDXmtSUEbUp
 AgagoDUP+fiN33u5wuPOGYREFCFqhxvtZuENhsxb/gMDnckKQ+BAqJyltZVbuxuTkky8veZlON5
 pvYU1PTMEK5s+Qy6PuaCqR4HOzwn5DuCWQ5Sg4Ve0jXZIxeTjZt5uRPQrjiCef3/lHna/0p9xaz
 UrIYE4p2verDmtgwjJRrbtgoU6tgm8AEfcdORss5fRuywTEXwJck6o3VUrpuBoYrDpsr37xQMOV
 Tx5rzEMt6uqMhVtF/5gowOAjYroZIw3Hn9dcArigZ93yRI1ORSZ+RKs+puqVj2UZh5RXhvO+B+u
 c17UTXKwKMQtGoLzc8wlSeqnkZHl8VYHLSZGxh7fhPwE3+rYcXxyAnDgAK51N3obiHCtPHbF/1T
 Q5Tf7T+IVoHjihN06yw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110156

On Sun, Jan 11, 2026 at 05:35:12AM -0300, Val Packett wrote:
> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
> 
> Working:
> - Wi-Fi (wcn3990 hw1.0)
> - Bluetooth
> - USB Type-A (USB3 and USB2)
> - Ethernet (over USB2)
> - HDMI Display
> - eMMC
> - SDHC (microSD slot)
> 
> Not included:
> - HDMI Audio
> - EC (IT8987)
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   2 +
>  .../boot/dts/qcom/sc7180-ecs-liva-qc710.dts   | 625 ++++++++++++++++++
>  2 files changed, 627 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-ecs-liva-qc710.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0ccd6ec16dfb..27a2dbb2f11c 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -163,6 +163,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sa8775p-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8775p-ride-r3.dtb
>  sc7180-acer-aspire1-el2-dtbs	:= sc7180-acer-aspire1.dtb sc7180-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-acer-aspire1.dtb sc7180-acer-aspire1-el2.dtb
> +sc7180-ecs-liva-qc710-el2-dtbs	:= sc7180-ecs-liva-qc710.dtb sc7180-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-ecs-liva-qc710.dtb sc7180-ecs-liva-qc710-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-coachz-r1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-coachz-r1-lte.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-ecs-liva-qc710.dts b/arch/arm64/boot/dts/qcom/sc7180-ecs-liva-qc710.dts
> new file mode 100644
> index 000000000000..692085bc6169
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-ecs-liva-qc710.dts
> @@ -0,0 +1,625 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/sound/qcom,q6asm.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "sc7180.dtsi"
> +
> +#include "pm6150.dtsi"
> +#include "pm6150l.dtsi"
> +
> +/delete-node/ &tz_mem;
> +/delete-node/ &ipa_fw_mem;
> +
> +/ {
> +	model = "ECS LIVA QC710";
> +	compatible = "ecs,liva-qc710", "qcom,sc7180";
> +	chassis-type = "desktop";
> +
> +	aliases {
> +		bluetooth0 = &bluetooth;
> +		hsuart0 = &uart3;
> +		wifi0 = &wifi;
> +	};
> +
> +	hdmi-bridge {
> +		compatible = "algoltek,ag6311";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				hdmi_bridge_dp_in: endpoint {
> +					remote-endpoint = <&usb_1_qmpphy_dp_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				hdmi_bridge_tmds_out: endpoint {
> +					remote-endpoint = <&hdmi_con>;
> +				};
> +			};
> +		};
> +	};
> +
> +	hdmi-connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint = <&hdmi_bridge_tmds_out>;
> +			};
> +		};
> +	};
> +
> +	reserved-memory {
> +		gpu_mem: zap-shader@80840000 {
> +			reg = <0x0 0x80840000 0 0x2000>;
> +			no-map;
> +		};
> +
> +		venus_mem: venus@85b00000 {
> +			reg = <0x0 0x85b00000 0 0x500000>;
> +			no-map;
> +		};
> +
> +		mpss_mem: mpss@86000000 {
> +			reg = <0x0 0x86000000 0x0 0x2000000>;
> +			no-map;
> +		};
> +
> +		adsp_mem: adsp@8e400000 {
> +			reg = <0x0 0x8e400000 0x0 0x2800000>;
> +			no-map;
> +		};
> +
> +		wlan_mem: wlan@93900000 {
> +			reg = <0x0 0x93900000 0x0 0x200000>;
> +			no-map;
> +		};
> +	};
> +
> +	usb_a_connector: usb-a-connector {
> +		compatible = "usb-a-connector";
> +
> +		port {
> +			usb_a_connector_ss_in: endpoint {
> +				remote-endpoint = <&usb_1_qmpphy_usb_ss_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&dpu_intf1_out {
> +	/delete-property/ remote-endpoint;

Why? It should not be necessary.

> +};
> +
> +&gpu {
> +	status = "okay";
> +};
> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/sc7180/ecs/liva-qc710/qcdxkmsuc7180.mbn";
> +};
> +
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dp {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&dp_hot_plug_det>;
> +
> +	status = "okay";
> +};
> +
> +&mdss_dp_out {
> +	data-lanes = <0 1>;
> +	remote-endpoint = <&usb_1_qmpphy_dp_in>;

Ack for now. Probably we should make it a default and (temporarily)
delete in the Chrome setup.

> +};
> +
> +&mdss_dsi0_in {
> +	/delete-property/ remote-endpoint;
> +};
> +
> +&pm6150_pon {
> +	status = "disabled";

Do you know, how is Power-On routed?

> +};
> +
> +&pm6150_rtc {
> +	status = "okay";

No need for qcom,uefi-rtc-info ?

> +};
> +
> +&qfprom {
> +	vcc-supply = <&vreg_l11a_1p8>;
> +};
> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +	memory-region = <&adsp_mem>;
> +	firmware-name = "qcom/sc7180/ecs/liva-qc710/qcadsp7180.mbn";
> +	status = "okay";
> +};
> +
> +&remoteproc_mpss {
> +	firmware-name = "qcom/sc7180/ecs/liva-qc710/qcmpss7180_nm.mbn";
> +	status = "okay";
> +};
> +
> +&sdhc_1 {
> +	pinctrl-0 = <&sdc1_default>;
> +	pinctrl-1 = <&sdc1_sleep>;
> +	pinctrl-names = "default", "sleep";
> +	vmmc-supply = <&vreg_l19a_2p9>;
> +	vqmmc-supply = <&vreg_l12a_1p8>;
> +
> +	status = "okay";
> +};
> +
> +&sdhc_2 {
> +	pinctrl-0 = <&sdc2_default>;
> +	pinctrl-1 = <&sdc2_sleep>;
> +	pinctrl-names = "default", "sleep";
> +	vmmc-supply = <&vreg_l9c_2p9>;
> +	vqmmc-supply = <&vreg_l6c_2p9>;
> +
> +	cd-gpios = <&tlmm 69 GPIO_ACTIVE_LOW>;
> +
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	/delete-property/ interrupts;
> +	interrupts-extended = <&intc GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
> +			      <&tlmm 41 IRQ_TYPE_EDGE_FALLING>;
> +
> +	pinctrl-1 = <&qup_uart3_sleep>;
> +	pinctrl-names = "default", "sleep";
> +
> +	status = "okay";
> +
> +	bluetooth: bluetooth {
> +		compatible = "qcom,wcn3991-bt";
> +		vddio-supply = <&vreg_l10a_1p8>;
> +		vddxo-supply = <&vreg_l1c_1p8>;
> +		vddrf-supply = <&vreg_l2c_1p3>;
> +		vddch0-supply = <&vreg_l10c_3p3>;
> +		max-speed = <3200000>;
> +	};
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "host";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	hub@1 {
> +		compatible = "usb5e3,608";
> +		reg = <1>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +

Are other ports routed somehow?

> +		r8152: ethernet@4 {
> +			compatible = "usbbda,8152";
> +			reg = <4>;
> +		};
> +	};
> +};
> +

-- 
With best wishes
Dmitry

