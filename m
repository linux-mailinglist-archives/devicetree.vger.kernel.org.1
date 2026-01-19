Return-Path: <devicetree+bounces-256710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AED35D3A0E0
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 206103001806
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E08D33ADA4;
	Mon, 19 Jan 2026 08:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y2KWSMLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A833AD88
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768809766; cv=pass; b=q9eYd4M6bv7itGiBrtvT0XJy/IRVyygNr/iXH7i/p1YFoVsiS0gM1pa/+wg6RaksLrAyqMr7FIu0sLPBWpy30juvvzMbZBKytbs0t+A0RUmTtpHVLJds0CRqwDBuPbzwUPvxc0PA7KpY4i2maxBXWtP739uaAMAnkk0UMvethT0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768809766; c=relaxed/simple;
	bh=DAnMrLITq3eDfG7S7q6PfDGnnlrV1nfnART1Gfn3Eg0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UKkc8aRIV+EnGEVpyDNRcqOoCJ0yACZagNM9O7tNcdfc0PygJu2pO+YY7vjitFkEGO3lhL2+rWxysVJfQVngJR1Y3VT97gEzzLQgu0ujcsDNBzGgjNTJJhSxEs+Wo/u0SP2XGLs5jr7eUA26XQ5c4rR5TG2yOdqsd0+tTGqXNC4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y2KWSMLJ; arc=pass smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-65063a95558so6103473a12.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 00:02:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768809761; cv=none;
        d=google.com; s=arc-20240605;
        b=eV3kocMLUJ2wbxUCG/O6piLANvGC2UPoeehjOyn3kmY8MiDINgix0sFUX19D6U4SE2
         C7h+F9kSmNy5Qp8+NHjeACgagDTJnMHrh//kh1oxFCeVGhkXtZVo6/p5CnC+r4V1fmRy
         lLaMdNkoymLfxFrbVUSS85pLcL2gGPLhZ2g62r2Qb8XAREKg/I5SYwUJ8O7GeloXTzo8
         S1GhohEdGJunm8N0/tI5OfAGwGkGJQAu839ecuXs6UJbYxwd9CtkCRPMG3dL7FKHlGaj
         NKyCxa1xEr9C+FPcgs1vW7qUASDqLDmbl0FFBSedPmcuwUN+UidnwY2bxUXjFO0geEtI
         FV1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E5gMLbV/jw9kkirryyuOIwhlWMMVSVE/lAczumiLD0w=;
        fh=FQgPH9wkPWM2B9m8Fpvgqtt8KJ0OJAPqzcXqCHd7iig=;
        b=N8VghM7TawMbvPn8NBv666r+KwJozIOAID6wC5ryPH2fhZjpDuFN1uRYu2pnaSnPQ0
         Vs+/xxT60BHLi5xI9V5QJU+OjOFgq+RuAeznH1IxH1WYBPBnU9E+wEUbBZnMzVYbMb+3
         6CTTOxqiKlixKxCCoHjunw5G0AXAXNzbjwf/ryCxflcR0dOAOC2eiIcgM2pQASSOw4rl
         SUjkuPi3pypWOO9X+UyJZv791fxJKqWaQOaskfYa//4BAfAdnLmcZhuAsAuMJJ0FnA6n
         GfdHMqLHg9NUMaLcYOc4gSB0tiAaenWF4YdQ1BkI8HW8JMrcadyvs+VruTE9meqwVxQO
         9etA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768809761; x=1769414561; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E5gMLbV/jw9kkirryyuOIwhlWMMVSVE/lAczumiLD0w=;
        b=Y2KWSMLJiSr8UwtxLEg/2E3g6xGvjH8GeAo2fLq+zhGmI3BFvgKfSzv+Ev1+wypMbA
         NXJCv2+hzDhuQ7UYABmvIOt1yuV+k0DUjlz0KIWEwNE7HS1+HG8H8qAKfl3yS9V1GxVY
         lldr0wlTVTku2omz2NbvY7vUxjveC+nOxlIfpfapLnaKROtFhsvA7Wen3PLqVH6tmxDD
         GzNnJ4LmCMyWKF8r+xcyuzw6hpZvFyOqwv3wqNLSOZd0I1Fi5zgTYNG6ttOgvuXE/4k6
         eRkxqi44/0jQoAplKxcAMqZVKpoid3mdHXlsIb0A0Bx684ij6r/TtE3ugmizKnRJdUbx
         Zofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768809761; x=1769414561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5gMLbV/jw9kkirryyuOIwhlWMMVSVE/lAczumiLD0w=;
        b=n85LSSlB+7c+pgVrXA2hWd3OQ6v8E+W6EGbN8e0B68duRqxaXO1bXn40OTjVHj7Ezo
         ASq8WM7awrd0c7FOV/3LkX5TpysLLouW+zhAABD1BiDpSM4mfDtb0lNQEF5Io9c4obU7
         d8FvSQNEKyw/L9wiwz/xx2i28kWddfbHFg25ffO2dqmLirRRtc0yw4UBnV/NMMj+qzk6
         0Xkq50pSa7hL3gmdvxG0kNprxgy540dzHdR837W1dNbbndhFLRVGVdy3UndCJfk1Tpou
         ADI2qDekAc4rOEy1Fa10JgyENy/SMr/EJyNQkBbLd/LXtTJZlZSQri5TnoxtrcY6etYy
         eT+w==
X-Gm-Message-State: AOJu0YzwddJ++1P4xIBC5fAWWd/b+RXGQKC1APfU51rX9aA6RO2wJiDm
	fWVeQHmknE3WAiowvCyHC4j41fHcNYYVM8PWqLs1UA87+/N+WeQC6Th/UJDnPf8MwCFPc97aTbK
	81ecrkvTHKTxCyoPbSNrjjnvezXwP3Qo=
X-Gm-Gg: AY/fxX63i/0NYmaQy3cQMFDZp0662haTyZii5ovu5DzwNjFP77vodnUgsqAX004uya4
	IldjsHjJ6YCjB1RjKKt+STuM9ztyGzlQEvmPWKVq/OLr7VeFyRwDJuXAQmOEFoWeYz6/rEKUOl2
	FxLglUhbFCepAy3hIWrsFvbLTnsNqkjMKEubf61qxxOY7/Y6HD8B38D2juHv7ElE0xwRBMACuup
	W+2BvvofqThR1/hfzB78aHjthyspWb2YR6mRN94ZCfPWLpcrlDiAQk3UcImNNhL2ZzOGX8XPuG+
	sS7UKwRog6Q+mNryDlpGR0BHGGwIgVp27+lgNa2iWTkCuc1jYlzNQHvnRvNrS0ZlPrYap+qDXDz
	GQhkXwq6HfcrgveDE0u92Lz0CokceDobsYyy+GQ==
X-Received: by 2002:a05:6402:2549:b0:64b:993f:ce05 with SMTP id
 4fb4d7f45d1cf-65452bd116fmr7271933a12.24.1768809761107; Mon, 19 Jan 2026
 00:02:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116151253.9223-1-jerrysteve1101@gmail.com>
In-Reply-To: <20260116151253.9223-1-jerrysteve1101@gmail.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Mon, 19 Jan 2026 08:02:29 +0000
X-Gm-Features: AZwV_QjD9hcUQzta7ih2I8JDpblRClcNe5NlO_infM0IaHOPiePu7HjjLZlFx5U
Message-ID: <CALeDE9OC7p6XMMwPk8_vsBe09RJHBK8KED=YAcykYqpQXzVfyQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Do not enable hdmi_sound node on
 Pinebook Pro
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, heiko@sntech.de, dsimic@manjaro.org, 
	didi.debian@cknow.org, conor+dt@kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 16 Jan 2026 at 15:13, Jun Yan <jerrysteve1101@gmail.com> wrote:
>
> Remove the redundant enabling of the hdmi_sound node in the Pinebook Pro
> board dts file, because the HDMI output is unused on this device. [1][2]
>
> This change also eliminates the following kernel log warning, which is
> caused by the unenabled dependent node of hdmi_sound that ultimately
> results in the node's probe failure:
>
>   platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
>
> [1] https://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
> [2] https://files.pine64.org/doc/PinebookPro/pinebookpro_schematic_v21a_20220419.pdf
>
> Cc: stable@vger.kernel.org
> Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

Looks good to me.

>
> ---
>
> Changes in v2:
> - Rewrite the description of change
> - Link to v1: https://lore.kernel.org/linux-rockchip/20260112141300.332996-1-jerrysteve1101@gmail.com/
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index 810ab6ff4e67..753d51344954 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -421,10 +421,6 @@ &gpu {
>         status = "okay";
>  };
>
> -&hdmi_sound {
> -       status = "okay";
> -};
> -
>  &i2c0 {
>         clock-frequency = <400000>;
>         i2c-scl-falling-time-ns = <4>;
> --
> 2.52.0
>

