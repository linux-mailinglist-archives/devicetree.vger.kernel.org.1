Return-Path: <devicetree+bounces-134944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0089FEFFB
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 15:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57A71161666
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 14:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4A8768FD;
	Tue, 31 Dec 2024 14:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oZBFFVtz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6772319BBA
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 14:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735655535; cv=none; b=QbC4PbNuwOBOvNDSrsOmT4gYq05UhXp+Coh9wOLs15NjdRBH+bFQGHWTwDM24wFwM44zBGzPW3czImtlnAPrMfQI4GBT7thPSK3pigDMETyjOajyLjYaPzSDf2Rq/Dg3q7TYGTl/P5pSY17bY5xMymZPZh8dHX9GUA3aLltF5HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735655535; c=relaxed/simple;
	bh=4sN3VufKttjgPhoFGGWVq0okyGibbFQBaeaUTk9VlYQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=HTAK3kaBMcFRApjR5sYYpRQL9MtiUhf6Us7TOpf1MjbQIEzMCcFLeuJ0joqWBM5dT7PWlSUUdhZZmqGKQwM3Lqq9wb9v+omk8POHcV1K2sRuTjcyYxpcVAVxvEH9dehzoZcah+ZDrSMuUnp1nJOXjYhC9rMGF4WC2rw7rQFm+UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oZBFFVtz; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5d3e6f6cf69so16790810a12.1
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 06:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735655532; x=1736260332; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2keqdGtBRvpVebH43QHNSuuEe5A3dgL5p1ReoLkPxb0=;
        b=oZBFFVtzcCPXaERB8W0DcdfZ1qfDeY88+RBBNPXsNIiQ4Nto1o5XJPBE4/rNZwYyp9
         cf6PnTFdgRyLcFKUxp2Gy3G/SAvWNxM6p9904NU4jbo725BZLSMu+TkU5nrthB+uzG4q
         DDxy0L9Y0zPRr/YZL4I4DWWht2s5EcPymQICfUd5Gq6OzHRtMhhU6aKQabCvKSAZW6Yj
         gBlWuDEJfeEmf8Mu+Ug0LdMETgrDcmUWolSdwWQFzQ4WyXuBObok6CKhX666r19GALjS
         FAbYY+Pr6DrUTNC8d9OqvzgQP5/RFu2IsTM2Th2r4sh8xh9z/SZTM/hwzjgJM/zK0QML
         5mkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735655532; x=1736260332;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2keqdGtBRvpVebH43QHNSuuEe5A3dgL5p1ReoLkPxb0=;
        b=OyX/hWG3zo+5CGe+WpNOOxxMJ6gezxRsCqOAonxEr4xu1bH+RpJrYZ3I3XSdMWW7KY
         5QZEIEuhduMjWbWGyvdz6ufJMTTlv5ZeYJOVo3KSRrO6ijnHEy2MjQrhFaZBrKU6VUBr
         nrwIkncSpBa/Kv8FCg7qoxZX1OnNoCko31Vy7qFpW/mkey6JS0wZROvH4YqCVZsANfk3
         TBUhqBov9U0XsSJ2a2peswHUaEmHtKvqfD4MjA4nHxxM/bf42nbOn2GAIfQrB/OxUYvf
         arBzdKNhEXfBUNhQCM0WohJBrUqRXznoq6BbwoxhtQ9ovfmJWsFq+Si/f9w8NAQ8O8UE
         ScCw==
X-Forwarded-Encrypted: i=1; AJvYcCUtvIGO2ck4/o14nnBw55jz1KRif3glHY91cqAg3rA8xK1oRDftMsTj/dk7aZPMzaYWjOSnDlqdedVP@vger.kernel.org
X-Gm-Message-State: AOJu0YwMP3qWx0u9vjqQwPkwXXhwAEogCZUsYJkO1ljpBj97Z08F6WJe
	baQxuJmvU+QFHzZ57E0pHJQ9EinVI4pRCpSF8+wXvlGri3/+v/b5E5/0GZBOv7M=
X-Gm-Gg: ASbGncvjZqry45RUNDeoWBONu6k2jPy6H/513+JgQVl54GwWYZ3Eo+zCq19WOEqCogw
	wXreq2M4pMLCWjXUpTcoM1+8WTo99JmnX/djT7gF8qypbQNh4EsG9K3Lrw/jz/nOqAP1jeENC9N
	li5hcLGXSi+C2wGQh4BfgHXOAjodL9f+RhMTWwldcNiz2mWwv22uUqdUEcDSVXzVrSs2Fcw1Uty
	KlXaVqUDw/5ik+/Rm09NmxB4AVU5idICFFOPs1vogLGzhKcZ/vvE+wSfebdd7K+
X-Google-Smtp-Source: AGHT+IFdM/rs1qwaLZz3vPXVfk8xrxGEKWKPLqcfpEpGLpnfhCO1W7Bz3i7q11r+aJ1B33Zjl6yyLQ==
X-Received: by 2002:a05:6402:5006:b0:5d0:e615:39fe with SMTP id 4fb4d7f45d1cf-5d81dde87dfmr37824739a12.18.1735655531576;
        Tue, 31 Dec 2024 06:32:11 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679eeb1sm16016417a12.48.2024.12.31.06.32.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Dec 2024 06:32:10 -0800 (PST)
Message-ID: <060c7a96-c1ed-4c97-8a3f-f510102466f9@linaro.org>
Date: Tue, 31 Dec 2024 14:32:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: Re: [PATCH v5 2/3] firmware: add Exynos ACPM protocol driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 peter.griffin@linaro.org, daniel.lezcano@linaro.org,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
 <20241220-gs101-acpm-v5-2-4f26b7fb3f5f@linaro.org>
 <8e6bade0-5184-4bf7-b1f0-103a77d0f98b@kernel.org>
Content-Language: en-US
In-Reply-To: <8e6bade0-5184-4bf7-b1f0-103a77d0f98b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Krzysztof,

Thanks for the review!

On 12/24/24 2:14 PM, Krzysztof Kozlowski wrote:
> On 20/12/2024 15:32, Tudor Ambarus wrote:
>> diff --git a/drivers/firmware/samsung/Kconfig b/drivers/firmware/samsung/Kconfig
>> new file mode 100644
>> index 000000000000..750b41342174
>> --- /dev/null
>> +++ b/drivers/firmware/samsung/Kconfig
>> @@ -0,0 +1,14 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +
>> +config EXYNOS_ACPM_PROTOCOL
>> +	tristate "Exynos Alive Clock and Power Manager (ACPM) Message Protocol"
>> +	depends on ARCH_EXYNOS || COMPILE_TEST
>> +	depends on EXYNOS_MBOX
> 
> Is it build time dependency? No || COMPILE_TEST?

There's no build time dependency, I'll drop this line.
> 
> Is it fine when EXYNOS_MBOX is a module?

Yes. When the EXYNOS_MBOX module is not loaded, and one tries to load
EXYNOS_ACPM_PROTOCOL module, the later will defer probe when requesting
the mailbox channels, but that's fine.

cut

>> diff --git a/drivers/firmware/samsung/exynos-acpm-pmic.c b/drivers/firmware/samsung/exynos-acpm-pmic.c

cut

>> +static void acpm_pmic_init_bulk_write_cmd(u32 *cmd, u8 type, u8 reg, u8 chan,
>> +					  u8 count, u8 *buf)
> 
> u32 cmd[4] - I think newer GCC could use of that. At least reader will know.
> 
> const u8 *buf
> 
> Same in all other places, where applicable
> 
Indeed, will update.

cut
>> +int acpm_pmic_update_reg(const struct acpm_handle *handle, int acpm_chan_id,
>> +			 u8 type, u8 reg, u8 chan, u8 value, u8 mask)
>> +{
>> +	struct acpm_xfer xfer;
>> +	u32 cmd[4] = {0};
>> +	int ret;
>> +
>> +	acpm_pmic_init_update_cmd(cmd, type, reg, chan, value, mask);
>> +	acpm_dvfs_set_xfer(&xfer, cmd, acpm_chan_id);
>> +
>> +	ret = acpm_do_xfer(handle, &xfer);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return FIELD_GET(ACPM_PMIC_RETURN, xfer.rx.cmd[1]);
>> +}
> 
> I have troubles understanding the split. I would assume PMIC uses the
> ACPM to talk with PMIC... or somehow the opposite, but here this is all
> mixed. You have acpm_pmic_update_reg() which uses  ACPM code
> (acpm_do_xfer()), but ACPM code also references acpm_pmic_update_reg()
> and others. This is a circular dependency between objects, which
> compiles and works fine but is confusing.
> 
This is related to the public header comment, I'll respond there on the
overall driver architecture.

>> diff --git a/drivers/firmware/samsung/exynos-acpm.c b/drivers/firmware/samsung/exynos-acpm.c

cut

>> +#include <linux/of_address.h>
> 
> This looks unused

it's necessary for of_address_to_resource()

cut

>> +static inline void acpm_memcpy_fromio32(void *to, const void __iomem *from,
>> +					size_t count)
>> +{
>> +	WARN_ON(!IS_ALIGNED((unsigned long)from, 4) ||
>> +		!IS_ALIGNED((unsigned long)to, 4) ||
>> +		count % 4);
> 
> These should be build time checks if this is necessary.
> 

The method is called at runtime. Right now unaligned accesses can not
happen because the only protocol implemented (PMIC), uses on stack u32
buffers. The checks are just to avoid potential issues if future
protocols will implement things in an unaligned fashion. I can drop the
checks if you feel I was over cautious.

>> +
>> +	__ioread32_copy(to, from, count / 4);
>> +}

cut

>> +int acpm_do_xfer(const struct acpm_handle *handle, struct acpm_xfer *xfer)
> 
> const xfer, so it is clear that caller keeps ownership and must ensure
> it is valid memory through entire xfer time.

will fix.

> 
>> +{
>> +	struct acpm_info *acpm = handle_to_acpm_info(handle);
>> +	struct acpm_chan *achan = &acpm->chans[xfer->acpm_chan_id];
>> +	struct acpm_msg *tx = &xfer->tx;
> 
> Looks like const, same for function argument xfer

yes, will fix.

> 
>> +	u32 idx, tx_front;
>> +	int ret;
>> +
>> +	if (!tx->cmd || tx->len > achan->mlen || xfer->rx.len > achan->mlen)
>> +		return -EINVAL;
>> +
>> +	if (!achan->poll_completion) {
>> +		dev_err(achan->acpm->dev, "Interrupt mode not supported\n");
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	mutex_lock(&achan->tx_lock);
>> +
>> +	tx_front = readl(achan->tx.front);
>> +	idx = (tx_front + 1) % achan->qlen;
>> +
>> +	ret = acpm_wait_for_queue_slots(achan, idx);
>> +	if (ret) {
>> +		mutex_unlock(&achan->tx_lock);
>> +		return ret;
>> +	}
>> +
>> +	acpm_prepare_xfer(achan, xfer);
>> +
>> +	/* Write TX command. */
>> +	acpm_memcpy_toio32(achan->tx.base + achan->mlen * tx_front, tx->cmd,
>> +			   tx->len);
>> +
>> +	/* Advance TX front. */
>> +	writel(idx, achan->tx.front);
>> +
>> +	mutex_unlock(&achan->tx_lock);
> 
> Just to be sure I understand correctly:
> If concurrent transfer happened exactly now, it would use incremented
> tx_front, thus it would not overwrite data written here, right?

right

cut
>> +static int acpm_put_handle(const struct acpm_handle *handle)
>> +{
>> +	struct acpm_info *acpm;
>> +
>> +	if (IS_ERR(handle))
>> +		return PTR_ERR(handle);
>> +	if (!handle)
>> +		return -EINVAL;
> 
> I think this cannot happen and you should rather choose: either NULL is
> allowed or PTR_ERR, but not both. Although in few cases both ERR and
> NULL are desired, so write a comment why here.

both checks are unnecessary, I'll get rid of them altogether. The method
is called just by devm_acpm_release, and at that point the pointer to
handle is valid.
> 
>> +
>> +	acpm = handle_to_acpm_info(handle);
>> +	mutex_lock(&acpm_list_mutex);
>> +	if (!WARN_ON(!acpm->users))
>> +		acpm->users--;
> 
> Use refcnt
> 
okay

cut

>> + */
>> +static const struct acpm_handle *acpm_get_by_phandle(struct device_node *np,
>> +						     const char *property)
>> +{
>> +	struct acpm_handle *handle = NULL;
>> +	struct device_node *acpm_np;
>> +	struct acpm_info *info;
>> +
>> +	if (!np) {
>> +		pr_err("I need a device pointer\n");
>> +		return ERR_PTR(-EINVAL);
>> +	}
>> +
>> +	acpm_np = of_parse_phandle(np, property, 0);
>> +	if (!acpm_np)
>> +		return ERR_PTR(-ENODEV);
>> +
>> +	mutex_lock(&acpm_list_mutex);
>> +	list_for_each_entry(info, &acpm_list, node) {
>> +		if (acpm_np == info->dev->of_node) {
>> +			handle = &info->handle;
>> +			info->users++;
>> +			break;
>> +		}
>> +	}
>> +	mutex_unlock(&acpm_list_mutex);
>> +	of_node_put(acpm_np);
>> +
> 
> You also need device links and probably try_module_get. See clk.c
> clk_hw_create_clk() or of_qcom_ice_get(). Interestingly, none of them
> perform both operations, which I think is necessary.
> 
> I think you could also avoid entire list and mutex by using
> platform_get_drvdata(), see of_qcom_ice_get().
> 

I'll take a look, thanks for the pointers!

cut

>> +#endif /* __EXYNOS_ACPM_H__ */
>> diff --git a/include/linux/firmware/samsung/exynos-acpm-protocol.h b/include/linux/firmware/samsung/exynos-acpm-protocol.h
>> new file mode 100644
>> index 000000000000..f834af20cef8
>> --- /dev/null
>> +++ b/include/linux/firmware/samsung/exynos-acpm-protocol.h
>> @@ -0,0 +1,55 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright 2020 Samsung Electronics Co., Ltd.
>> + * Copyright 2020 Google LLC.
>> + * Copyright 2024 Linaro Ltd.
>> + */
>> +
>> +#ifndef __EXYNOS_ACPM_PROTOCOL_H
>> +#define __EXYNOS_ACPM_PROTOCOL_H
>> +
>> +#include <linux/types.h>
>> +
>> +struct acpm_msg {
>> +	u32 *cmd;
> 
> const most likely, although then you have different message for tx and
> tx. Not sure if there is a benefit of having it as structure.

tx shall be const indeed. I guess I can get rid of the struct and have
const u32 *tx, and u32 *rx, while referencing the same memory.

> 
>> +	size_t len;
>> +};
>> +
>> +struct acpm_xfer {
>> +	struct acpm_msg tx;
>> +	struct acpm_msg rx;
>> +	int acpm_chan_id;
>> +};
>> +
>> +struct acpm_handle;
>> +
>> +struct acpm_pmic_ops {
>> +	int (*read_reg)(const struct acpm_handle *handle, int acpm_chan_id,
>> +			u8 type, u8 reg, u8 chan, u8 *dest);
>> +	int (*bulk_read)(const struct acpm_handle *handle, int acpm_chan_id,
>> +			 u8 type, u8 reg, u8 chan, u8 count, u8 *buf);
>> +	int (*write_reg)(const struct acpm_handle *handle, int acpm_chan_id,
>> +			 u8 type, u8 reg, u8 chan, u8 value);
>> +	int (*bulk_write)(const struct acpm_handle *handle, int acpm_chan_id,
>> +			  u8 type, u8 reg, u8 chan, u8 count, u8 *buf);
>> +	int (*update_reg)(const struct acpm_handle *handle, int acpm_chan_id,
>> +			  u8 type, u8 reg, u8 chan, u8 value, u8 mask);
>> +};
>> +
>> +struct acpm_ops {
>> +	struct acpm_pmic_ops pmic_ops;
>> +};
>> +
>> +/**
>> + * struct acpm_handle - Reference to an initialized protocol instance
>> + * @ops:
>> + */
>> +struct acpm_handle {
>> +	struct acpm_ops ops;
>> +};
> 
> All above should not be in public header but private to the driver. In
> public header you expose things available to consumers.... which there
> are no? So entire header can be next to the driver.

This can be trimmed a little bit, acpm_xfer shall be private indeed.

The acpm_handle and the ops will be public. The consumers use
devm_acpm_get_by_phandle() to get a pointer to the acpm_handle, and then
use the ops (PMIC, DVFS, etc.) exposed by the handle.

We have:
1/	drivers/firmware/samsung/exynos-acpm-{pmic,dvfs,etc.}.c
These are the protocols exposed by the ACPM interface. The operations
for a protocol are declared in:
	drivers/firmware/samsung/exynos-acpm-{pmic, dvfs, etc}.h

The protocol op methods construct a message in the ACPM format using the
args received from the consumers and then call acpm_do_xfer() to
transfer a message.

2/	drivers/firmware/samsung/exynos-acpm.c

This is the ACPM interface driver. It manages the xfers. It saves all
the protocols operations in struct acpm_handle and provides the means
for the consumers to get a pointer to it.

3/ consumer drivers - these will obtain a pointer to the acpm_handle and
use the ops exposed there. Here's an example of such a consumer using
similar infrastructure. The consumer gets a pointer to the interface handle:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/reset/reset-ti-sci.c?h=v6.13-rc5#n221
then uses the ops exposed there:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/reset/reset-ti-sci.c?h=v6.13-rc5#n78


Cheers, and Happy New Year! :)
ta

