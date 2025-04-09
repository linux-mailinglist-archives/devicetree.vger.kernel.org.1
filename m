Return-Path: <devicetree+bounces-164794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E53A8261F
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 15:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 543A44E31E8
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 13:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE5426B97A;
	Wed,  9 Apr 2025 13:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P4aEO6G/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAC9265CD3
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 13:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744204460; cv=none; b=qAtEJSmDJaI1BR//sU9MXUDHFDa5dBlZeR8cnCqrIf2BO0FoOSGfDItZl3C98ol/SemY08lI201/FTBwlnY5wdBU0d9SrvuA+NieENNTs8waAEde9XQ1qIGhcfjvKn88ThA8oN30kpdJBqcemt4tTUOJxwKRLKSo7STWPufc+kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744204460; c=relaxed/simple;
	bh=KlRJ4h1RtUXYsvkfjbfJ1M2zEf44FH7yRM9DCeiwk0o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FZW+6LvYq7Vds5E2h/CvPIK80ueDj3r8gOHsWPtWsiOS4yplhqhzKdBGv2oD7NR6d/FaeKCWBuwzW+OyUQ/eCT4RmbtlM2ZxmvxALz+RWdjtE+mUtId44S7tjrfosDGV62fD4Qso5BhrEk/YWkUn1WlYOQNbSXe+Il36LOYeWi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P4aEO6G/; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7023843e467so65702417b3.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 06:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744204458; x=1744809258; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f+6RQVAy08q5QntwZpeV68DAZSbuwCEOXS0sm5QMLNQ=;
        b=P4aEO6G/kWPRC/bXJlBqXBx0Kic8iraeXE1yxYBfiXDyIO7pNUHInGNJZYqwcLDMCW
         KWi/fPZfakaBa9KFGazb0UdDw+i/UiLBBuKUARCZO6fdteZsUlPiVMy/GF1ppCzkjOHP
         1X9ytFzvGlJ4L2nFEGQxgoCn1JEoCpLsS8O7GfiUo4rCTCXzyqtYXkD5hoArtgqFKc4z
         Z++PvcbE+QdMB29ECRvw8KcNxiQWjhbajJ076gvrW5kGNf7OEJ1hUrZbNSuzTr/V247t
         bGrdxVPPE8x2+hRaYlFZmoAZI80SmsNEu8rqPIMy/ev6236TC8CTSvWPbjPTjM3e0NX8
         lICw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744204458; x=1744809258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f+6RQVAy08q5QntwZpeV68DAZSbuwCEOXS0sm5QMLNQ=;
        b=qTypmIXGdRoCC/sDqxVfO8FBXbqhUc4rtqEb/SKFzwkFhYhyWjEeFL7xTkCS6fAXPW
         Ap8atSkK5S0Sg7LGsWjRty4RnrLje8ewhSkZPLcDIYKnZKNLUGjp86aVka+qLn45swK3
         TR9QywVE4/JEEZ7tpREQO56so/yvOwfeu4H2Pgtcb+cP6svCQ+YL1gnaT+0fR/9qMsF4
         /OhJMa2z5ZE4ZBRPxwrWt9ylTVUYGZA0i8cqpDfJO+1zmfK7en6kM/XXhSgvjFX09syN
         EpqGObtlJjM4QGYShICPIIpfbdEI/c3QEqWhShJcSjHw7S6JPFS8v/5kO1Z0JLkziWe0
         wBHw==
X-Forwarded-Encrypted: i=1; AJvYcCWyHQiigBID+K9nduRJGPINN/XkkPwV88r5zQkshDekTQJG0kXooTsRyxszV7sNuCfkEwtePxnCWOm+@vger.kernel.org
X-Gm-Message-State: AOJu0YxPwX+dxwTDxQgTm4OVIDTycDouc40f4KdZn+Pt9IYZV1hbCzDA
	FL0d4eoE3Jnq5j7pIwJn736hXO7aKzhffDR7Rd5LywS8VK4uGfAo7Mm2E2qgjo5LT6G/D8KkpVK
	X6dfp3Rh3YMupMWidLZMyQOB5zWW0VrQzy9gtCw==
X-Gm-Gg: ASbGncuIaX3sLdJPaFyZfPjUuDLiZmxM5/o07iQjVqa4lZ4DwsHfBcdKwbW/ldECzk3
	rTeJ4Mo6tigv82aL1DDPkGRQDJgBQE29XIl3a+C+UhhwsynT9uqc0pBWKcfFQ1uSjJKDP714gK/
	OOdFeQ73tkgYFMWxh6uvZu+ck=
X-Google-Smtp-Source: AGHT+IGpCjRbWI1wcu6YLc0GOTRr2EM80/vGMdWLjTgAe2bdQKUZa1RciaEJ93Fln0HjztGJeVIK2U2xodegRz6duUQ=
X-Received: by 2002:a05:690c:9b07:b0:6fd:6589:7957 with SMTP id
 00721157ae682-7053ae8ca3bmr44770127b3.32.1744204457852; Wed, 09 Apr 2025
 06:14:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250405173631.13564-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250405173631.13564-2-wsa+renesas@sang-engineering.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Apr 2025 15:13:41 +0200
X-Gm-Features: ATxdqUES50V-06ap_h6xaxSwTaW3uAFy-TvFUuqh8V_3zS_hOVhAzcuaRZvAywk
Message-ID: <CAPDyKFrXgxCpWQabv2NgRJYCYf9E38+_=b2ZhbhOK=eExaVQ-w@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: mmc: arasan,sdhci: Add Renesas RZ/N1D
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 5 Apr 2025 at 19:36, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> This instance has a wakeup irq defined. It is currently not used by the
> driver.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Change since v2: - rename "wkup" to "wakeup"
>
>  .../devicetree/bindings/mmc/arasan,sdhci.yaml | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 9075add020bf..8e79de97b242 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -38,6 +38,15 @@ allOf:
>              - items:
>                  - const: clk_out_sd1
>                  - const: clk_in_sd1
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,rzn1-sdhci
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 2
>
>  properties:
>    compatible:
> @@ -45,6 +54,10 @@ properties:
>        - const: arasan,sdhci-8.9a                # generic Arasan SDHCI 8.9a PHY
>        - const: arasan,sdhci-4.9a                # generic Arasan SDHCI 4.9a PHY
>        - const: arasan,sdhci-5.1                 # generic Arasan SDHCI 5.1 PHY
> +      - items:
> +          - const: renesas,r9a06g032-sdhci      # Renesas RZ/N1D SoC
> +          - const: renesas,rzn1-sdhci           # Renesas RZ/N1 family
> +          - const: arasan,sdhci-8.9a
>        - items:
>            - const: rockchip,rk3399-sdhci-5.1    # rk3399 eMMC PHY
>            - const: arasan,sdhci-5.1
> @@ -109,7 +122,14 @@ properties:
>        - const: gate
>
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - const: int
> +      - const: wakeup
>
>    phys:
>      maxItems: 1
> --
> 2.47.2
>

