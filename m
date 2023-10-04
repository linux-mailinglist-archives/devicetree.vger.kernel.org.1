Return-Path: <devicetree+bounces-5835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2440D7B814D
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id ABD80281600
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B9C15E83;
	Wed,  4 Oct 2023 13:48:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D0213FF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:48:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D795C433C9;
	Wed,  4 Oct 2023 13:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696427299;
	bh=RUJjmiMMWjZtXTFzdT9tp6cJ3CJdB+HdueoIl8WZhxE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mUuzD63iuA5lAHtweqik8IcWR5KMJN/01sZ2ngWDFRwR0RLFrxP+HypZ38LtWcmho
	 SwHQ6mEcQ4yIMphU2O8ZNTB4t2f7LWB0ffXVzYqopP+59V/CAAGG9RKjIKWSlXhQGx
	 P8NmZC3tLKlzxcdYzFay1/va/PzvL4NFhVoLbH8a5SbIdI9azBTdVQdmVCEcImTuBe
	 oIWAiuDLrjPmYpXNwrXwO0mBbitHd6m/2oIS7EClTi1/3p0T/yM0OYUWjQOuGu6RNa
	 M3XjHstu0HLZMXEnPbUWsGIfOBoQSgkVtfKkHgGW85Z4vG8Eo6DcdoQXLjpN1HUWtu
	 s+XH5flGlGuNw==
Received: (nullmailer pid 2777363 invoked by uid 1000);
	Wed, 04 Oct 2023 13:48:17 -0000
Date: Wed, 4 Oct 2023 08:48:17 -0500
From: Rob Herring <robh@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77990: document Ebisu-4D support
Message-ID: <169642729623.2777302.15535104828742110554.robh@kernel.org>
References: <20231002165957.11388-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002165957.11388-1-wsa+renesas@sang-engineering.com>


On Mon, 02 Oct 2023 18:59:57 +0200, Wolfram Sang wrote:
> Document properly that Ebisu-support includes the Ebisu-4D variant, so
> there won't be confusion what happened with support for this board.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 2 +-
>  arch/arm64/boot/dts/renesas/ebisu.dtsi                     | 2 +-
>  arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts             | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


