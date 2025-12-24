Return-Path: <devicetree+bounces-249433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34319CDBC50
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C3343026537
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A54BE32ED37;
	Wed, 24 Dec 2025 09:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xjj3dNOq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B75A32AACB;
	Wed, 24 Dec 2025 09:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766567449; cv=none; b=R41MxzOr5/fcKobZN+kPpfGIBF+97G6jeaW/TN5XGxV8dhOap+yZbV/kIZs1lhwZlPcXKZ6Kk4ysMooA98o814wPvpXJTOtflwGw4zsYdJLKaktBfqmf2SbzServXARI5Si+XyYGkReqBzev1jrdTSZyL/ec8Qn8KK3PaUc4kfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766567449; c=relaxed/simple;
	bh=5vZOqdUCDqHKRalg9x266UN32kb30vjOJx380+ZbytU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s/4rTQZifAS5IDs4FWf1C1oJYwnSECKwaKTMxov1ViG7oJhglykkvXA1SHZJF1/euTNQkhHbSPAPfcmCZXoS8ZCOgjkaZXi3vFzm+T2FUek+5G4GMLPnRFvcnvkfS19uFsAJOKGjw8ncIjoYmY2F6VcriRh3TT7EvetobE4O5ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xjj3dNOq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63C25C4CEFB;
	Wed, 24 Dec 2025 09:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766567447;
	bh=5vZOqdUCDqHKRalg9x266UN32kb30vjOJx380+ZbytU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xjj3dNOqpXV5XAnck73qHs/iMJ1+AxC5UmpkrF64RUM053N/Ws+nZHcmYNLw0WFTF
	 NeAA3iaE22t3razdlkooo6/U0Jmn7MXtLE8qQtmfjItt0bo4+tTNrVl5Tv6FgKHNlJ
	 3B+QXSakc7rm0kvDJ5poOz8jgjwFuFtRUo7/ADzVPt7IwSNn6QOHeJGmJ0V7hR9JFV
	 u+0/tjzBr4q7frg7kZaTpvPHJmc5WtpBK0Ip9JH6bCKFhFpJ0keaX09Gf1IrNDiuGi
	 WeYQ3m6jY2euXmNPNUlEGywLhotW9aB++iQg/5ezDrabfzblYhIuWIhIzH3xejDI1i
	 yuoZPQm7SpIlQ==
Date: Wed, 24 Dec 2025 10:10:43 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: aspeed: add Meta ventura2 board
Message-ID: <20251224-bustard-of-major-growth-b9cd89@quoll>
References: <20251224-ventura2_initial_dts-v2-0-f193ba5d4073@gmail.com>
 <20251224-ventura2_initial_dts-v2-1-f193ba5d4073@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251224-ventura2_initial_dts-v2-1-f193ba5d4073@gmail.com>

On Wed, Dec 24, 2025 at 02:44:38PM +0800, Kyle Hsieh wrote:
> Document the new compatibles used on Facebook ventura2.
> 
> Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)
>

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


