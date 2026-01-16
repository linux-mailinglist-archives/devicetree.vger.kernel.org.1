Return-Path: <devicetree+bounces-255912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C11A3D2E0AD
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 47DCF300A512
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65753043D5;
	Fri, 16 Jan 2026 08:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaFGD0kB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817DC3043CE;
	Fri, 16 Jan 2026 08:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768552259; cv=none; b=IctoWpWffpC9XRXbIl1vWE0MtPwCHgEJ9nllF3kZNZmYGn/tYnn3xK+tuWor7EYEHP09bd1ucfV2eRJbcQ9ahgae0k1BE2iMe8Zx1slyQecjyJgXur0LUUbtfRQCgoVCMmQivimlLaOpntHdNLhplj11ssLLl4CBftHgQCPF01E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768552259; c=relaxed/simple;
	bh=X0gzYoqondt6R+NLPpdfaJCRlhNKWCWO2E0CkC6XoQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jr8YakzZzqRYHqjdwOhrZZcK+Wa20zUFSv3CwqQX+h708Evsig4ZreibMheUbpMWDINsoCwR8JYbGVlUH5CVZK3CrBbqyG27Q2+1mne9jbfZZeQK6iZgzcNCxn4dkgQ+pFFr3mtzsZrtrUkX7sWIQu2LUcnJgGtCswEtT5/thbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaFGD0kB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD003C116C6;
	Fri, 16 Jan 2026 08:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768552259;
	bh=X0gzYoqondt6R+NLPpdfaJCRlhNKWCWO2E0CkC6XoQI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MaFGD0kBzlxtn8DsxwQT+F/wAXn/NzqyzkgBuyJAw/LA21YiJg2axkKWu/AGgJnWu
	 a0PkDP6OXMI0DarL7jEp9f5s/bvQzjJnuh6KPyaTWZJ2njNywo19GtRGQ7VeGAkiy0
	 aMGbOreEwRQ/fb62GaDaHZZC4ZH2+ABKkvoqijmDIBW6XKGmY23HuNX3U4X5RiGloh
	 Mx8g8tPeyEV5YkVPTZrlhqW4GZEvwO5vuTr1POWPHDy6WgAThOsCXoNEhOFnJJVUyI
	 TFN/B1NtRnyzKg4i1DVLiHOd5wdQGg85vLo08Z+MnUn9V0Z9u5CYXN9iOwhuntRKmC
	 TMoq6lnAuApoA==
Date: Fri, 16 Jan 2026 09:30:56 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mux: gpio-mux: add enable-gpios
 support
Message-ID: <20260116-tiny-awesome-numbat-cabc97@quoll>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260115121943.23715-2-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260115121943.23715-2-antoniu.miclaus@analog.com>

On Thu, Jan 15, 2026 at 02:18:19PM +0200, Antoniu Miclaus wrote:
> Add support for an optional enable GPIO that allows the multiplexer
> to be disabled.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v3:
>  * new patch - extend gpio-mux instead of standalone driver approach
> ---
>  Documentation/devicetree/bindings/mux/gpio-mux.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> index ef7e33ec85d4..199792d42323 100644
> --- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> +++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> @@ -25,6 +25,13 @@ properties:
>      description:
>        List of gpios used to control the multiplexer, least significant bit first.
>  
> +  enable-gpios:
> +    description:
> +      Optional GPIO to enable the multiplexer. When present, the mux will be
> +      disabled before changing address lines and re-enabled after to prevent
> +      glitches. Required for MUX_IDLE_DISCONNECT idle-state.

Where is any DTS user of such gpio-mux with enable-gpios?

Best regards,
Krzysztof


