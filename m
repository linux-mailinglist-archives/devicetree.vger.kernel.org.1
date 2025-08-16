Return-Path: <devicetree+bounces-205421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8076AB28FD3
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 19:29:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC0DAAC736A
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 17:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA41D30100D;
	Sat, 16 Aug 2025 17:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rnI0MfoD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80FC2F7447
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 17:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755365364; cv=none; b=OXV8AMeHGVJKTMJQKrT3Vgy+cc0GWoxe0munnSCBCz/pRJuo26aJLQtBFc/UjVDjO1hIabKGfRAKnZVMiE2SluWAwIqF3pgiAUdqmglT7wWDPT+pzxLBOcXI0NulEotK33vXBTgbKCmqu3txzaZNi7cYNmCVCqrwow3MxOFs8x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755365364; c=relaxed/simple;
	bh=N7+bvANbkNhrvL4ERM56Bdgs9ROg59ZcIUOKIv5dcY4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k1nKWZfnAi75t1AYyPSK4dnD/FtO5Oag6FFRpkN7vnQgBtaFyiw780HLcp1+NHePY82hJLEWuz3Sws5HV6to3NtMaI0CBG3abb0d47nqMPzAMu0JnSImjfyyUq0OjSf3m5BuLma+Mg2bt4kALyWTeUM0hJ/wBcex46u/uVWJGE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rnI0MfoD; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e9345697409so230005276.1
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 10:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755365361; x=1755970161; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3+5JiFhhalBPjoGGIh6ZSZXsJU98iPlc8m9JpyheZsA=;
        b=rnI0MfoDrlFK30uELp59NGYocfNReI0jzEiwooetNLdYHSNTVeJNji1HnmJ7REBlLn
         vN1n7as6DONoOAyOoDTkNZ1N3iFlo2sjdjMlIxu4n5E6SU56ZuWfbtXGkJQvOuDU9o6Z
         uLtOIz/OpdwIYWbNFziclsk7uCNODnDbUAUORRTGoTXDagv8SZuEKOIxo7iQOY6STnXx
         Rz/QOmT2ymeniq0du6wUWiySqnxpMjwoP6vEbleVH/PM5SWG0vNWKI9xqqn6pSbq6KoL
         ODcihrSja8vDahqeOA4ksmEaP6erUKYp8Yv2glICN45JRsGE6YsmPmjX7haRWkiUODGb
         un5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755365361; x=1755970161;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3+5JiFhhalBPjoGGIh6ZSZXsJU98iPlc8m9JpyheZsA=;
        b=KQyfogsjnIQhABz3RH/UbgvpE8u6XTVF58rm6SQ7l9ny1QKknwEeGGUOWzWVuO4IUB
         0PfKUtyvD7PUpLmLrCESpuyWL49Rrc9K1b30vVj2j8o1QwdJOYWTFk++pq8DEX+61ebX
         VmwJOtMUHnf7xqFrk9hpYufiK1GIkp8X6nCh3jO9H41KvZhj22pstlm21OHBulKdm8Eu
         wnCmi7C6tWSKJXJHJfXJbbkVsyfmmLFg13mKEMOEecy9bmRCtTPEGfsSyy59HZMeU9lB
         Kb7lzsUvuAdvO10wYQJfQSXIiDIKLDOKjc65044Bqk+KBDqaral6Pkb4Anz+eAmh09a9
         qcWw==
X-Forwarded-Encrypted: i=1; AJvYcCVUDwFWt758Cngt3H56u8okyBU6x7cu26cy8SQNe3lXvlon5GZBoVHKXEcmfNNek8askAhYVn4kFLoa@vger.kernel.org
X-Gm-Message-State: AOJu0YyfMTkxNmaIrHpfl4JfxNeKZiLX7Tu51uQ/nsQWGesNER/IpV1y
	mn95p1l5rcbA1gMCMO0jczdEStJGxaumCoq/OaktZqGS/T67VCFfFTYqB+EY4D/l1pgSIemOdSF
	oFeJz0JiAln/Q+kLQrzfYd5eVb0mBr4jyhhRx+Hh9aw2t8/DCqYHRtCQ=
X-Gm-Gg: ASbGncvrPfG+LkdT7xC8PkEqYplWVHEhFprKo3Up9wgIi6Mp+1Bbmmpnt05QSEA76q3
	qEaphwoisU3LYp5/nztpGGkPxl5/y4GW2VeM6xsqgPOQ6OCRwwu6WN2ilqP/F20XNrWr28oAulL
	7i59jDsRj/rGauQdPJUk+S0ue3FkfftuWAD8bIONkb/3Vv2OEHS2tDF7dUh8wK86axPKBADcvqx
	ZzIpHXwEbGu83Hc
X-Google-Smtp-Source: AGHT+IFKBARxb/1Lma7PB89ED/9p/HJkaU8vopGLHCicm28KuK1UNdWyaBAVqg1jULjq8b+Am2EYtjOBcHLlU/v8Sbs=
X-Received: by 2002:a05:6902:1388:b0:e93:21fa:9945 with SMTP id
 3f1490d57ef6-e93324ba44emr7765313276.38.1755365360807; Sat, 16 Aug 2025
 10:29:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250815070500.3275491-1-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250815070500.3275491-1-ivo.ivanov.ivanov1@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Sat, 16 Aug 2025 12:29:10 -0500
X-Gm-Features: Ac12FXzpvr6khCWsphPS4E5tM2OfJSpyb2n9DVhgj-nq125n0IzPALBV0Zd32A8
Message-ID: <CAPLW+4mjOmi4BM2zOPcR6GH=4ngA3FisotqFXXGAbHOghQ4x8g@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] arm64: dts: exynos2200: introduce serial busses,
 except spi
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 2:05=E2=80=AFAM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> Hey, folks!
>
> This patchset adds serial busses, implemented in usi, for exynos2200.
> It's missing spi, due to me having troubles with reads when testing.
> Serial_0/1 have not been included in the patchset, as it seems like
> they're encapsulated in usi blocks, but are the only implemented
> protocol and/or do not have a dedicated register for setting other
> protocols in a sysreg. That'd at least require patches in the usi
> driver and bindings to add support for.
>
> About the naming convention for usi nodes, I've chosen to keep the
> downstream one instead of relabelling all to avoid confusion when
> cross-referencing the vendor DT and to keep consistency with clock
> names. They're labelled the same in the bootloader too.
>
> Best regards,
> Ivaylo
>
> Changes in v3:
> - drop the serial_0/1 patch

Why did you decide to drop it? As I understand, having a serial
console enabled can be quite valuable for this platform bring up. If
you don't know how to add the related USI node -- it's ok, can be done
later, as soon as the serial works without it.

> - add r-b tags from Sam
> - increase the size of all syscon to 0x10000 and not 0x3000
> - change description of last patch to be more meaningful regarding the
> usiN and usiN_i2c mess
> - s/usi6_i2c_cmgp/usi_i2c_cmgp6, following the TRM naming convention
>
> Changes in v2:
> - add a patch that switches address and size cells to 1 in /soc
> - adjust all new nodes to define reg props with 2 cells in total instead =
of 4
>
> Ivaylo Ivanov (4):
>   arm64: dts: exynos2200: fix typo in hsi2c23 bus pins label
>   arm64: dts: exynos2200: use 32-bit address space for /soc
>   arm64: dts: exynos2200: increase the size of all syscons
>   arm64: dts: exynos2200: define all usi nodes
>
>  .../boot/dts/exynos/exynos2200-pinctrl.dtsi   |    2 +-
>  arch/arm64/boot/dts/exynos/exynos2200.dtsi    | 1433 ++++++++++++++++-
>  2 files changed, 1398 insertions(+), 37 deletions(-)
>
> --
> 2.43.0
>
>

