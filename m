Return-Path: <devicetree+bounces-162493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 018F6A78967
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 10:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2CA83B0B4D
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 08:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C40421ABC3;
	Wed,  2 Apr 2025 08:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9NWRA6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F391F1507
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 08:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743580854; cv=none; b=hSdWpQkNs7loQCpgn2JTfAfwRh9dVe18QTGjNc6vTTvhLP95h9iyFwhvQmHvC5QpdoBjK8Lmd7piW6eug0doIQrRzr8SplHFB18JfBz6lxcqZXSy/LcwzZwepIgKmcTnrGZlibnGerDsbIcSOTTqI1Sjfh5yqTXc1Hv06NB+/Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743580854; c=relaxed/simple;
	bh=lK4gVLi61oFm0LfV8A1u08bUdk3LlugSuZjn+dMmtP0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZZrkT2H7c1E8Ti25H/euWxEGAbm7kxXthcl73i43/AltTDbpnnC83OM3UaOuAYYKQYfZzAmYcAK2Ul7HxjveAvruaeMm5T1XMt8r+z3YXfd0LCk4ncydZdVaNet/c+RYWy1Sz2BFTgewgkOy/MEz95vnMh2KICUtvrRAWuAGUPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9NWRA6Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE45FC4CEDD;
	Wed,  2 Apr 2025 08:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743580853;
	bh=lK4gVLi61oFm0LfV8A1u08bUdk3LlugSuZjn+dMmtP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u9NWRA6YFufa0TAjI/fbbYJXG+6QWPyzpAzkZRFVeh5qWOLHpkbwKb0GVzCs5uquQ
	 CqjgWhkvHT6Cs0Fpu3pSvoHyNrV5adYf5AL2qb/1qHomJDB9JADWKVnV0kon4bB3eQ
	 Ci5qZy3N7B/d2MKFghh4QSgfQas3Pfvts6AQvwfRTSJfPtNgkECWeDERpEaYlydP5I
	 ba7fKzxn9p2ikD/CEhXDGyvqLA4wKLnNob8faMErcEIMhPhDPJG7NsWZoHVyA+74wk
	 P4tYlv/ZzTya3n/ttssjBCDjo0nEo768zDmT2/D+GQdMqDPgl8LLWxUMmnVAPGQmqu
	 9Y2ISgGkhHpRQ==
Date: Wed, 2 Apr 2025 10:00:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Justin Chen <justin.chen@broadcom.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, rafal@milecki.pl, alcooperx@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support
 for bcm74110
Message-ID: <20250402-clever-judicious-bull-7e7caf@krzk-bin>
References: <20250401210736.2613748-1-justin.chen@broadcom.com>
 <20250401210736.2613748-2-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250401210736.2613748-2-justin.chen@broadcom.com>

On Tue, Apr 01, 2025 at 02:07:35PM -0700, Justin Chen wrote:
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> ---
> v2:
> 	Sorted compat string odering
> 	Add new compat string to constraints
> 
>  .../devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml      | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> index 580fbe37b37f..28906bb664f4 100644
> --- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> @@ -15,9 +15,10 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> -      - brcm,bcm4908-usb-phy
> +      - brcm,bcm74110-usb-phy
>        - brcm,bcm7211-usb-phy

Does not look sorted.

>        - brcm,bcm7216-usb-phy
> +      - brcm,bcm4908-usb-phy

The list was sorted before but now it is not.

>        - brcm,brcmstb-usb-phy
>  
>    reg:
> @@ -139,7 +140,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: brcm,bcm7216-usb-phy
> +            enum:
> +              - brcm,bcm74110-usb-phy
> +              - brcm,bcm7216-usb-phy

Keep the sorting, don't add items in random spots.

Best regards,
Krzysztof


