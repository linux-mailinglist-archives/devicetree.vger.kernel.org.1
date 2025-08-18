Return-Path: <devicetree+bounces-205757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D2AB29FB6
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 12:55:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4676C7A0695
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C51731578C;
	Mon, 18 Aug 2025 10:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OF7IOqeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6093315791
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 10:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755514521; cv=none; b=rJHV8pM9jOgNsIVh0PSU+NJQi6P+H1cHSF6cbK4/LcgOQ1ucc/75LNJgJN2A5BIXwu49SOaz3WW3JeZZ+NJcWUp7k69fGmGug/d3I2LrVUVlcCKDCV4zE12Uywu6CIh5d1Tjwq2UrDwruQm/j+N0mVYqm4FADVRRA04RFrskSNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755514521; c=relaxed/simple;
	bh=/gdGHTrneWQqmOYRuvh9CIob29j8iPfzhl61xeqmBF4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AD8TkRXfRnB27xBNHYZc24fSqg9l+mGpfqRqBpGCy4wyGibwm6rvlxK7dmh4GS0NOyqK/gZHaELEinmnky7B/oibgZ8Rr7thCb83w1EuzBQVmZ4F2y4F12oW2RdQshYkJ5jH66IZR+JT7QLx6hSCT4FKlKqOFazXTOrvmfD6ClY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OF7IOqeb; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e94d678e116so452447276.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 03:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755514519; x=1756119319; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CIznuZ7T7PsTVuExPL1E/1VfmJgJv6V7rfdbbABcMss=;
        b=OF7IOqebzp4B/GdXZ7M1on4q3vS95oCZIPQyeP9vzsfKvOXXTQb6i/ZFf92kSP6pna
         DPAgDVa38F0n2TTyn1RfGhN/NlrSfKaBOludYR2Po4dGuXqlFjk21G/9hUsDogW0oSS3
         stFgmfEWo2omNgMv4oRuWZikMsBo0UVPlqsUvNsakSdbqiwtNJCwgEnR8j8vTiGhYVNy
         BRSWMCp/P2HArk3rKfH24DeuPvfW2nD/rKUai0jtBsW/aaVEt0SwnDIDLKIJtpKTO/mG
         cqbC50rIB4uTBGl0AmL/d0ESaFGZUhpn2p/HtdBvH6t0X2umtTadoOxnjKlYjtL1OiZ2
         h8cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755514519; x=1756119319;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CIznuZ7T7PsTVuExPL1E/1VfmJgJv6V7rfdbbABcMss=;
        b=C2sDCrpvHA+rR2O6tQOzfCgYzFtWISwjFEh7T8Hg1Mz95ht8WHdOhKhQ79kRWpM0KT
         BjF9PsLwReMvH0q6zpbzaw1Th1duIO7hTjlE/X/Hdu63tWYtx52vvWktM7mirGG2beWY
         2pn5JMqphyyAAFue8KhZp903gb3YDekUcNvlQgIJGWULFWVuQZR0do/RWMaUX9a4aPQm
         0ba2DMX7Y+fD9llqjSlSFg5xBtjRBOf2HU8Fty48SYNXrL4izPre9pAgRk9QDAYLslq1
         8iffMZFHQFRa79bJpgFV9DsXku84k+pNDsWh7bWpCwhNh85yOzf1Chf/SyWiJBZiY8wk
         imTg==
X-Forwarded-Encrypted: i=1; AJvYcCVOSSGUdd8/LZ2YScUM/zI4DY3lJb9uyTaqE2n5hcJrn7EW6gcFPZRHGKBNHmZauXTrknsVVCsv8QL8@vger.kernel.org
X-Gm-Message-State: AOJu0YyCScvBViLpyzonlrHzsWTDolyvg2MY4NOULgg5octeIKNIAeHI
	IdRvrYD4RPB2RrfMAKEkEeQwqTvesMUcv4mB/qg11cUlunmbArc5QEe4Wxh9ki7yW69K4izcr2f
	jBWL7ztNnObLeS5DkuKeVDbDH3giauL7GKXj/cS5lqA==
X-Gm-Gg: ASbGncsIcN98X71StNhKKiQCTwZS3Mqz/kDpP6gzImWp1aPl4c1fGb0aD7aArlAi2EH
	vP4+S3dQYI+UtW0zkqlIsCPW1JincmCP4uySKNumBc1Bea+7fs4UmohqDOXn/PCSljGYqVhV0TQ
	yokZEHUuH2xH5aPSdAbf+mV8tZ1KMdyEkGlNi0aDWxAQjYU1iDA3m2/z+5QjX26ClQmOvbBESJQ
	y7RqODb
X-Google-Smtp-Source: AGHT+IH66Dj8WNKlffsTjeVMHpVPRufHU47TKI73ywlHa/Ok4uJvh4KyxWFO4feX4WNsCgPnN/DCJXQlKj8LP+ouHSM=
X-Received: by 2002:a05:690c:680b:b0:71b:6950:c6cc with SMTP id
 00721157ae682-71e6de26037mr157669637b3.35.1755514518726; Mon, 18 Aug 2025
 03:55:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250725060152.262094-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20250725060152.262094-1-alexander.stein@ew.tq-group.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 18 Aug 2025 12:54:42 +0200
X-Gm-Features: Ac12FXygjZDpxgBwolikr0do3iLHNX20_TzBAu8skyfNiyVUVQRmQ-7AdMiWBKk
Message-ID: <CAPDyKFoWF4G-T72Hhb4_VDvHzTWebpFwq7o5LDH421_VUQnkPA@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: mmc: fsl,esdhc: Add explicit reference
 to mmc-controller-common
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 25 Jul 2025 at 08:02, Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Even though it is referenced by mmc/mmc-controller.yaml it still raises
> the warning:
>   esdhc@1560000 (fsl,ls1021a-esdhc): Unevaluated properties are not allowed ('bus-width' was unexpected)
>
> Adding an explicit reference fixes this.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> I don't know if this is a tooling problem or whatever. I would have
> expected that mmc-controller-common.yaml is added via
> mmc-controller.yaml. But apparently this is missing resulting in the
> given warning. Hence adding the reference
>
>  Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml
> index 62087cf920df8..f45e592901e24 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl,esdhc.yaml
> @@ -90,6 +90,7 @@ required:
>
>  allOf:
>    - $ref: sdhci-common.yaml#
> +  - $ref: mmc-controller-common.yaml#
>
>  unevaluatedProperties: false
>
> --
> 2.43.0
>

