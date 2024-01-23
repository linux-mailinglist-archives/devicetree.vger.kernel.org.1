Return-Path: <devicetree+bounces-34266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A09839358
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:43:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 385321F21D16
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B59BC604DF;
	Tue, 23 Jan 2024 15:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VpcD42TT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E516664B7
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024125; cv=none; b=jXPyIiBrAxJaylSy9h4/CYBueJxyVhMPr5BGk4nX4nLc+MsVDMihP0Z4ld34N7Lo4QYAOf8L6vR/oS/Mi+Fn3HbX4Dy66Y8qqIz2STLEdWqqSOrlaAu+WVyhEgfvIaZKApqQOovIzRAHhvrlDee7Dqh/APEUL+z6fpRb84kiQio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024125; c=relaxed/simple;
	bh=OLw2uBmZ0gulJTla/5FtAZVpNcu9rLq53nHgy/OtrjU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NHobqYtQ5ezL47vMJ0vw/Or0CwSjnnSoR0vSv3EuSQ26RL9ygvZHEn1/Ya955WDdA3pHnin8uB4NS+BL6e2wdQXyJYrYRARcwQ8I+M8xZ18Y1ikrk5JGMh/t2F4VLtKk02SR6yMOEmUihOuXV+SSbW+53sHdqdmXfNaySnYeeZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VpcD42TT; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6818b86ec67so35644336d6.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024123; x=1706628923; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q9Vvev13XdoubG1E45m0UtEzpNjkizsjSeJg3BeobWo=;
        b=VpcD42TTqRPcHv63lUV+714mQ52nWOtFzy3rt392lRrMy6br+QEqi8FFKM083TLOPy
         8ZRV3nJp22WO28XLsf7YKqNUjJBz780Q/he3fQzFY77/VJE15726fWlSZbp2FUYd5kj5
         hyAK2J4e825avt8dovRrPw/yI9CLTr+Gvpekb9zB0I6p3kRZhlMhvqxQ6xcFCOKzaOfQ
         W7Qk1R9UyGczIiwKjPQuQktGEYlBDpCW7TnfiRJ5s1pmdx4b3RLEEY77nKrsY27ZqIJ6
         +EDdqV9JtwUpqkOggSeDipDC7Oh5ZaWkdw8jL71lWOaHq7SlrXQdRS30Yt4ULGlTtMXO
         f+8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024123; x=1706628923;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9Vvev13XdoubG1E45m0UtEzpNjkizsjSeJg3BeobWo=;
        b=u6oo7jpXchu7fJ1CIb4yGAeGvO+15xP71Lu8xU7rY08Dm/bORCdEq80otJ/uicJufe
         cELgkDJ5FKGzm94rAo7YrBxXX8TAuoRWtfK1u03lfhHZQkiG9QRjoDzqX6Tk+QHBZZc3
         ugZ1h6sCgb1KLqud5sjDd9umlC9IeFnLlXZ15LbLPfMVoHNxiJt9BQSfyEWohLgOr3wQ
         wKQ7O+WGn3TSVMX8f0G7NFY4Coh3rhmeBCa2CqzZyvXvqZuP1l6NOJGihx1BLRlcc6i3
         ZkOH6QwU9zf+i9LyliTAkKBxdWc/uIgdtsGiEN+ex+PYmMSxTnE04UVYN7paRZy8eueZ
         3DWg==
X-Gm-Message-State: AOJu0YzOLwEN7hN1intJ9IZuyjhk2spRvcFAtbPdz2MBw2Hof6WegEsJ
	sVN4yLjW5qiYv/N9kMYXcf81GxQnN84OA8khFfXfhAjN895qYTaDwKOz4a558wZqVVCOBwzHrvf
	/YaIx4Q8y7SuDTB00gr5J6vzuD7AdJjFgnmvIZQ==
X-Google-Smtp-Source: AGHT+IEB+xTRgnGQq3NUscc9VXjaB3bKZ81FpV0mqHGiZN/b/PrRx+eESMMg9+Eg09N7eFBMP+++KRR422lCgfl0Hww=
X-Received: by 2002:a05:6214:2484:b0:686:9e8a:a695 with SMTP id
 gi4-20020a056214248400b006869e8aa695mr1523692qvb.17.1706024122981; Tue, 23
 Jan 2024 07:35:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122225710.1952066-1-peter.griffin@linaro.org>
 <20240122225710.1952066-4-peter.griffin@linaro.org> <726bd8ef-2074-4ae7-89fe-36e2bc70d02e@roeck-us.net>
In-Reply-To: <726bd8ef-2074-4ae7-89fe-36e2bc70d02e@roeck-us.net>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 23 Jan 2024 15:35:11 +0000
Message-ID: <CADrjBPr154R_F46E1SL+7Gyv_3ukO9foU+gYu6D-EYnVbU6eAA@mail.gmail.com>
Subject: Re: [PATCH 3/9] watchdog: s3c2410_wdt: update to use new
 exynos_pmu_*() apis
To: Guenter Roeck <linux@roeck-us.net>
Cc: arnd@arndb.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	wim@linux-watchdog.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	jaewon02.kim@samsung.com, chanho61.park@samsung.com, 
	semen.protsenko@linaro.org, kernel-team@android.com, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	linux-fsd@tesla.com, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Guenter,

Thanks for the review feedback.

On Tue, 23 Jan 2024 at 10:33, Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 1/22/24 14:57, Peter Griffin wrote:
> > Instead of obtaining the PMU regmap directly use the new exynos_pmu_*()
> > APIs. The exynos_pmu_ APIs allow support of newer Exynos SoCs that have
> > atomic set/clear bit hardware and platforms where the PMU registers can
> > only be accessed via SMC call.
> >
>
> Not really sure about using a direect API instead of regmap. I personally
> think that regmap is more generic and like the idea of abstracting hardware
> accesses this way. Since that is POV, I won't argue about it. However,

I did also look into the possibility of a SMC backend to regmap but that was
already tried and nacked upstream previously.

>
> > As all platforms that have PMU registers use these new APIs, remove the
> > syscon regmap lookup code, as it is now redundant.
> >
>
> if syscon is now no longer needed, why keep selecting MFD_SYSCON below,
> and why are linux/mfd/syscon.h and linux/regmap.h still included ?

Good point, those headers and the select of MFD_SYSCON are now superfluous.
Will fix it in v2.

> Also, the driver did not previously only support ARCH_EXYNOS but also
> ARCH_S3C64XX and ARCH_S5PV210. It is not entirely (actually, not at all)
> clear to me if and how those platforms are now supported. EXYNOS_PMU
> still seems to depend on ARCH_EXYNOS. How can the driver select
> EXYNOS_PMU if ARCH_EXYNOS=n ?
>
> Also, ARCH_EXYNOS already selects EXYNOS_PMU, so a conditional
> "select EXYNOS_PMU if ARCH_EXYNOS" would not make sense (or be required)
> either.
>
> Please explain all the above.

Fixing this for ARCH_S3C64XX and ARCH_S5PV210 looks to be a case of

+++ b/drivers/watchdog/Kconfig
@@ -512,8 +512,6 @@ config S3C2410_WATCHDOG
        tristate "S3C6410/S5Pv210/Exynos Watchdog"
        depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
        select WATCHDOG_CORE
-       select MFD_SYSCON if ARCH_EXYNOS
-       select EXYNOS_PMU

and fixing the return type in the stubs that Arnd pointed out.

static inline int exynos_pmu_write(unsigned int offset, unsigned int val)
 {
-       return ERR_PTR(-ENODEV);
+       return -ENODEV;
 }

That then compiles OK with s5pv210_defconfig and s3c6400_defconfig.

Neither ARCH_S3C64XX or ARCH_S5PV210 have PMU registers or set the PMU
register quirk flags so none of the code for setting PMU registers
would get called at runtime on those platforms.
I can make the changes described above in v2 which should fix the
ARCH_S3C64XX and ARCH_S5PV210 compatibility.

Thanks,

Peter

