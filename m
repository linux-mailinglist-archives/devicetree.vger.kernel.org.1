Return-Path: <devicetree+bounces-234604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE5CC2F2E4
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B43864E5632
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6802980A8;
	Tue,  4 Nov 2025 03:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pyni/L2y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W0San4eI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34774289358
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762227362; cv=none; b=gKILcKpw/AtW42Ay9JOoj4qir/i2/uTDy/C2SwiJ1I1l/97fBtQT4vmw4gqkJuws+O08xJoTd/yULz7vkK0cWQhtGuDXg0bk31NxcDMGhQmDXTQnIeVlMXY4y2gzYu/3d5nTmWCW+tvC4sYoOElD5dOENCCHwOSWQG8VW1c01g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762227362; c=relaxed/simple;
	bh=sONvN48WvUykuvXU9ekPNNHwgbAw4IZu0rPtno0aFkE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LsLxdNpK7x5HVxEY70lZK18CYItTBZ1a7EWuUl81at6pKwoG6B/E/0SFJzOag/Md4T0YzPRwFB96QT/9vEu4cQXqh0T5ZTZ17TzVFHBnXS8JDAjOBIU1FZXraddFbL+3mUbHhI7lUpk8hBoA8VH2ExBaG2lYYBveD33NPZ64IaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pyni/L2y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W0San4eI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A432jFB3616973
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aLTdB4QZiAIA7IonEaxgSWsE3Df8dp078mbN912dQ/g=; b=Pyni/L2ylc6Cj6vk
	1eA5YCtnKfK43id8UAZSnhhf7tKxr4fWwg9VufNBTxuMPhFaInMaGfI3ovrYRuzh
	Tvc4qYgrMdKnsMAxyyTOaBmHYpPbJNGZEqLrEzBukmcEWrPic3oQMNIQCv5x5Ovq
	Wm9IQP96QKNnlnf9sTSKCvpRQAcNsDas6OZW23yYSRjJKjfUV7za2X+rePUUePzm
	17+pxdOEwaRwBLyAuNr3iJd9UqfkWvq+szsRGzxi/lKggjpUoRPDoAA1HxDln1nr
	rY5saRrAZTpmRS2gyws/mN7wA0fk70ZDx9pIoZsMp4IkrWvwLJ7EO8mRWqgIsjR7
	hgNMBg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhsggv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:36:00 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7ab60fec3bcso325244b3a.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762227360; x=1762832160; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aLTdB4QZiAIA7IonEaxgSWsE3Df8dp078mbN912dQ/g=;
        b=W0San4eIapIY54/JaL8LCsFidl80DcNT4GSRg7FuNb2NG1oGsM7JxB5qpdjfB9fv8T
         iHN7n/l6xhHTKcOKZVxHCWI2DlFm/wEWSvypqQZ/hpLe+IaWrBbYHGpo9bTu8NxjugoI
         bhRz2R2dDGstZL+aYFl6Uh6RJE+P4bS0Y7J7IAoS+AJm/hcJrghN0rAbt3zhCpmkBcIG
         7QMk4Ma/jCD83+GkiuyHVrlQl0Psw1acLmscDYp8cjMSAHk/rnMAuX9dabReIVub5/vi
         qCzLO7cY/9LhR8PUAcFouo8jTbDT97X6rukQRbAPeybR6R+6JZcgf/iFZPiq7lOCcq6V
         Xq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762227360; x=1762832160;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aLTdB4QZiAIA7IonEaxgSWsE3Df8dp078mbN912dQ/g=;
        b=CYfayLPnSBB+wVc1uzivKjwIGKMG8den2JLQdHo77xO8Papq518ke1+yMOxVu1q/UT
         gw8zKoHgiewAQd6KspDZluG1AL1Od3J5ZtQluDOBsXkPNVT6xinmDXEP1DK3UCq675N8
         kNTIH4VYWh9zpAehCcNI0dJTbC+tHiLrGrVu9AGSaQ/cIuJc3yz6Y4fJRBHxFN0YQ572
         6bRR9pkQlQmRhKl8UoRxzH+8PW1550OEGIEWxdcav3CqcaBVf+O1G+kFkEha/9rPqbVh
         YInb0nQbJnNVW+2c7pTogsg3P1dxr+nV8JQJsoI2DZhPIOa1b/G5H+lfywsrsTZp/joX
         CqoQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4u1ZxOaAkcCMhn6uD3WR78VcNzDb3VLi14sR5vEzPtW/WkWqxFrkamyIgTXufAW6NbkW5v/Glz+GL@vger.kernel.org
X-Gm-Message-State: AOJu0YwWk2upULPP+ZuHqAkx30tqnRWkgASBl6L9Wh+FFhG7f2fllgSU
	p9rmRQdNo4EwaJu78zxTGfp7hC/1vA6vPvnQUtN5vbWvl7EcwBSDwQL9SyvRpYVSTsw55n1u/vk
	gIlgDacOztRgu6hoCiR5mkZlxxyPrc79Uurv6C5AWi5qucaog1gQeFhNRNULw4ZZo
X-Gm-Gg: ASbGnctzVbDymaw4BS2+F4WjjGvicppYp5EFv0aBC33I4pMjii6n2NyjupSJzj8tmrj
	x7Ja48QND2rY8TkY/W6qvsGWw1g30wGx5feVi+GVRkZkiL8QVCkiaty/aODrpQjKPUOLNhYB4q6
	1Argc4TDsFOPJssS7cOykDuCKM8pSibZlXhEvzLUW/ok83RF7dpWNwApcIfMFLpOSe5ReolpqY0
	n63/AGLzucH/gxSYsq7qVnUzF2uQlqm8fSmddeR6i4iscYmqfDOwQhTrr/ekE07CCYzXeRhsi8v
	yolPlXHCI+GvsEyx5PCPh0wPc7E/BBHdzHKtJzQ05VwH81PMMw9oBBfM33tRTZFKnH7X7ZLeDc1
	VhFzauhJUnnXxmmsHPSgQiyWIoQBJm2VkDXKrzgpziLs82i4pZiEai0vSTQHhYBcqYw==
X-Received: by 2002:a05:6a00:bd81:b0:781:aad7:214b with SMTP id d2e1a72fcca58-7a776aa91a3mr9906670b3a.2.1762227359676;
        Mon, 03 Nov 2025 19:35:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/JJ3RM7NecDosGss89bhfFDhSWMYNVNuNntMqK71YqzsrihWyXJGLge+Rp0OpNCDluamzbA==
X-Received: by 2002:a05:6a00:bd81:b0:781:aad7:214b with SMTP id d2e1a72fcca58-7a776aa91a3mr9906642b3a.2.1762227359078;
        Mon, 03 Nov 2025 19:35:59 -0800 (PST)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd3246d33sm1064594b3a.13.2025.11.03.19.35.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 19:35:58 -0800 (PST)
Message-ID: <359f88fb-a207-499f-aad0-e12ea3da222b@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 11:35:53 +0800
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
        Conor Dooley
 <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-5-a774a587af6f@oss.qualcomm.com>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20251030-gcc_kaanapali-v2-v2-5-a774a587af6f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNyBTYWx0ZWRfXx/3UzT7NEzI7
 jhvxPntpWzYIR9GO2XZX7x01xrDQ2z/MlHKaCwgRJY589AhAu8XXvFpGPUIkeYsrSyXqzSfbmD0
 yy+YQp+Tnq97abCo6smUAJfsSjpC1HhWrJtvNnDWpPbB8t0OPepHyUo72TN4x/mLqtcpSs9F/ME
 u9VgFcou13qfF3W9yZ0n7xG0+0G1PvQhOzYbj32g3crhsMv1kGrBX8gbz1fljxFx/p9dK22M+P6
 cyMEQSxtI9p7nZptarWEjZQke6LMh91ErG/iB74e1QfDUfGOL/nqmE+YyLGueq38HoxPzyED6h/
 sDkkr6aEYD17DH6CnrZbJnVetkVnClEAbX3FM6dfi7nqQ7G4JBOrz9yjAOxypg2x8ryd1UtQxSo
 kwoS+w1y9kwpTpVlwJOEdQgnYflsZw==
X-Proofpoint-ORIG-GUID: 20IexTDsU-UZQdDuoJnfh4FgKRPiEbZ6
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=690974a0 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vSTseKTzBe5nLB2U_wEA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 20IexTDsU-UZQdDuoJnfh4FgKRPiEbZ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040027

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

Remind for review.
I can see the previous comments was well addressed.

-- 
Thx and BRs,
Aiqun(Maria) Yu

