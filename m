Return-Path: <devicetree+bounces-238734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE9BC5DBA0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 400BC35FF82
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07CA6320CA7;
	Fri, 14 Nov 2025 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR++bOIZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32052FE063;
	Fri, 14 Nov 2025 14:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131341; cv=none; b=jybAWurubzvweT372PuqCFa/SQIST6f4x6C2VnGbjtGsyxg4vvgQ+YLNQkw4Pxr5c7cabBAaQJgOQt15Ts2oEoxBuuvUHrzKatC2f//hzc6VFY09TBylfnfd3VIi9gfoIdLS8Nt9iJkw5nsAMpN7YHk60K+mQPZzS6kt/TsnTNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131341; c=relaxed/simple;
	bh=Eqd5M4a1F3laz6WTHD8KfZloiqBb+wWxkJsS97t3pZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gyi6Ejkbrrb+DvBKpMWOEADdMHrk/NicAtm/Lw9evBb6RGz6YONjM8QaCdf6tW1TzGYwUF2G5Qz3GJiw10UJyWxeExlqgK2L43zinoiU4ZRfA9IrdwAAiVYtpV3xqECpThHS0N2+AxGyqtocez7ZVj7gD4PrjCi68LK3vodX248=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR++bOIZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34648C4AF0B;
	Fri, 14 Nov 2025 14:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763131341;
	bh=Eqd5M4a1F3laz6WTHD8KfZloiqBb+wWxkJsS97t3pZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DR++bOIZadmwR52a18bsyVSgrlMdFFllhKI/4FGZ7/l4W4PzzbJNEt612RPNk7J1/
	 +FKrsA8jA2vBC8JlMYMeueMy6FjCh/UD+Q93jeuT/7dZwuy8gqJAqIqF/IYh5aw873
	 7iXrn/eXWRJHTE/0I4QbqsrmNnJ7ozidvCsSRrymngcJSOiSbgFLnGNRhSq/YMjawQ
	 WgYGBQxu2PxyH/1xcJePPaAYYKkPcJ8C/ME1sJI+5xN5MOL6T4evU1mG8ZhR5MlAck
	 0aG3DcYjasj/5Bn4sGlxTpBIz9YbM4TET9zH8GCN97ZzsOpkejMJVEvTEEJIGsaaz0
	 Q1c94AVz+tNqw==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vJv0F-000000008Bp-2diC;
	Fri, 14 Nov 2025 15:42:19 +0100
Date: Fri, 14 Nov 2025 15:42:19 +0100
From: Johan Hovold <johan@kernel.org>
To: alejandroe1@geotab.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: gnss: u-blox: add "safeboot-gpios"
 binding
Message-ID: <aRc_y_Sf8fhFm_K8@hovoldconsulting.com>
References: <20250911-ubx-safeboot-v3-0-32fe6b882a3c@geotab.com>
 <20250911-ubx-safeboot-v3-1-32fe6b882a3c@geotab.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-ubx-safeboot-v3-1-32fe6b882a3c@geotab.com>

On Thu, Sep 11, 2025 at 02:58:28PM +0200, Alejandro Enrique via B4 Relay wrote:
> From: Alejandro Enrique <alejandroe1@geotab.com>
> 
> U-Blox 8/M8/M9 chip have a pin to start it in safeboot mode, to be
> used to recover from situations where the flash content has become
> corrupted and needs to be restored. Introduce a binding to support
> this safeboot pin.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Alejandro Enrique <alejandroe1@geotab.com>
 
> +allOf:
> +  - $ref: gnss-common.yaml#
> +  - $ref: /schemas/serial/serial-peripheral-props.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: u-blox,neo-6m
> +    then:
> +      properties:
> +        safeboot-gpios: false
> +

I don't think it's worth adding conditionals like this for an optional
gpio as it just makes the binding harder to read for no good reason (cf.
a dt checker can't verify that you're not using the wrong host pin in
your identifier either).

So I used your v1 without this (and dropped Krzysztof's tag).

>  unevaluatedProperties: false
>  
>  examples:
> @@ -65,5 +76,6 @@ examples:
>              v-bckp-supply = <&gnss_v_bckp_reg>;
>              vcc-supply = <&gnss_vcc_reg>;
>              reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
> +            safeboot-gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
>          };
>      };

Johan

