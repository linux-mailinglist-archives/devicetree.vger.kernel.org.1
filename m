Return-Path: <devicetree+bounces-247916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 732DCCCCDD2
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E177D30F3D69
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F258432D435;
	Thu, 18 Dec 2025 16:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7Y18yQi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FA9369208;
	Thu, 18 Dec 2025 16:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766074249; cv=none; b=aeT/Ak+ClBoDDBRkSIkH0LzT7Oa00fQKmrWthjr976TLtzmRQHt9JkuT1AgMtKsG6TldiQqaCG77lmSPbpeAYcIivLVV7EPBo7F1XqrzzJpSRgQI+9FDjsORirqG7347YT9UrxlhFwDNvVRO7CorobRG7n2wCi67kQRh3KEapNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766074249; c=relaxed/simple;
	bh=zlgwqexkBMnoqotoasLnmEGnWT3Dr1HRS4BATSlZwKc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MFHbsxKPkWzqmldXxl6rBAyAnakCRFpjYrYHgf3nCRc8+6/PaFF4Zn59Cs2qOQF7XJPYzcJFtri1i2/9MSjPGceKAIKZ+r9wmF64qQ6ko6ZP+9wdQn+te5R2mzzYqlgkGWELZF/hmRBTk7bPmR0/sewiGOf4mhXqZlYE+ZRr/oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7Y18yQi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3E74C4CEFB;
	Thu, 18 Dec 2025 16:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766074249;
	bh=zlgwqexkBMnoqotoasLnmEGnWT3Dr1HRS4BATSlZwKc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=l7Y18yQiBkXWcWjcByBadrlPgG0wKuIGVGiFXaBgFzasOninl90Z26tTM9PRFrAi+
	 vL50jYUJCyB5jQhgUYScc/yR3IVPB8H6dXspE68wvyOvADRxgKDJCwRkCwjKOzFZEi
	 /H/HIgd6hGptTZBrN7T7AONbHF5T2ohjBwPBBqo6JGiwJaZuCnAypqxJ3CpkFIe/r3
	 f3vzZtbjS1Kg6zFWoTXSDwFgPoGix+Z0Rz4ikqxVf7R74bWOgR/KoH3pXRvIy/gblI
	 +pxPx4VojQ1z67lQi+1UlAbt6OW/z4Yc+KQmw/JmazkGiYCsdE5Q3+zrfm7l8eXZ58
	 XrYW0t0PVNy0Q==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
References: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
Subject: Re: (subset) [PATCH v9 0/7] Add DDR4 memory-controller bindings
 and factorise LPDDR and DDR bindings
Message-Id: <176607424544.18448.1362838186917250806.b4-ty@kernel.org>
Date: Thu, 18 Dec 2025 17:10:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3


On Tue, 18 Nov 2025 16:07:56 +0100, Clément Le Goffic wrote:
> Introduce DDR4 bindings, which is the first DDR type to be added.
> As the DDR and LPDDR use the same properties, factorise them in a
> sdram-props bindings file and rename lpddr-channel into sdram-channel.
> 
> Changes in v9:
> - In the ddr4 compatible pattern :
>     s/ddrX-YYYY,AAAA...,ZZ/ddrX-YYYY,AAAA...-ZZ/
>     The comma before the "ZZ" part has been replaced with a minus.
> - Add information about how the compatible is constructed in the patch 2:
>   "dt-bindings: memory: introduce DDR4"
> - Add Krzysztof Kozlowski's trailer on patch 1
> - Link to v8: https://lore.kernel.org/r/20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: memory: factorise LPDDR props into SDRAM props
      https://git.kernel.org/krzk/linux-mem-ctrl/c/dffaa1beea9e7a0d902fc4e25e137afcf1297267
[2/7] dt-bindings: memory: introduce DDR4
      https://git.kernel.org/krzk/linux-mem-ctrl/c/b5c1a217552c3513977a9f1138b05de0bada8a52
[3/7] dt-bindings: memory: factorise LPDDR channel binding into SDRAM channel
      https://git.kernel.org/krzk/linux-mem-ctrl/c/6ab3581ab19fa348b93c85a793e45cd8a80912a8
[4/7] dt-binding: memory: add DDR4 channel compatible
      https://git.kernel.org/krzk/linux-mem-ctrl/c/36ecc8346747b600892e3040e1d0ecb1e939c6e8
[5/7] dt-bindings: memory: SDRAM channel: standardise node name
      https://git.kernel.org/krzk/linux-mem-ctrl/c/9805f2cfc883018f7bf84c84e3af3786c37dac7b

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


