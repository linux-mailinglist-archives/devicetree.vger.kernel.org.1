Return-Path: <devicetree+bounces-37591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC9C845824
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 13:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7E36287F96
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 12:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F3B8665D;
	Thu,  1 Feb 2024 12:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i7H6xVNk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96A88664E
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 12:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706791921; cv=none; b=SRxLQxexuALx0RjC0HJdxYL4PX5jRFj1qdqDhOdsu1pvwMUNHr8ENDIOv/XiCUCtjimZxHAJad3/QT6uQKaxoEjCPvNEGZOkAmZDHtUM1kxpMQkINrV6o7nR5BLAsm8nWnuY8fK4oFLKb8Py0ta6gczQeGPxMGWdpN3HRwaJ09s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706791921; c=relaxed/simple;
	bh=h2mSKtqOnzsmGzhW1noP9srYgl4twW8yuazPvZGHQ6w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rp65aOFC1yQJJF96PWZvUmblQjuMaMG/R3/BC14FFNOeaADTYmz1mE3qprrgdFWxg4dGKnX4ysBnaQWRN9ZMFpTrDXKHIYMflhDBQ00LdiqOUOs/NmCoLKhZDLgSL2azuIB3P9POo9+XWijZLSKIWH42YFycdTprfqMOmfT4+YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i7H6xVNk; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-68c2f4c3282so4367656d6.3
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 04:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706791919; x=1707396719; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=weoByurLTD5f879C/MSz1GGLsfMhdIMFAUH5IcvF+Gs=;
        b=i7H6xVNkYm8BW1ju1fdxFuKQiKHVVxTS7pPQfCKPoSJpU24q6jiMfBolr41QPkhIt0
         r2NTD2rrZxnJPv1x/TXcrEkR07NFXRy0bE7s8E95naCFdTymGzqtRmd8geAlJfS1wKH8
         zxRv0l9ip3Mc73rugtNsuedK696R2ntFGnmu4cjqVmfTxYPNoGJPp8I5QvmYD2oS6PM3
         Yzm3YoJKdc1D2l53uHFXc9dNtr7Lg3lENr1UDPjoTJsoNhXFp5Vsznf8sNAp80Z823yN
         2Svhz2PHdzDb4RWhTrn0huhXZHizELjwiBx2zJKd8QwqXJD9MKrymx216HSSzA2JK4CE
         MdQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706791919; x=1707396719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=weoByurLTD5f879C/MSz1GGLsfMhdIMFAUH5IcvF+Gs=;
        b=Zyqrjxuwz1z3t3FRlcB2Cm3E++E78XCAWBAD26W2Z9qfDQQmuazrHT1Czrxyw83u3P
         hWA4DOAU/YZodQ6AkAbXuZh7RRbYXUlPMyxqGVoG5mIRPVPnqwuhg8TdeEe0EmfXkF46
         eOsI3L4LPgDyiMsaa4eA3YXkaubMf1fKMJ/tsG7SShL9U0ePKf5T6Cl/dZBsn15EDYY7
         +/WL32trjy146utlDam918//iycxYPk9LjO6OW/J3OFIQTncnxqM+Vnj+HI86PwBsPgo
         sGUThQ/3V4OO+AcvOmZuw6D5mJKiOMtOuNX6iDCYQ7UX+CHm8Zl6cgGM2PDWn9Ihs8VE
         J7rw==
X-Gm-Message-State: AOJu0Yx/lIAUgoXo1Wk4qdYu6X8y+1mpxI4//5TxRZDQWfoWBHK6Piv7
	PqVQ5jOnVwC7wpGixXfsm/8Ev24srdDvd4QY+XB11k6ySGQoGQr4fqNac9CYAWIY6qzhkxluI+u
	OdoLTQAEqYln4bw+Y2BWZbGtSVLe4P+MK9uogfQ==
X-Google-Smtp-Source: AGHT+IHgSoknuuzS25Fpw49ZLC4Y8bfK4zoT8o2iXaPQVImDDvoLvfleUoohLl84R97TiX7NmQhLUmMcGlCRfQ0KQaA=
X-Received: by 2002:a05:6214:1c4e:b0:686:261a:76a0 with SMTP id
 if14-20020a0562141c4e00b00686261a76a0mr6259620qvb.52.1706791918775; Thu, 01
 Feb 2024 04:51:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129211912.3068411-1-peter.griffin@linaro.org>
 <20240129211912.3068411-2-peter.griffin@linaro.org> <fb530eb8-e32b-4faf-81f3-efc334ebf241@linaro.org>
In-Reply-To: <fb530eb8-e32b-4faf-81f3-efc334ebf241@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 1 Feb 2024 12:51:47 +0000
Message-ID: <CADrjBPoQmTRsFYRtxBxdvAoKK816O8XN3=hOJ3vBt8wbbbk-=Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] soc: samsung: exynos-pmu: Add regmap support for
 SoCs that protect PMU regs
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: arnd@arndb.de, linux@roeck-us.net, wim@linux-watchdog.org, 
	alim.akhtar@samsung.com, jaewon02.kim@samsung.com, semen.protsenko@linaro.org, 
	kernel-team@android.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, linux-fsd@tesla.com, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Tue, 30 Jan 2024 at 16:01, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 29/01/2024 22:19, Peter Griffin wrote:
> > Some Exynos based SoCs like Tensor gs101 protect the PMU registers for
> > security hardening reasons so that they are only accessible in el3 via an
> > SMC call.
> >
> > As most Exynos drivers that need to write PMU registers currently obtain a
> > regmap via syscon (phys, pinctrl, watchdog). Support for the above usecase
> > is implemented in this driver using a custom regmap similar to syscon to
> > handle the SMC call. Platforms that don't secure PMU registers, get a mmio
> > regmap like before. As regmaps abstract out the underlying register access
> > changes to the leaf drivers are minimal.
> >
> > A new API exynos_get_pmu_regmap_by_phandle() is provided for leaf drivers
> > that currently use syscon_regmap_lookup_by_phandle(). This also handles
> > deferred probing.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/soc/samsung/exynos-pmu.c       | 227 ++++++++++++++++++++++++-
> >  include/linux/soc/samsung/exynos-pmu.h |  10 ++
> >  2 files changed, 236 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
> > index 250537d7cfd6..7bcc144e53a2 100644
> > --- a/drivers/soc/samsung/exynos-pmu.c
> > +++ b/drivers/soc/samsung/exynos-pmu.c
> > @@ -5,6 +5,7 @@
> >  //
> >  // Exynos - CPU PMU(Power Management Unit) support
> >
> > +#include <linux/arm-smccc.h>
> >  #include <linux/of.h>
> >  #include <linux/of_address.h>
> >  #include <linux/mfd/core.h>
> > @@ -12,20 +13,159 @@
> >  #include <linux/of_platform.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/delay.h>
> > +#include <linux/regmap.h>
> >
> >  #include <linux/soc/samsung/exynos-regs-pmu.h>
> >  #include <linux/soc/samsung/exynos-pmu.h>
> >
> >  #include "exynos-pmu.h"
> >
> > +static struct platform_driver exynos_pmu_driver;
>
> I don't understand why do you need it. You can have only one
> pmu_context. The moment you probe second one, previous becomes invalid.
>
> I guess you want to parse phandle and check if just in case if it points
> to the right device, but still the original code is not ready for two
> PMU devices. I say either this problem should be solved entirely,
> allowing two devices, or just compare device node from phandle with
> device node of exynos_pmu_context->dev and return -EINVAL on mismatches.

Apologies I didn't answer your original question. This wasn't about
having partial support for multiple pmu devices. It is being used by
driver_find_device_by_of_node() in exynos_get_pmu_regmap_by_phandle()
to determine that the exynos-pmu device has probed and therefore a
pmu_context exists and a regmap has been created and can be returned
to the caller (as opposed to doing a -EPROBE_DEFER).

Is there some better/other API you recommend for this purpose? Just
checking pmu_context directly seems racy, so I don't think we should
do that.

Peter

[...]

