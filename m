Return-Path: <devicetree+bounces-219393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B06DFB8A9D7
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D76D1894F94
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55E3481B1;
	Fri, 19 Sep 2025 16:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wWvQ4BAp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9EE23815B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758300170; cv=none; b=eq24RBFh+UdsFL4BuWmLVMFrO+x3WM3kDwFqklHfUKc9/seQMTgWui0cluxAvVT1Twr0/fXJlLb/dBuJPXakNVmIlvcb1/WQDL8DInixAeHdrXfffj1LjiXe8XotX2Et8BIBuy17wAtXi5AX6RLB2PDTY6AUHc82T+UEwlg42Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758300170; c=relaxed/simple;
	bh=IVmeYFEt5n78kowyzbALJ2qR43obCrrnzs3YepyioWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EZLk0PpLxFetH3F1XQ4Zb2u3EKEyXT6tKJeTyM7587NH+hh7o9T+AqQ7OHgrHpbAq+SHfj2akpE2G+qlJqD3SzVCnI5tj/RZOxLkrtprpnGyq/RNmfU2CV3433ozHUTx8pcujHPmp5Qe9SMm/J3m2tRjC4mxFFH3Z5o3MyTmr+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wWvQ4BAp; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ee1317b1f7so1200507f8f.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758300167; x=1758904967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QkHj6yxNHqV86xD9f9rRMp4RmegxtrG2NNsn/fkhknU=;
        b=wWvQ4BApGTAQVOMBo0lK4TT/Nhb0Y5f8AgIcULgKprpvJCRm7k2pTlThkLrwReFHyO
         k8ZP99TIfvSqR78QxCHtkP7ZND3r4HFrjgseKLq07VP0rLOu1MDaZE/FKcdKjqkDRxF+
         sh4TyWnsw6LP6XbE9tB4Vp6Z1FkYPYvpbJDqPsahfnL/4D2hMyiH/9swzuUGycNsdBOF
         Bwcbg6yanXYammhI7ra42uLBVlUa4jRKopXXQp65boFUxrTpxnJYnFV+EP5qbgBwOyKH
         QPdCxeNsc2rZUcVnFxVb9Wh7qW5Y93eATOulq6JTqXoaonlAGeOjl+LLiM5gUhVbIPQ7
         N7wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758300167; x=1758904967;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QkHj6yxNHqV86xD9f9rRMp4RmegxtrG2NNsn/fkhknU=;
        b=RESqtja0L1bdQiqEQoOja31FYRe/XUR3DXlCWg0wlYpMwGfpvNvaN95AhFBTAhrF2Y
         ZgPb5RctTw3np2cD7ygq9EeyLfYmTpHqIYbiWcOGnBTEvzQ3orLvCWm+JXba635Oxv6T
         Epm3UHbX+odwjDSkISsp1AfVmKnO26MHvXPOygoJqU+MXPv/vbjNtZwG/GdzEC9WAHUO
         TCGD7OVKFIP7QiXhqIWpXq8FCCgcq+qY0UTyrSsZPYtGeW1wB+ZCPP5YlZM9Z708Yq8E
         qq8x4hNkPL/CbQ2NIpDo8QOlfJYMMXxiYNroJq8yl/Rn8Eu8Cm7UG57rI4rVxAJdkiWO
         yxvg==
X-Forwarded-Encrypted: i=1; AJvYcCUjzxAnCL4UNfEMVYQcuOpzRee1GOEh1fZi31at0P1S794lXqs6N/QwWLITi9vmDgu7pMA5X66uYtrW@vger.kernel.org
X-Gm-Message-State: AOJu0YymaVXHs85E65huVt8tcS/ACp2GVGltyN0NEMGjKQu0uzrLYRzJ
	K2UGX/I0Qp+NfymdD/DKFlB1i468ygEVo4n4TMbDT1x71alsS7OTosohKXborB3golQ=
X-Gm-Gg: ASbGnctrCJZ388caEJLotEgaz/3z3uU39i4XULz73EUlcnBOPIZS7VmH9qdtd/y4Kjd
	0RwGtuSeMIfvTnqfnSvJPwutLDfCVaQajaCWeU+b2PJ6AUnGfByV/WSggcMm2chqePiVo2vXoVC
	S92e0BT35XGQLVBFVpP8AxqOWoUMRA6MAw4+vmPThbr3zaRwj7X/G5kipDtqAwQtW0a6E+iVkND
	egtUjfxvSwrRGDtLKMUdc0/p0HbXGFKvB/nmj9VithFbgHksjlGkYYa5U0d5JX22wC4Jpvp9/wI
	ggNyKtytjEJ97denjlkFDlGbhCpCvbR5oazocLPtc23kkakPhJlS30tlqMmnqOMKmWbKRDmYcQ6
	E0DRVdODWVpnBVVXgxpmnmBxbFEXg+MLjRst/lmMJ1dAsiBI39AvmNpf+eOzRfgdBeyfSdgpEXd
	aQXwZjEhj72V3m
X-Google-Smtp-Source: AGHT+IFhUncdh/63zODwAY6Eoa8z9GQAGmPnzhNb7b4Y3hgpiTCynPlk24Zvc+GNdq/F+x3+CVBVbA==
X-Received: by 2002:a05:6000:1aca:b0:3b9:148b:e78 with SMTP id ffacd0b85a97d-3ee855812a7mr3683227f8f.53.1758300166902;
        Fri, 19 Sep 2025 09:42:46 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:8ffd:205a:6719:49c1? ([2a05:6e02:1041:c10:8ffd:205a:6719:49c1])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3f1549285c9sm1799412f8f.52.2025.09.19.09.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 09:42:46 -0700 (PDT)
Message-ID: <ffa6fcdd-2b0d-4493-a8b1-961e51d41e6f@linaro.org>
Date: Fri, 19 Sep 2025 18:42:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] thermal: qoriq: add i.MX93 tmu support
To: Frank Li <Frank.li@nxp.com>
Cc: Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Alice Guo <alice.guo@nxp.com>
References: <20250821-imx93_tmu-v4-0-6cf5688bf016@nxp.com>
 <20250821-imx93_tmu-v4-2-6cf5688bf016@nxp.com>
 <d9392dbc-806a-41df-8992-28c3d6132309@linaro.org>
 <aM2D+q/XCI38M9sp@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aM2D+q/XCI38M9sp@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 19/09/2025 18:25, Frank Li wrote:
> On Fri, Sep 19, 2025 at 05:51:20PM +0200, Daniel Lezcano wrote:
>> On 21/08/2025 08:23, Jacky Bai wrote:
>>> For Thermal monitor unit(TMU) used on i.MX93, the HW revision info read
>>> from the ID register is the same the one used on some of the QorIQ
>>> platform, but the config has some slight differance. Add i.MX93 compatible
>>> string and corresponding code for it.
>>>
>>> Signed-off-by: Alice Guo <alice.guo@nxp.com>
>>> Reviewed-by: Frank Li <Frank.Li@nxp.com>
>>> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
>>> ---
>>>    - v4 changes:
>>>     - no
>>>
>>>    - v3 changes:
>>>     - use the drv data struct for match data and refine the code
>>>     - update the copyright
>>>
>>>    - v2 changes:
>>>     - use the compatible match data to identify the i.MX93 TMU variant
>>> ---
>>>    drivers/thermal/qoriq_thermal.c | 18 +++++++++++++++++-
>>>    1 file changed, 17 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/thermal/qoriq_thermal.c b/drivers/thermal/qoriq_thermal.c
>>> index 01b58be0dcc64d14ca5e4bba654eed8f15e827fc..b2e634547271dcf512c714907baa162921d2d527 100644
>>> --- a/drivers/thermal/qoriq_thermal.c
>>> +++ b/drivers/thermal/qoriq_thermal.c
>>> @@ -1,6 +1,7 @@
>>>    // SPDX-License-Identifier: GPL-2.0
>>>    //
>>>    // Copyright 2016 Freescale Semiconductor, Inc.
>>> +// Copyright 2025 NXP
>>>    #include <linux/clk.h>
>>>    #include <linux/err.h>
>>> @@ -24,6 +25,7 @@
>>>    #define TMTMIR_DEFAULT	0x0000000f
>>>    #define TIER_DISABLE	0x0
>>>    #define TEUMR0_V2		0x51009c00
>>> +#define TEUMR0_V21		0x55000c00
>>>    #define TMSARA_V2		0xe
>>>    #define TMU_VER1		0x1
>>>    #define TMU_VER2		0x2
>>> @@ -66,6 +68,8 @@
>>>    						   */
>>>    #define REGS_V2_TEUMR(n)	(0xf00 + 4 * (n))
>>> +#define GET_TEUMR0(drvdata)	(drvdata && drvdata->teumr0 ? drvdata->teumr0 : TEUMR0_V2)
>>
>> This is not adequate for code which will evolve. Please don't use this
>> macro.
>>
>>>    /*
>>>     * Thermal zone data
>>>     */
>>> @@ -73,12 +77,17 @@ struct qoriq_sensor {
>>>    	int				id;
>>>    };
>>> +struct tmu_drvdata {
>>> +	u32 teumr0;
>>> +};
>>> +
>>>    struct qoriq_tmu_data {
>>>    	int ver;
>>>    	u32 ttrcr[NUM_TTRCR_MAX];
>>>    	struct regmap *regmap;
>>>    	struct clk *clk;
>>>    	struct qoriq_sensor	sensor[SITES_MAX];
>>> +	const struct tmu_drvdata *drvdata;
>>
>> The drvdata pointer is not usually used.
>>
>> 	u32 model;
> 
> I think it is not true.  Copy model here is not extendable if need add
> new field in drvdata in future, especially need ops callback for differece
> variances.
> 
> Just list two examples:
> 
> https://elixir.bootlin.com/linux/v6.17-rc6/source/drivers/pci/controller/dwc/pci-imx6.c#L173
> https://elixir.bootlin.com/linux/v6.17-rc6/source/drivers/pci/controller/dwc/pcie-qcom.c#L286

Yeah may be I'm doing a confusion with a previous comment I had related 
to this approach




-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

