Return-Path: <devicetree+bounces-156058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED37A59038
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:49:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50B573A31CD
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 09:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF7F3224B01;
	Mon, 10 Mar 2025 09:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip58Zrlp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB95A17A2E7
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 09:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741600188; cv=none; b=ekszKv8PjhjbaIdv28G/nQkDNAA87ebRao0Wx07RB+CEAP5C5H4/R8cdWujjdVAwio6SiDe1UkY9Krx8rHJMZlXdj08tgMLE56duJvuj492PJ83aFJuFiK7qeCTNA3dL8nnE9KLJMHnF1IkJs5adBqSE7cmvP1+uclFVgt3JYp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741600188; c=relaxed/simple;
	bh=U0fqyLzoEiBduTFUD3IxVvg2fyHscMYPNzGm4QJC+TI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RxiEh8cCIBntsLUxK/SyLyX0cuSqo0y6qjrbo8iW4y2a8ST1oacceTvSX4AeCJw66meGpQxx9zJs7WrCpJRChi1OtSNvEdJN0rZFDWVjbO4FmAmz30PiFqy0Ck5TYCMlVoRSTRIRQWknXDHJuM4/SaDiAk34nRXDmvnECfVLkSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip58Zrlp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D66AC4CEE5;
	Mon, 10 Mar 2025 09:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741600188;
	bh=U0fqyLzoEiBduTFUD3IxVvg2fyHscMYPNzGm4QJC+TI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ip58ZrlpbOZAS3K9qIphNCNejE3AS7p/0sOmuG7Yg4Sy8fe+/Mr+QLN8GwrJIMmmL
	 0wADap2iRzNQVuPZnA9Hp1iHKTNbuGgqZsvBiJAzRyrSbpHbfECd6v2xAIAvzlKldb
	 sKFdJPPC5pcpGZQuTpU6eQEP0N+B1yYeurGfhbskO5dydFxihYIq3bMOaCghf18U9j
	 /AYqU3jNerLK7kl5Wh0n+WXemSYrUV0H6+XPYKFnVToG8X15zIVJN9w1u/R3nP+Ge1
	 Y1puqO2yaS16RbsQT+cTiYVQbte8tWO4Ox3hz0WuJUXkNR1OTqXpSP3ZFupsxekNtD
	 Z1YVePeRLNu+w==
Date: Mon, 10 Mar 2025 10:49:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
	Jose Maria Casanova Crespo <jmcasanova@igalia.com>, Phil Elwell <phil@raspberrypi.com>, 
	dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Nicolas Saenz Julienne <nsaenz@kernel.org>, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/6] dt-bindings: gpu: v3d: Add SMS to the registers'
 list
Message-ID: <20250310-calculating-flat-cuttlefish-4c9fc2@krzk-bin>
References: <20250308-v3d-gpu-reset-fixes-v2-0-2939c30f0cc4@igalia.com>
 <20250308-v3d-gpu-reset-fixes-v2-4-2939c30f0cc4@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250308-v3d-gpu-reset-fixes-v2-4-2939c30f0cc4@igalia.com>

On Sat, Mar 08, 2025 at 11:33:43AM -0300, Ma=C3=ADra Canal wrote:
> V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a

Where is the comaptible for this new block? Or was it already documented
but with missing register?

> V3D 7.1 core, add a new register item to the list. Similar to the GCA
> and bridge register, SMS is optional and should only be added for V3D
> 7.1 variants.
>=20
> In order to enforce per-SoC register rules, add per-compatible
> restrictions. The restrictions will assure that GCA will only be added
> in BCM7268 (V3D 3.3) and SMS will only be added in BCM2712 (V3D 7.1).
>=20
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Nicolas Saenz Julienne <nsaenz@kernel.org>
> Cc: devicetree@vger.kernel.org

Please drop the autogenerated scripts/get_maintainer.pl CC-entries from
commit msg. There is no single need to store automated output of
get_maintainers.pl in the git log. It can be easily re-created at any
given time, thus its presence in the git history is redundant and
obfuscates the log.

If you need it for your own patch management purposes, keep it under the
--- separator.

> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> ---
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 60 ++++++++++++++++=
++++--
>  1 file changed, 55 insertions(+), 5 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Do=
cumentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..c0caee055e8c18dbcac0e51aa=
192951996545695 100644
> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> @@ -27,15 +27,12 @@ properties:
>        - description: core0 register (required)
>        - description: GCA cache controller register (if GCA controller pr=
esent)
>        - description: bridge register (if no external reset controller)
> +      - description: SMS register (if SMS controller present)

This lists five items, but you say you have max 4?

>      minItems: 2
> =20
>    reg-names:
> -    items:
> -      - const: hub
> -      - const: core0
> -      - enum: [ bridge, gca ]
> -      - enum: [ bridge, gca ]
>      minItems: 2
> +    maxItems: 4

So here 4, but earlier 5? These must come in sync.

> =20
>    interrupts:
>      items:
> @@ -60,6 +57,59 @@ required:
> =20
>  additionalProperties: false
> =20
> +allOf:

This goes above additionalProperties.

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - brcm,2711-v3d
> +              - brcm,7278-v3d
> +    then:
> +      properties:
> +        reg:
> +          minItems: 2
> +          maxItems: 3
> +        reg-names:
> +          items:
> +            - const: hub
> +            - const: core0
> +            - const: bridge

Again un-synced lists.

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,2712-v3d
> +    then:
> +      properties:
> +        reg:
> +          minItems: 3
> +          maxItems: 4
> +        reg-names:
> +          items:
> +            - const: hub
> +            - const: core0
> +            - enum: [ bridge, sms ]
> +            - enum: [ bridge, sms ]
> +          minItems: 3

Why is this flexible?

Best regards,
Krzysztof


