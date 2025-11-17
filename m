Return-Path: <devicetree+bounces-239545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BCCC66552
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 30939295E1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A912FFFAE;
	Mon, 17 Nov 2025 21:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDKWLeD5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86BB427C162;
	Mon, 17 Nov 2025 21:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416138; cv=none; b=XCO2j98Effe3Wi3MkP1G+0msZ7RCnKnyqeTVBG6s5jEeKKB2OA0lYoDAEC4Icapj/v5AxlVmI3UnUE7FEoR2BlHu5qJAZk4ZB5muSucYJoywy4oxZcHQilcRDKs/Xhj6K1NkDoX/nf9aC8TXGjZ6Z7iVKnx/PEj+z1FiSqat0mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416138; c=relaxed/simple;
	bh=/QxgtEDA6YpI16K6FQgJL2zNBpKHW+yaDuCFoKTVXEw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mugm0HSokbnUiUKc8xupVGEAr0bzNRCbtfi7jA3h++1kfU8JGkSGtQl/YuON7sZQeQNVCip//mCA31u5t7gtzc+Po8ioK8YBNyW4J31gsHWkWH05wM3b8lYOqeKjW8B/ExEvd6A7ke5DdtSljhC+rCgFpcsNHc4x0y5d/c5+Sdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDKWLeD5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A13F7C4CEF1;
	Mon, 17 Nov 2025 21:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763416138;
	bh=/QxgtEDA6YpI16K6FQgJL2zNBpKHW+yaDuCFoKTVXEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DDKWLeD5pd+rNAunQo9FfVBzZs+GmH05H4D9ZSvFyV2O/CZKWT1OP58tQj6TtMfhP
	 B/cUCWoUlNoQEc2MPulayrLCPWsUCO0uEGEY6XQncHgqMTfcQYFuuWCRUzIPZu4dJS
	 mUpKvPW6yrx+0v3DIuMc6kuUygSKFOgtftazvmO6TNQQJ+9JFCPYZ+32BlNz4BOv7H
	 0BQveNj58TFqCW29w/81nuyVJ7MnJEH7O6WyhjHSlJD6RdTKCeQWuUOQ7WKpWM07yp
	 zmFIsQroQE/xhba4AumCyedVKVuXJZU7o+RYrhEnID7F8OIj0O3Zr+x4SZybOLAe5E
	 L5ZfEpCj1FTPA==
Date: Mon, 17 Nov 2025 15:48:55 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Daire McNamara <daire.mcnamara@microchip.com>,
	linux-riscv@lists.infradead.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: riscv: microchip: document the
 PIC64GX curiosity kit
Message-ID: <176341613496.775081.7467395849902975094.robh@kernel.org>
References: <20251117-paprika-tipping-e7bb3e211d6f@spud>
 <20251117-gliding-sixties-6d06ed7412d7@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-gliding-sixties-6d06ed7412d7@spud>


On Mon, 17 Nov 2025 16:53:22 +0000, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> Update devicetree bindings document with PIC64GX Curiosity Kit, known
> by its "Curiosity-GX1000" product code.
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/microchip.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


