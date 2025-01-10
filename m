Return-Path: <devicetree+bounces-137559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B36F5A09719
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE0DB164E5E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E5E213227;
	Fri, 10 Jan 2025 16:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Amj4PXR+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862C4213221;
	Fri, 10 Jan 2025 16:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736526044; cv=none; b=k5EBUZGUQRTjXFoMuEM4GiISbGKE2JBqZQyhhwn1dz9mSzeUzgzRmgbjeWfL1gcMJ5kv0pMe0DwM361cv0evOPkfnJdaiOY4wHS1slDGl0BXhWLNo/5bhnznGDJfCLSUBt3yCqptIkteBquOL56PESmSL6IObx4XMG24DVizTas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736526044; c=relaxed/simple;
	bh=LKUhCQ7uyIY0f8gN/kHHYG4fgpltHjGFFaHE0gi9P0o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RM1kUSiA+1dmDaHGi506XPjlFhRDtiCzkMYUY1l9YQG6bVmvC7aleJ1+hD/yH7s2U3EF7Nk+fN58PzKXXTw0x/4dYOb4UxdW32hKCprkakCt7mDj7uclYqJ3Xi2B2K0T5ZGg+dCBHBflPvV4in2C030J620QrGFYIkrifgBJtj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Amj4PXR+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12DF0C4CEE0;
	Fri, 10 Jan 2025 16:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736526044;
	bh=LKUhCQ7uyIY0f8gN/kHHYG4fgpltHjGFFaHE0gi9P0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Amj4PXR+Oo8fuqto2o2c80PYRQvozGzpuAFQotAwA1QrCb/e+A+N6Euac5bxNS5zg
	 q4WWu1SXOKkoPoKcjsYSzpKvx8s7R1atU7K7OEY9K9vwntUGC/ZMJfln51z/h2Sxs1
	 n/OYyiFVu10izUUAvk2qa53ar8IXS3xKeInsoh6m8djEgvk3lNo6VuSfbkKSZOOYd6
	 4iZojg8XZV5VlD845iGwtW25hJZp4ekZu2AqMVHaJK0Et4qq0NbCCjPwjjRG/ehZSf
	 pLaYdNE4d/6VitCNYD1pDXHJbgj+cuRHrOHSZZndnx1TU1YymwFaGBppdulqMv5uZa
	 DShP9YlYILJRg==
Date: Fri, 10 Jan 2025 10:20:43 -0600
From: Rob Herring <robh@kernel.org>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Cc: Anup Patel <anup@brainfault.org>, Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: interrupt-controller: add
 risc-v,aplic hart indexes
Message-ID: <20250110162043.GA2975507-robh@kernel.org>
References: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
 <20250109113814.3254448-2-vladimir.kondratiev@mobileye.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109113814.3254448-2-vladimir.kondratiev@mobileye.com>

On Thu, Jan 09, 2025 at 01:38:13PM +0200, Vladimir Kondratiev wrote:
> Document optional property "riscv,hart-indexes"
> 
> Signed-off-by: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> ---
>  .../bindings/interrupt-controller/riscv,aplic.yaml        | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
> index 190a6499c932..bef00521d5da 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
> @@ -91,6 +91,14 @@ properties:
>        Firmware must configure interrupt delegation registers based on
>        interrupt delegation list.
>  
> +  riscv,hart-indexes:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 16384
> +    description:
> +      A list of hart indexes that APLIC should use to address each hart
> +      that is mentioned in the "interrupts-extended"

Wouldn't using the 'cpus' property linking to each cpu/hart node work?

Rob

