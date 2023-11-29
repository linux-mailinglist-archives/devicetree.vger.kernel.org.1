Return-Path: <devicetree+bounces-20187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1047FE428
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 00:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB6581C20A00
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 23:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F1047A4B;
	Wed, 29 Nov 2023 23:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hbQhTkfq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F9B6A2
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 15:22:23 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50bc39dcbcbso539153e87.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 15:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701300141; x=1701904941; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2/HnZ3tBk4Rv10ctPha3htJ6jB9vSVJNy8j7jeHy+N0=;
        b=hbQhTkfqcwoN6Y8Ie9banA9lI2i7735KvbAFa24wXrPDCEIQpkFgHuildLcfvixCKW
         TBses0KlVbJABwSmYf2OFABUXBrlVGsq5/fAqbqneEO6GfJS85nv0FEfQbmdlOPk/8uD
         apQvYByFaFfaOUvhHU47BjynoIqX5F2XW+MVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701300141; x=1701904941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2/HnZ3tBk4Rv10ctPha3htJ6jB9vSVJNy8j7jeHy+N0=;
        b=WSZEOAyRqUSbFBumHjlsr8mqMtH1qMZ1h99Q31e3Ka1hQLOe8FLZPFSd7O7yZXTeyj
         ZbdifJoGIfKyjnT/cD9YrUaIQ7gZ4D22C1Jpv+MFHpam6WXVk68WGpdz2G7rWxLQjf2f
         8hG2bRkQD880vIunn01vbxk5pH8nIKWp+cceisFhXVfbkT+mnN6EsAZherglgIJfoLJe
         pJ66lesq9I1rg3wl0JH4YkOM26NtMEdgk9rF2YvqzhgNntHSJvlecdEsY02vqK9OpjMy
         b7ZiZjSctsITbOhO+/hWg9McrkOIhzuRSUDtgY/npxNKqDt3fQfM5zzOwCkQc18TcKor
         EmHw==
X-Gm-Message-State: AOJu0Yw39W0u7zgfwEFrwo2c1Kr7dZR2BtnRsSWzB5QS7QAWnDGN3azR
	Uj0a1m1KjOlFRO1aIE0DYwgoruMvK0i4xar01LTUI82TRXkSJcso8bE=
X-Google-Smtp-Source: AGHT+IFYwY557f0M/HBVYE3v9Lp8eNTCTg5oXoWdtSW9n3YuCd9BE+gko2nwt0HyJjEkoxBEYx0zOQD+alQIHP6FIu4=
X-Received: by 2002:a05:6512:695:b0:509:8db5:949 with SMTP id
 t21-20020a056512069500b005098db50949mr17477580lfe.6.1701300140674; Wed, 29
 Nov 2023 15:22:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116172859.393744-1-sjg@chromium.org>
In-Reply-To: <20231116172859.393744-1-sjg@chromium.org>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 29 Nov 2023 16:22:03 -0700
Message-ID: <CAPnjgZ0z_oMy0kDScMjE9jYOvFJ12dxWn2CRoTpTsmw7TfARGw@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: mtd: partitions: Add binman compatible
To: devicetree@vger.kernel.org
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org, 
	Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>, Michael Walle <mwalle@kernel.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, 16 Nov 2023 at 10:29, Simon Glass <sjg@chromium.org> wrote:
>
> Add a compatible string for binman, so we can extend fixed-partitions
> in various ways.
>
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
>
> (no changes since v5)

Is there any movement on this series, please?

>
> Changes in v5:
> - Add #address/size-cells and parternProperties
> - Drop $ref to fixed-partitions.yaml
> - Drop 'select: false'
>
> Changes in v4:
> - Change subject line
>
> Changes in v3:
> - Drop fixed-partition additional compatible string
> - Drop fixed-partitions from the example
> - Mention use of compatible instead of label
>
> Changes in v2:
> - Drop mention of 'enhanced features' in fixed-partitions.yaml
> - Mention Binman input and output properties
> - Use plain partition@xxx for the node name
>

Regards,
Simon

