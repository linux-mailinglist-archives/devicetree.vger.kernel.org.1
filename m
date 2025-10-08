Return-Path: <devicetree+bounces-224505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0755BC4950
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:36:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 864F33C23F4
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B882F659B;
	Wed,  8 Oct 2025 11:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JcQD/p+g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9819C2F619F
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759923385; cv=none; b=WP9oK68AJd56QtNaXf1CSBnW5vrpxGRpm1EbGHunOSrJv3NhWiEaxFoVB93ZjeibD7XDtP7BZ/O8q4Km/5uNwdRXD6WhONWKTsxJNU1kd4DJ66+pJNq9ACZBx1/Gi/3jYb4zX7TChE84Mcuh2cFL8Y7hyLfW5vgcIL8pA10OHpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759923385; c=relaxed/simple;
	bh=d8nvVD0Lrzz8xGyOSn+Vk8t3qXF8g4hgi1Wn9FquDLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nZqfw1o3BOiWWxtjuBRGI3SCqNuvrO/mV5HI2djmoBQqyNx/lUk6dICXyhkXZKD45QYJd/1gFCI1oqvrBEAiHdnC8Si6ZVPIvEycV9HGZja5Z5DUynoZSVDPJNiiqVU9VlJaIhyvEcPZu4rWN2deXXg3TLoc0aJbZ3oy/1++Tjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JcQD/p+g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890Oso011614
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:36:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BtcYEJ08q7Dg6a565Y3hlNvOCsaOLjl/pUWvA9l+JDI=; b=JcQD/p+g2w8e25qK
	qV+sGvFb15L2o4v/8oG6x5ymo7YYbULhdSkdYkdDphuEPgqlfieHulaiMIXDl7pK
	Yzww4cFU85Fqj9KW6TLURaUBPg1y0/dijC0Lw82c1lJR/FBUkRXEw3ZbGetXodFl
	2PVVcqSGvB2CDJkTzsomELjJuHDCUz7pEVi4dC4xDBVd30PgWWnpVD23ab2/fTyM
	PdLTvkRfY2GvDWoRh0hW8nJ2r95M/Qkr9TD6lg2vbPS0ahkMKTo+ChtiNQF+qQoJ
	Z/jLrxEogr1PMxuyMRmDEf0NOvZbTWIgrbwQyxKEKpsJ5WKBRWQjexDgN1Qth0UM
	X1SrpA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkpw3p9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:36:22 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2681642efd9so73437855ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:36:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759923382; x=1760528182;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BtcYEJ08q7Dg6a565Y3hlNvOCsaOLjl/pUWvA9l+JDI=;
        b=UBkpHioM1SPFerym0mmK3wWGLS5ojBcY+VMmbMFAIEShFTZFvMD14QzjvrJMSO2HJJ
         E42gw/orqkEdtzH2tIS09qJ7Zn3veyBYs1bnxAIi8Xstc5ycCYUMKxiflY0y6ilN2i84
         3TDq8beKQaM1fZ3vTi7Nt16ylZd1KV8d1Z0mAJE3i1cdDnOFQRPx4MsCbSaSasfA4ZvC
         dZNeEAQ6BQ+BzOhHbLkknTYXsqAQ2+b4A7eWklAJw9AGQLZJIb9re27O2ONlP0wTCgf/
         Iz3Myn3rSWLxKCEnuAuqnWW8hHdLbk7bKuqRRYCUUHHaV5bQEl5yuGTy/8hRfynLaKTo
         qruA==
X-Forwarded-Encrypted: i=1; AJvYcCX2gvHlVSHApzc2TylbYCFyBEtU+ulnkPjTF+lYPGwTnBcvAMJmZk3OzIiUBt09i3VYj/AvjtbzXyde@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3opy126/8ILjKHB+MvCVvbfzKi7rad9m2zykTJ6JoYuivRzYa
	y5TnvoUEe2JR2QciLhSOMpHsnE2zhLvOMBZOFJc6/fy0ZvuXzThpb6YlS4bTOUlMmC1C0QSXMXX
	K8KWygGc2mHjMleleD6BeCAAxVqlnGSmAcYApySze3mXhRo2vq0VI1PslPJ2bSVfw
X-Gm-Gg: ASbGncu8NGIGpaCkthen7+J7QtdKOak3a6anBk7vkD6m60mWGEQ1pYSb2OJEdPXCXid
	41CwMFi5bU7NtTCvh3DaaATP1JmTW7M+zBsfqUmc7nnfokrLxF1rZtm8K/3gbkYOGzsZSUWcwUv
	0YRS9lf7AGIRG73ko5f3JgbXxLQF7RPpEQRu/2/rqpYc89/7vxR4/SOVMXnql5feuWOEdGaAO1i
	Y1lqs73QY9jHcleDlvXKOe/uucKmlfdyS9h0H38T6krmSRM/gnlr+kEzcw8DBC9NGNcIU/1aNzu
	o643TcRnW07GOoaRPLrEFlIvXbqQLpeVaRnJvOB6WM9vHuhc+noln8BYsJR36uv5sh5PNIyVwAN
	Jc9JQflkEAARCMCxra7givQCoRk0My5fG5IXtq5PA7MJhLOOkElVRuWfqJP0qBDw=
X-Received: by 2002:a17:902:f691:b0:259:5284:f87b with SMTP id d9443c01a7336-290272b2b34mr45883125ad.16.1759923381629;
        Wed, 08 Oct 2025 04:36:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbTVtqOX4lQ1G8PWLA7FGXm05LJZQiAOycqCzdxksUEtXbV27R1JLsm+R4apUwokgNrGMnbQ==
X-Received: by 2002:a17:902:f691:b0:259:5284:f87b with SMTP id d9443c01a7336-290272b2b34mr45882505ad.16.1759923380985;
        Wed, 08 Oct 2025 04:36:20 -0700 (PDT)
Received: from [10.79.195.127] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1260f0sm197687845ad.46.2025.10.08.04.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:36:20 -0700 (PDT)
Message-ID: <cdc7fa94-4cfa-4664-92a9-d89654f53d11@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 17:06:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
 <p4ajadn2xytkt6hycm4te3sgxg3mern4uq7ce6bfpzgquer5ys@tcvcyuuk6lr2>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <p4ajadn2xytkt6hycm4te3sgxg3mern4uq7ce6bfpzgquer5ys@tcvcyuuk6lr2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: D323baSRRwu7WMsw9TcdFxZBAsR0aCvR
X-Proofpoint-ORIG-GUID: D323baSRRwu7WMsw9TcdFxZBAsR0aCvR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfX6kngi4LjXHDQ
 cZeUwYJgEfod3xLcNBAEww5LgqCBGVEmhC8oDeg6GIMJ7JXmAJP+ak8WEMgVCFQZzVzZLJpyWyb
 s5zhaPPYD99WmAcdCfkNpnH1tsYUW+cAotnXUhbgQVAcl3D0OKYoJo1yMSejHJFTRR1YFnkfnFP
 lXiRtIKIZ6So8dr8sMMsW39dIbbFp/3pv0lcSyKSgjAE16lmXEzWz+LlMkeuxXHwp3tzRhYzPPV
 SL0QJ8LP3C+jZYZqGOZVzmvBhl38c/aIW/M+vcyiacsUHEkz72B3l2xWpbwU+NjRYK3dqYP2T6L
 bSIi0abhz359nmMWU2MUDvPLuctWqUu/SoIiU9khscSiHC8GQ+Wf7lPTvlQaxbBos3xvei9gG/e
 qfr10GKvqUDtYJK244EuGmE2XzWh9w==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e64cb6 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=UueUnxlvPaCuvQdzJnAA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168

On 9/25/2025 11:14 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 25, 2025 at 12:02:11PM +0530, Pankaj Patil wrote:
>> Introduce initial device tree support for Glymur - Qualcomm's
>> next-generation compute SoC and it's associated Compute Reference
>> Device (CRD) platform.
>>
>> The dt describes CPUs, CPU map, GCC and RPMHCC clock controllers,
>> geni UART, interrupt controller, TLMM, reserved memory,
>> interconnects, SMMU, firmware scm, watchdog, apps rsc, RPMHPD,
>> SRAM, PSCI and pmu nodes.
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/Makefile       |    1 +
>>  arch/arm64/boot/dts/qcom/glymur-crd.dts |   25 +
>>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 1320 +++++++++++++++++++++++++++++++
> I think it's usually two separate patches

Yes, for the next revision planning on separating patches
in a manner where this commit will have bare-bone board
dts so compilation doesn't break and singular commit
to the board dts which enables required functionality.

>>  3 files changed, 1346 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 296688f7cb26550f75bce65826f234bc24110356..15f31a7d3ac4a60224c43cfa52e9cc17dc28c49f 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -13,6 +13,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8039-t2.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8094-sony-xperia-kitakami-karin_windy.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= glymur-crd.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..a1714ec8492961b211ec761f16b39245007533b8
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>> @@ -0,0 +1,25 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "glymur.dtsi"
>> +
>> +/ {
>> +	model = "Qualcomm Technologies, Inc. Glymur CRD";
>> +	compatible = "qcom,glymur-crd", "qcom,glymur";
>> +
>> +	aliases {
>> +		serial0 = &uart21;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +};
>> +
>> +&tlmm {
>> +	gpio-reserved-ranges = <4 4>, <10 2>, <44 4>; /*Security SPI (TPM)*/
>> +};
>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..f1c5a0cb483670e9f8044e250950693b4a015479
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> @@ -0,0 +1,1320 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#include <dt-bindings/clock/qcom,glymur-gcc.h>
>> +#include <dt-bindings/clock/qcom,glymur-tcsr.h>
>> +#include <dt-bindings/clock/qcom,rpmh.h>
>> +#include <dt-bindings/dma/qcom-gpi.h>
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/interconnect/qcom,icc.h>
>> +#include <dt-bindings/interconnect/qcom,glymur-rpmh.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>> +#include <dt-bindings/power/qcom-rpmpd.h>
>> +#include <dt-bindings/soc/qcom,rpmh-rsc.h>
>> +#include <dt-bindings/spmi/spmi.h>
>> +
>> +/ {
>> +	interrupt-parent = <&intc>;
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	chosen { };
>> +
>> +	clocks {
>> +		xo_board: xo-board {
>> +			compatible = "fixed-clock";
>> +			clock-frequency = <38400000>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		sleep_clk: sleep-clk {
>> +			compatible = "fixed-clock";
>> +			clock-frequency = <32000>;
> Can we please adapt a single style here? I think, at least frequency
> should go to the board file.

Sure, will do.

>> +			#clock-cells = <0>;
>> +		};
>> +	};
>> +


