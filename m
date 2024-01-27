Return-Path: <devicetree+bounces-35746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB94B83E9F4
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A344287563
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 02:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F4AA8BE7;
	Sat, 27 Jan 2024 02:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V/XJEUnm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDE31170E
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 02:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706323411; cv=none; b=Oy7GyNvuqIlyrUUnhn2hP2ab2u3nGyGUnXS0sZrHqw1Lvh4QexfRpqWvUaOv3na9QX9I4UTS1YHTURmyA5pdWhsgYlZIHyyfEiXj24nHlyuh7riWedQM1rRFjocdwdK+Fad1AY1z4WYXrl/c4iQ5ex/eeaNsRI7k4RISl5Wv0S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706323411; c=relaxed/simple;
	bh=J83cGtBp27ayZDyo/vtlJCIGI1RJIiUwBxfYHghGR+8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rEip6P6OGi5Y6wep5RFy/rPrwwRlvuGUT5J+VLSS761DlbeosJyckGyCL5Pvz0RZ917ykEw7YotVKNCSgENvi/D9W4FtMWdVCJpha91E7QI2D0dHVy9vMyHn3TWXz+rEkakQF5lY3cHuPC/50pMzPdgbBuSgElv6UL4XvoOk/Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V/XJEUnm; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-21432e87455so599796fac.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 18:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706323409; x=1706928209; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RyfKTninr//YcXdmOl6ikrOzMr02DwwXqiLooW8dVos=;
        b=V/XJEUnmJ9mWN2PX/j3PLfikIw4+o93DDV6PMaNj3zAWJbYaZmHxHezHm1nZ8oIyRp
         2MUQDtqLAGC9sUPjKwY01f1PX6G/6UPF9l2BMpYlUa9GdMjHb+SIl/gPEpGfX7j3l2B4
         T92LWex/aIvVa6oDi+lSa8QzaiYs39NWkKsQpKnQMK/7YFMTBFL5ifIdmZLB5RhJOX4y
         wuAvn3rlkhIf/u9eS58HeVWJW7aTvsUjRkGgeDKwytZbKjeSpfi/QxhnAUeEUQ6Wfpfp
         g8segA8ghUlMYqy3tWLY5/cwDqFpeMRIcToHq+fR+Dkv14gXFSFBDK2U8wMKjtBzo4Da
         tUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706323409; x=1706928209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RyfKTninr//YcXdmOl6ikrOzMr02DwwXqiLooW8dVos=;
        b=knAZPqan4HM1Mbp9+mEnvACu9bf5MxnvPAc7fr/FEYpY4H1be9vd4Fw9yGQ4Xz8rHq
         o5G7CIL6VTjQ9ishXDJP2U0qe+lGMKN4wa55F3TAKimOjhPGKqExUpXo8SS4rpK5fLoO
         KnbfAA5kcLKLTvpKXQF4Q6caNda20VayOHe6j2EZw3uGqUdTmgkJ8d7bweIxtDLaQzGZ
         Q7QefCi2BpZ39XcmR5I+QnckfS3unkMXeFhrWKKa8M7TJ8++/xX2hy4DwoS2xDUrSfll
         pcc3cDGojyiB7irTRir9Km6pY9qH0iZyfAcOxwwz/cEFoAJ+2E/gmB+mdlq/x1J2SmS/
         03Xw==
X-Gm-Message-State: AOJu0Yz77QhKaP9K/NdE2t7DY7GelMKb9BVnG3Kojd4/AGqQzNRAQwSN
	0XW2JeHNl7hkTwLw44uoc7jE06ed6g5LfY4lFcYWH+9UzTV1zXZd64si8ouXc+yNG3Vz1MELQUV
	VUx25gfYIyJCi7rGq0tVDoiRcfBVSbqfydiUYMQ==
X-Google-Smtp-Source: AGHT+IEkKB2QGZKiNjAvXXH6n/PcZozMYAW4AsJBipNdXovvgdJy3/oFIt22t48sGdYch0IDB1RqphlBj23SyagKhCk=
X-Received: by 2002:a05:6358:60c4:b0:176:b156:f69d with SMTP id
 i4-20020a05635860c400b00176b156f69dmr656246rwi.31.1706323408911; Fri, 26 Jan
 2024 18:43:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-1-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 20:43:17 -0600
Message-ID: <CAPLW+4=3o6kGQcQhzo=1JwPFp+qF7GpuVYuZ_Jvh_7o9d0Mbbw@mail.gmail.com>
Subject: Re: gs101 oriole: peripheral block 1 (peric1) and i2c12 support
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:19=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Hi,
>
> This patch series implements support for the 2nd connectivity
> peripheral block on gs101.
> This block contains an additional 6 USI, 1 I3C and 1 PWM
> interfaces/busses.
>
> i2cdetect shows all expected devices on the one i2c bus that this patch
> series enables.
> Everything that's in scope in this series works also without the
> clk_ignore_unused kernel command line argument.
>
> While working on this, I noticed the existing peric0 support for gs101
> has a couple issues. That explains why there are differences compared
> to it and a separate patch series will be sent to fix up peric0
> support.
>
> Cheers,
> Andre'
>

Looks like PATCH [00/xx] is missing in the subject.

>  .../bindings/clock/google,gs101-clock.yaml    |   9 +-
>  .../soc/samsung/samsung,exynos-sysreg.yaml    |   2 +
>  .../boot/dts/exynos/google/gs101-oriole.dts   |   9 +
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi  |  42 ++
>  drivers/clk/samsung/clk-gs101.c               | 347 ++++++++++++++++-
>  include/dt-bindings/clock/google,gs101.h      |  48 +++
>

