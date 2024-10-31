Return-Path: <devicetree+bounces-117905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 914039B8479
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:39:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F090EB21724
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CF31CC156;
	Thu, 31 Oct 2024 20:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mQ2bfoG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE491531C0
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730407156; cv=none; b=TViY/MJ1p/hSn7SDDNRCJmAqAqAibF1sNLORAMmZQunDaEo9dvi0WAB33Nj5KGiFxfSwggBj3piRG/RoF5taN7e//EMqAnmB+SyUQ2ZUerkaC1DrkQQReKQ4TQC5nnHtXKKpqfWYGDeH768W6lFYIrm86uKsw3ywS1MzrjsnoUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730407156; c=relaxed/simple;
	bh=K1/6IUAcgF3FNqyRUw5wJSzHRzVUC/gKclPJjhysEqk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lc2d+tdPYoYCC0TAt/yZCQQ5qFHU/qZlJXSL13OpGmVOLfrnMcFW93P+b95Adluam74wuo+++8I92T0ke6UP8d/1P0IIR5lEc9Ml7EyZ3QEeu/1rjf9U3iBnlYe8ZCFN6+tsI1ZxngFVwZSTif7YfNTq6q8V8NfTKq3klsUvgoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mQ2bfoG6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VEZcO8027381
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:39:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vl3oJJc/cyDkNw9XE3tervQuHfIVJB7nMeM0yzufPhA=; b=mQ2bfoG6rNCPalzn
	mXeXCXct7d847/pM4w6e0iqHVnwFTwCxYszmlbOkjnjphui0fYSKQ72TWYkGql73
	iR/6riJVjx6P14/ZaskNLHcaG/G638Lz/qT/zGd3x5Qk9v/RmgneNjT+VVwsHhe0
	x9/eGTOj0Ux8d5snjLjPSsmU/0VwOi72yv7Hct/3gEmW0YxyGTagjY2HVfwnWmu1
	XfG3P4PzHJ/SOubVaqWdT20pbbdVU1KJm4/m/8zU1dRwpTfTbI9SbSLfkTTNlQAB
	27CypTNrz/HP4UhASLw3xXfNF10OcBUPEn1Hp5AWmIoXAdgQvkde12iycpf+plJD
	jvQ+Hw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42k1p3854r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:39:11 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5ebad1e2d40so155627eaf.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730407150; x=1731011950;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vl3oJJc/cyDkNw9XE3tervQuHfIVJB7nMeM0yzufPhA=;
        b=ijs6HtLBhMPUl8n6m9hNw6LOK0pl3xQWYcAZNYI+78NzPDPzMbPNh7dDFJoZ6z6z5f
         EDdsIOg/HbixfsA7RnTDjIVs8baGZuem72ulsAhwjC14JUuPQR+5+vmDO5+s+Y7ctBeh
         b/DSLIpiebOvoHTyclh0ZhVbfAkvznDqQ5ha7bfRZCFIpiWs21y1klIVVe6pVe9VFjwL
         ocFtc43xiiqN3Oipc3KHmxlPGXKljtvilYZPlovfIREn6zMSBbZOoTZQzSSCRgPVQ3d2
         T1n0hkPx+fJQztaH2UX/fWrYFAPyfx0ky+HDN9UJtmF03lhBpuw6HeQdtMKtFzS6i9R+
         j+pg==
X-Forwarded-Encrypted: i=1; AJvYcCWYAdcMsDLVvKxD6KiYit3kF5b587bxqHH573/vksbFhLjZ3cx1c/9p5qz/jBRUTc3US+hKqrEgvY+G@vger.kernel.org
X-Gm-Message-State: AOJu0YyeBxm7Std2AoTHTlg0mERsojTsP8uHdw/pVTT16VFjJ1EnqOuT
	G5TautB8/a/oG6aI6zVOjDLqIUP+QG2zlqky1az3lzQxxfP9YaqctluFXv4pRqTx1Slw60NwaJ/
	Uh0xqjb5dH8KQ7ErKTGDTJgadYtZQX8QBPb//j9+HwFjRdPvWI4/xrPYIyz6y
X-Received: by 2002:a05:6870:eca2:b0:277:ed2c:55e4 with SMTP id 586e51a60fabf-29051adb5afmr5041616fac.3.1730407150495;
        Thu, 31 Oct 2024 13:39:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEh92vS1YesBWPNs6htJ0tunGqjMsV32xDc/IV1ooiMYzOIzsetPmIlA1CF1NqiFvpbJxLzTQ==
X-Received: by 2002:a05:6870:eca2:b0:277:ed2c:55e4 with SMTP id 586e51a60fabf-29051adb5afmr5041601fac.3.1730407150168;
        Thu, 31 Oct 2024 13:39:10 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e56643609sm101287266b.155.2024.10.31.13.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:39:08 -0700 (PDT)
Message-ID: <8355dc9f-ec3b-4738-b4e1-41351af2fa91@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:39:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sar2130p: add support for
 SAR2130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Krishna Kurapati <quic_kriskura@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241030-sar2130p-dt-v2-0-027364ca0e86@linaro.org>
 <20241030-sar2130p-dt-v2-3-027364ca0e86@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241030-sar2130p-dt-v2-3-027364ca0e86@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8CeGu8aVWuJsLflSOpdmHo0OChevJy4P
X-Proofpoint-ORIG-GUID: 8CeGu8aVWuJsLflSOpdmHo0OChevJy4P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 spamscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0
 phishscore=0 clxscore=1015 impostorscore=0 mlxlogscore=999 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310156

On 30.10.2024 12:50 PM, Dmitry Baryshkov wrote:
> Add DT file for the Qualcomm SAR2130P platform.
> 
> Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sar2130p.dtsi | 3091 ++++++++++++++++++++++++++++++++
>  1 file changed, 3091 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..d4f5514cbdaf2d0a1c1cd367be2d7a08246d203e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
> @@ -0,0 +1,3091 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024, Linaro Limited
> + */
> +
> +#include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sar2130p-gcc.h>
> +#include <dt-bindings/clock/qcom,sar2130p-gpucc.h>
> +#include <dt-bindings/clock/qcom,sm8550-tcsr.h>
> +#include <dt-bindings/dma/qcom-gpi.h>
> +#include <dt-bindings/interconnect/qcom,icc.h>
> +#include <dt-bindings/interconnect/qcom,sar2130p-rpmh.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> +#include <dt-bindings/power/qcom-rpmpd.h>
> +#include <dt-bindings/power/qcom,rpmhpd.h>
> +#include <dt-bindings/soc/qcom,gpr.h>
> +#include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/thermal/thermal.h>
> +
> +/ {
> +	interrupt-parent = <&intc>;
> +
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	chosen { };
> +
> +	clocks {
> +		xo_board: xo-board {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <19200000>;
> +		};
> +
> +		sleep_clk: sleep-clk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <32000>;
> +		};
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		CPU0: cpu@0 {

Krzysztof recently turned these lowercase, please follow suit

[...]

> +		/* secdata region can be reused by apps */

This comment isn't very useful

> +		smem: smem@80900000 {
> +			compatible = "qcom,smem";
> +			reg = <0x0 0x80900000 0x0 0x200000>;
> +			hwlocks = <&tcsr_mutex 3>;
> +			no-map;
> +		};
> +
> +		cpucp_fw_mem: cpucp-fw-region@80b00000 {

Not sure if we want -region everywhere. Krzysztof?

[...]

> +	soc: soc@0 {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0 0 0 0 0x10 0>;
> +		dma-ranges = <0 0 0 0 0x10 0>;
> +		compatible = "simple-bus";

Compatible first, please

[...]

> +			#size-cells = <2>;
> +			ranges;
> +			status = "disabled";

A newline before status would be very cool

[...]

> +		pdc: interrupt-controller@b220000 {
> +			compatible = "qcom,sar2130p-pdc", "qcom,pdc";
> +			reg = <0x0 0x0b220000 0x0 0x30000>, <0x0 0x174000f0 0x0 0x64>;
> +			qcom,pdc-ranges = <0 480 94>,
> +					  <94 609 31>, <125 63 1>, <126 716 12>;

Super weird line break

[...]

> +
> +		apps_smmu: iommu@15000000 {
> +			compatible = "qcom,sar2130p-smmu-500", "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x15000000 0x0 0x100000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <1>;
> +			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 697 IRQ_TYPE_LEVEL_HIGH>;

dma-coherent?

Please check if this is the order they appear in originally, as they're
ordered (although on some recent socs it appears they're accidentally
sorted by design)


> +		};
> +
> +		intc: interrupt-controller@17200000 {
> +			compatible = "arm,gic-v3";
> +			#interrupt-cells = <3>;
> +			interrupt-controller;
> +			#redistributor-regions = <1>;
> +			redistributor-stride = <0x0 0x20000>;
> +			reg = <0x0 0x17200000 0x0 0x10000>,     /* GICD */
> +			      <0x0 0x17260000 0x0 0x100000>;    /* GICR * 8 */

Please remove these comments

[...]

> +
> +		/*
> +		 * Bootloader expects just cache-controller node instead of
> +		 * the typical system-cache-controller
> +		 */

Uh-oh..

> +		llcc: cache-controller@19200000 {

Konrad

