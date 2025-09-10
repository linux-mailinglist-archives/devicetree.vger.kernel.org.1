Return-Path: <devicetree+bounces-215313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA16B511BF
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76FD03BA023
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 08:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304A72D6410;
	Wed, 10 Sep 2025 08:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="1LUwjBGf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB36530E846
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757493968; cv=none; b=WNMLDDxX4F1esLN0E8hWwyjnwZMW3CKwpuPzLO7ilveh2xobwP3t5oCVaoIdKelIC5VRophMrW6WL4RhR/NtDEps8M2MDccRN6fxHDSh595IwEZ/wTzrHbNwsultZhF0/MumxWP6n4EHpoR9yrBprE6+Bz+7+ut2C2fJGSBT5x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757493968; c=relaxed/simple;
	bh=hrjgWOakje8KP9TNFq7zfcv73GdO9QXDxFuW4dqfAw0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=XK190JG2sazqdjnFyJcPwYI+ebHUoO16JhD5ms0UV2aZEExRGmufO8xQc7CspiIuqV4YV/rpF5hPu3KrgXIWv4Y5UIP6k7oM8YgOSclLwOI5KdmDVvQZGae904uUdXlp5Ov7xHJtiWYgG9sX4OAGJM6Zz4z0W759Cymmldok6GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=1LUwjBGf; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 338CE1A0BFB;
	Wed, 10 Sep 2025 08:46:04 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0908E606D4;
	Wed, 10 Sep 2025 08:46:04 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 31678102F1D2E;
	Wed, 10 Sep 2025 10:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757493962; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=TPF1Bh4jbgWSz3Ya/QMY1CLpfbe8kFIPeV0OQ/ZQFPs=;
	b=1LUwjBGfthERBPEwQRZv1wyeH3VVBT/H0oaflADJOBabryaFTC9Dvi4CH2QtKFLGCp4JvU
	bWCgGfCQgpx5vjkro7hvy+X1A9NH6umQVVNXdpOXIW126F0N4KuBIz5lK2fWqfD1/piezr
	GjqGVAqmbGjVctV3cwJgpIoI/pm0qD1TQKdyFOmuILKAL3e24V4XL+TMKNKJ6e5lgDa8ra
	KD+Lc00GN+YR+fXWYXLQlqidVvPrjzPeJo4tQzu3vbvBcygW6TTJCkuFbVuTRS12hCMeU9
	pQE3JR5m2F+RADa6NOnbn4G8Z+s3nHQ6IMNo+7njjQwBOZqa7uf07lhym/f3VA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: richard@nod.at,  vigneshr@ti.com,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mtd: Add realtek,rtl9301-ecc
In-Reply-To: <20250828143408.2511086-2-markus.stockhausen@gmx.de> (Markus
	Stockhausen's message of "Thu, 28 Aug 2025 10:34:07 -0400")
References: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
	<20250828143408.2511086-2-markus.stockhausen@gmx.de>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Wed, 10 Sep 2025 10:45:56 +0200
Message-ID: <87h5xaelvf.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Hello,

On 28/08/2025 at 10:34:07 -04, Markus Stockhausen <markus.stockhausen@gmx.d=
e> wrote:

> Add a dtschema for the ECC engine on the Realtek RTL93xx SoCs.
> The engine supports BCH6 and BCH12 parity for 512 byte blocks.
>
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
> Changes in v2:
> - change cells from 2 to 1 (only 32 bit hardware)
> ---
>  .../bindings/mtd/realtek,rtl9301-ecc.yaml     | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/realtek,rtl9301=
-ecc.yaml
>
> diff --git a/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.ya=
ml b/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yaml
> new file mode 100644
> index 000000000000..1b34d79007a4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yaml
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/realtek,rtl9301-ecc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek SoCs NAND ECC engine
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +properties:
> +  compatible:
> +    const: realtek,rtl9301-ecc
> +
> +  reg:
> +    maxItems: 1

This controller has an interrupt which must be described. It does not
matter if you use it or not for performance reasons in the driver. Just
don't mark it required below.

Also, no clocks seems suspicious. But maybe they are "hidden".

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

Thanks,
Miqu=C3=A8l

