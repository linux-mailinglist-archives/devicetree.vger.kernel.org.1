Return-Path: <devicetree+bounces-170554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD39A9B4CF
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 18:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B861C9A7E27
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 16:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E052B28BAB5;
	Thu, 24 Apr 2025 16:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vCoozjFz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250F528E5F6
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 16:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745513880; cv=none; b=pdD2Astcitse77Fa6dNPmnOW24j2j5gXs1Ahsk3PxiJlO0kphPdB15PztiYHAqgDEQcvENPmaoDGrt784rORc0az4gv6XvtHBRplTjXNsSSsOidataE+PcORKobK+VssVxkC//RebZh0Yy9c2D9agjMGNtuBemPzvIcVG5UdouQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745513880; c=relaxed/simple;
	bh=j1MfpPRWqhfX/2KQfilannHBewLFWL4iLNkee7p1jNc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fKG6lokvfVRcYICfwJmI7SMB+eU4Gr8XR0V7qbGMKCWPUODMAh+pzYf2M0PVDYTC8yDFTl/U98nXkBbADyGnV2fDBdon2spx/sLgY6HUJ8rcyczK3gBQWXZDFtbzvd9OCTtE/U1CNSoYk9Jzne47ahaOXc0Is0AS5kTznpepbUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vCoozjFz; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e72c2a1b0d4so1248674276.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745513878; x=1746118678; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CC8QXc9LsvxTqtPlPIyO29AB2sQN6RDFy5sekBxfX70=;
        b=vCoozjFzjX4y6XuM2SS/8HavrP3FsNenwG5acDd3jARYmKb3IUBTf63dtOLxttD4NA
         ypVPOYAyUmSp7ppo6ZfKahhIOCe0RgFP05ydiNb5vjQLETDbjdPAbrCBl4QJhhO9Wizz
         kyQBY/Q9bociSxDv9UHHNcIIeoWm1we4NBBA8CedOe+MUfhSnDGDlAKfNhiO/33c0prr
         HUjPCMUDYzLm7/9NrBMi1MU42IdJF2N6KZVlmLgpAbc2ZPnE+jVk04FXlu3cAKkG1gs7
         tFZTBJnJOUnw56zwnsrWkQIA+9dsI3meToTZbAxcwWyoRPwyDwdcytZBeE//6VGKZM4p
         hG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745513878; x=1746118678;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CC8QXc9LsvxTqtPlPIyO29AB2sQN6RDFy5sekBxfX70=;
        b=TY+qSIRq+QSix6D7sBIv25qz+IY99Ak9s6h/K3X4C8oMy80CvE5qtia++h2UIAo4jT
         wyDSTz1CSofOeaMOitm1MrYoI3TDrKTP/znm323mHWWFDDYh41JAO2Hf5wNO5Q+c2nM6
         9Uk3Dz39m4Qcfdbig+TeiFXSGPRxgh0wH8MKhFZNSpdiMT5L9PJ96RNY2bdDGZjtyivC
         Gzhow+i1VszxYuuO7Lak4p0cWomN/eILrdLqnos1Prx//AIK0+QD5FbjP84Hdy4AvOPh
         amHU6Ofu/+Wh4TIeM14AV4u4ej6GxoeRCj2NtymAAYYgNSHJmlHD6sXE/Yoo3eEzFOg/
         KcqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEaXWV82XbPeyzawORH2HL8Q48GFXHbAuh0RQtdr0Cs+nAM6lApr5QJD2OHvX9fNftOZN2Kp2FtO9q@vger.kernel.org
X-Gm-Message-State: AOJu0YwPyNfUvlSFYdSp/KNbNaBXixWYTqqwETSOtCLsIVdEIEChy0xv
	cNjbGOlBspyCsKOAhS/gMILq1dGGNocHLOUqhnG3nwTrtyZCI3HFr1WG6bMYnSiNbtJ7AW52Fkb
	N50M/X+cImiTbxni/M9PVNaB52Uv0JgqNGL9zYQ==
X-Gm-Gg: ASbGncuqUwsOMYhFAH5ZPJainDnYmmNPlSNrj/P5fxK8twExlYwtBc9XlyUqIjMQLfi
	8FQ6LfyL64s1pm8QIxnfxR3P8L3QvLaF0KGIHgMeDD++a+lMInqlAWBVhPiJzJY692sc7fRq4ZK
	t4A2geKvXud7c4Qly+1EYSawY=
X-Google-Smtp-Source: AGHT+IGUSO5FK4cTNY1s8aCOE0QjJA5+ZdVnwWYHpoNAMpE1vPT98E65H3GN3XHKq0FMUPOvfV/2uwmg/47o7Q3uAQg=
X-Received: by 2002:a05:6902:1b12:b0:e72:d449:72ed with SMTP id
 3f1490d57ef6-e7312d6905emr175202276.24.1745513878058; Thu, 24 Apr 2025
 09:57:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416224839.9840-1-andre.przywara@arm.com> <20250416224839.9840-2-andre.przywara@arm.com>
In-Reply-To: <20250416224839.9840-2-andre.przywara@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Apr 2025 18:57:22 +0200
X-Gm-Features: ATxdqUFsZ4jKzTVE_MqQW5hWNU9yilyI4trLvJSpUG2toFoex3HtMd6XPhqZ5bI
Message-ID: <CAPDyKFop9gAUq3kG4-hs358y=N48rLQSvJaRveXo_ebVTf8gEg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: power: Add Allwinner H6/H616 PRCM PPU
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Philippe Simons <simons.philippe@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Apr 2025 at 00:49, Andre Przywara <andre.przywara@arm.com> wrote:
>
> The Allwinner H6 and some later SoCs contain some bits in the PRCM (Power
> Reset Clock Management) block that control some power domains.
> Those power domains include the one for the GPU, the PLLs and some
> analogue circuits.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next by amending the example according to ChenYu's comment, thanks!

Note this patch is also available on the immutable dt branch, for SoC
maintainers to pull.

Kind regards
Uffe



> ---
>  .../power/allwinner,sun50i-h6-prcm-ppu.yaml   | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/allwinner,sun50i-h6-prcm-ppu.yaml
>
> diff --git a/Documentation/devicetree/bindings/power/allwinner,sun50i-h6-prcm-ppu.yaml b/Documentation/devicetree/bindings/power/allwinner,sun50i-h6-prcm-ppu.yaml
> new file mode 100644
> index 0000000000000..7eaff9baf7268
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/allwinner,sun50i-h6-prcm-ppu.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/allwinner,sun50i-h6-prcm-ppu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner SoCs PRCM power domain controller
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +description:
> +  The Allwinner Power Reset Clock Management (PRCM) unit contains bits to
> +  control a few power domains.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun50i-h6-prcm-ppu
> +      - allwinner,sun50i-h616-prcm-ppu
> +      - allwinner,sun55i-a523-prcm-ppu
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#power-domain-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#power-domain-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    prcm_ppu: power-controller@7010210 {
> +        compatible = "allwinner,sun50i-h616-prcm-ppu";
> +        reg = <0x07010250 0x10>;
> +        #power-domain-cells = <1>;
> +    };
> --
> 2.46.3
>

