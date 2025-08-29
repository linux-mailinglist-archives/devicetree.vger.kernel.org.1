Return-Path: <devicetree+bounces-210586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E4CB3C11A
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 18:44:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 524B41CC47EE
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 16:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2199D334388;
	Fri, 29 Aug 2025 16:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvzz0ywH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8E372626
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 16:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756485820; cv=none; b=lQDyfnS1y/6dK3gEQKkEqmJWsdT1y4QfMhVNFQFPg23du6055yXuDUY5X+WUDDYe5k+LTK1lye1qrqXD+JjWcz+F+yTQFYAKDkrwncVxrM90pv52AVIbwS8SRNw0XF9RxNVSADHYS1JWN0QKEzvKk36qrcyKRmZqw2PqXvFyLIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756485820; c=relaxed/simple;
	bh=c0OpyhbwKGzoqoPeJ+6gUDfB+znvvuZBNFg59SRe7jY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ukxlZg49+KoX0KAP5dGKP34eUyPYAF1pT+aCuMukxzVxVwDgJ0E3vOvKZGunMwp4F9B/XRNYQ5DXifPUmJmELnLFxM4zSL4uMpjn8Ij2zLnj1jKvAPx4hpyL+G6Ccx34d3WKIKduhoLBCpzeWcZQON2MYtfH4TNtIcI9Gtzrswo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvzz0ywH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B549BC4CEF0;
	Fri, 29 Aug 2025 16:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756485819;
	bh=c0OpyhbwKGzoqoPeJ+6gUDfB+znvvuZBNFg59SRe7jY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bvzz0ywHODiK0/q0IGVTcKa4gSJ1QDoKSIMfD/+w0xqyKkEFY7ysGGEDebMucU/d4
	 BpBLs9e5s+7M0aWs8Zxfk4Vg7Lm5rvWw4rLxOKMjOaf8KyDtmkdwO32BG37p1OD4XG
	 Gr8asWWln/1glpuKqMhwCdy6IIF/bUTbaeD1xHGvEH40GuyWQTLco923T/L1Q+hqS4
	 cYZUwYbZ5BH+s+tUyVe/terrJrYLLBqhzG/OZ559vmJ81OP3wbWzJpWyfbaVr6moU3
	 bO10fm+cnpv+UyuCDpbODm6S6iDKGmZnBTn83m7vqRlQSYtcelOjUuhcXc4Yg8e/27
	 HRyG8mqwftLhw==
Date: Fri, 29 Aug 2025 11:43:38 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Harikrishna Shenoy <h-shenoy@ti.com>
Cc: simona@ffwll.ch, conor+dt@kernel.org, airlied@gmail.com,
	linus.walleij@linaro.org, krzk+dt@kernel.org,
	dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
	devicetree@vger.kernel.org, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH v2] dt-bindings: display: dsi-controller: add bridge to
 patternProperties
Message-ID: <175648581753.993520.17855768020170284866.robh@kernel.org>
References: <20250827112539.4001513-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827112539.4001513-1-h-shenoy@ti.com>


On Wed, 27 Aug 2025 16:55:39 +0530, Harikrishna Shenoy wrote:
> Extend the DSI controller schema to allow bridge child nodes.
> This makes it possible to describe external bridge devices directly
> connected as DSI peripherals.
> 
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
> Changelog v1 --> v2:
> - Updated patternProperties regex.
> - Improved commit message.
> 
>  Documentation/devicetree/bindings/display/dsi-controller.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


