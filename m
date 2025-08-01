Return-Path: <devicetree+bounces-201424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBB2B18924
	for <lists+devicetree@lfdr.de>; Sat,  2 Aug 2025 00:12:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5CDC5A1E2C
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 22:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A45422B8CF;
	Fri,  1 Aug 2025 22:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ce4r4f0+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5804517DFE7
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 22:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754086315; cv=none; b=DX+kNgVTcDO91YjWNnGgwnw+5Q8XpYAW6Dqn5L0G2YmZqW0Q+lhKyll0pzDBEcxadTy+JJkqsJ8ATvuNGTzmwlZ0EtmkeDoG5bzswBBQsbHIKcuJrBEdM9rOyW5yocHqfTb3W8v/4XFAaaQYXmO2mnoCCx4qnEjVsL8gZeakdLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754086315; c=relaxed/simple;
	bh=eHUeeGYj1DUUjEDytbOhyX4cEB/IIIVyN+YMyuRZU4Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oxFVOI+l3+xHJpEvLUp3H7+bVprEV8wisOfhT9NEL86lOMtOrFuH4pMHWhYcwB6nLgg0f9u4SwAemJoRf9fdstQ0S4wUJQS299aELFuJomuDEoWVOLk2Lbo1S4hQl0hHb7HbKAV9RRo/W1RaHY1RKond6nMz0e7/Bs19PFzCUlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ce4r4f0+; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-712be7e034cso22020897b3.0
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 15:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754086311; x=1754691111; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ZQ3ptl+nXCUruGL17lHqoeg1DTCDNqkoTZmaRK16Pk=;
        b=Ce4r4f0+V8yeZYA0C/KiFyR4R2kzMcdy6IqjxMmhqlbaKjNUZaQfnCkmysyi4xQMB9
         j9dv96OQMjY7qHiUrvBitOHN182R5TuWrsksf2UqPNOvShWc3VyZ88yxSz4igsgrRiSK
         FP/QtG3SlfFsqxbPS/xqyb5y1tmoAYaurrJavd1RvRZ0xyn1ajAh/DdaCMtDcl8FshsO
         A4y9xZe7CUSF+I6TPjheme2w4flBiVX2hsEt+c6sTyhUWtk97H4Wks3F5we0gaV4/Gw5
         TTbBSDDx9s60XNsf8vzvsq0g5yG8JJgLe7Tt1a+UYFPg6D0vAlmuZ6s91VmhOiGZ5hLF
         1OgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754086311; x=1754691111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0ZQ3ptl+nXCUruGL17lHqoeg1DTCDNqkoTZmaRK16Pk=;
        b=wg6YBx6JWoQ/C5AztKgzcbUMcLHpYKsaA51ntr+FraV3D6yI3K4MIE5SriS6IzSN3Y
         7vYJD/ROw/Ca6x5uqFBhbFzOAM1NnUz9LlexIQRl57p/3RK+15wVds/bmmTnEnbFP9i7
         ja2ZsQVhkrfbnEEJgOPGsK21cqMDx/AVBdWkGZ92iCQo2NUAmGbVjQCQGuWq0uAnR+li
         MlOcjuULn5Iyg2ly0Wir2OwW04cdWjf6pdGwbN6hGrQqrTRtwXE+gbY5hrV5aU1UP34Z
         H62Nu90QTz3zJaTMZBSbT75zpNLYYb4lZGJ/R1ftwCC1HiJ09qAuovmx/S+QXvzpRDcG
         5tWw==
X-Forwarded-Encrypted: i=1; AJvYcCWToGD/h+2+DDE6BS1qQJlYLdQzW/dte22zYiHiZB8EkiMqaPQR0OgVbuBIXAzwI5y0r2wxSRdV9rSy@vger.kernel.org
X-Gm-Message-State: AOJu0YxN1o2q4RMhLk5RtxzPg6lxzhl2QyfPAxskcFva0Bo5JtolGgI/
	M54pwslKci+T4ldTFRkLd6w+cD07E3cyZptqi7i7NXH0D3/R2vW+55SeMIU3NDvlerNb3ZuCLOc
	SNIkGjqxlNgcCkN2UdeYTsKFiCPiSVPvqD0XAAEz61Q==
X-Gm-Gg: ASbGncsJIToeZPQDjH3MffJCc/rluOyAnLCOzJVR9wu5/9OI5toxIZ4opLjhlNenwpQ
	3CneIDwRwod1HZTXnlmw3hrScuyU47wBUf4yrsJbIyuuBMZ2djDSgj1owM9UndNMeVDUHHbJHmH
	fS8ih+m54ZLjjhpn5OuWMQ68/K+Yv2jIhldkNOOUNzmFbBsLucvmud6oDQ420rbNrme7QNdlxpv
	RrPQQ==
X-Google-Smtp-Source: AGHT+IHHqeJHNAbgmM8GMieWnZy5D9PazvXOXJxMb+nmM8OfoRPhTwJEHb5ZjR+06/LLEwPYiHrsAqqhXrmv7gbk9Bc=
X-Received: by 2002:a05:690c:d8c:b0:71a:27d2:2bdd with SMTP id
 00721157ae682-71b7f62d7famr21657777b3.13.1754086311325; Fri, 01 Aug 2025
 15:11:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250730074253.1884111-1-ivo.ivanov.ivanov1@gmail.com> <20250730074253.1884111-4-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250730074253.1884111-4-ivo.ivanov.ivanov1@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 1 Aug 2025 17:11:39 -0500
X-Gm-Features: Ac12FXwPXRZu6Ot3_0uSchflAwrF7qDuOzVPDdy_jKO2tY1n3bXW3MwJ9wqx3gQ
Message-ID: <CAPLW+4=QwTv96KMdJ7tcWd+Swh-fC7+h9bo22e2aZMeRbg4wKQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: exynos2200: increase peric1 and cmgp
 syscon sizes
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 2:43=E2=80=AFAM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> Some USI instances have swconfig offsets that reside over the currently
> defined syscon ranges for peric1 and cmgp. Increase their sizes.
>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  arch/arm64/boot/dts/exynos/exynos2200.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/exynos2200.dtsi b/arch/arm64/boot=
/dts/exynos/exynos2200.dtsi
> index 943e83851..bab77b442 100644
> --- a/arch/arm64/boot/dts/exynos/exynos2200.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos2200.dtsi
> @@ -328,7 +328,7 @@ cmu_peric1: clock-controller@10700000 {
>
>                 syscon_peric1: syscon@10720000 {
>                         compatible =3D "samsung,exynos2200-peric1-sysreg"=
, "syscon";
> -                       reg =3D <0x10720000 0x2000>;
> +                       reg =3D <0x10720000 0x3000>;

Exynos850 TRM says that all System Register instances (in Exynos850
SoC) use 16 KiB (0x4000) of address space for their registers. And I
can see some SYSREG registers actually have offsets over 0x3000. In
reality though all IP cores are aligned by 0x10000. I have a feeling
Samsung does the IP cores integration in the same way for all their
modern Exynos SoCs. It can be actually deduced by looking at the
starting addresses of the nodes in the device tree, they are always
aligned by 0x10000.

Hence I'd recommend doing this:
  1. Use either 0x4000 or 0x10000 size (not 0x3000). For the
reference, Exynos850 and gs101 use 0x10000 value.
  2. Replace the size values for all sysreg nodes in your device tree
(not only peric1 and cmgp), for consistency and to prevent possible
issues in future.

Also, maybe it'd be better to use "sysreg_" prefix for these node
labels (not "syscon_"), as it's called System Register in TRM. But
that's minor, and probably out of scope for this patch.

>                 };
>
>                 pinctrl_peric1: pinctrl@10730000 {
> @@ -471,7 +471,7 @@ cmu_cmgp: clock-controller@14e00000 {
>
>                 syscon_cmgp: syscon@14e20000 {
>                         compatible =3D "samsung,exynos2200-cmgp-sysreg", =
"syscon";
> -                       reg =3D <0x14e20000 0x2000>;
> +                       reg =3D <0x14e20000 0x3000>;
>                 };
>
>                 pinctrl_cmgp: pinctrl@14e30000 {
> --
> 2.43.0
>
>

