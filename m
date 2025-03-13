Return-Path: <devicetree+bounces-157290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 604EBA5F930
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 16:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D9711659E7
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5BA267F77;
	Thu, 13 Mar 2025 15:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCUGGLGN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C221F03F1
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 15:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741878204; cv=none; b=jT0/yy3AEeH/M72q17UkMj2rqIDuemr7w+3td3a8JhFez8i5Rd/Ku6iPq9E+7+FKGnMQYTZbGW8HCDj2tvtd0w9mkJGGT8Uuy9O5CZvnQ2H2UqtMDA8Ap/aT6/gS3/MVw9Pl9fxocTofehgqKIutXbozaWcEjm7tUOl2UuTPoME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741878204; c=relaxed/simple;
	bh=jAiX/IewbFJUMg6gicn9sFxcOpbi66wODHk9b2mdIJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DqAUfjAItVYQmss0jdbnvh2pl9UPzmmHxAKRALJfnYPvF4EySnKjpX2l5FDama4P8XIAlAs6NzqSiHn//e2DWRQbNCeQCgTUWTVOw85F5ZLMKAlRKExxQltpOhacekW3RT7xdaYiejRBxj1E3QSHsduFFB31R3Ervb9Hzs68QZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCUGGLGN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E95CBC4CEDD;
	Thu, 13 Mar 2025 15:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741878203;
	bh=jAiX/IewbFJUMg6gicn9sFxcOpbi66wODHk9b2mdIJQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VCUGGLGNq7wWlOZdzp567EAClSzkSTWzUoEaLsz/sSpWk2lehhcRTL/84VKiMaZ4b
	 PqIa2ZQ/s7MhZtVNjvlj/ARR1vFOluTCiuhdduqj/5k6YXnbpC/pj5JsOkk03aVe4+
	 UfKhD1VB8DJtvEKgg2ZXmzUmtZyFBHjjmfIj+5N2WIO00zwC4E0hNtbOObbZU/adM/
	 EvUcRPhu2YlDJ4iOwvtJUUeQcUB8gaUOnl2ju2y/d6wI1uHy5i3CsTbehT36iFkMGL
	 gIir+NZ/+pHJY5KFuq+bRf2xOIQhjoMH3A72blLEMXveh2QTTFIECRQDVEpZ4Ic5yt
	 O12GTT6Dl3uoQ==
Message-ID: <3fbaa5ed-e70f-4293-99d0-faf22f3c4adf@kernel.org>
Date: Thu, 13 Mar 2025 16:03:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] dt-bindings: gpu: v3d: Add per-compatible register
 restrictions
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com
References: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
 <20250313-v3d-gpu-reset-fixes-v4-4-c1e780d8e096@igalia.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20250313-v3d-gpu-reset-fixes-v4-4-c1e780d8e096@igalia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 13/03/2025 15:43, Maíra Canal wrote:
> In order to enforce per-SoC register rules, add per-compatible
> restrictions. V3D 3.3 (represented by brcm,7268-v3d) has a cache
> controller (GCA), which is not present in other V3D generations.
> Declaring these differences helps ensure the DTB accurately reflect
> the hardware design.
> 
> While not ideal, this commit keeps the register order flexible for
> brcm,7268-v3d with the goal to keep the ABI backwards compatible.
> 
> Signed-off-by: Maíra Canal <mcanal@igalia.com>
> ---
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 73 ++++++++++++++++++----
>  1 file changed, 61 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..9867b617c60c6fe34a0f88a3ee2f581a94b69a5c 100644
> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> @@ -22,20 +22,10 @@ properties:
>        - brcm,7278-v3d
>  
>    reg:
> -    items:
> -      - description: hub register (required)
> -      - description: core0 register (required)
> -      - description: GCA cache controller register (if GCA controller present)
> -      - description: bridge register (if no external reset controller)
> -    minItems: 2

Widest constraints always stay here, so you cannot remove minItems.

> +    maxItems: 4

>  
>    reg-names:
> -    items:
> -      - const: hub
> -      - const: core0
> -      - enum: [ bridge, gca ]
> -      - enum: [ bridge, gca ]
> -    minItems: 2

Same problem.

> +    maxItems: 4
>  
>    interrupts:
>      items:
> @@ -58,6 +48,65 @@ required:
>    - reg-names
>    - interrupts

...

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,7268-v3d
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: hub register
> +            - description: core0 register
> +            - description: GCA cache controller register
> +            - description: bridge register (if no external reset controller)
> +          minItems: 3
> +        reg-names:
> +          items:
> +            - const: hub
> +            - const: core0
> +            - enum: [ bridge, gca ]

So GCA is always there? Then this should be just 'gca'. Your list for
'reg' already says that third item must be GCA. I understand that you do
not want to affect the ABI, but it already kind of is with enforcing GCA
in 'reg'.

I anyway do not understand why 'gca' or 'bridge' are supposed to be
optional. Does the given SoC differ between boards? What is the external
reset controller here? External like outside of SoC?

Best regards,
Krzysztof

