Return-Path: <devicetree+bounces-255917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3C9D2E1E9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 563E3302176C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B575D3054EE;
	Fri, 16 Jan 2026 08:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDe8lw7x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922C727979A;
	Fri, 16 Jan 2026 08:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768552659; cv=none; b=LR0qY8FHDe0MrvlHRvvrE9BZTkInSa3RfSV2XVrCnh/7xAN7o8m5L1kQpPPiBhFiwH6fRg0GaaBX2uMWGo2Og9iB2MRFE92+3aZKbu6oEo8qydtpeRNwbUrlZiaW4hZS33t0PJ4KH+u3x6WoZa7Jr32y69XsX2fOGUz4L8BTsDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768552659; c=relaxed/simple;
	bh=US3BgrIa26QUO3bWsP4HbU8BIoRnp1hx4X55QEd7/Nc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ezmwHpvpPqf7GWJ6Um52x9xx7KPdEfJ88OTFna7OF+DgDw6Vd2KDOAp3da+jXP4rFEZDk+P617CVUldu3CuQrqyrbCEv1Qz23tk/8IaB3YWbBT8Pzs+svK+AusE67LtD7qN8AbKsolw1N4dMUi3UlOFBskByj0jYvmPcPLvwfmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDe8lw7x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B319FC116C6;
	Fri, 16 Jan 2026 08:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768552659;
	bh=US3BgrIa26QUO3bWsP4HbU8BIoRnp1hx4X55QEd7/Nc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HDe8lw7xwUEw4SP9phE3or5Zz+qm17KkIvp8y+gINtQ+2YJYvHFoT7BvjOxuHGS0t
	 000JpOF2XyrdN9bLePxhvWI4F0Ol/EZuiCjD2FqFGIkI4ScmFJGl2A5NmTgm9mL1YJ
	 g7N6CqZF+oalWadVKSYO7VBEWtli3M8W+TEz7GiQK0yENzhRwDnRpv3vZPLF5m3pEz
	 0YVpKVRpPCYkD3d8FZ0nQbK746eCtCfdcyXm0jnAbkFZ9Xwn896dBqlDT775uYl0R2
	 HFrQAXIDJCwQzvNiLrRDNQrwvanmpvKhql6qA94uG2MY0otbUaAHNLOAtV1/ORPmKI
	 1dU6BFp640xIg==
Date: Fri, 16 Jan 2026 09:37:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and ADG2404
Message-ID: <20260116-jumping-premium-crow-693a1c@quoll>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260115121943.23715-1-antoniu.miclaus@analog.com>

On Thu, Jan 15, 2026 at 02:18:18PM +0200, Antoniu Miclaus wrote:
> This series extends the gpio-mux driver with optional enable GPIO support
> to prevent glitches during channel transitions, then adds support for the
> Analog Devices ADG2404 multiplexer as the first user of this feature.
>=20
> The enable GPIO allows the multiplexer to be disabled before changing
> address lines and re-enabled after, preventing brief activation of
> unintended channels during transitions. This is particularly important
> for precision analog applications.
>=20
> The ADG2404 is a 4:1 analog multiplexer with low 0.62=CE=A9 on-resistance
> that requires this enable GPIO functionality for glitch-free operation.
>=20
> Changes in v3:
>  * Extend gpio-mux driver instead of creating standalone adg2404 driver
>  * Make enable GPIO optional for backward compatibility
>  * Add MUX_IDLE_DISCONNECT support via enable GPIO

You are developing on some old kernel. You got stale Cc list of at least
three people! How could you for example get "johan+linaro@kernel.org" -
=66rom which maintainer entry - but that at least is not bouncing like two
others.

You must use get_maintainers, not custom templates with fixed outdated
addresses.

Best regards,
Krzysztof


