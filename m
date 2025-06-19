Return-Path: <devicetree+bounces-187511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD79AE0355
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26827188AF43
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 11:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79AF3227E88;
	Thu, 19 Jun 2025 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="omQiXrPl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F6D227B95
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 11:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750332033; cv=none; b=BxUPJpsc70KJ1ZeexH+8vz/gqJG9uzY0YzWZWag312PRYm49SpO2l5jqL37/Bvu4f32U+n9zewJNVVWvfBKg4xdI88B/+iv/g90weOzVH2J0LWCcHm4ScoPj1cZNnL9LJEM03HxfMdePY5tHBZX8uCF8IdnijNRp+yGFQomuGOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750332033; c=relaxed/simple;
	bh=NZ5ua//HRvEUXqDrATHvprzOWGicDxLR60a8JgIYce8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FhLmQQqj5BUKeqoQEPYj2wHy093m0btVaKBAJpA3iKw2AIt5tgqEBfPHWD0O7P1+sonv+b+9XcnWANLpmOO+dK2XptzKsGI6xTVqa1HNe8eieIvRJ0Ukri1c/5GaRJkrx6uq0cnhHx8IA/Ai0CS56AOnxwte9JTVEYycnAZAFA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=omQiXrPl; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e81cf6103a6so668000276.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 04:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750332031; x=1750936831; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v/7Q/trZ5SbmALMt3c06DmQkKxihbiVngkXZ1QJXJs8=;
        b=omQiXrPlr0TGWS9dR27S05Pt+YOLpmtTGoS8NpYhDjrSFgb2SbqxuJe7A5e0EGgT+V
         n34gBrNfJ3EkzotKF/d8cz/S7Da43KFm3kJxQC268JeAEJtcpJkD0kHznCbEG2Rep1aD
         juMOin+kiGFI5BCX/sRnybPB1HDZvPp8m3vrQLBkQoZUThMRF4OCT1frQAxjUfVBVXCI
         Wrr3RYyp2eYdGkM9JQFpeXaO+7ACS0whO2WCfKTacj2LHEZ/s01Pdd7EYXrnngzDrOmy
         7iyA2vW4CzkxWxWiegx1RVubmkvrkAlqPclp5uQV8zjGI6oqEPnbSFAuJ3OY0pU8bbDp
         05xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750332031; x=1750936831;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v/7Q/trZ5SbmALMt3c06DmQkKxihbiVngkXZ1QJXJs8=;
        b=b7syhk9cuWhqGtcf+PCza5Gw7JjWKezpUfShWz6kaRXyVRNuBSGx9f+BR3NI9sZepX
         JS8LlTP2EnKpBd6vcLh5IOeJnUPs6ZiH9bqamk22L+0Et3tgc2psTBdBll34p8RPaFOP
         AoTtq2fAH1CJU4CQCXsXqv1EPSfHgfjyUL+MlZ46onf19phvIPSljRbic/V5DzGWZZeO
         WS9dbaAPTQqQ8bQ6xTq3lwOCVvdyN+vRwy+7DmPR0fhOCcRDdhqCniVdYoAQb+y4HbCC
         lB0HEVMCIJHqTQTUBeQzjPlwMeTMNFQus0hy8vx+MZqlcWx9heIaKojxUUZ29MNbGRY6
         prgw==
X-Forwarded-Encrypted: i=1; AJvYcCX6Ttn8MmhGvgSvgo8Okv8ZUUMHmG/WRftgz5auhd4ZO8Xe01P7VXuqkbG9R+cqI+vJA12CsjHNYR7w@vger.kernel.org
X-Gm-Message-State: AOJu0YxVv3d+DwrDei6f1hLLMvZ0TlLKaCJD9ViZFTE7UBPyzQMc6ecz
	6KO8DBIF8eddJSCp8n0tdfgwJklcHF0yZ9lF4F2bqT7AuvAOa1KqkEONMC0Wn/ITaGKuKOBbzo0
	G1gMt/456Gpm0rLPVHTNfY4v874Ek5kpLWBGyrssHYA==
X-Gm-Gg: ASbGncscLzUAgFzEv+lryc4kU0d9NQsMOvREfz0tHurup2+lFfchViNblkdTg7osCSk
	+T/tHGkp9lQIT3uJKON3To1YoBLmVewZKMuI13BkuItMbODwGIt4ekSQ1toR8IlS7mlmIsKlHLS
	QLQeF0OUrjLGDZwYzxJFUWWvxXuzRUed2k3zcgvWVsejQt
X-Google-Smtp-Source: AGHT+IGY/qzZki/fMsjjuqz3QT3bNQU2e2XUVD7CMMeyaBLxvbqSsIzzLZ3yi5RD+SHlUmmOxvGIAhjFnpWIBIUm4EQ=
X-Received: by 2002:a05:6902:2189:b0:e82:b91:a7d7 with SMTP id
 3f1490d57ef6-e822ac8e43cmr26709534276.29.1750332030811; Thu, 19 Jun 2025
 04:20:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250603152245.1068740-1-Frank.Li@nxp.com>
In-Reply-To: <20250603152245.1068740-1-Frank.Li@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Jun 2025 13:19:54 +0200
X-Gm-Features: AX0GCFt2y5yccN4trdKSkYckbzJZTNRqp_GOOavsdhs8BlNDoJbkpBlOUHNguuE
Message-ID: <CAPDyKFo1dAkvvrO_xb3fk8pguTspB2OWxcA-zdN+Z1yOkbt4ww@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] dt-bindings: mmc: mxs-mmc: change ref to
 mmc-controller-common.yaml from mmc-controller.yaml
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, 
	"open list:MULTIMEDIA CARD (MMC), SECURE DIGITAL (SD) AND..." <linux-mmc@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, wahrenst@gmx.net
Content-Type: text/plain; charset="UTF-8"

On Tue, 3 Jun 2025 at 17:23, Frank Li <Frank.Li@nxp.com> wrote:
>
> Change ref to mmc-controller-common.yaml from mmc-controller.yaml because
> imx23/imx28 use dual mode controller (spi and mmc). So default dts node
> name use spi instead of mmc. The legacy reason, it use difference
> compatible string to distringuish work mode (spi / mmc).
>
> Fix below CHECK_DTB warnings:
> arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dtb: spi@80010000 (fsl,imx23-mmc): $nodename:0: 'spi@80010000' does not match '^mmc(@.*)?$'
>
> Additional add clocks property.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> change in v3
> - add clocks in example to fix dt_binding_check warnings/errors.
>
> change in v2
> - add clocks to required
> - fix typo legancy in commit message
> ---
>  Documentation/devicetree/bindings/mmc/mxs-mmc.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mxs-mmc.yaml b/Documentation/devicetree/bindings/mmc/mxs-mmc.yaml
> index 32e512a68ed61..df07ea3b81d15 100644
> --- a/Documentation/devicetree/bindings/mmc/mxs-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mxs-mmc.yaml
> @@ -17,7 +17,7 @@ description: |
>    and the properties used by the mxsmmc driver.
>
>  allOf:
> -  - $ref: mmc-controller.yaml
> +  - $ref: mmc-controller-common.yaml#
>
>  properties:
>    compatible:
> @@ -31,6 +31,9 @@ properties:
>    interrupts:
>      maxItems: 1
>
> +  clocks:
> +    maxItems: 1
> +
>    dmas:
>      maxItems: 1
>
> @@ -41,6 +44,7 @@ required:
>    - compatible
>    - reg
>    - interrupts
> +  - clocks
>    - dmas
>    - dma-names
>
> @@ -52,6 +56,7 @@ examples:
>          compatible = "fsl,imx28-mmc";
>          reg = <0x80010000 2000>;
>          interrupts = <96>;
> +        clocks = <&clks 46>;
>          dmas = <&dma_apbh 0>;
>          dma-names = "rx-tx";
>          bus-width = <8>;
> --
> 2.34.1
>

