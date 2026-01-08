Return-Path: <devicetree+bounces-252559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5F2D010C7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF11B300B83C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D3523EAA5;
	Thu,  8 Jan 2026 05:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="F5jtziWg"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F97832C8B;
	Thu,  8 Jan 2026 05:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767849396; cv=none; b=XhCiubm0ru/RtcKjk01roQWL84J62h4Gh95LiTYK43fhltPbQd42jnnfpNECzplHGq3+7pR13X1mbh65hoFE4pmtEph8ehHwLeWhJRDudNo88caKwSGlOECtjhE+UaFAIYwII7qQNRg7yLxJG9sWVzb+RII6HGkCjjGHo+dlsac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767849396; c=relaxed/simple;
	bh=xbN0xXbu2Yat5/DqybzT3Ivmx4aLPskHLX3kZsD1fb8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hBOpZNwDlPWFrsi8xQaw9Gg4sD7WJnTzf/AR1Me02PcI3Dd+ywiXd4eEwqkzcAWKuTiJjsElsKsYZEHMOzf9qj8xNlZAdUWV+yMsjNRJMGm2Vey0ECB+PAK+lvDVUYl+Bk1E4o9ahJPdxivz96uzNprtG0agSwLwdad/sL4dX7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=F5jtziWg; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767849392;
	bh=xbN0xXbu2Yat5/DqybzT3Ivmx4aLPskHLX3kZsD1fb8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=F5jtziWg0rSiH6DROhn/PXN89zytE/z+yPwV0oPFfKgUnQ3SHMUHptKi9LCijrQ17
	 fXYlztKVDmcVJDg6Jqz5xLfx8BxKRYJzXRhrYnzFCeEv3luTHqU4DrqhrA0WzOAWwS
	 gx8p7/Ugn3QYSHLyak6VwjP0D1cmljeJDSQ9mt47l+lsWxowNVtl9gtZ9orjCpvRdJ
	 7S/+LewZzqJaAKOC1ogBKet4GO4jqOIH+Fg5u8Su0lZTZtCOMmUdwAdUvr1ZLfb6Ze
	 5QLEXLXt84t8SzFzf+Rs9PjzMRLzitkIjj70KTvByBB5IQ8kO2GegLAipzti9yB3Dj
	 qlD/Ebq2AhQgg==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 888CD79F8C;
	Thu,  8 Jan 2026 13:16:31 +0800 (AWST)
Message-ID: <a9e75f46a69e86c2d555065f251b9ece3050827e.camel@codeconstruct.com.au>
Subject: Re: [PATCH v9 1/2] dt-bindings: arm: aspeed: Add compatible for
 Facebook Anacapa BMC
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Peter Shen <sjg168@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel
 Stanley <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 peter.shen@amd.com, 	colin.huang2@amd.com, KKrzysztof Kozlowski
 <krzk@kernel.org>
Date: Thu, 08 Jan 2026 15:46:31 +1030
In-Reply-To: <20251219091632.1598603-2-sjg168@gmail.com>
References: <20251219091632.1598603-1-sjg168@gmail.com>
	 <20251219091632.1598603-2-sjg168@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Peter,

On Fri, 2025-12-19 at 17:16 +0800, Peter Shen wrote:
> This patch adds the compatible string for the Facebook Anacapa BMC
> which uses an Aspeed AST2600 SoC. This is required before adding
> the board's device tree source file.
>=20
> Signed-off-by: Peter Shen <sjg168@gmail.com>
> Acked-by: KKrzysztof Kozlowski <krzk@kernel.org>

I've fixed up this tag and the misspelling of Krzysztof's name along
with it while applying the series.

It's important that you actually insert the tag provided[1] and not
invent some other one.

Please fix your workflow so this isn't a problem in the future.

I suggest using b4 (and `b4 trailers --update`) if you're not already:

https://b4.docs.kernel.org/

Andrew

[1]: https://lore.kernel.org/linux-aspeed/259e917f-0570-40d6-983f-bfe9d7744=
4a7@kernel.org/

