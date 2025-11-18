Return-Path: <devicetree+bounces-239625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B764C67C2D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A8B3C4E2D7D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 06:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A6A2EC559;
	Tue, 18 Nov 2025 06:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IFgvDdN1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bbILpcOM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AD92EC093
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763448277; cv=none; b=QREA5MTrexY5DOlILqIx5IQh69XeBngj+zzYU364HRaYn4+TIJEXIwRVQ7HK8aBGxU8ziFcA4GCrBzgb+ElDke1U50xVVkNiYwrVVWhpSNtQSN8Sumht8+/TndrNkD6j+73knvZ0X+twrBSpXzncK79/szFWaMXCpBdG/It951w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763448277; c=relaxed/simple;
	bh=ovnZw4OrtBaA4fjX5jdl8DKzGVAUI6Ymg52ojTPJomM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W5As9xOr2Wt6dJaQTWh6frQDGlp6U5KC3wfzlDDt+WLiQiWrOrg7qBVeXmL25vxRvvzZhSwoafMx2ZmhfveVAlqWYxknxHVqydqN+f6qeL9ilz/5Jq2VHEaYVsp+/9dWYO23jD0MppzYhYMsd8+KeuxET6E3yKjOpswFkWmJWmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IFgvDdN1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bbILpcOM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fONT2272027
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:44:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yGG5M1RTBM/odTlnJEwuSR8CSAxtZaakVWOikLve6CQ=; b=IFgvDdN16ntJkVtY
	pa0xXdzKsPzw2qIbNNJeEPjxRpkI+8/4ocxJJGPrtbp6Wc+6TDs7XynKyNPf9RYW
	gOjYXIsnaYOT9d0BOW4gfvBAt3Rvt6sxsSB/6eQE7ZO6j72SPMW6AWghnf+Ug8ma
	Po1LbuFHY+c7H4KJmApilLuTMkCmS/ZYpFsEAnwmS+BEGM/Mp0MpHrDQVznaVc7a
	6rAYDU9n0ZZ6p/iKztErNiZaMNvHnutZ+geNS+/a2KM5f8J5zP6PewHJ4lmEFPPo
	PNLJOoxzqe3sL2KTWBded7xrgNhvR4jdns32SgWc5hTOxDxSnGthJGF1nIhSfV3m
	geP/NQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrmg08a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:44:34 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297ddb3c707so46801525ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 22:44:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763448273; x=1764053073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yGG5M1RTBM/odTlnJEwuSR8CSAxtZaakVWOikLve6CQ=;
        b=bbILpcOMdcQYiA2i4npStr3FsLZG+72u25TxslScNTf2fPbfAIyv0CCn8z7+XmjcfH
         uiFhxMWMsLgbpL9CCSjCxYYkhRxW+c5wtojeS5ryXWu7YCrzTCB9wtoLkn6Q+REhiO9A
         QE2pG+2K8obZ1NM74OUGD4D4RCiDXyO0/okUsY/8TMg//ng2OiumsH7G9/Kou7yeH21y
         Ta42+yHdsn2NiROLVwRCyg4PQNGxUsm3y3m/iQyAsaOP1pg0E1jrnLcbGFP3AcGxiTH6
         4kVOIWfWNFVvk+TDcMrD+f2Y6X3Exaj8SUY1gjcPeVq75FaX8PxLdo43dbiQYp5/V604
         hBRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763448273; x=1764053073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yGG5M1RTBM/odTlnJEwuSR8CSAxtZaakVWOikLve6CQ=;
        b=NVefpK72jzmUJZDbC1fGd9lwAb68KK07pYEf7h9mZE/bOCdObJkhLtQ+9P2x45p4mn
         bcWMwGYA5v8GFsnZWlXOX31qKA8vHDN+1ManQsT9L6z7aCMjRKWtEMK2U14QGkogsWC0
         3JLibfifFqDnurndPs0OfjHpjB30Km3OLhS5z750hSiWyIhkDoXliGk7nE2A2YZ4b0vO
         3deSfBLYhEAYMukc+Rl04kgmlqHB0M354TR7dphQEeXqu3ytinoSkZaxGKXDa7ZlttOn
         MvOgkkh6ZOuvFmob/tFNwflNv5Hjxf0VnMgch0S2EAAoZuSgzN86cLMtAz24pf8UBaVp
         2iVg==
X-Forwarded-Encrypted: i=1; AJvYcCVk+m3NcgzR9taxmAMNPm6Zoyok2bHLfBjjITz30HTcdnNDYLjo9gUMMDR0pel7Vf0xfd4QUottAHmS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9GoUbBzZeoFtGqrFQsO1P1JoQr5Ri/ik4dE7Fv1R27b4bS9gw
	F7EzG65+3nOwrgh/NfU1J3JNpvc8nP69fF0K5GXxf2Vtjv2jJbQRF98vzSYeJUMvv+pss1azM8J
	EcT5rpMybpw7JRyOxxNrl3Y/IJdYz/tJfDKO4Jod65H1XyrKvahebtxc98+9tn0+/
X-Gm-Gg: ASbGncs7/GlId0kSoGdVgXfUcalVM10yKFeZgBHF7kZ0uppJ6ndfG8M1UkV7Lfp5doj
	Wxisi5RlZWWT5ePkUHt11VH2W6PkDYkCvhNFtRsrtQyNOkrDipZ9B14XPT+dYXgKGaV+tx5R4s5
	m0H/ApRxUwL8+hV1+0MaB006czd8aaQZ9lR12BzsrSiOpvoG8fY35bUJKYJayuztiQ+zdC2O9eX
	4J4f5uLMvvSGPs3A5Q5zR3rtEuT1Fv7PJBrDCismKAlLT/8srT6iJkOTVCucfxuL/1Po6EFMa20
	vJb+4RUG2qEv1isHbBdW8Gs3Ny5V5yU9F/OFXDxRhnQrYcNT0dt7wQEY1huNXh8ucX+auAd36/j
	2sSDhJ9viK8GLrzEl9nwpfMKzDIwAZd639QTrCXCacIi1U2I0QPMpvXayttoNuH45LbyZfg==
X-Received: by 2002:a17:903:120b:b0:295:987d:f7ef with SMTP id d9443c01a7336-2986a6b5698mr167493235ad.10.1763448273409;
        Mon, 17 Nov 2025 22:44:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFc6fJTI7KXyUSpMhAHXnLcFxYtTMPpsmsrsvYGryJQpfIN4z1xeXvCPsXKrrHvY0/VbfZSrA==
X-Received: by 2002:a17:903:120b:b0:295:987d:f7ef with SMTP id d9443c01a7336-2986a6b5698mr167493035ad.10.1763448272909;
        Mon, 17 Nov 2025 22:44:32 -0800 (PST)
Received: from [10.133.33.163] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2bf17dsm161875525ad.94.2025.11.17.22.44.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 22:44:32 -0800 (PST)
Message-ID: <71e0d879-63ed-49e7-9bfe-c5cd8e0ca8ba@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 14:44:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] clk: qcom: Add TCSR clock driver for Kaanapali
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-5-a774a587af6f@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20251030-gcc_kaanapali-v2-v2-5-a774a587af6f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1MSBTYWx0ZWRfX34TeMvk+0Sie
 4hy1UXxmLDUw9sR5Kyb9WnPuQN/53gklLt0jXLRhyQ6rPOBI1uZxSLgAlb5DRyF0jEcxekc57z9
 38K/e7wd9pkRDEpPeVUwaOyyxu0UbyTwYboRnE+rU6KO/3I9ITExXGVMCKQCbzKX/JKdSHCql9X
 MMDF2WmzSEc+bryu0jSrwbV9RpXzes6+kcRnX7xYWjlbmqIt65jbsqEQ2/trPxYFbCw1oUbuhkq
 YO+cDptUuEjj7I692y08O8Xn/4thqrPO5ClaDIbRzLlZ8KqajQGGOkBDFxeeQWMErGuvKWZxuwh
 1xyuO92S7QfvLs0Q4If93EJXM9uCjZA0TO3hoqL3mqjwb+91SCyhin3SS49Cl8rSyUH6udBjs0K
 hXp6ARadKEj+DKi2DeyHGOaw4oeKlA==
X-Proofpoint-ORIG-GUID: 98Mk641cPt8nd8f8THsdUqg0lDL1bAav
X-Proofpoint-GUID: 98Mk641cPt8nd8f8THsdUqg0lDL1bAav
X-Authority-Analysis: v=2.4 cv=JfWxbEKV c=1 sm=1 tr=0 ts=691c15d2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=iaFNy1nuAaW614eCFcQA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180051



On 10/30/2025 7:09 PM, Taniya Das wrote:
> Add the TCSR clock controller that provides the refclks on Kaanapali
> platform for PCIe, USB and UFS subsystems.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig            |   8 ++
>  drivers/clk/qcom/Makefile           |   1 +
>  drivers/clk/qcom/tcsrcc-kaanapali.c | 141 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 150 insertions(+)
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 4a78099e706c2cee5162d837cad3723db75039d0..8ec1803af76cb87da59ca3ef28127c06f3e26d2b 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -46,6 +46,14 @@ config CLK_GLYMUR_TCSRCC
>  	  Support for the TCSR clock controller on GLYMUR devices.
>  	  Say Y if you want to use peripheral devices such as USB/PCIe/EDP.
>  
> +config CLK_KAANAPALI_TCSRCC
> +	tristate "KAANAPALI TCSR Clock Controller"
> +	depends on ARM64 || COMPILE_TEST
> +	select QCOM_GDSC
> +	help
> +	  Support for the TCSR clock controller on Kaanapali devices.
> +	  Say Y if you want to use peripheral devices such as PCIe, USB, UFS.
> +
>  config CLK_X1E80100_CAMCC
>  	tristate "X1E80100 Camera Clock Controller"
>  	depends on ARM64 || COMPILE_TEST
> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> index 5a0fd1d843c87a6f0a805706fcfad91c3f705340..2350631814779ad086d5c8304b250b0cc2f5203b 100644
> --- a/drivers/clk/qcom/Makefile
> +++ b/drivers/clk/qcom/Makefile
> @@ -24,6 +24,7 @@ obj-$(CONFIG_CLK_GFM_LPASS_SM8250) += lpass-gfm-sm8250.o
>  obj-$(CONFIG_CLK_GLYMUR_DISPCC) += dispcc-glymur.o
>  obj-$(CONFIG_CLK_GLYMUR_GCC) += gcc-glymur.o
>  obj-$(CONFIG_CLK_GLYMUR_TCSRCC) += tcsrcc-glymur.o
> +obj-$(CONFIG_CLK_KAANAPALI_TCSRCC) += tcsrcc-kaanapali.o
>  obj-$(CONFIG_CLK_X1E80100_CAMCC) += camcc-x1e80100.o
>  obj-$(CONFIG_CLK_X1E80100_DISPCC) += dispcc-x1e80100.o
>  obj-$(CONFIG_CLK_X1E80100_GCC) += gcc-x1e80100.o
> diff --git a/drivers/clk/qcom/tcsrcc-kaanapali.c b/drivers/clk/qcom/tcsrcc-kaanapali.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..14cfa75e892cc5ee1b03909f8c03d92de8ae2cd6
> --- /dev/null
> +++ b/drivers/clk/qcom/tcsrcc-kaanapali.c
> @@ -0,0 +1,141 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#include <dt-bindings/clock/qcom,sm8750-tcsr.h>
> +
> +#include "clk-branch.h"
> +#include "clk-regmap.h"
> +#include "clk-regmap-divider.h"
> +#include "clk-regmap-mux.h"
> +#include "common.h"
> +
> +enum {
> +	DT_BI_TCXO_PAD,
> +};
> +
> +static struct clk_branch tcsr_pcie_0_clkref_en = {
> +	.halt_reg = 0x0,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x0,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_pcie_0_clkref_en",
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +

Hi Taniya,

Here is a discussion for tcsr in this thread:
https://lore.kernel.org/all/01de9616-825b-4fbb-83cf-e0bf91e8cf39@oss.qualcomm.com/

As TCSR_CLKS is a part of tcsr block, we should merge it as one node, the address
should be start at 0x01fc0000 instead of 0x01fd5044, so offset need to be added in the
tcsrcc reg configuration.

Thanks,
Jingyi

> +static struct clk_branch tcsr_ufs_clkref_en = {
> +	.halt_reg = 0x10,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x10,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_ufs_clkref_en",
> +			.parent_data = &(const struct clk_parent_data){
> +				.index = DT_BI_TCXO_PAD,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch tcsr_usb2_clkref_en = {
> +	.halt_reg = 0x18,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x18,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_usb2_clkref_en",
> +			.parent_data = &(const struct clk_parent_data){
> +				.index = DT_BI_TCXO_PAD,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch tcsr_usb3_clkref_en = {
> +	.halt_reg = 0x8,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x8,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_usb3_clkref_en",
> +			.parent_data = &(const struct clk_parent_data){
> +				.index = DT_BI_TCXO_PAD,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_regmap *tcsr_cc_kaanapali_clocks[] = {
> +	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
> +	[TCSR_UFS_CLKREF_EN] = &tcsr_ufs_clkref_en.clkr,
> +	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
> +	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,
> +};
> +
> +static const struct regmap_config tcsr_cc_kaanapali_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.max_register = 0x18,
> +	.fast_io = true,
> +};
> +
> +static const struct qcom_cc_desc tcsr_cc_kaanapali_desc = {
> +	.config = &tcsr_cc_kaanapali_regmap_config,
> +	.clks = tcsr_cc_kaanapali_clocks,
> +	.num_clks = ARRAY_SIZE(tcsr_cc_kaanapali_clocks),
> +};
> +
> +static const struct of_device_id tcsr_cc_kaanapali_match_table[] = {
> +	{ .compatible = "qcom,kaanapali-tcsr" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, tcsr_cc_kaanapali_match_table);
> +
> +static int tcsr_cc_kaanapali_probe(struct platform_device *pdev)
> +{
> +	return qcom_cc_probe(pdev, &tcsr_cc_kaanapali_desc);
> +}
> +
> +static struct platform_driver tcsr_cc_kaanapali_driver = {
> +	.probe = tcsr_cc_kaanapali_probe,
> +	.driver = {
> +		.name = "tcsr_cc-kaanapali",
> +		.of_match_table = tcsr_cc_kaanapali_match_table,
> +	},
> +};
> +
> +static int __init tcsr_cc_kaanapali_init(void)
> +{
> +	return platform_driver_register(&tcsr_cc_kaanapali_driver);
> +}
> +subsys_initcall(tcsr_cc_kaanapali_init);
> +
> +static void __exit tcsr_cc_kaanapali_exit(void)
> +{
> +	platform_driver_unregister(&tcsr_cc_kaanapali_driver);
> +}
> +module_exit(tcsr_cc_kaanapali_exit);
> +
> +MODULE_DESCRIPTION("QTI TCSR_CC KAANAPALI Driver");
> +MODULE_LICENSE("GPL");
> 


