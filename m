Return-Path: <devicetree+bounces-96396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4476595DE06
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 15:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8176AB21CFA
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 13:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC196176FD3;
	Sat, 24 Aug 2024 13:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JFbQxXJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14811714D0
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 13:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724505550; cv=none; b=saRV+dqgo2E1m0ZZ02IPx3LyjpnfriO+4RRliltuBatdwj7xnIUn5iVCV7vzq3wUqfhofaW/qw9ErPqhm503G9a7pAunth1wRk++9W9wHIpwefVbhy4P722EAXPFBAp0DJssZUHfWaMPPUtSm4tTnlitPaPYIpRqpSqVub9PAqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724505550; c=relaxed/simple;
	bh=5GAWK8GXBZ43Qd9YCfwm6fB0G6hv+fMqaGGUOLfk8w0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KtA23J3IM0+vPuRPmirbJoUEYiOzIQO7Rq1EiKbHbbjGEzYFtbtLahFWxwLgkZ4htfPuLO2kss9Awds4aj/nzKuYXhdzOM9LPrIkCzIzz3ndrV479ZnJKdGcAFX1bcsVCPGRjMxoiwueIQDPDnof6WN+7Nf9hiLBHh0KgHJl7tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JFbQxXJ1; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52efcbfacb9so563013e87.2
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 06:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724505547; x=1725110347; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KlcwWdXlvkbWcgPP22YAHa16AeHVn67ihK+bfFfAGEM=;
        b=JFbQxXJ1OGJ47H+/Bf+q4ZQeA877VPxWpyFGvkmG71JmFgrlvt/satx+5NE0jSbDQl
         l5eYrDZr6IqAMD4DawP48Zv4kNtIoZr20iETqKsz57o9k0d6gxqr7pT2Uw49Rd6U1Kqi
         se9jIbIdYWjETZ92x7tm9j+Vx/mlruV9Z7/yx8vbYW1EeXlGzxaZATV4TuYrTZYZrzDD
         8ofeaBli9bgq++IVwXyZC7yYW2qVLK73wPgJN/VCYj5r1fnDsDyHw3Z7vodXEVYS9tmx
         d45B+nGxkV7y9IgggdyP4fuCnc8m4hENFtwmfYvYbl8yQaSb/ETOhu+W+DBZKXBwAKcZ
         mTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724505547; x=1725110347;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KlcwWdXlvkbWcgPP22YAHa16AeHVn67ihK+bfFfAGEM=;
        b=tzHy7Iw0LipmsDUL6QyXu8pQjhBWRGUVHH+51Zaiq3Zg41WZWa0hkV6wIfmjs+9XZa
         iXrgvH9GsNc/XQGrlPJthnUgohTBAktJ6/kkW1Sw3JWX4mkoJleUhrGtRQtPVrF8+8aR
         NZoERrarvqaHjljtoJTikmtUu4OW1TMUbAghPBmH6MEaTvsY1uu7fYswl2bMEHZwE806
         jkshMk9NiEu9Ej2z6kqWLnAsN0fmzD90atPw5k+rnCyfGV5qJ2KtTwHqNOrvR6neKjdx
         wb5ekb7FuoBrxF9NvTk+XiplaVt2VUrep1b06LBa0zK2Sc4/CVCoLMxR15DUMktvj/tm
         dQ7A==
X-Forwarded-Encrypted: i=1; AJvYcCWlEv/4YUdGg2H2q7+8oy/y2Z3w5ZTG2uo6KWGtD8fC69fwzyN27sbbS3W4bdg+VuejGmFrUvIOAuFr@vger.kernel.org
X-Gm-Message-State: AOJu0YzbSGQxQvLxht4NzUZzP41PuOcfQw/HjibhOe9Q9p9pfcSliZwW
	P1d4kZl/Wt6+zDn7me4uJ7bpyM4L+kId0hdZQ33NQK/4w78ydUhuZlghcE2cPYo=
X-Google-Smtp-Source: AGHT+IFBIwC0BGxRq38k2uQbp83gwHSHw197HqkHuRG00CoY+zDTa9VpKFRblNc7X1DFXpEpeVOTsA==
X-Received: by 2002:a2e:a813:0:b0:2ef:2b1f:180b with SMTP id 38308e7fff4ca-2f4f4990338mr19253951fa.8.1724505546640;
        Sat, 24 Aug 2024 06:19:06 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f40484c31dsm7430811fa.90.2024.08.24.06.19.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 06:19:06 -0700 (PDT)
Message-ID: <5a91ea63-2229-4c21-8caa-ca0912b1b8da@linaro.org>
Date: Sat, 24 Aug 2024 16:19:05 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] media: qcom: camss: Add CSID Gen3 support for
 sm8550
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-13-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240812144131.369378-13-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/12/24 17:41, Depeng Shao wrote:
> The CSID in sm8550 is gen3, it has new register offset and new
> functionality. The buf done irq,register update and reset are
> moved to CSID gen3.
> 
> The sm8550 also has a new block is named as CSID top, CSID can
> connect to VFE or SFE(Sensor Front End), the connection is controlled
> by CSID top.
> 
> Co-developed-by: Yongsheng Li <quic_yon@quicinc.com>
> Signed-off-by: Yongsheng Li <quic_yon@quicinc.com>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/Makefile    |   1 +
>   .../platform/qcom/camss/camss-csid-gen3.c     | 339 ++++++++++++++++++
>   .../platform/qcom/camss/camss-csid-gen3.h     |  26 ++
>   .../media/platform/qcom/camss/camss-csid.c    |  46 ++-
>   .../media/platform/qcom/camss/camss-csid.h    |  10 +
>   drivers/media/platform/qcom/camss/camss.c     |  91 +++++
>   drivers/media/platform/qcom/camss/camss.h     |   2 +
>   7 files changed, 503 insertions(+), 12 deletions(-)
>   create mode 100644 drivers/media/platform/qcom/camss/camss-csid-gen3.c
>   create mode 100644 drivers/media/platform/qcom/camss/camss-csid-gen3.h
> 
> diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
> index e636968a1126..c336e4c1a399 100644
> --- a/drivers/media/platform/qcom/camss/Makefile
> +++ b/drivers/media/platform/qcom/camss/Makefile
> @@ -7,6 +7,7 @@ qcom-camss-objs += \
>   		camss-csid-4-1.o \
>   		camss-csid-4-7.o \
>   		camss-csid-gen2.o \
> +		camss-csid-gen3.o \
>   		camss-csiphy-2ph-1-0.o \
>   		camss-csiphy-3ph-1-0.o \
>   		camss-csiphy.o \
> diff --git a/drivers/media/platform/qcom/camss/camss-csid-gen3.c b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
> new file mode 100644
> index 000000000000..d96bc126f0a9
> --- /dev/null
> +++ b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
> @@ -0,0 +1,339 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * camss-csid-gen3.c
> + *
> + * Qualcomm MSM Camera Subsystem - CSID (CSI Decoder) Module
> + *
> + * Copyright (c) 2024 Qualcomm Technologies, Inc.
> + */
> +#include <linux/completion.h>
> +#include <linux/delay.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/of.h>
> +
> +#include "camss.h"
> +#include "camss-csid.h"
> +#include "camss-csid-gen3.h"
> +
> +#define CSID_TOP_IO_PATH_CFG0(csid)	(0x4 * (csid))
> +#define		OUTPUT_IFE_EN			0x100
> +#define		INTERNAL_CSID			1
> +
> +#define CSID_RST_CFG			0xC
> +#define		RST_MODE			0
> +#define		RST_LOCATION			4
> +
> +#define CSID_RST_CMD			0x10
> +#define		SELECT_HW_RST			0
> +#define		SELECT_SW_RST			1
> +#define		SELECT_IRQ_RST			2
> +
> +#define CSID_CSI2_RX_IRQ_STATUS		0x9C
> +#define CSID_CSI2_RX_IRQ_MASK		0xA0
> +#define CSID_CSI2_RX_IRQ_CLEAR		0xA4
> +#define CSID_CSI2_RX_IRQ_SET		0xA8
> +
> +#define CSID_CSI2_RDIN_IRQ_STATUS(rdi)	(0xEC + 0x10 * (rdi))
> +
> +#define CSID_CSI2_RDIN_IRQ_CLEAR(rdi)	(0xF4 + 0x10 * (rdi))
> +#define CSID_CSI2_RDIN_IRQ_SET(rdi)	(0xF8 + 0x10 * (rdi))
> +
> +#define CSID_TOP_IRQ_STATUS		0x7C

The list of macros shall be sorted by register offset value.

> +#define		 TOP_IRQ_STATUS_RESET_DONE	0
> +
> +#define CSID_TOP_IRQ_MASK		0x80
> +#define CSID_TOP_IRQ_CLEAR		0x84
> +#define CSID_TOP_IRQ_SET		0x88
> +
> +#define CSID_IRQ_CMD			0x14
> +#define		IRQ_CMD_CLEAR			0
> +#define		IRQ_CMD_SET			4
> +
> +#define CSID_REG_UPDATE_CMD		0x18
> +
> +#define CSID_BUF_DONE_IRQ_STATUS	0x8C
> +#define		BUF_DONE_IRQ_STATUS_RDI_OFFSET	(csid_is_lite(csid) ? 1 : 14)
> +#define CSID_BUF_DONE_IRQ_MASK		0x90
> +#define CSID_BUF_DONE_IRQ_CLEAR		0x94
> +#define CSID_BUF_DONE_IRQ_SET		0x98
> +
> +#define	CSI2_RX_CFG0_PHY_SEL_BASE_IDX	1
> +
> +#define CSID_CSI2_RX_CFG0		0x200
> +#define		CSI2_RX_CFG0_NUM_ACTIVE_LANES	0
> +#define		CSI2_RX_CFG0_DL0_INPUT_SEL	4
> +#define		CSI2_RX_CFG0_PHY_NUM_SEL	20
> +
> +#define CSID_CSI2_RX_CFG1		0x204
> +#define		CSI2_RX_CFG1_ECC_CORRECTION_EN	0
> +#define		CSI2_RX_CFG1_VC_MODE		2
> +
> +#define CSID_RDI_CFG0(rdi)		(0x500 + 0x100 * (rdi))
> +#define		RDI_CFG0_TIMESTAMP_EN		6
> +#define		RDI_CFG0_TIMESTAMP_STB_SEL	8
> +#define		RDI_CFG0_DECODE_FORMAT		12
> +#define		RDI_CFG0_DT			16
> +#define		RDI_CFG0_VC			22
> +#define		RDI_CFG0_DT_ID			27
> +#define		RDI_CFG0_EN			31
> +
> +#define CSID_RDI_CFG1(rdi)		(0x510 + 0x100 * (rdi))
> +#define		RDI_CFG1_DROP_H_EN		5
> +#define		RDI_CFG1_DROP_V_EN		6
> +#define		RDI_CFG1_CROP_H_EN		7
> +#define		RDI_CFG1_CROP_V_EN		8
> +#define		RDI_CFG1_PIX_STORE		10
> +#define		RDI_CFG1_PACKING_FORMAT		15
> +
> +#define CSID_RDI_CTRL(rdi)		(0x504 + 0x100 * (rdi))

Sorted by register offset please.

> +#define		RDI_CTRL_START_CMD		0
> +
> +#define CSID_RDI_IRQ_SUBSAMPLE_PATTERN(rdi)	(0x548 + 0x100 * (rdi))
> +#define CSID_RDI_IRQ_SUBSAMPLE_PERIOD(rdi)	(0x54C + 0x100 * (rdi))
> +
> +static inline int reg_update_rdi(struct csid_device *csid, int n)
> +{
> +	return BIT(n + 4) + BIT(20 + n);

Taking as unshifted bit BIT(4) is RUP and BIT(20) is AUP, add
corresponding macros for them, then

return (... | ...) << n;

> +}
> +#define REG_UPDATE_RDI			reg_update_rdi
> +

--
Best wishes,
Vladimir

