Return-Path: <devicetree+bounces-216555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F69B55280
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:58:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84024166EE9
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7972C31283C;
	Fri, 12 Sep 2025 14:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vXURIzoL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB1C3115BE
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689126; cv=none; b=s4ypcrPGEcNjH9LUiF8h3zYMVzFyluKJNmD/LW4ZvbyT4DBLSfeMZ7QbG/tTTlkZRLcaDo7bVmd6bEkusxHXP+uTgdM0J+JH8zxrD3n+o8pasvnMps4xkqGmlgpWpH49nw6phJx2/PgthZaXYjlxSRYovYtfCwgtP8ofOC8EuOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689126; c=relaxed/simple;
	bh=28JpikhNh6hlI5zzwVP1Kei7jvxlx3xsZ1bRu7uJFZI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GF7yLX/KX1U0h3txwTkmjps/HQ5w6jW6luvYuJNoBqH3aWUsb0usWkSHiQmEcyzUARzlFxTxLbLOv1MfmiLiRmgB9LNPhAj3MnI6Ccv0Dv5lfWo4/2NCA56hYCe315aNEpN3OjhC/vcaC7qSHNCcW6EcGiMubpNbepZrNlhozXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vXURIzoL; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-30cce50dfb4so1481998fac.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757689124; x=1758293924; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=28JpikhNh6hlI5zzwVP1Kei7jvxlx3xsZ1bRu7uJFZI=;
        b=vXURIzoL6WOeHy68epWap3ErmNrC29xtLmfmt/5OszeFvCcBTXd9+e7funIXOiH1WE
         jQUlydwxAqRRUSzjNPsX5gHuXQRClfjIzGBhA1yVFh8Wx4E/I2eHgAZNB8gnsJJlJLrg
         qpBiAAef9FKGxqxnPsIVZKvBhTOvvs8z3RgusIBTBMpSwtYTpf/8kKvzhTrifkGV7O4p
         9AHcCNNXS6KaIAkWvORPqfSTlRn1bEMfa6TjjUBZgHMd6weNK2Z3E1BXVucskAbhRmzp
         vShp0Ug9U0wvKqbVBEcUFK5PfpEtk3+tUyoDXK1MFVj+zJWQSu9R6TfhZ1BRbhdWdqog
         wv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689124; x=1758293924;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=28JpikhNh6hlI5zzwVP1Kei7jvxlx3xsZ1bRu7uJFZI=;
        b=YUSJgc+9bmC/Eql12NzHBTPqPOn9c6t9MeMJPV2vRzrsQecVCbvHdBjYMjaMnU/BQo
         LbKTVo0oVJNi56AVUd1863N1W7V5QGqfTVuL8d9FcOcRv8wUwQ34QJlSDYvrPd0BEA46
         yLEaqfCt6zQpcgbwQlfTvMW1X2JB5aRel/nsEaWpLR+fqsPgeWjrWwAP0QOuoQXw6xB5
         PDk5ARl7ejO0ebCGjhK3qCnfB7+oV8EnH7GkvrZuawzv4pFpgM5W5gpgQwC6rHExj3SJ
         FPF6//OPcgARtHGD2JDFsZYWbx/CPeCXznGMl2m119QPyFmMbdplYcTXNxdICMv2LunH
         ay8A==
X-Forwarded-Encrypted: i=1; AJvYcCWHsoNDj94dxN2DfA02zrbM2cvQmRuZrOS6tsfwD2ZTTwCEEnDRI+F9OqosGTW7lBj7xRsh0ptucNJ5@vger.kernel.org
X-Gm-Message-State: AOJu0YxAWHiJ/aREurOX2jJjLog6+phHpGkexkKvrhAxNqqdbmlnK8Ja
	h2MzpWtypb67AXwUL0UB7O7G8NbVvNjvB+T+4xXP17+7mDje2AECVDxwefEBxSXmANHWiU1Cx0Q
	Pzurv7Wx+XMW9ROmuMyu+k/cNNSafYD3xroenBoWgBw==
X-Gm-Gg: ASbGncsnjSUfDKNcB/3yh8LTrObTRH7IF6oRVOm1BkjkobdRfpED3t1ZtJnU1GGODhv
	+gWNH5CZyalQv9VJBlC3hqFvJMpFu2Sq8W1Gxa1CnMKPQg2ZnEBQwkH0FqbpEP6y0RoTpnCLlnT
	Q5C0tg2rEHA8HuHn0ySd05KndxWkdgBw0m8zPwO7BXFAYOeJGvaeepAkoTJu/eZAnmFfLxptDMf
	BItTkHqmxGcICJovA==
X-Google-Smtp-Source: AGHT+IHAJ42BGc4DV3+A7HRXSgNpI4Ckz1R2zEcxWqCWvdlWoM2kBfvVDgKpueHQzqgzBraygif8YB0P1rDNI9gE4qo=
X-Received: by 2002:a05:6870:b907:b0:315:3ef4:eecd with SMTP id
 586e51a60fabf-32e553a280fmr1618278fac.17.1757689123738; Fri, 12 Sep 2025
 07:58:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908-acpm-clk-v4-0-633350c0c0b1@linaro.org>
In-Reply-To: <20250908-acpm-clk-v4-0-633350c0c0b1@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 12 Sep 2025 15:58:32 +0100
X-Gm-Features: Ac12FXwxoqn3zsYfC0T8IDf20S9zDpzsxcpDfKlZfpZdk1czNZgS3-vJNTlzLBQ
Message-ID: <CADrjBPo8L=P2bHKTFvYOj7i0u6pA7vs32d3y+4Ho+82Z1mRE_Q@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] exynos-acpm: add DVFS protocol and clock driver
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	willmcvicker@google.com, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Sept 2025 at 14:13, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> Dependencies description:
> All patches should go through the Samsung SoC tree.
> The acpm-clk driver (#4) depends on the ACPM DVFS ops (#2).
> If the clock subsystem needs to merge the new clock driver, it will
> need an immutable tag with the 2 patches.
> No dependecies for #1, #3, #5.
>
> The Alive CLock and Power Manager (ACPM) firmware exposes clocks that
> are variable and index based. These clocks don't provide an entire range
> of values between the limits but only discrete points within the range.
> The firmware also manages the voltage scaling appropriately with the
> clock scaling. Make the ACPM node a clock provider.
>
> Add support for the ACPM DVFS protocol. It translates clock frequency
> requests to messages that can be interpreted by the ACPM firmware.
> Add an ACPM clock driver to model the clocks exposed by the ACPM firmware.
>
> Thanks,
> ta
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole

