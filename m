Return-Path: <devicetree+bounces-137561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DBBA0972C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:23:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7644B3A41EB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4EA021324B;
	Fri, 10 Jan 2025 16:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pi5mNHVc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3E4213245;
	Fri, 10 Jan 2025 16:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736526156; cv=none; b=BWjJQ/+qEX3OQiHb63q5ykFPBzhC/Gr4R9M5rNkPN1snqN9YXY3fA6nJuCiGUmbs7RFhAej9hlHzxzYj7DEyPPyAINJGCSAXnlUhsta+lvRHbJyxRh9PfLnxfD2l3NJWPxhpjjrTGmO2cT7g2NT2GzcibWAgcl5n0Wm3cSKwxHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736526156; c=relaxed/simple;
	bh=B86HqiQXd7XamUOxa4NUPwgIW5QO9pZXuFkjKng8NEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f8HUkRj/yUIluWe270h4Kudrfp3lA9HiHEw/BlADCW+FuXxcSSOWqtmilHO6IBrGg8aNJuGnvLirvoZVcswRq6vfAevYGp6P+nLTISaN8H+BiTC6qageb+B62Q31n3HQqLRbO/rSJOSOf0l0D99DTaMApTPPo2Z9QmIusWdmvFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pi5mNHVc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BEE6C4CED6;
	Fri, 10 Jan 2025 16:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736526156;
	bh=B86HqiQXd7XamUOxa4NUPwgIW5QO9pZXuFkjKng8NEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pi5mNHVcrvS4+GtdQL0KBVXG/ypLuIjgxqZ7m3pui9XLZgorf0Lgy7AH2d5F+IubO
	 sQhjVHGtSOXKiRQNcfZShUCEjcfKEq2Gud4Ebt+ITnL7KMvoO6aH+eCB72xJFYLGgN
	 Nyq1u0SHrf6cQRul4TanE054AH1DpQNdVOf9IaM/WyhKQrVxgRsZdow9Iocanq3AZE
	 nJwK4qKsmFrs0rRhKn9RWzJflPWkYLng0jFoO6m1MJvjmMFyA3NBf7NeXjU5bgYmwH
	 V2QBNm1imwS95SPFLmFaqheSg05Hax3vHnzzwnjMv00zmkJ1L3nv/TMvZFRXVmRTbx
	 yQA89GDYJ/paA==
Date: Fri, 10 Jan 2025 10:22:35 -0600
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
Message-ID: <20250110162235.GB2975507-robh@kernel.org>
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

That is obvious reading the diff. Why do you need this?

Also, what happens when this property is not present?

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
> +
>  dependencies:
>    riscv,delegation: [ "riscv,children" ]
>  
> -- 
> 2.43.0
> 

