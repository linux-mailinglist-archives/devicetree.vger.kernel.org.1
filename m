Return-Path: <devicetree+bounces-253384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D03CFD0BB55
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 18:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AA75303B7B2
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 17:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC5B364E87;
	Fri,  9 Jan 2026 17:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do5YWsqB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90F6500969
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 17:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767979810; cv=none; b=gFkgeRagwoad4TYP6SJNM3dzrc1HKFZ5oR6Upp32GJiAZWDdG4cBETeHxaR0fgtjAZdjer8hkbwmyzBRKZTzaLNePaZ2CVSyiomFM80WWOa4o65Uwta3qusfcBejUJLphWGs3J5ohRr87MOSyfOvbIxcAy6L9q06iLVF1Y4iwnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767979810; c=relaxed/simple;
	bh=Ys0ykWpj2zSXnuf7Ny882XK65ZCgh6xm2YsQvWZ6hZQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MIrFI17vV9bE0FoHh8yVDIKEKbgA10hS8UImKUvwfTTkzbDoRCX+g5eJBHWJk10jOu5a3j/mvIS45Ik4D9X5PAe1OcPlsaDrum61u9yL5aNCz0f00BcY9L4zCqSL31uKFLKGv940yzIsbwjlaWjL1OWv6hP/9Mygni+9jQVbV8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do5YWsqB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC687C4CEF1;
	Fri,  9 Jan 2026 17:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767979810;
	bh=Ys0ykWpj2zSXnuf7Ny882XK65ZCgh6xm2YsQvWZ6hZQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=do5YWsqBZ2EZdt3cFZg3WkZZaE87Djq0r2iDU51E3s5vYlk5ck91aTQEDcQVL9f6D
	 3wt/YiQcTAzDJ+tUAke9hiGvk6zT9VIBv+wdBv65367C+NlEcwUgYG794kTxCRCNcd
	 M90flYXLmsouaBYqJc4T3cQumX2vw7zLbDDpso0fmp0mU0MY7MPWRMMMFt6xNtQtkM
	 B3QjnbgfalZClKpPsxVk9bDk0Mx23G5H6FO/KfhbBmj8Kj/5mVIvzsoEZPKIVcvW1U
	 eTEnZU4ZYsgkG0bo1vfNF0EmbpgLjXVJeXEjpMKJfjYDFRAQVRRSAHAi44TCHeN1Wc
	 jpqKI0CtZGSWA==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, 
 Vladimir Zapolskiy <vz@mleia.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20251231215754.2222308-2-vz@mleia.com>
References: <20251231215754.2222308-2-vz@mleia.com>
Subject: Re: (subset) [PATCH 1/5] dt-bindings: mfd: nxp: Add NXP LPC32xx
 System Control Block
Message-Id: <176797980840.1887694.12154424112821478405.b4-ty@kernel.org>
Date: Fri, 09 Jan 2026 17:30:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38

On Wed, 31 Dec 2025 23:57:50 +0200, Vladimir Zapolskiy wrote:
> NXP LPC32xx SoC series contains a System Control Block, which serves for
> a multitude of purposes including clock and power management, DMA muxing,
> storing SoC unique ID etc.
> 
> 

Applied, thanks!

[1/5] dt-bindings: mfd: nxp: Add NXP LPC32xx System Control Block
      commit: 7cbde1b4ae7aeb1789f4691f94469316f7ca12ca

--
Lee Jones [李琼斯]


