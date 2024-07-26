Return-Path: <devicetree+bounces-88313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A26A93D214
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 13:19:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E84028286E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 11:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56F19179972;
	Fri, 26 Jul 2024 11:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRyCdPZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CC1178CD6
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 11:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721992767; cv=none; b=ZN6mEgGwcgwwuAfG0dQ5OS02hSZzLKmVK0M9if16lG0c7EXnCya6OdAJruxl69sL2I/ISkmPElqGXDzBkbluzRzjfLitPNXwYU/KSXItzEi1ZtEhamoLRogrW0PxK90sKPhcbOegwSAmFt8sfyEezeF6/aGcDgh7sMvzeKyREJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721992767; c=relaxed/simple;
	bh=uiPCakp6fqVis2MXIorWvuto8T/zEYSsdNeOg6wPyfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eYNFSS9PgbWtV9NWdmkO6npkQIU3gH6kuLXM0WUgNZHUZWnbaHdyE8RwA2q4uJFEWAfVoxf0pDGKnSw3JI6RAJ+cik5ysC4AfBzr312HkGtmKzFW8ptRmtDO7TcH5zrmlOedIg8qTqhv32jhJZL22D/liHQQ77Q0337HmSh+Po8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRyCdPZ3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89813C32782;
	Fri, 26 Jul 2024 11:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721992766;
	bh=uiPCakp6fqVis2MXIorWvuto8T/zEYSsdNeOg6wPyfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GRyCdPZ3Ly7yVF9Q7Giu93RS8JKW47U/8EbgcRvnRUQmeC8ww5HVqk/vdQeljCMCR
	 THSEOXlV0CT4wPq176hEYB6EmHpzkpVAol1iktUy03e6GOdoKz1dgfr85mmjxRsh1X
	 gXSPqupmtiTdc/clAKUfgo4V+KmcdFfyAVpZ5ps0pWwZNADNj5cfQW50H/l/p6Tq6i
	 ZF182RXfWldO26SdrPS7dDOrxZ/x1T0ZoA5yudrmpsfAHs1x6VNLWZ5Ui1EAbviC/Q
	 LQg4d84mQb2ftVms3slXyIJoST3YLttbHp/RSbCHFNVtv6CV0e4sQY6n9IOG0Q1GP7
	 4iH/iNenl+zDQ==
Date: Fri, 26 Jul 2024 06:19:24 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Peter Yin <peteryin.openbmc@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Noah Wang <noahwang.wang@outlook.com>, devicetree@vger.kernel.org,
	Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] dt-bindings: hwmon: Document TI TPS546D24
Message-ID: <172199276351.949803.8944132907027970114.robh@kernel.org>
References: <20240725180337.64396-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725180337.64396-1-marex@denx.de>


On Thu, 25 Jul 2024 20:03:23 +0200, Marek Vasut wrote:
> Document TI TPS546D24 TPS546D24A 2.95-V to 16-V, 40-A, Up to 4x Stackable,
> PMBus Buck Converter as trivial device. Linux kernel does have an existing
> driver using the compatible documented here.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Javier Carrasco <javier.carrasco.cruz@gmail.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Lukas Wunner <lukas@wunner.de>
> Cc: Noah Wang <noahwang.wang@outlook.com>
> Cc: Patrick Rudolph <patrick.rudolph@9elements.com>
> Cc: Peter Yin <peteryin.openbmc@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


