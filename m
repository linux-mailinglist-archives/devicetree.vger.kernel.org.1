Return-Path: <devicetree+bounces-245090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CA9CAC21D
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 07:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACF89301C3DB
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 06:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C5427FB2A;
	Mon,  8 Dec 2025 06:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfWg/N1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050FA26D4F9;
	Mon,  8 Dec 2025 06:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765174840; cv=none; b=rC98/t+b8nvTeqY9MaE/ef54k7hxRZ+tnHKLpw569G89/p9bPHmPg/VSlYLdeXLlDa/uilcHk1i701S6nsvi4Y50hvyuos2LDk/0SDgks+z144tQN9/BYlMcchPc2PTFnvu49QXBHD20WECt99nweZ45cEvdx/Joggtb2Fyks64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765174840; c=relaxed/simple;
	bh=0trr4fT0A9nv1xciS3rk7DorKigTqK8XKKQd50Ytthk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rp3L8nV0hSxB91ARchykuiJWU9kV5xSRUAjzbcxl7pDKtamvnG+11rGXlA7AGMKHGNv+xE9YgqTdHoSPbgXjMqE6Fd/oMlzqUn08LtVj/2OZ+61nhCfoqogSCfjAN7/ca3eObAGGwqxYPIjpvJN2QV8vMH7KIpCTC2RxEBpljMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfWg/N1Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2929C113D0;
	Mon,  8 Dec 2025 06:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765174839;
	bh=0trr4fT0A9nv1xciS3rk7DorKigTqK8XKKQd50Ytthk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CfWg/N1Y+6df6xs9dof4BphrbSTU2er1yXtmHwCbTqFATECrACRgTVrzhSCa8l/FI
	 aRANhztCBmov36/Df6V+9aGm5VuBslrxy73g2F3bxZ3c/1rOL8kKhohXLPM77lpQze
	 qBGcH0YeK1S4F/dOkMtx/Clm86bfROpaZUQ3QfiCELi3/oK1b+GWug00vyGjZDCy6M
	 z5iT34PaLxAUiiy8/FEHFHdUOA2SYpSc4bH2GfTFgRiHxELTSR7jsC6G9tlD9VSEIs
	 degK30MlhEWdFsj2M0aINBRXvHzVJ7WCJO2SEPK4g9ektqx/xZQZhNg6EJT81KAFV5
	 8d8dv7b+Crcqg==
Date: Mon, 8 Dec 2025 07:20:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anshul Dalal <anshuld@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v4] dt-bindings: arm: keystone: add boot_* mboxes to
 ti,sci
Message-ID: <20251208-abiding-hedgehog-of-lightning-2fe7a2@quoll>
References: <20251205-k3_syscon_add_boot_mailboxes-v4-1-8e216fb88941@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251205-k3_syscon_add_boot_mailboxes-v4-1-8e216fb88941@ti.com>

On Fri, Dec 05, 2025 at 11:45:43AM +0530, Anshul Dalal wrote:
> The bootloader on K3 devices makes use of mailboxes as per the ROM spec
> which might be different than one's available to the kernel (firmware
> spec).
> 
> Therefore, this patch adds the missing mailbox entries to the DT binding
> if the matching compatible is ti,am654-sci to represent the mailboxes
> exposed by the hardware during boot for the purpose of loading the
> firmware.
> 
> Signed-off-by: Anshul Dalal <anshuld@ti.com>
> ---
> Changes in v4:
> - Make new boot_* mboxes conditional on ti,am654-sci compatible
> - Link to v3: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v3-1-66155a4236dc@ti.com
> 
> Changes in v3:
> - Drop [1/2] of the last patch series
> - Update existing example with boot_* mailboxes instead of adding a new one
> - Link to v2: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v2-0-aebc1e47b391@ti.com
> 
> Changes in v2:
> - Remove maxItems entry
> - Remove RFC tag from patch (added by mistake in v1)
> - Document the new mailboxes in mboxes instead of mbox-names
> - Provide example with all the mailboxes set
> - Update commit title to have "ti,sci"
> - Split into two patches
> - Link to v1: https://lore.kernel.org/r/20251111-k3_syscon_add_boot_mailboxes-v1-1-529a27f21076@ti.com
> ---
>  .../devicetree/bindings/arm/keystone/ti,sci.yaml   | 50 +++++++++++++++++++---
>  1 file changed, 43 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> index 25a2b42105e5..d9eb2a81e539 100644
> --- a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> +++ b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> @@ -51,15 +51,15 @@ properties:
>      minItems: 1
>  
>    mbox-names:
> +    minItems: 2
> +    maxItems: 6
>      description: |
>        Specifies the mailboxes used to communicate with TI-SCI Controller
>        made available from TI-SCI controller.
> -    items:
> -      - const: rx
> -      - const: tx
>  
>    mboxes:
>      minItems: 2
> +    maxItems: 6
>  
>    ti,host-id:
>      $ref: /schemas/types.yaml#/definitions/uint32
> @@ -79,6 +79,42 @@ properties:
>      type: object
>      $ref: /schemas/reset/ti,sci-reset.yaml#
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: ti,am654-sci
> +then:
> +  properties:
> +    mbox-names:
> +      minItems: 2

Why is this list flexible?

> +      items:
> +        - const: rx
> +        - const: tx
> +        - const: notify
> +        - const: boot_rx
> +        - const: boot_tx
> +        - const: boot_notify

So this list goes to top-level with minItems.

> +    mboxes:
> +      minItems: 2
> +      items:
> +        - description: RX thread
> +        - description: TX thread
> +        - description: Notify thread
> +        - description: boot stage RX thread
> +        - description: boot stage TX thread
> +        - description: boot stage Notify thread

This as well

> +else:

Best regards,
Krzysztof


