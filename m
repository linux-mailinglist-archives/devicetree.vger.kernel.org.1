Return-Path: <devicetree+bounces-239546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 80388C66573
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:50:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 843F84EC9C7
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9070D2FFFAE;
	Mon, 17 Nov 2025 21:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJ9HjT26"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A852417D1;
	Mon, 17 Nov 2025 21:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416175; cv=none; b=l7d5lQdU4gUEmqBUn/P5J5rkACRMBOEGoXOdlXLKHrRiDU0cw38UBio7+7XKCFAxzqB2tTENiU4vfDDyRfX9D72GLqPHtdzXYEkMihNwmFsdxkUVrgesiL56l6Hh1WSEANutcoUTTGC9R4C8fZxqIZ/v7b5moBlxxTzdDsbRrtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416175; c=relaxed/simple;
	bh=zULtQAEc/RJC1iTsQ1ss10DWTBCe8QVuV0gb7mwTNg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kSLRHJJdJleRmc5ne9e7dzb5YHSE+fJ0fhcDeuyvqhRT3loiwPLxS2kf1XJCQKyne08VppB2HFmdRz9cXvZIBW8mf1OBpqsvjv54SxgN1zP90vybFAvnT6ll/RY8cGUkU/AHCTcGyppz7fKKqWd6frikZz1sHQrm6W+f8axgl8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJ9HjT26; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81B45C113D0;
	Mon, 17 Nov 2025 21:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763416174;
	bh=zULtQAEc/RJC1iTsQ1ss10DWTBCe8QVuV0gb7mwTNg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EJ9HjT26q29SD0V781PN5Z9Kt4d3m+zYLfOctcpJY7zxsF4HjXQxLklqEUbjp8LTz
	 a42zajtJ3NeZUNIGbAOQywMtwyQqkwSaArPhg32fcx75aiiPI5+WxpRYJZI+NNdqnr
	 4n+hqjd0fnvLG0kC6JkyI1lhfVI5fi2wgp3UulvEDH9C5aoa6jR1DVMAPcItSpVPjB
	 yCez18DqouQMu5q4sd6udD8BRu4Gf5lSOtg5RZ2e7m3zQDMrXxbQSLEXFvnPwjIY1W
	 bx1kHS9pcbItK7G6/m3KTaJt0salzI+ikEmNUoBlyXSUHN2yKWJUWVXLIFiGH/7CcE
	 PJBnjahqixumA==
Date: Mon, 17 Nov 2025 15:49:32 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Daire McNamara <daire.mcnamara@microchip.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 1/3] dt-bindings: soc: microchip: add compatible for
 the mss-top-sysreg on pic64gx
Message-ID: <176341617183.776831.8253090739304684550.robh@kernel.org>
References: <20251117-mashing-cursor-6e965a77ce6a@spud>
 <20251117-reversion-distaste-986c81a33f20@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-reversion-distaste-986c81a33f20@spud>


On Mon, 17 Nov 2025 14:21:20 +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> pic64gx has an identical sysreg syscon to mpfs, add it using a fallback.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip/microchip,mpfs-mss-top-sysreg.yaml   | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


