Return-Path: <devicetree+bounces-144225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE55AA2D732
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 17:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 647B0165363
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 16:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E70C41F17EF;
	Sat,  8 Feb 2025 16:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRaqqr9F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53C31F17E5;
	Sat,  8 Feb 2025 16:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739031666; cv=none; b=AeaH2J442FtCKaj6lR15/03EMCUiiJ+6EmE7k4yr7+Z+emLUKf2gQIExtxL9/yNhkxtSWqf8nPdnmcksG14fu7EikMIEJ8l+kPlwT7o8QDVwr67A3fjMgfqakJRbXz82yX3HadPuq+uGzk5rO9uYqDFdQA8qP5H0O8QTskYiDrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739031666; c=relaxed/simple;
	bh=YrRRjJsSGYAT3roRHOyflVMByyTnyHegjOYjRumSqgs=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=m23YfVU6XwFBq3nGy78o4PM9rSnh1aAGPvdIdRW/TEuiI4W/hy4Ksp/szy5Rk8RWGqZBmmhEpe5kfQ91nX3ukEbeIZE6LQhnL68m2iybX1vNjSxL7mWk9BD/limiPqpR7cKMm3GEjj+MVVhCD1RBVM0gmX86mK7S0ykrxse2ii4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRaqqr9F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE5AC4CED6;
	Sat,  8 Feb 2025 16:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739031666;
	bh=YrRRjJsSGYAT3roRHOyflVMByyTnyHegjOYjRumSqgs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cRaqqr9FO6+Btq+1WokSFUMvKxSFbL4dOd0m1axj/fhpJ7DKQde+N9B0HMHJ4zxIl
	 SjAnK9xniov6B8nkwlVy71yh04dI0FYFZ06fGyLa4MFXdpgHEFMaAlTbH6CCTplnqt
	 wvkSsXZXH636l+6tRS2onwaA05iScmwwGqEWzUNner9U5eS41Nkj6+SVISNBr9RWtR
	 CQ0Cql3dih4eGd7JyqSQUCMZojDr0eraGUJYn7l1XwHwFj+EfggLqOsiJX5xff+FnT
	 AcMs3bWJvpY1mWL5Y5MCZTT3KqitmoBNUislq1Z9vrYNcKcqxr9Y5bDVbru+0R+waS
	 lzdTutEjt30cw==
Date: Sat, 8 Feb 2025 16:20:58 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: <robh@kernel.org>, <conor+dt@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pwm@vger.kernel.org>
Subject: Re: [PATCH v12 5/9] dt-bindings: iio: adc: add ad485x axi variant
Message-ID: <20250208162058.3b50ae20@jic23-huawei>
In-Reply-To: <20250207140918.7814-6-antoniu.miclaus@analog.com>
References: <20250207140918.7814-1-antoniu.miclaus@analog.com>
	<20250207140918.7814-6-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 7 Feb 2025 16:09:14 +0200
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Add a new compatible and related bindings for the fpga-based
> AD485x AXI IP core, a variant of the generic AXI ADC IP.
> 
> The AXI AD485x IP is a very similar HDL (fpga) variant of the
> generic AXI ADC IP, intended to control ad485x familiy.

Hmm. Should we name this after a specific part? Very unlikely
the wildcard will go wrong here because of how specific this
binding is anyway but we should perhaps stick to normal rules
of no wild cards.

> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> index e1f450b80db2..f1b470f74069 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> @@ -19,11 +19,13 @@ description: |
>    memory via DMA.
>  
>    https://wiki.analog.com/resources/fpga/docs/axi_adc_ip
> +  https://analogdevicesinc.github.io/hdl/library/axi_ad485x/index.html
>  
>  properties:
>    compatible:
>      enum:
>        - adi,axi-adc-10.0.a
> +      - adi,axi-ad485x
>  
>    reg:
>      maxItems: 1


