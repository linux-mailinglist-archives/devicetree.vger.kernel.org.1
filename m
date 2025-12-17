Return-Path: <devicetree+bounces-247473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCA3CC7F78
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75E493017861
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86113134CF;
	Wed, 17 Dec 2025 13:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t3GeGGy1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED551F3D56
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979132; cv=none; b=oj6ubBL0jPS0OkKbtuH+/ftRshKYvjgLalmQjXy/vQm3R7blkEttCfUB3g1m5nLYhP983M8GX8LDvi+5qRVZmPSVZOupdMN1tUsOan8j7bv9s5Ue1QXt5XFcVCbqVF+SMcKrxolc6qRdf8dPB/RSWpxI2Q8PqKcHCF4/eA+XIZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979132; c=relaxed/simple;
	bh=JZdXUdAOJEWuzpYTsxKZ9buqrf2lUMZM1PsEcRK3b4A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VsrEAtVWmBmgyG3tRIvjbEhSLbqxR0R1jqK6+CgxJeZKT7HIFVJhhVj023SWGUmlgXgeiX2rbcUfMuijwq9qSaZQsbgULxPUhNy2Nn1Yz84s3jMuoTKNzGgFi14pl0CWLJ4tQ05twhtG3dztJyOfDEiQBIux7R4GxGeWEEwbK30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t3GeGGy1; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-597d57d8bb3so4936921e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765979129; x=1766583929; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BODOTxNk8AcmqAwPaMr4JkxtG2Ivnc3fhYwzzaB1YDQ=;
        b=t3GeGGy1j0kFfyV38QeUXteXIDC1ZuQbBu+WHdU1O7id++7jU/j4A2CXJFKJct9e4B
         Myaz59SruEkyJ0JCvxEH5jz6ZNNEc96EoTk7gOd4thm2dJ/srX4h1sMWuIrNvTKMxdSq
         fG/yyVmdV5Df2AdR8Tt57Tzgl7I9POJ0eGbYyhjPf+q2AkE1ux5Whc0yGhdUDBmR7h4H
         zozu3V54aQlWxYwhWiU39TkPWjzbo7XECd2kbF7i7fuDK7Y/QpOQSnnikM27GLz7Qftr
         kialZWGeh3BjMdF0SI++LDYDZPRrH+AjgbtGzIEBQiBp/HjuaBcMojhCwmMzLiAT1ucs
         Ub1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765979129; x=1766583929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BODOTxNk8AcmqAwPaMr4JkxtG2Ivnc3fhYwzzaB1YDQ=;
        b=WbU9PYRFT/WSRFk/aAsIURFOWCz2Hf7s1IaWLrQKHf3ck/njpVak1WP+GpOwV+e0N1
         IxxAYOIEGj8ZcXdExNp3mi4KMuiQQcNKpcgD+8lAUha4icWFSZPcqISisEF1U4zzgjlo
         Z78jXtJ5ZKwWtpxia5Q3TLH5ljDaoHdVgaPwr9P6zn4EkmzFVrrohxueeBiO1XYUdCBV
         eBhlPacL6s8GBWBZuv2qcW33EXydXuUzhDzgDc+ly/1uM3qJt12lZCX4hL+O4L3L0201
         7t+Dv5+P6u/RnbQO1C/HgkNlThcrI51UTHv/GKkQP8tiy2Wt2Gt4EnF9azZYkb20BmCI
         rTbw==
X-Forwarded-Encrypted: i=1; AJvYcCVQQCLipk0tHydx6JMkh8uiyATnEse0LjujABJmu7ZewuJgb+XDe11f3IF+kHclhGwZyscPlFpQY5ek@vger.kernel.org
X-Gm-Message-State: AOJu0YzBuYAeY+AqxOIc+vXKsrmlyG99e84N5b3/D+a0z1sDLBwXaHZO
	lsdRRwiHQzcGQHDEhal4O7wpQAu5NgVS3OdTIyMntlLm/FQhqJuu5zGcrIQJUKGQhRCAv2zCIjh
	bHaWAou+VC9SvzRuyEmYGdK1ZQLMeEPk5VgIh2ugZgg==
X-Gm-Gg: AY/fxX4bDnFHSRFP2F5bPWzFHl4/wGoTCMms6JvJr3Q4qvKa19lzJeAlkfJtJcohANt
	i+DDNAnc1kReRTNno14MTAXU4ZVPB3+siEpzXd1tZ8aIEhkZsnfuQ5L4d7jJ7NgOa+Du4xUr9VW
	S+TpnFRd7Cv0hXt1zs9FZUOI6AJE0DDoe2fC0/kBOtq6heXRCd90YqGmEqHVnzLZtX8dHmiU4xz
	PtSKdohQuz5d4oV3UWExuvQqTxv0h0rEB9wadNxpde/mohbdoAm4HmCQgaX8NBnb9fryss=
X-Google-Smtp-Source: AGHT+IEb4QbT1qJizq+A7uWazmE4LS47vI2CUBXKM73xbojPF6bkoElbfnixbTNGFJz0DbbNowU9Knm45YZtBVAzyzo=
X-Received: by 2002:a05:6512:4011:b0:595:7daf:9425 with SMTP id
 2adb3069b0e04-598faa6375dmr6274719e87.28.1765979128707; Wed, 17 Dec 2025
 05:45:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215212728.3321308-1-robh@kernel.org>
In-Reply-To: <20251215212728.3321308-1-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 17 Dec 2025 14:44:52 +0100
X-Gm-Features: AQt7F2pBXb1zmev-hjgOXmdMYKCYte5-L19B0sgKMXKbmpuJfZCdUzB274-nN80
Message-ID: <CAPDyKFq+k03t9b7GQmH_QcKNqPbKCfNqGMX4kaYqjUS7u-PbmA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: cdns,sdhci: Drop required "resets" on
 AMD Pensando ELBA
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 22:27, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The AMD Pensando ELBA DT defines no reset for the SDHCI, so it is obviously
> not required.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> index ac75d694611a..6c7317d13aa6 100644
> --- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> @@ -134,8 +134,6 @@ allOf:
>            items:
>              - description: Host controller registers
>              - description: Elba byte-lane enable register for writes
> -      required:
> -        - resets
>      else:
>        properties:
>          reg:
> --
> 2.51.0
>

