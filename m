Return-Path: <devicetree+bounces-81248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C61C291BB42
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 11:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54FE71F22F2C
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 09:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C03152792;
	Fri, 28 Jun 2024 09:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="b02fMvTd";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="pSoL9liW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065941514D4
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 09:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719566105; cv=none; b=ZkAMhI7u22cei+O2R0V+k7vIAFh6oiRfzMVtbCKIsU20g6aZbKrWTEahjfF3n0lR5EeogqcijhyGK6S5KXHP43+8lfdrznMe5GSozIAq1nJ/yWOv7ESlgW0EFlcrBHHRHv0/f9OHb2AshhO69Oei5mECcwT/yeBIjh9A2ShlQRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719566105; c=relaxed/simple;
	bh=Oa/01lsMxvPYX+rOBXFPRFF3tkXlEWs/V5e66/YqmkM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=i6iEk0M0Pcp897XVPXrALedq+1f/3l3U4LkJXsRSQZK+IOS5AM8ceRlRdJ9WKiFbyfj9AyysCW3WGvk17zhslxB/iskxgqhQWw2UZYG9+dDBN5jr3I/97C28r5ToFCOmBKzkeS/ODz6HRg4B1m1GvPbe4eDcD72zsE9W09YV/wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=b02fMvTd; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=pSoL9liW reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1719566102; x=1751102102;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=EXcyRDCaJB09jaDRAMlmuxE97++8Tda7l+ochk/FMPA=;
  b=b02fMvTdtxB+LjMdQwVgVxXRLtPkqhBf2m3CcvIDFm/llOY9tG61/EeN
   6VVSzrhEmN7kChP3RsUlIQIwqNK766xJY7Xl8AJvFSLWcZwW1guNMLnS6
   t9NV/9ZvA3fZLOSovE3ei/KLNFqBBiI4YGc6XqgYkj5VblS3Lh2rX6AhY
   2hw7lcXZGgO9HoPqtf3aqsjA2NPL6n7EFtj3HRlZ5ZsXte6VrZJDIsB3+
   Och6GqLjdFXOjzpEjoxG033EsyqaA37PUUgu5ofpQt/N6g0StST/fo6Aq
   O9BFRVXwxdQ06u2gbPpjAU00XrofQmytgm8RGsCep4VPvUgIhGfd+nh6/
   A==;
X-CSE-ConnectionGUID: 3uHoSeWRTF6jY+THVhd5ww==
X-CSE-MsgGUID: R/DCuKDpQwCPgAWWYmfvcQ==
X-IronPort-AV: E=Sophos;i="6.09,168,1716242400"; 
   d="scan'208";a="37642892"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 28 Jun 2024 11:14:53 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 281B216440A;
	Fri, 28 Jun 2024 11:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1719566089;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=EXcyRDCaJB09jaDRAMlmuxE97++8Tda7l+ochk/FMPA=;
	b=pSoL9liWiY3aHHTf9XtmJ6S+AMLi3vi7rXkZ/u9KMRWcOYzaWUyjxXUSIjSjp4taiGSHrJ
	kaV1bxOnFYEnc9S16x8pQ/NZtPWQQBff+5m2FFgH8bzKmaD1TcdFrYwOAU0/2eQ7/efVQO
	bfr4m9cY14zXDLARV3ByXgzFI7F4oXOXltFzHklLOEZ4LldtpnKct0sGXSqiMf6m/xfhZe
	joOEmJX7is5RUx5Hxu5WjXwL/7mOfdQ1Yvo3tUCLM3gWmCGbLcSbK1WAPrkXNGxfbtGue6
	Ot8jNBoS4MBvmO6YzQrDd0l5e3xPp78cXy8vP0xNTYB9t+8E9AAe7+WYEjmEoA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v5 1/2] dt-bindings: extcon-usb-gpio: convert to DT schema format
Date: Fri, 28 Jun 2024 11:14:49 +0200
Message-ID: <2550039.Sgy9Pd6rRy@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240215093214.796821-2-alexander.stein@ew.tq-group.com>
References: <20240215093214.796821-1-alexander.stein@ew.tq-group.com> <20240215093214.796821-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Am Donnerstag, 15. Februar 2024, 10:32:13 CEST schrieb Alexander Stein:
> Convert the binding to DT schema format. Change the GPIO properties to new
> naming convention using -gpios as well.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Patch 2 has been applied as 5b6df373ec95cf051264f655be0dbe1d6caa173c
Who is going to pick this?

Thanks
Alexander

> ---
>  .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
>  .../bindings/extcon/extcon-usb-gpio.yaml      | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 21 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-g=
pio.txt
>  create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-g=
pio.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt=
 b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> deleted file mode 100644
> index dfc14f71e81fb..0000000000000
> --- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -USB GPIO Extcon device
> -
> -This is a virtual device used to generate USB cable states from the USB =
ID pin
> -connected to a GPIO pin.
> -
> -Required properties:
> -- compatible: Should be "linux,extcon-usb-gpio"
> -
> -Either one of id-gpio or vbus-gpio must be present. Both can be present =
as well.
> -- id-gpio: gpio for USB ID pin. See gpio binding.
> -- vbus-gpio: gpio for USB VBUS pin.
> -
> -Example: Examples of extcon-usb-gpio node in dra7-evm.dts as listed belo=
w:
> -	extcon_usb1 {
> -		compatible =3D "linux,extcon-usb-gpio";
> -		id-gpio =3D <&gpio6 1 GPIO_ACTIVE_HIGH>;
> -	}
> -
> -	&omap_dwc3_1 {
> -		extcon =3D <&extcon_usb1>;
> -	};
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yam=
l b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> new file mode 100644
> index 0000000000000..136f865b87816
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/extcon/extcon-usb-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: USB GPIO Extcon device
> +
> +maintainers:
> +  - Alexander Stein <alexander.stein@ew.tq-group.com>
> +
> +description:
> +  This is a virtual device used to generate USB cable states from the
> +  USB ID pin connected to a GPIO pin.
> +  Deprecated, use USB connector node instead.
> +
> +deprecated: true
> +
> +properties:
> +  compatible:
> +    const: linux,extcon-usb-gpio
> +
> +  id-gpios:
> +    description: An input gpio for USB ID pin.
> +    maxItems: 1
> +
> +  vbus-gpios:
> +    description: An input gpio for USB VBus pin, used to detect presence=
 of
> +      VBUS 5V.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +
> +anyOf:
> +  - required:
> +      - id-gpios
> +  - required:
> +      - vbus-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    extcon-usb1 {
> +      compatible =3D "linux,extcon-usb-gpio";
> +      id-gpios =3D <&gpio6 1 GPIO_ACTIVE_HIGH>;
> +      vbus-gpios =3D <&gpio6 2 GPIO_ACTIVE_HIGH>;
> +    };
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



