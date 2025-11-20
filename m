Return-Path: <devicetree+bounces-240544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1A8C72AA6
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 55E9B4E95BF
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 07:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA9592EA15C;
	Thu, 20 Nov 2025 07:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqkp1Z+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06A538F9C;
	Thu, 20 Nov 2025 07:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763625150; cv=none; b=gcsWABIHRrxwmSlap/gXha7RZYQErraFDEfspElZjfJiuosrvxNBYgR6XIAGHRDi+qRtLc69EQmkYR27rTmi/yc6ExsDyi3ocGrBQN4k8qmnz+ncDooxqbNqPu/m2zAggxynKOVzqsmXzKNiiEmj87nJPMCjVVX0b5Fz5J2WXxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763625150; c=relaxed/simple;
	bh=pp726DJjAv+M6jAyu3+8Upcz4DdN6SEyBHVxPdp8C38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KdhSgfJREUmeYwYHTed7sZJjFZ38J3nrcM9oIqyK0hpEHP5tXshFA93KmhDiHzrFYDV2tFRPa0Adn4QVFgRwTmmTETUOQzrn/mDzbRuMJTwvAWzLhqxuefe2P59wFsrmhvevRLugQBkC6qdwjfEyrNAAvvvhYbtaSyFdiP6LP/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqkp1Z+Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0073C4CEF1;
	Thu, 20 Nov 2025 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763625150;
	bh=pp726DJjAv+M6jAyu3+8Upcz4DdN6SEyBHVxPdp8C38=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aqkp1Z+Q2ELb8U2CTh/SzbdEIHB2yubh3RIWkDVPl420lSmB4dbt4Qm2GmZc1lqaF
	 /6kNsgp9KDKp8s7plxEjIRI6dRw1dH4Xku6uXh8GVb5bz737mqE5UsBEC0GtXy4diy
	 /aFtzYwl5PLUmovvbmjYlizGqI5Ms10XvnRqtf5ak9wtZMMFVqoHxBaH7/OxiOkGQV
	 MATv9iEO3D8Qa7drC2rbuZX+hQWGt32jOExGwd9eslkxSpqw8LlpzD153VS/wKN9UI
	 K7+G9jGkzc0YiP87CX1lG2gyY8IDv7DTL+0THh4ytLvPnq/7asGKlKGehV2xQwXZRr
	 LPGyCmT+0cXJQ==
Date: Thu, 20 Nov 2025 08:52:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hao-Wen Ting <haowen.ting@realtek.com>
Cc: daniel.lezcano@linaro.org, tglx@linutronix.de, jinn.cheng@realtek.com, 
	edwardwu@realtek.com, phelic@realtek.com, shawn.huang724@realtek.com, 
	cy.huang@realtek.com, james.tai@realtek.com, cylee12@realtek.com, phinex@realtek.com, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stanley_chang@realtek.com
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: Add Realtek SYSTIMER
Message-ID: <20251120-futuristic-caracara-of-honor-888df4@kuoka>
References: <20251120063010.830805-1-haowen.ting@realtek.com>
 <20251120063010.830805-2-haowen.ting@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251120063010.830805-2-haowen.ting@realtek.com>

On Thu, Nov 20, 2025 at 02:30:09PM +0800, Hao-Wen Ting wrote:
> The Realtek SYSTIMER (System Timer) is a 64-bit global hardware counter
> operating at a fixed 1MHz frequency. Thanks to its compare match
> interrupt capability, the timer natively supports oneshot mode for tick
> broadcast functionality.
> 
> Signed-off-by: Hao-Wen Ting <haowen.ting@realtek.com>
> ---
>  .../timer/realtek,rtd1625-systimer.yaml       | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml b/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
> new file mode 100644
> index 000000000000..0b8fad37edb4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/realtek,rtd1625-systimer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek System Timer
> +
> +maintainers:
> +  - Hao-Wen Ting <haowen.ting@realtek.com>
> +
> +description: |

Drop |. Do not need '|' unless you need to preserve formatting.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


