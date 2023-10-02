Return-Path: <devicetree+bounces-5168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA967B57F5
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:39:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 484941C208C5
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5B31CF85;
	Mon,  2 Oct 2023 16:39:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC31F1A732
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:39:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 748F8C433C8;
	Mon,  2 Oct 2023 16:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696264765;
	bh=1KljVs59GNs3YLWEBOpm0jXM1fwMAHbGPRDbcFPmKSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XfUo7ls3fLZWe3zMKg77o4avQtuPEoX3dM5jrhpngqo2nZ/PWfZbVq8OZP7xiEjGp
	 /Z3oHtLwFIuuUFC84PLZhzZTrEhVHMLzTMdvfNzHQly1RIrXSFLAI0s9CP9G0q5wqk
	 Jkh8V7JX6OZeIYxRxSBvLYEa0wjQpDFdTNr5CYGyDMAseWbmrM+W6dxYhNSLlnqb+w
	 3iU24Z6NoQ4c9pxzGwa/a3DY8inmS57TwhusZsQYPjeqe+xxIbFBgskvs2f9a8M91T
	 CWYX/W5PyPjkQHiDDHXW3D3Gxhsbh49ORC1eCHqb8o34jTzaBercl2JEQRNh+9d5io
	 CGRLxrY6/ANWA==
Received: (nullmailer pid 1910965 invoked by uid 1000);
	Mon, 02 Oct 2023 16:39:22 -0000
Date: Mon, 2 Oct 2023 11:39:22 -0500
From: Rob Herring <robh@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Sebastian Reichel <sre@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stefan Eichenberger <stefan.eichenberger@toradex.com>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v1 3/4] dt-bindings: power: reset: gpio-poweroff: Add
 priority property
Message-ID: <20231002163922.GA1905958-robh@kernel.org>
References: <20230928123204.20345-1-francesco@dolcini.it>
 <20230928123728.21901-1-francesco@dolcini.it>
 <20230928123728.21901-3-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928123728.21901-3-francesco@dolcini.it>

On Thu, Sep 28, 2023 at 02:37:27PM +0200, Francesco Dolcini wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> 
> Add the priority property to the gpio-poweroff bindings description.
> 
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
>  .../devicetree/bindings/power/reset/gpio-poweroff.yaml        | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml b/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
> index b54ec003a1e0..c6404841bcd7 100644
> --- a/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
> +++ b/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
> @@ -40,6 +40,10 @@ properties:
>      default: 100
>      description: Delay to wait after driving gpio inactive
>  
> +  priority:
> +    default: 0
> +    description: Priority of the power off handler
> +

You also need a $ref to restart-handler.yaml (at the top level).

>    timeout-ms:
>      default: 3000
>      description: Time to wait before assuming the power off sequence failed.
> -- 
> 2.25.1
> 

