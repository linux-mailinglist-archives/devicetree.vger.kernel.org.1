Return-Path: <devicetree+bounces-5826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2517B8100
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 272B11C20444
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4FF814A97;
	Wed,  4 Oct 2023 13:33:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B099C14A8A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:33:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B6A3C433C8;
	Wed,  4 Oct 2023 13:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696426395;
	bh=nUcn/SlnQa7X885HtLaaj+Ehd4Cyq5smiyYTDJ4O40Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IYEXDVerwn8gbQaZr8uT9xcS9c3Qc/reUSTFLxs1Bqu28thOJ3w5dYndFwZQTGkUw
	 ep2ha8cryDL+wXVEHO6OCQfTZhlUMIcyHL8Ef5m6stL+evB4pnTYf4Cag6eq6z/hUl
	 eYLswZBEdCCNVe9T8E8nKxEvP/rQL+VGSG840n0sL4z0ytlX8uCX/l7HtrytJQE9bT
	 T+RLjk0pQK0aq3H5L72gQRuH3zxIxGKBdWj/ehxdxZlkshTqyodo/w2gbMRK7XsvJH
	 aVh/lsZsc9Nc+Rmrz87zw6KdltOwdJLT4VIxw+zWfvieS7vTSG7qD5bEjWDHvbQXg7
	 z+Fu/BlgnsdsQ==
Received: (nullmailer pid 2758981 invoked by uid 1000);
	Wed, 04 Oct 2023 13:33:13 -0000
Date: Wed, 4 Oct 2023 08:33:13 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@rivosinc.com>, linux-renesas-soc@vger.kernel.org, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: cache: andestech,ax45mp-cache: Fix unit
 address in example
Message-ID: <169642639171.2758908.6583867428160039532.robh@kernel.org>
References: <7b93655219a6ad696dd3faa9f36fde6b094694a9.1696330005.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b93655219a6ad696dd3faa9f36fde6b094694a9.1696330005.git.geert+renesas@glider.be>


On Tue, 03 Oct 2023 12:47:59 +0200, Geert Uytterhoeven wrote:
> The unit address in the example does not match the reg property.
> Correct the unit address to match reality.
> 
> Fixes: 3e7bf4685e42786d ("dt-bindings: cache: andestech,ax45mp-cache: Add DT binding documentation for L2 cache controller")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../devicetree/bindings/cache/andestech,ax45mp-cache.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


