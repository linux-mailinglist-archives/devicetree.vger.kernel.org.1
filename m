Return-Path: <devicetree+bounces-23216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3447D80A7B1
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:41:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2DA62816FC
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE03E31A92;
	Fri,  8 Dec 2023 15:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="oWIePqJ8";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Sg/seOJd"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90D69FB;
	Fri,  8 Dec 2023 07:41:13 -0800 (PST)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1702050072;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=R0pEnoL/Gff0b7iShI70ys3jq+wUbtxEI57WVAKBvbY=;
	b=oWIePqJ8rLv6IqfuQBwmciWl8+bdrvJChn9XZBRwjfn2R+UWGhM9FBfTaNFrvOeTbj+ZiR
	NtNBvtlFwrJF+x1yyx0T/OegnmxhLYqsNWa2O/yhcAEBqMPhRWAFrmLeaLWH00+f4eDNvW
	934LKyPiPipJr89Wkm8/GQ9S7pB3ji0rvjTHyAatGBIPZQK2AqqHOOMll1AEyRlXE8+sWT
	/FuY01A+R4czn/mAhyyCCrxSc1g+4akz3IijWSSX3fFMf8iHAfj03ZUHDTLrqrURDyPfSe
	0YGNg2GuKZ8s5MMbKKi2AQpC2Oy8LVXITVWCk7YDPrbMiw92DDJKfp0RlVLmBA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1702050072;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=R0pEnoL/Gff0b7iShI70ys3jq+wUbtxEI57WVAKBvbY=;
	b=Sg/seOJdGSBSS6Nb6kY1FKuVmTB578w4HPATOkDjs5zwTeMdY/8r8MszTIuJ6wOf0gdakt
	6hK4QS4r6hfVeADw==
To: James Tai <james.tai@realtek.com>, Marc Zyngier <maz@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 James Tai <james.tai@realtek.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kernel test
 robot <lkp@intel.com>
Subject: Re: [PATCH v3 6/6] irqchip: Introduce RTD1619B support using the
 Realtek common interrupt controller driver
In-Reply-To: <20231129054339.3054202-7-james.tai@realtek.com>
References: <20231129054339.3054202-1-james.tai@realtek.com>
 <20231129054339.3054202-7-james.tai@realtek.com>
Date: Fri, 08 Dec 2023 16:41:11 +0100
Message-ID: <877closnvs.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, Nov 29 2023 at 13:43, James Tai wrote:
> +static int realtek_intc_rtd1619b_suspend(struct device *dev)
> +{
> +	struct realtek_intc_data *data = dev_get_drvdata(dev);
> +	const struct realtek_intc_info *info = data->info;
> +
> +	data->saved_en = readl(data->base + info->scpu_int_en_offset);
> +
> +	writel(DISABLE_INTC, data->base + info->scpu_int_en_offset);
> +	writel(CLEAN_INTC_STATUS, data->base + info->umsk_isr_offset);
> +	writel(CLEAN_INTC_STATUS, data->base + info->isr_offset);
> +
> +	return 0;
> +}
> +
> +static int realtek_intc_rtd1619b_resume(struct device *dev)
> +{
> +	struct realtek_intc_data *data = dev_get_drvdata(dev);
> +	const struct realtek_intc_info *info = data->info;
> +
> +	writel(CLEAN_INTC_STATUS, data->base + info->umsk_isr_offset);
> +	writel(CLEAN_INTC_STATUS, data->base + info->isr_offset);
> +	writel(data->saved_en, data->base + info->scpu_int_en_offset);
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops realtek_intc_rtd1619b_pm_ops = {
> +	.suspend_noirq = realtek_intc_rtd1619b_suspend,
> +	.resume_noirq  = realtek_intc_rtd1619b_resume,
> +};

So this is the 4th copy of the same code, really? Why is this not part
of the common code?

Thanks,

        tglx

