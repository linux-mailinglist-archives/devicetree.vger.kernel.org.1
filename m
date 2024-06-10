Return-Path: <devicetree+bounces-74322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C682C902B62
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 00:09:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3E831C21E61
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 22:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0549F14EC41;
	Mon, 10 Jun 2024 22:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXcDSepV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B8A14B963
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 22:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718057350; cv=none; b=ch/ssNNzhnHImGxmSoTWapMN6Ei6+4BvgcMHwA8/fdAPjyFZ5/H0XVYha5PWgLwwIw/nf8WCdZQ6Y9c2SY1bVzEn3YhxoyYl8M4CXvLTJ2G3t7KVCRt1JbOJrAXO734p9XlynF6WtiBaD09cV1xEuK4q96QJc1NO+pxsNWnvqTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718057350; c=relaxed/simple;
	bh=Yzsgn2Ian0INJdPXwI7k53c47LSDS6kp4v1j3BFH0K8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AdK+U+PHwSqoJfT86O3dDS0CYK5RjlhiIooyQcHMyVxyK6dg0iC/8LENAfwaCylvUyQVi4BAci/05BC8ug9PSHDw7PG6cAioN9tNIi5h3C1Kh5TeLi4udp2i68Zy27l/NKV1ogXYYxMEWMvdHtgINWkLBCTpXj6OLt9zLZd01RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXcDSepV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44B01C2BBFC;
	Mon, 10 Jun 2024 22:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718057350;
	bh=Yzsgn2Ian0INJdPXwI7k53c47LSDS6kp4v1j3BFH0K8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KXcDSepVx/ociyQ9ejFjcZdvG7+AZaKsFDk6mjMKQ/4naO9KzDviXMe6FVwkSnhqe
	 E5zSJ+0SFYLfV0A2nGQrSUWLzG+T5ShhKJZLVamk4UyfJYnMvQWSgsIgOUmB5PQnf8
	 Yr4aNyjmZT0Azvqv0nqsvhB/rsZefbrXIBL9NUVMdD5HZAPZDwRGoPod0YDRA2w9IX
	 8SWlnSxchW+BBQN/0WVJgL4+qNw+FpEguhgcf+UWhRjU9NV0wwj9K3r1Wk9h/BkO9i
	 SNDawBXoXWs+JRvDC+QmUieeTKJfdQN1DrpLYN8xBcYO5OpIpJ7DKXdGZUbY0Ssai6
	 THCNipAcPjWUA==
Date: Mon, 10 Jun 2024 16:09:09 -0600
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org, Maxim Kochetkov <fido_max@inbox.ru>
Subject: Re: [PATCH 1/5] ASoC: audio-graph-port: add link-trigger-order
Message-ID: <20240610220909.GA3150939-robh@kernel.org>
References: <87v82ls82e.wl-kuninori.morimoto.gx@renesas.com>
 <87tti5s81m.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tti5s81m.wl-kuninori.morimoto.gx@renesas.com>

On Fri, Jun 07, 2024 at 04:15:01AM +0000, Kuninori Morimoto wrote:
> Some Sound Card might need special trigger ordering which is based on
> CPU/Codec connection. It is already supported on ASoC, but Simple Audio
> Card / Audio Graph Card still not support it. Let's support it.

I have no idea what trigger order means reading this patch.

> 
> Cc: Maxim Kochetkov <fido_max@inbox.ru>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml      | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 28b27e7e45de6..d1cbfc5edd3ac 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -25,6 +25,15 @@ definitions:
>        capture-only:
>          description: port connection used only for capture
>          $ref: /schemas/types.yaml#/definitions/flag
> +      link-trigger-order:
> +        description: trigger order for both start/stop
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +      link-trigger-order-start:
> +        description: trigger order for start
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +      link-trigger-order-stop:
> +        description: trigger order for stop
> +        $ref: /schemas/types.yaml#/definitions/uint32-array

constraints?

These are just definitions. Where are the properties defined?

>  
>    endpoint-base:
>      allOf:
> -- 
> 2.43.0
> 

