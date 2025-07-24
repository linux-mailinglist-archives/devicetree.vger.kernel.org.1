Return-Path: <devicetree+bounces-199265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA99B1024F
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:51:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D011F161F89
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 07:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83AEB20A5C4;
	Thu, 24 Jul 2025 07:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tENqBHs8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6351C6FF5
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 07:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753343509; cv=none; b=UB+CcgTCxXL9XbnINYwVyEmsFAYqEu/JQ0ag70Jc25fdcqUfuY2jKnSaq8pH8al5LFcSHCH7ubGABqTs7UpBB5DRTNKbE1kdnJ5MnQKQSVXF4cwPGGcbZUPvhIzwLfqCUQN5bUnfTaUMc5kfkfAMGX72ZG/MVMUk9lw/fa6Xz1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753343509; c=relaxed/simple;
	bh=ErnTdWvBlsIk3cNIsW0L5yIKseGJrQ0UPFbxni/vZzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sSOJcR1wiFcBvcLDnWJdEZlXNgiPvaW9uMI6Z2Ad4RD8oNTluJ90rC1rYQc6V1oaBjnlmqtDA23oeFD9APfY3MEFb/ee4y5234h4QC65s7ADpDtv52A4WC/g4yOj9qCwKEj7NiTPJ4mTrh/mToaH+NXwLsWwyoH1iWVNRD4WJtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tENqBHs8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54D03C4CEF1;
	Thu, 24 Jul 2025 07:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753343508;
	bh=ErnTdWvBlsIk3cNIsW0L5yIKseGJrQ0UPFbxni/vZzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tENqBHs8828cUQ4ui2dUhyyHuBSZRH4nYKG35YZNzxtwZPo2zq5e4y65IkrhZc/Y3
	 i/zHPxqyhn5d0tLSbHEotT5feLe11dIWUpaEynleGuBmbjHWNuddHU+dp73nzl3jzV
	 NGgPJfT6P7CwsmDjYnqO5KzELN1k/MtULB1NBQA2yhicP9qhxSaki5cOzRDYnYoSRs
	 w1XQLYMpiCoW8BPkoSANfAyx1YhOAGWOND538pHjpHDWuWjLRm+x23GVR2JvxntuVN
	 iFxSJULwKBbWcI0+JkeqQNHQOIzCiFxuUXKRmtYWbeRF31QNI1+Ay045eqCQx1BHpV
	 f0LrzcUe9vy7w==
Date: Thu, 24 Jul 2025 09:51:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alicja Michalska <alicja.michalska@9elements.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Add Samsung EA8076 panel
Message-ID: <20250724-ancient-stork-of-youth-e56533@kuoka>
References: <20250723145208.338162-2-alicja.michalska@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250723145208.338162-2-alicja.michalska@9elements.com>

On Wed, Jul 23, 2025 at 04:52:08PM +0200, Alicja Michalska wrote:
> Add bindings for Samsung EA8076 LCD panel.
> This panel was usually used in mid-high end smartphones manufactured by
> Xiaomi in 2018 and 2019 (Mi 9 Lite and Mi Mix 3, with codenames
> "xiaomi-pyxis" and "xiaomi-perseus", respectively).
> 
> Signed-off-by: Alicja Michalska <alicja.michalska@9elements.com>
> ---
>  .../display/panel/samsung,ea8076.yaml         | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml
> new file mode 100644
> index 000000000000..7ea0c9fedfa4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/samsung,ea8076.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung EA8076 1080x2340 AMOLED panel
> +
> +description: EA8076 panel manufactured by Samsung Display. It's used in some Xiaomi smartphones from 2018 and 2019, such as xiaomi-pyxis or xiaomi-perseus.

Please carefully follow Linux kernel coding style.

> +
> +maintainers:
> +  - Alicja Michalska <alicja.michalska@9elements.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: samsung,ea8076
> +
> +  reg:
> +    maxItems: 1
> +
> +  te-gpios: VSync GPIO pin, usually GPIO_ACTIVE_LOW.
> +  reset-gpios: Reset GPIO pin, usually GPIO_ACTIVE_LOW.
> +
> +  port: Required on platforms using MDSS DSI (Qualcomm).

None of above look like anything else in the bindings. Obviously also
never tested. Please don't write code which is completely different than
everything else.

Best regards,
Krzysztof


