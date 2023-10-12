Return-Path: <devicetree+bounces-8139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C937C6D5C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D1452826CD
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C1F24A01;
	Thu, 12 Oct 2023 11:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vq+KzigL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA90249F2
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:52:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52F49C43391;
	Thu, 12 Oct 2023 11:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697111538;
	bh=zxYzsLXBKi9s0aN++GqRyQ6VlVpbSThbWxRR+wmwfGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vq+KzigLw0Dmc7f85IW9YQoiIq6p75obwZf/IvldPobgKpjN5dqHAlY8OrhlF9Xkr
	 Ukxuycx6olO8h4TK+xKnRQJNytu+hi0HMlGtOQcWCQe3/ZfKh6hE18UDmcNJqnf2x6
	 xac4gqXgXkIDSW3WnpgRJMaB5qoXnt7bgo4/JASK/S6ZHkv6+g5gY0UUSMhdbqNlRd
	 HSupGDrQKYENlRddgSQJmRDkxWXKwqTaGK0p4h0pTZORbyM5yIwOzPtTiEQlCv6cxs
	 IUr8US4nW6bVorCK3/GVTuVepCeskzbAtGxydaURAylrmB55GRtXAf0hOz2k8yuGUZ
	 9OR1lenPnHEjQ==
Received: (nullmailer pid 285059 invoked by uid 1000);
	Thu, 12 Oct 2023 11:52:16 -0000
Date: Thu, 12 Oct 2023 06:52:16 -0500
From: Rob Herring <robh@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Conor Dooley <conor@kernel.org>, Peter Robinson <pbrobinson@gmail.com>, Maxime Ripard <mripard@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 5/6] dt-bindings: display: Split common Solomon
 properties in their own schema
Message-ID: <20231012115216.GA266951-robh@kernel.org>
References: <20231012065822.1007930-1-javierm@redhat.com>
 <20231012065822.1007930-6-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012065822.1007930-6-javierm@redhat.com>

On Thu, Oct 12, 2023 at 08:58:14AM +0200, Javier Martinez Canillas wrote:
> There are DT properties that can be shared across different Solomon OLED
> Display Controller families. Split them into a separate common schema to
> avoid these properties to be duplicated in different DT bindings schemas.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
> (no changes since v1)
> 
>  .../bindings/display/solomon,ssd-common.yaml  | 42 +++++++++++++++++++
>  .../bindings/display/solomon,ssd1307fb.yaml   | 28 +------------
>  MAINTAINERS                                   |  1 +
>  3 files changed, 44 insertions(+), 27 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd-common.yaml b/Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
> new file mode 100644
> index 000000000000..677fd2b90960
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/solomon,ssd-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Common properties for Solomon OLED Display Controllers
> +
> +maintainers:
> +  - Javier Martinez Canillas <javierm@redhat.com>
> +
> +properties:
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
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +additionalProperties: true
> \ No newline at end of file

With this fixed,

Reviewed-by: Rob Herring <robh@kernel.org>

