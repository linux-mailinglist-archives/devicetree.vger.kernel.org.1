Return-Path: <devicetree+bounces-5250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEE07B5B29
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:23:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 370CF28286B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC331F931;
	Mon,  2 Oct 2023 19:23:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E83715BD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:23:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6961BC433C7;
	Mon,  2 Oct 2023 19:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274627;
	bh=ofpdpmQtMZ6ZQQu7vySCzJkB3i/t2T7OkqBMbhU8iEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YykjI2haE4KxzAMaSHcWZlZ/4L5AuU88QdPDlbMB0ZOImoTWHtgFKa/wdzZsjw4jt
	 PEHVr5C1tt8tBa0bquE3qTwaT4UxFsHhHgAbdLTaVIy9refhutrQ8riAqVzHE18h1G
	 zxLqQKiX9WkTYTK3TwNRjiNI59bujRNVv6Rs81doQftFy+zQXZc/yham4SwCvKFoMV
	 ZKjMbdzMzfycUu8+kKsKJL03U+jrB08cBHBPHUuhhTJsXxbKOSaaH5EtXRxdlpqdXJ
	 4uzur1TJMNf0DqpaflXxeaYxKGMHrGPHjdTPjIZ9yzPGVOKFWKFqSimWwD0cW81Vy/
	 szy1gj2rweqXw==
Received: (nullmailer pid 2383796 invoked by uid 1000);
	Mon, 02 Oct 2023 19:23:45 -0000
Date: Mon, 2 Oct 2023 14:23:45 -0500
From: Rob Herring <robh@kernel.org>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Vincent Huang <vincent.huang@tw.synaptics.com>, methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, "Jason A. Donenfeld" <Jason@zx2c4.com>, Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/7] dt-bindings: input: syna,rmi4: document
 syna,pdt-fallback-desc
Message-ID: <20231002192345.GA2380027-robh@kernel.org>
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
 <20230929-caleb-rmi4-quirks-v1-1-cc3c703f022d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929-caleb-rmi4-quirks-v1-1-cc3c703f022d@linaro.org>

On Sat, Sep 30, 2023 at 06:08:45PM +0100, Caleb Connolly wrote:
> This new property allows devices to specify some register values which
> are missing on units with third party replacement displays. These
> displays use unofficial touch ICs which only implement a subset of the
> RMI4 specification.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> To: "Jason A. Donenfeld" <Jason@zx2c4.com>
> To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> To: Rob Herring <robh+dt@kernel.org>
> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/input/syna,rmi4.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/syna,rmi4.yaml b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> index 4d4e1a8e36be..bd6beb67ac21 100644
> --- a/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> +++ b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> @@ -49,6 +49,16 @@ properties:
>      description:
>        Delay to wait after powering on the device.
>  
> +  syna,pdt-fallback-desc:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description:
> +      An array of pairs of function number and version. These are used

array of pairs is a matrix, not array. Or it is just 2 values? Needs 
some size constraints.


> +      on some devices with replacement displays that use unofficial touch
> +      controllers. These controllers do report the properties of their PDT

PDT?

> +      entries, but leave the function_number and function_version registers
> +      blank. These values should match exactly the 5th and 4th bytes of each
> +      PDT entry from the original display's touch controller.
> +
>    vdd-supply: true
>    vio-supply: true
>  
> 
> -- 
> 2.42.0
> 

