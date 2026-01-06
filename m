Return-Path: <devicetree+bounces-251798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 788B7CF7298
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 08:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3676730F0568
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C49303A01;
	Tue,  6 Jan 2026 07:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUCl1qAN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378D72C0307;
	Tue,  6 Jan 2026 07:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767685759; cv=none; b=TsDH/x0U/SxjtHV/qoo3kTE+tgq9Ut84RkDbk8mnttfWNKqTYkYqNIGQVepHU4Yz35iMx46gYzJSNPES1SvPS8W7wJyzW2jmlgLdmWkHphm/kY60nmgMPouPYLErrko1mzqCKC2aLWTxota838/atEQTbCHT7JQWfipzFCS1z0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767685759; c=relaxed/simple;
	bh=EZD+IhNqBS9jJk9M1+uwhHIS69CMKejfXxB1jk7XPtw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XCLiVJGa5UiD4OZxF3cQN7a7c7LDXJWYnmjKR0FacnGxum0q4g62QdIBNgchh843ErQKwI6pU59iSJDGc726s8S8n3cxyeFoAVYSYlm+mUAqRHA+f7bqQXFjV1Ty4v5NXGh/YDs8RgrW9Y3gv4Of+e/hHl0y2Y23/WUd57f0EHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUCl1qAN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16364C116C6;
	Tue,  6 Jan 2026 07:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767685757;
	bh=EZD+IhNqBS9jJk9M1+uwhHIS69CMKejfXxB1jk7XPtw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eUCl1qANzqJgnoHtWUu7PNrUg0bPR9293m5MY9lUzgyPlUsRzbIBRSxVHTZZkoIby
	 +0anE6RgJAYUGKu+L5PK6U00RxwjpsDNafUXKqHlIUhUGQ+p+fSLPs7trAvmdMIGha
	 n2NCrD18wEbiCUN97sBN4X2odotDNyoXBuW2DpL/uVmvwfnj8XBnljW5zQWVdcfY5t
	 Z/1AAqb6ywBiHewN+45nD4bhsovTdokHfDnKA9U1de0hM2GaG4rI3+hpAUQ/cVOBFv
	 LjIawI6h6ADxWCDIN1DiQng1oPiDSsJxBY+XaSFfkG1ILvpMwUlxVzFgwoLw3g77aA
	 Ise1sHeFEPKKA==
Date: Tue, 6 Jan 2026 08:49:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
Message-ID: <20260106-talented-hare-of-glee-fd1e63@quoll>
References: <20260105-nxp-v3-1-05af634831ef@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260105-nxp-v3-1-05af634831ef@gmail.com>

On Mon, Jan 05, 2026 at 03:08:00PM +0000, Akhila YS wrote:
> Convert Microchip 23K256 SPI SRAM MTD binding to YAML format.
> Changes during conversion:
> - Remove "address-cells" and "size-cells" from properties and
>   required sections as there is no child node for sram.

I looked at the driver and clearly see usage of partitions from DT, thus
the binding needed both above and the partitions coming from MTD schema,
so this is not really correct. Looks like you did not really try to
understand this binding and the driver.

Converting bindings is not trivial task and you must really understand
also what was incomplete in the binding.

Anyway, I don't want to deal with this more, so:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


