Return-Path: <devicetree+bounces-7346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EEF7C0212
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13CCB2817AF
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 390BF2FE31;
	Tue, 10 Oct 2023 16:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kT5NIxTE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6E12FE2E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:58:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B384C433C7;
	Tue, 10 Oct 2023 16:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696957120;
	bh=/LHw5iS5T1DOAAuPqfF8kJ9Zsl2upHRUk96aB7oEHhc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kT5NIxTENWFPyPrWrV3LnYsZq1zwrIvNNeJhuIVgpBtx06ko9DB3bvFg284xIzkL3
	 RZDERaqVbpLfy4m7/t7PS3B1LciYnMSXebiPGdQwdLvGOnViIKkwMLyIxdh7ovbnIU
	 X3aOEyvf6ahrUPhts52SdlKhQxRrB80X/PNiDQW21tSVxng+TQRmCnb7rKlp1/H7oM
	 p9ebJ9cXRylXNqA8+F47ZiPxAifH0j4PjnyVqkAQROnbxlQLcv4s8raBmcwGBRsn28
	 7Lgq8dewc292M/XcjWQE4YXR3I39yMyQ/PZZDqyGu2Gkt5C24/EYb5iRZr+Z/gX5r9
	 vcWIzXmCVdhaQ==
Received: (nullmailer pid 1045754 invoked by uid 1000);
	Tue, 10 Oct 2023 16:58:38 -0000
Date: Tue, 10 Oct 2023 11:58:38 -0500
From: Rob Herring <robh@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Geert Uytterhoeven <geert@linux-m68k.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 8/8] dt-bindings: display: Add SSD132x OLED controllers
Message-ID: <20231010165838.GA1039918-robh@kernel.org>
References: <20231009183522.543918-1-javierm@redhat.com>
 <20231009183522.543918-9-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009183522.543918-9-javierm@redhat.com>

On Mon, Oct 09, 2023 at 08:34:22PM +0200, Javier Martinez Canillas wrote:
> Add a Device Tree binding schema for the OLED panels based on the Solomon
> SSD132x family of controllers.

Looks like the same binding as solomon,ssd1307fb.yaml. Why a different 
binding? Why does that binding need a slew of custom properties and here 
you don't?

> 
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
>  .../bindings/display/solomon,ssd132x.yaml     | 116 ++++++++++++++++++
>  1 file changed, 116 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> new file mode 100644
> index 000000000000..b64904703a3a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
> @@ -0,0 +1,116 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/solomon,ssd132x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Solomon SSD132x OLED Controllers
> +
> +maintainers:
> +  - Javier Martinez Canillas <javierm@redhat.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - solomon,ssd1322
> +          - solomon,ssd1325
> +          - solomon,ssd1327
> +
> +  reg:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  # Only required for SPI
> +  dc-gpios:
> +    description:
> +      GPIO connected to the controller's D/C# (Data/Command) pin,
> +      that is needed for 4-wire SPI to tell the controller if the
> +      data sent is for a command register or the display data RAM
> +    maxItems: 1
> +
> +  solomon,height:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Height in pixel of the screen driven by the controller.
> +      The default value is controller-dependent.
> +
> +  solomon,width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Width in pixel of the screen driven by the controller.
> +      The default value is controller-dependent.

Don't define the same properties twice. Either share the binding or 
split out the common properties into their own schema file.

Rob

