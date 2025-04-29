Return-Path: <devicetree+bounces-171916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5044FAA0813
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:07:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05A06481AC9
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F6522BF3EE;
	Tue, 29 Apr 2025 10:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XAN3kQXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730C82BE7D6
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745921225; cv=none; b=kPkHRt8v//E6vf/6AuUsZ4P9WvO3Nk+K0BAvbtVLjtZAWhPq2/sjLAqjj+2bOuLK6tqjYLMfH1AF1/bldo1kPfN8wA70mxpCqHYmeZoZ+EwXXsg1Wda9wblT/Kx1wdgAo33TZT7UT9+vIWcS7Eznmb42ihsrz6ejq6K11wdawpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745921225; c=relaxed/simple;
	bh=ZanEZrl1MQTBJFkH/y5+fms6HZ1lW1UJH8TVe2y0Kws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eEbOp6U6Rae98Vtmyiii8E2lQDntupVG8fzRA7b6awaKPt3DEYi1oTHUZkeHzgwlbPSCns8/Xn5aygEns1tM2KA6FWGZ01zkh757UlmS1dboOoyrPWFtoPA2HQFNfj0FPpTd0UnJVxJrxnJXIWHlycnJsR8YhN+6GF62hIcVfkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XAN3kQXT; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-70576d2faa1so51075707b3.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 03:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745921222; x=1746526022; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g3Ew3/QJhFzeoXSRlNN1VxKNu1WmYD8oNT84srDahOU=;
        b=XAN3kQXTwxYUwHug2FiI5ytwDGsSYy9irnfuXX/Pu8Cgg6dKbRoJjBZVF8tCA0o4d9
         3rlYjtN2a2VM/bAQHT7Cy+13yKDIK767bYTFVDlUyis+kmg5tkM/hk0Kq0AJ7kI5rX4N
         WHfMdH0k5ylS+4V/fN/RyoDy7t7oreeG/BZma5OBHZ+tKnNoz8ywtYRDUYpKECgqMOaV
         Ju6W3qG68wrrnn6fj8YZYojf7J2JX1EuPnWh5FDAlhxyzmRlE+C0YM5nd+RiAXl4bkij
         8mgseJhIeQxQM+mxdfEYXD4oOpxK9Q4Ai+IsIXCDUmJn+uINcWDhftJ57aKZ+zvYCjl+
         BItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745921222; x=1746526022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g3Ew3/QJhFzeoXSRlNN1VxKNu1WmYD8oNT84srDahOU=;
        b=RXWE9HVO69/xG7411xq6Dpadp+NsumPW0Lsz4tW1kI0LY5aNIze7F8ektn5EVDarsL
         ndogjdbNo1mKaiQxcMt1skPZo3qmv4PJoc/iVXGhkwtMs9GMvT33GyBQsHYktY3D5SEa
         hRa9bpJM37kmkxPUK1yfwV7PNKBmWohdKuipVLU4KZBylPbojebg43YErK6p+7z6bTwI
         ojY9bGrb8b1M3sK1yroYA4E8KVY86P2Yc1LGYzFCcH3nOjTocA1RFvwim8HEJUuCFtpH
         C/bb/srYlP6e2MZj5+B4HbsA15Z/kSSdyKo/3DxJ4hd0A8Aayc1DNSUDYqCTSPaRp4Q3
         ZzRw==
X-Forwarded-Encrypted: i=1; AJvYcCVu4DHhsIHH/ODj5ce/zLNXZ3lnfYznPBWWgpZEViTQ8Jv3SaQ1/++jJWfaaMayHGWsscXNVIixhGTY@vger.kernel.org
X-Gm-Message-State: AOJu0YxivWInBxhMmJoKTEeqE7NbrSxHJOvfIkaofGAYaLJKkdFlCaGA
	KwAFQ5l/OiW3ZWgSGQLT8av0T2LEaAW0xde7bBwvpPfyyXDLZ5JUIFaonwOy76CEZ65MC/7sZ2v
	YMtv5zGX+rpR0RLoNxQ9vBU0GuiikezklTdWNkw==
X-Gm-Gg: ASbGncvggqE8Nd90YQ4YqTF6Ub25sfoT7FzpxtUVTBQ9Ur8cKKb56rvmi1MJRiMUYcV
	o29VCCMZuc3TxNBs/L8HWuFpBBRJq9il+DJ75Vhvd/DDeUlc3jD9v76S0ElFVNntHuHMqtqAjNY
	k0xQVirf7YcnRMKWBKQUU4Jx8=
X-Google-Smtp-Source: AGHT+IG76v7imH4Qmr1mZ2+FW38Kt9fhuFdotLsZyhENyHP+RbqVndMxng4jwgw0v2+7ykOIPXB+oYvsflTcyUn2X+o=
X-Received: by 2002:a05:690c:81c6:b0:700:a93e:3302 with SMTP id
 00721157ae682-7089b43746emr20556137b3.37.1745921222377; Tue, 29 Apr 2025
 03:07:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423-vt8500-sdmmc-binding-v2-1-ea4f17fd0638@gmail.com>
In-Reply-To: <20250423-vt8500-sdmmc-binding-v2-1-ea4f17fd0638@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 29 Apr 2025 12:06:25 +0200
X-Gm-Features: ATxdqUHP1S1wKEk1JriqHl-INpfSR9z-V8MbSWsNuh6Dtm-S1RKGwycj8hOUG1k
Message-ID: <CAPDyKFotiXYeG7k4u1YFs9vE9hH+Ut29feZZvTBSFcthJp0+vg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: vt8500-sdmmc: Convert to YAML
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 23 Apr 2025 at 12:53, Alexey Charkov <alchark@gmail.com> wrote:
>
> Rewrite the textual description for the WonderMedia SDMMC controller
> as YAML schema, and switch the filename to follow the compatible
> string.
>
> Signed-off-by: Alexey Charkov <alchark@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Split the series from v1 into separate bindings patches so as not to
> spam all the subsystems with unrelated changes, per Rob's suggestion
>
> Changes in v2:
> - described the sdon-inverted property in greater detail (thanks Rob)
> - dropped the hunk that updates MAINTAINERS for easier merging - will
>   be updated later in a single pass to cover all VT8500 related files
>
> Link to v1: https://lore.kernel.org/all/20250416-wmt-updates-v1-3-f9af689cdfc2@gmail.com/
> ---
>  .../devicetree/bindings/mmc/vt8500-sdmmc.txt       | 23 --------
>  .../devicetree/bindings/mmc/wm,wm8505-sdhc.yaml    | 66 ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 23 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/vt8500-sdmmc.txt b/Documentation/devicetree/bindings/mmc/vt8500-sdmmc.txt
> deleted file mode 100644
> index d7fb6abb3eb8c87e698ca4f30270c949878f3cbf..0000000000000000000000000000000000000000
> --- a/Documentation/devicetree/bindings/mmc/vt8500-sdmmc.txt
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -* Wondermedia WM8505/WM8650 SD/MMC Host Controller
> -
> -This file documents differences between the core properties described
> -by mmc.txt and the properties used by the wmt-sdmmc driver.
> -
> -Required properties:
> -- compatible: Should be "wm,wm8505-sdhc".
> -- interrupts: Two interrupts are required - regular irq and dma irq.
> -
> -Optional properties:
> -- sdon-inverted: SD_ON bit is inverted on the controller
> -
> -Examples:
> -
> -sdhc@d800a000 {
> -       compatible = "wm,wm8505-sdhc";
> -       reg = <0xd800a000 0x1000>;
> -       interrupts = <20 21>;
> -       clocks = <&sdhc>;
> -       bus-width = <4>;
> -       sdon-inverted;
> -};
> -
> diff --git a/Documentation/devicetree/bindings/mmc/wm,wm8505-sdhc.yaml b/Documentation/devicetree/bindings/mmc/wm,wm8505-sdhc.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..5b55174e908836866fbba42336db94cb03f9137b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/wm,wm8505-sdhc.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/wm,wm8505-sdhc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: WonderMedia SoC SDHCI Controller
> +
> +maintainers:
> +  - Alexey Charkov <alchark@gmail.com>
> +
> +allOf:
> +  - $ref: mmc-controller.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: wm,wm8505-sdhc
> +      - items:
> +          - const: wm,wm8650-sdhc
> +          - const: wm,wm8505-sdhc
> +      - items:
> +          - const: wm,wm8750-sdhc
> +          - const: wm,wm8505-sdhc
> +      - items:
> +          - const: wm,wm8850-sdhc
> +          - const: wm,wm8505-sdhc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: SDMMC controller interrupt
> +      - description: SDMMC controller DMA interrupt
> +
> +  sdon-inverted:
> +    type: boolean
> +    description: All chips before (not including) WM8505 rev. A2 treated their
> +      "clock stop" bit (register offset 0x08 a.k.a. SDMMC_BUSMODE, bit 0x10)
> +      as "set 1 to disable SD clock", while all the later versions treated it
> +      as "set 0 to disable SD clock". Set this property for later versions of
> +      wm,wm8505-sdhc. On wm,wm8650-sdhc and later this property is implied and
> +      does not need to be set explicitly
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    mmc@d800a000 {
> +        compatible = "wm,wm8505-sdhc";
> +        reg = <0xd800a000 0x1000>;
> +        interrupts = <20>, <21>;
> +        clocks = <&sdhc>;
> +        bus-width = <4>;
> +        sdon-inverted;
> +    };
>
> ---
> base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
> change-id: 20250423-vt8500-sdmmc-binding-01c6ce3f6678
>
> Best regards,
> --
> Alexey Charkov <alchark@gmail.com>
>

