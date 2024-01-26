Return-Path: <devicetree+bounces-35642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C41983E26E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 20:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 324452825C1
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 19:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CDC224EC;
	Fri, 26 Jan 2024 19:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zDUE7lCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BE5224DA
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 19:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706297017; cv=none; b=rjfNXTQevwp9qCxp6GO6wB1CiauPPvq2DP0uiosI4LuTRdv/0hX6Aq3o0YvoWVTkAmRThzMAhfSaRq/wRc9iKdR7MO9KjuhdRYB1QEvYBcyhKvmy2mqpN7YuFETxUKbX8wREJ4UsqH4XrVqqbkUbpiXTi6HNnYo7c/Mmv66tZaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706297017; c=relaxed/simple;
	bh=TtYMN3GShHRZCc1Drpo4X80E/CnRWO/M7L6zj37FsEg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UobI2VILhH4DFIZLPSHpHxKqA+rgBH6I8aqTudd1EO3SE5f0V+wMBFWPPtkt7HOT7lUiUdIfmHjupPdQnp0JhIanWD4MzaXNYl2g0q6Ybq2OVekGtLdec1UY9PjluN/kPyEUQlTfFEYBrUHMi/BVSP3HYHaZgrfGOP8WPLnsCxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zDUE7lCj; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1d711d7a940so6781295ad.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706297015; x=1706901815; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pci4l1Zh4vLDqka8iPuTXs2/4isIF6x5bfsHnKL71CI=;
        b=zDUE7lCjImOXhTG4/rDFQGpnDXGjcRVnYsBekoisGzpNNit2dPB/9KRa0O6ecOBXQ8
         o3GCo/zm7MlY3gDBs35gV8FdxGL/ELKZl+o2H7I7tMQHDaB+gpQ8A8XRc9d/VIoFb67l
         gFYUj7St4fv6ZwgwBHNheVvc0+/XRrdY7scmXIvmRDwkY5VWWGCcjOsjjaBC13Go72oS
         JNvQp2zzs57LEpc6Va4FvIKXkNKPB3rjta7oJIMWevnyaWa81GW3TnFEpf4N/2MG9TCl
         uUHp4Qe2S3TdlDwuymM0VbJCACrHaVr20uJ5fqHY2Jmlzj2lHTp4xKfMyyqbl9Yu1c4a
         qUsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706297015; x=1706901815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pci4l1Zh4vLDqka8iPuTXs2/4isIF6x5bfsHnKL71CI=;
        b=L2BcZIeyYkxJmohJUwWViM2VraGK5giBB3IPJCN2gZqvK+QWiy1veGBLMI+t/gYVxk
         gGUj6gWi3f1ejfegbYa7k4URq8l4hr/bjIshM703/5FScNYvsmusFrSMICKQuRubuOyY
         xUPIO1hT8ZdKyowUnL2docm+C172utBqZPel/0PBe/muKB6QzV7N2l36uGcXgxIq1yRj
         T7LIJq3983xvo9+yQi7mFOHSG/mSZfhaC/ulKRQCvkJbZHLSCsjPbZtemnWosSRIF4fE
         Aiech9I7iIq4nr8N1gYlN0yArShEtJCinVvLMVFoRGo6pl4nXZAoybI1mRTFmr61HhEf
         qJcw==
X-Gm-Message-State: AOJu0YxHc15SroPibSAG0yPCgPbPjUm2uSFq5OvOrd7+i/1YmItLf1gq
	K8BQvt/ZTXDi8/kxBh28wJf1yW8/2BUalFG61xFF9am+WMHaJb6dNEhUEO5O2yZ9bYRwltfDuoE
	6l5lGziI7nRQXPf9hI1Q/yAdO7yAEaa1iK26XyQ==
X-Google-Smtp-Source: AGHT+IFyVG+TAGYzMvyT5Wl++btmO1JDRT8TGoWOEDu8WDjuLaYb7yHih34riUmaKg0bO8OqD8M0VDuhQbwcWOYhlCA=
X-Received: by 2002:a17:90a:b28d:b0:294:3cb1:a8c5 with SMTP id
 c13-20020a17090ab28d00b002943cb1a8c5mr351761pjr.28.1706297015515; Fri, 26 Jan
 2024 11:23:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
 <20240125145007.748295-24-tudor.ambarus@linaro.org> <1e117c5c-1e82-47ae-82f4-cdcf0a087f5f@sirena.org.uk>
In-Reply-To: <1e117c5c-1e82-47ae-82f4-cdcf0a087f5f@sirena.org.uk>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 13:23:24 -0600
Message-ID: <CAPLW+4kTUmG=uPQadJC5pyfDvydvr1dKnJY6UxQva2Ch-x7v3g@mail.gmail.com>
Subject: Re: [PATCH v2 23/28] spi: s3c64xx: retrieve the FIFO size from the
 device tree
To: Mark Brown <broonie@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, andi.shyti@kernel.org, arnd@arndb.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 11:33=E2=80=AFAM Mark Brown <broonie@kernel.org> wr=
ote:
>
> On Thu, Jan 25, 2024 at 02:50:01PM +0000, Tudor Ambarus wrote:
>
> > Allow SoCs that have multiple instances of the SPI IP with different
> > FIFO sizes to specify their FIFO size via the "samsung,spi-fifosize"
> > device tree property. With this we can break the dependency between the
> > SPI alias, the fifo_lvl_mask and the FIFO size.
>
> OK, so we do actually have SoCs with multiple instances of the IP with
> different FIFO depths (and who knows what else other differences)?

I think that's why we can see .fifo_lvl_mask[] with different values
for different IP instances. For example, ExynosAutoV9 has this (in
upstream driver, yes):

    .fifo_lvl_mask =3D { 0x1ff, 0x1ff, 0x7f, 0x7f, 0x7f, 0x7f, 0x1ff,
0x7f, 0x7f, 0x7f, 0x7f, 0x7f},

And I'm pretty sure the comment (in struct s3c64xx_spi_port_config)
for .fifo_lvl_mask field is not correct anymore:

     * @fifo_lvl_mask: Bit-mask for {TX|RX}_FIFO_LVL bits in
SPI_STATUS register.

Maybe it used to indicate the bit number in SPI_STATUS register for
{TX|RX}_FIFO_LVL fields, but not anymore. Nowadays it looks like
.fifo_lvl_mask just specifies FIFO depth for each IP instance.

