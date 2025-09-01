Return-Path: <devicetree+bounces-211091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D64CB3D885
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 07:14:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 152293B8184
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 05:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4851233704;
	Mon,  1 Sep 2025 05:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkfQsN2L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03A028DC4
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 05:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756703657; cv=none; b=HHC1Lwx0xhcXreeanrIyuGPHZTiP3/MSGdG5EUohm/giq8k6IO4QKk8v2UJnw6D1hGnUP1ITOJllDTmcujxdRXGhcwgwiCgRbigUWWFOMJuzGHuHyd+HBGeyTyOPTzLfkcNJwimvsI6zckZZiaIutEytHemdqwfyX6F78Jbf+8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756703657; c=relaxed/simple;
	bh=YBqGrC4KQDmdh1k6F/p7nJAbGIJ6Ho2IPZIUotlJCag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lEH1Tbh48yBWr5XCvsr4pSjk4BAWDw2wo/s0Xxa2IH2m/2mgF/0+eM3kS9fzylkhujByzK4cHJQr/LBh0HC/QOABdMuemHij2UKdVNkXmMibZJJPGiR72sJJSdVTWqh3aCd7cGGOy/Owzo93lfYI1HeRb3sI3yq/M+hXP4ergPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkfQsN2L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74792C4CEF0;
	Mon,  1 Sep 2025 05:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756703657;
	bh=YBqGrC4KQDmdh1k6F/p7nJAbGIJ6Ho2IPZIUotlJCag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FkfQsN2LjsEBlZcVV8uu5i5D6Gqwa2u90xzhZ2zwKIFPVl3BBEc//gQx1Yb+ZZ4bg
	 oLLdD4ygHAcQCi6zMoQ90vANF6cAy5m5SXfZ0Bm7ysuaqRy4wgdTR/stSPlyDurzwu
	 9zyufXPbXhRkAS5eiLEgIp9BfdF0hR3wS6CrGgDUkFsqOzYPs31815/9B2Ce9V4Msw
	 bIMWZqAlLqFf9BzjBJOo6H+Vy5Q2pB18ZWIYpY3ClZsTjYwFULS7j+2QAi8as4Tlpf
	 rwwjqG17jsJ/+o2DGEpUQgPaT5bE1Y/96a+EHew4gqyC0nIbuibyO+ohUDLAoetbcD
	 XUNjlmyTYDY1Q==
Date: Mon, 1 Sep 2025 07:14:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mtd: Add realtek,rtl9301-ecc
Message-ID: <20250901-spiritual-lime-dolphin-1dfc0f@kuoka>
References: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
 <20250828143408.2511086-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250828143408.2511086-2-markus.stockhausen@gmx.de>

On Thu, Aug 28, 2025 at 10:34:07AM -0400, Markus Stockhausen wrote:
> Add a dtschema for the ECC engine on the Realtek RTL93xx SoCs.
> The engine supports BCH6 and BCH12 parity for 512 byte blocks.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
> Changes in v2:
> - change cells from 2 to 1 (only 32 bit hardware)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


