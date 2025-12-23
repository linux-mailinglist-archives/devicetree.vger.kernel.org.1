Return-Path: <devicetree+bounces-249316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D44CDABF4
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F5AB303273C
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4865313E20;
	Tue, 23 Dec 2025 22:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hEMABgWW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C886613635E
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766528172; cv=none; b=KkQ1wu0/i73WlnfORbGTV2NUgDZyU1OSMCKnsD+sJ+fMOWb64vmPRlIbWY1+a/7xzZJYh+LSF7AfGxXLkR3HFW7P8ilWAv7TQ9UJtPBghpERqRoXtbS8S6pmObrNIThA9kEMo/g/Ve9V44csfbM6KXAYoe+MVtQma3O1ipgUF8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766528172; c=relaxed/simple;
	bh=yzbHwEjuUh5QG9F4g4O/Qg7p+yrh30QLZ0ZwvpnIAUw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BWRHqRzlS8n3k3DhKJqdoxOuMzj4B4T/iXACxaOyYMo5+FK1x6XntTH2PUgY6M0lH0ARpjFWXDKrgGUG8kbPZeeqXnMwEMfgxyYnuD/9prmSHEr/udy2FX2REGiR8g/5ORmI8OytK2LXjOWHQt+EsvhqMAtL8D/AA/5dezIghwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hEMABgWW; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b7a6e56193cso899618866b.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766528169; x=1767132969; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5UyYhutUWgIRgYB1MC5/PxDmOAUg51biGCRnLKpp0Ys=;
        b=hEMABgWWHG7rzDOoId5jZputCtI2cNCo3OmyU0wGr/0s1UFPrp+Z17h+WtZGnGNEWI
         gz6L9Nmr5UMbO8tiTovZyn4yZqfaF/8OORjVnL9AG9qR/OdmzH1plwu5S3XisPZb99JW
         v69iRHUmqZpjpcymLX1XeO1P5iI6uYEfwNbFvYkW9uopVjAZbkzNu6yl4/i1MnnyKwO4
         ekxVS/JhRBo5C9IcbJM0NALNBDQZ6mR8gS9VLwQ2WfjA+kCY7GBD5ZpRcXkeeiv3T18T
         W1g1ZSVqCAuSKwzxuhqeVNlNUmv/IFrxKPFi2r046OPbp2Y30LUWxfQu+76zU7tfP+Dz
         4YGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766528169; x=1767132969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5UyYhutUWgIRgYB1MC5/PxDmOAUg51biGCRnLKpp0Ys=;
        b=B+CDg8gW7rTqgp/V+wY3kqPVFK4ywgwv8nme9TsSeEdD3HY1ytvbrE0Yk4dNzANt04
         aI7WTlkScHDvqmkJ7C8YXZldGFHz+y00Ma/EznGOb2pvZbn6+VkY/TExGe4+fMxpGB9N
         kjfIrUGmai3iksGxCsx6D4SPTxs1YO/0gePlqFjshGMSn/j0bYy63jhMqmUR64s9Bc1w
         WwwYisfsDJDNyh6VXmPYCtninUkVwXXTUZPjgIxleTw88b+3WzlJ+1IJnXHVjy5SvZxb
         lwxlW8dCDHVNTHgK/yz2BRv+O76DFKOjLUeNut/uUikxFUre0nMoSnO0RquYDZ1zKmMV
         +FUg==
X-Forwarded-Encrypted: i=1; AJvYcCWCvWw4OGp2RV8Ndu91riTkMLGgEmMDbVi9BLS8U9y+K0wzZRUSLxyFPpVYI2zDVntOKk+LwAB62AHO@vger.kernel.org
X-Gm-Message-State: AOJu0YyV6oAXmCIT61Uhw4msv6PdhRZ4iY9q+BMOVMJNFlXtWuGH0Xkq
	cmQbFlLleSlIZlythnTU7hCoaMrA/Z8s9NK9w62XOBlyRWtWVwHu3KmNoYy+SeG2yFw=
X-Gm-Gg: AY/fxX5kJptsLqN4p7de57soWc23+ECEKoq9kBWYRIylV1D06wuZGxcVozYYGC3LiNw
	+B2oEctHdU92fAR2QJwXzYKvlCWcSnJ/nwpZA/u8SuQGLsL9I56YyMmDwgOlDqIeRh+87e0YRMi
	Hm62agE12bz4YPUdBd1YXGwgjggFyrdFl/N/TXJWq6CbOF60gm+SAqlSVJyZLnKm01Ddyh8qe1f
	iPomlQjbXUq1Db93i5qwpIGKwjOUB4rJzP7CxQMXMHkwaAB8S7O580rMbvPNUdw/Y8AqXf5qti1
	Ug2gb5zmvFkA7UEx9pqn5PbOkdkjnEf9duNgLRz4VEbTGlR7bVVlMv+GX+wjt7/yGw7H3pILAri
	XMbr51oMQu3r8qKEorvnt1wTzYYxboutC1fDVNis7KYxcZF3Zo2eFEbNQnj3TTq40VT6fGHnTZ2
	KIyP1e3Xy+qDd6NktP
X-Google-Smtp-Source: AGHT+IGq+sIPac4pUDc5c2NSoUMS1PyA5G2WwEI/2p2f6em7Z3AmU60xOTfzeGCKspp1fvzaaAIBYw==
X-Received: by 2002:a17:907:6ea4:b0:b80:f2e:6e1 with SMTP id a640c23a62f3a-b803722a7demr1668448866b.43.1766528167036;
        Tue, 23 Dec 2025 14:16:07 -0800 (PST)
Received: from linaro.org ([77.64.146.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm1556445466b.64.2025.12.23.14.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 14:16:06 -0800 (PST)
Date: Tue, 23 Dec 2025 23:15:33 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>, aiqun.yu@oss.qualcomm.com,
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
	yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/5] remoteproc: qcom: pas: Add late attach support
 for subsystems
Message-ID: <aUsUhX8Km275qonq@linaro.org>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
 <20251223-knp-remoteproc-v3-4-5b09885c55a5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223-knp-remoteproc-v3-4-5b09885c55a5@oss.qualcomm.com>

On Tue, Dec 23, 2025 at 01:13:50AM -0800, Jingyi Wang wrote:
> From: Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
> 
> Subsystems can be brought out of reset by entities such as bootloaders.
> As the irq enablement could be later than subsystem bring up, the state
> of subsystem should be checked by reading SMP2P bits and performing ping
> test.
> 
> A new qcom_pas_attach() function is introduced. if a crash state is
> detected for the subsystem, rproc_report_crash() is called. If the
> subsystem is ready either at the first check or within a 5-second timeout
> and the ping is successful, it will be marked as "attached". The ready
> state could be set by either ready interrupt or handover interrupt.
> 
> If "early_boot" is set by kernel but "subsys_booted" is not completed
> within the timeout, It could be the early boot feature is not supported
> by other entities. In this case, the state will be marked as RPROC_OFFLINE
> so that the PAS driver can load the firmware and start the remoteproc. As
> the running state is set once attach function is called, the watchdog or
> fatal interrupt received can be handled correctly.
> 
> Signed-off-by: Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/remoteproc/qcom_q6v5.c      | 87 ++++++++++++++++++++++++++++++++-
>  drivers/remoteproc/qcom_q6v5.h      | 11 ++++-
>  drivers/remoteproc/qcom_q6v5_adsp.c |  2 +-
>  drivers/remoteproc/qcom_q6v5_mss.c  |  2 +-
>  drivers/remoteproc/qcom_q6v5_pas.c  | 97 ++++++++++++++++++++++++++++++++++++-
>  drivers/remoteproc/qcom_q6v5_wcss.c |  2 +-
>  6 files changed, 195 insertions(+), 6 deletions(-)
> 
> [...]
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index 52680ac99589..7e890e18dd82 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> [...]
> @@ -434,6 +440,85 @@ static unsigned long qcom_pas_panic(struct rproc *rproc)
>  	return qcom_q6v5_panic(&pas->q6v5);
>  }
>  
> +static int qcom_pas_attach(struct rproc *rproc)
> +{
> +	int ret;
> +	struct qcom_pas *pas = rproc->priv;
> +	bool ready_state;
> +	bool crash_state;
> +
> +	pas->q6v5.running = true;
> +	ret = irq_get_irqchip_state(pas->q6v5.fatal_irq,
> +				    IRQCHIP_STATE_LINE_LEVEL, &crash_state);
> +
> +	if (ret)
> +		goto disable_running;
> +
> +	if (crash_state) {
> +		dev_err(pas->dev, "Sub system has crashed before driver probe\n");
> +		rproc_report_crash(rproc, RPROC_FATAL_ERROR);

Have you tested this case? From quick review of the code in
remoteproc_core.c I'm skeptical if this will work correctly:

 1. Remoteproc is in RPROC_DETACHED state during auto boot
 2. qcom_pas_attach() runs and calls rproc_report_crash(), then fails so
    RPROC_DETACHED state remains
 3. rproc_crash_handler_work() sets RPROC_CRASHED and starts recovery
 4. rproc_boot_recovery() calls rproc_stop()
 5. rproc_stop() calls rproc_stop_subdevices(), but because the
    remoteproc was never attached, the subdevices were never started.

In this situation, rproc_stop_subdevices() should not be called. I would
expect you will need to make some minor changes to the remoteproc_core
to support handling crashes during RPROC_DETACHED state.

I might be reading the code wrong, but please make sure that you
simulate this case at runtime and check that it works correctly.

> +		ret = -EINVAL;
> +		goto disable_running;
> +	}
> +
> +	ret = irq_get_irqchip_state(pas->q6v5.ready_irq,
> +				    IRQCHIP_STATE_LINE_LEVEL, &ready_state);
> +
> +	if (ret)
> +		goto disable_running;
> +
> +	enable_irq(pas->q6v5.handover_irq);
> +
> +	if (unlikely(!ready_state)) {
> +		/* Set a 5 seconds timeout in case the early boot is delayed */
> +		ret = wait_for_completion_timeout(&pas->q6v5.subsys_booted,
> +						  msecs_to_jiffies(EARLY_ATTACH_TIMEOUT_MS));
> +

Again, have you tested this case?

As I already wrote in v2, I don't see how this case will work reliably
in practice. How do you ensure that the handover resources will be kept
on during the Linux boot process until the remoteproc has completed
booting?

Also, above you enable the handover_irq. Let's assume a handover IRQ
does come in while you are waiting here. Then q6v5_handover_interrupt()
will call q6v5->handover(q6v5); to disable the handover resources
(clocks, power domains), but you never enabled those. I would expect
that you get some bad reference count warnings in the kernel log.

I would still suggest dropping this code entirely. As far as I
understand the response from Aiqun(Maria) Yu [1], there is no real use
case for this on current platforms. If you want to keep this, you would
need to vote for the handover resources during probe() (and perhaps
more, this case is quite tricky).

Please test all your changes carefully in v4.

Thanks,
Stephan

[1]: https://lore.kernel.org/linux-arm-msm/c15f083d-a2c1-462a-aad4-a72b36fbe1ac@oss.qualcomm.com/

