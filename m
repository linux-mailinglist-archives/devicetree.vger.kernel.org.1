Return-Path: <devicetree+bounces-241485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72336C7EF6B
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 05:51:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 329183A489D
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 04:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122222C029D;
	Mon, 24 Nov 2025 04:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Ffh9O5Z4"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735562BE026;
	Mon, 24 Nov 2025 04:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763959881; cv=none; b=r2MEpeeQ3tXPiIQLEfvTlyb3ht2M4V7/li6sCAkQ6lTZVAoZo0Atb+h8rEhAVh04AU8xmBNOkuOfYaNFSvFiN12tTRnXpMrCFgFiWnMSZvg8H86cvB7FoShMsnzCCst65Ig+F/05UB+i9nkk2ClZB+GOSO6Ppp7qO0ItNOo2rWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763959881; c=relaxed/simple;
	bh=yLoLSRS0goZRqoYuNJwGXmkVYLQAq/toqhyMWgS8220=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iRyk74qLxBAxE4oCtIM/4pckvEHRKLcGe5vXtXJMBW398gxJfYGNRPKxvMSQne4VjVnIoYFTQFKrzN1SG2LYY/tojf3Lpqjzt10mb8G5bkdN5c96+jPS1MNe8xBtgHF7YzxsAfVEP4Cx9VETvDDG7WkjZH/WeEhzBEZSjb+QCIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Ffh9O5Z4; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763959877;
	bh=yLoLSRS0goZRqoYuNJwGXmkVYLQAq/toqhyMWgS8220=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Ffh9O5Z4zQOoVQ0ABvwI0KKeOL6UzL2f6GCv9mGCKKCeG5B+mEvRKTyG4PFLqGmKT
	 s2yOZcU0nGAX9ueJhruJ34RTQiXEgLprVIWQWgEJDMMLo+lOqffM/7tu8zrnMcspCA
	 J17VOp1nyY9WRyZ8N8aE0LbAM4GDROb3Vad4Mnqcg4/a1DqkW/Ods20hqqFamidsyj
	 XEC1lr1xAGJS5/Se0ozi0YLaJBZNslQG3GtopB0eBwDy2v+mbbuSG8LStQdj2I9yRa
	 R1Stg6GMlRXwy0rg67a2UIi/X+hkziWoBUnqT3ZDZNuTkzKPb5AAz4yuwG3sFRTin0
	 RiZ+JMy37eaMA==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id B96F864DF5;
	Mon, 24 Nov 2025 12:51:16 +0800 (AWST)
Message-ID: <430d2ae7b148534ca6277c7066304e35a25ef682.camel@codeconstruct.com.au>
Subject: Re: [PATCH v7 1/2] dt-bindings: arm: aspeed: Add compatible for
 Facebook Anacapa BMC
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Peter Shen <sjg168@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Joel Stanley	
 <joel@jms.id.au>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, peter.shen@amd.com
Date: Mon, 24 Nov 2025 15:21:16 +1030
In-Reply-To: <CAJTz7Jd_fuTXpsseEE_161a7nLgoh4g9nH7M__HTsGihqNLQWA@mail.gmail.com>
References: <20251112211248.3711889-1-sjg168@gmail.com>
	 <20251118041058.1342672-1-sjg168@gmail.com>
	 <20251118041058.1342672-2-sjg168@gmail.com>
	 <c061ee38-5026-497d-b757-b0b9db2e6729@kernel.org>
	 <CAJTz7Jd_fuTXpsseEE_161a7nLgoh4g9nH7M__HTsGihqNLQWA@mail.gmail.com>
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

On Tue, 2025-11-18 at 03:11 -0500, Peter Shen wrote:
> Hi Krzysztof,
>=20
> Thanks for your detailed explanation. I apologize for ignoring it earlier=
.
> I now understand the importance of Acked-by/Reviewed-by/Tested-by tags, a=
nd of
> not attaching patchsets to unrelated threads.
>=20
> I will follow the proper process from now on, and also fix my local b4
> environment so that generating the correct trailers works smoothly.

Can you please apply Krzysztof's tag and resend the series as v8,
separated from the v6 and v7 combo thread?

Thanks,

Andrew

