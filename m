Return-Path: <devicetree+bounces-248449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDEBCD2C27
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 10:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B7BB3011ED6
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 09:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FDF62FFFA4;
	Sat, 20 Dec 2025 09:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFgdUTpu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A8E2FFF8C;
	Sat, 20 Dec 2025 09:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766222669; cv=none; b=oAJ3XkaiJYKvx8TcLDpUgM9f2fIjsmco41JlsdMi+UhOzqkG86wR11WJDj6ImO9NYmuN3KxWKoTV7NkV7WwO6VaXiAtvxmfw8+Cmgcqok8+DyM6Xr+lDeTdXeKTsGy1cc6hgGuSF059Gt6Qs/wpvNtZHob7DBGZqIJF4WCr/oBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766222669; c=relaxed/simple;
	bh=+SYOEY4doXoTcP1sZABBrsn9tK6Yc10N1KXsy6pWeLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NoFwhpQglPDAQfahM/LdGQeFNoR6kdTQaS6yQtqYIbPi5hk6HOFxr7y/OGfMkJOg9rt6NEEFZ0qvuDHqlr0dMABkh+EUpilhj9AG9oEwgA43Bus76MUHK3wRmFtbdPzvHK3Y9oehOwar+gzgv6EEN97NhBTAyZ/vEZG0a259kMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFgdUTpu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEDBBC4CEF5;
	Sat, 20 Dec 2025 09:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766222668;
	bh=+SYOEY4doXoTcP1sZABBrsn9tK6Yc10N1KXsy6pWeLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gFgdUTpup85d/THNUSOu2vCq7Jfk3+Ljhla+9CgWbbevIX0d7x5vt3iE/ovAx0Zje
	 bEppoNV50DuagnfbJv41kDUWCa/Z249FxAUintYHqGwlr604l5gM2rn2ZLnaGkAvNa
	 Yccl7uzisLtjJzvNMuj8EHpd48h/Ve6w6jdyBeFgd48xbsbyXwOHCZ86D2HNUPOpVo
	 3sbU+mFClJB8k4ATqiiRlmCqIsKzwKs9Ry8sYWtynNzv4gofJzi2oRlfKY+jnrgjdX
	 0YiOvsF4h9PzP8/0iQnfh9IvUv2iRUWIMShQzX06/pO2rTP+cUMTAjQj4woftNfGzx
	 Yywp5RiHWF4Rw==
Date: Sat, 20 Dec 2025 10:24:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mux: adg2404: add support
Message-ID: <20251220-glorious-guan-of-purring-9a9fcb@quoll>
References: <20251219143244.21674-1-antoniu.miclaus@analog.com>
 <20251219143244.21674-2-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251219143244.21674-2-antoniu.miclaus@analog.com>

On Fri, Dec 19, 2025 at 04:31:44PM +0200, Antoniu Miclaus wrote:
> Add dt bindings for adg2404.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  .../devicetree/bindings/mux/adi,adg2404.yaml  | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mux/adi,adg2404.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mux/adi,adg2404.yaml b/Documentation/devicetree/bindings/mux/adi,adg2404.yaml
> new file mode 100644
> index 000000000000..f28e66f7a250
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mux/adi,adg2404.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mux/adi,adg2404.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADG2404 4:1 multiplexer
> +
> +maintainers:
> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +  Bindings for Analog Devices ADG2404 4:1 single-ended analog multiplexer
> +
> +  The multiplexer state corresponds to the selected input channel:
> +  * 0: Channel S1 selected
> +  * 1: Channel S2 selected
> +  * 2: Channel S3 selected
> +  * 3: Channel S4 selected
> +
> +allOf:
> +  - $ref: mux-controller.yaml#

Same comments as for your other patch.


Best regards,
Krzysztof


