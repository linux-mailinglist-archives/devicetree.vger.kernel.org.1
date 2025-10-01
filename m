Return-Path: <devicetree+bounces-223119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E3ABB12D1
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 17:48:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3F541885D58
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 15:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747D327E1B1;
	Wed,  1 Oct 2025 15:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLYrPWJ4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D36825484B;
	Wed,  1 Oct 2025 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759333704; cv=none; b=CwgORFV2D3S6eRm8Eq0k96sdzx45VCLdiz8BmRUtzORuYfHRS9swArh2KPcf+1p7DJyB2YU471FGJHXjnVDariRmdcKcSeBl7a/GiPkE46LYhONEFO0P3ivSQllhzD3UCr/86xVBmvh5CGUjIsGPLqra1kkiui4niWLXN1rLUPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759333704; c=relaxed/simple;
	bh=+Tl05Ou3PJQ7OylAUPCNuIRKgh9v2tHXm+1qfVH7mdo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QtKC1xj4xZl9q8EC6qAhRxiCx7qwwI4t/isnkslgs9hCzGL2lWfQvV6muEmuB5xL3B0no9WC2wVszmtaMciODp5hStFfVHA2U0w7jtynOETumE2u2L+VurJhFH5e1g44SVQX1BZwW+2YTbAUm1/xPCiwA7Ih9Nu1VHKQFkInJ9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLYrPWJ4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F33C5C4CEF1;
	Wed,  1 Oct 2025 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759333703;
	bh=+Tl05Ou3PJQ7OylAUPCNuIRKgh9v2tHXm+1qfVH7mdo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oLYrPWJ4gVUC8wMMTXfBcJ/gJuTs6d9ttXNA29wMkZdhaFN8Gl8ZlCCt35k7CqZQP
	 MeiUkgrldCdgz4kvu59bgE9FspeeNUlY8IqhfWE9UzGe3G9Xjf7zTndMEC+BKM3cGf
	 ErjOzEW+MsygoauqmWXRrB3mP02Hl1F+A8AZnp9CtijPINrAKuHduAslgcb4nflCER
	 W4OaNYWQlDvOzIJJUirzoThPgO+9iVCPDxSkJY/s/coNJPWzDlAB6LUEZLWBvAxYLP
	 UylgrU5SOCKUaRnKMjWtCM2TfUzRrFhTOFqy2uKkGvekavvPscmcC71mS3+1aMzPHY
	 HDNEZiin68XKg==
Date: Wed, 1 Oct 2025 10:48:06 -0500
From: Rob Herring <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, lee@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, matthias.bgg@gmail.com, lgirdwood@gmail.com,
	broonie@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com, wenst@chromium.org,
	igor.belwon@mentallysanemainliners.org
Subject: Re: [PATCH v6 3/9] dt-bindings: regulator: Document MediaTek MT6363
 PMIC Regulators
Message-ID: <20251001154806.GB1833526-robh@kernel.org>
References: <20251001111316.31828-1-angelogioacchino.delregno@collabora.com>
 <20251001111316.31828-4-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001111316.31828-4-angelogioacchino.delregno@collabora.com>

On Wed, Oct 01, 2025 at 01:13:10PM +0200, AngeloGioacchino Del Regno wrote:
> Add bindings for the regulators found in the MediaTek MT6363 PMIC,
> usually found in board designs using the MT6991 Dimensity 9400 and
> on MT8196 Kompanio SoC for Chromebooks, along with the MT6316 and
> MT6373 PMICs.
> 
> Link: https://lore.kernel.org/r/20250715140224.206329-4-angelogioacchino.delregno@collabora.com

Drop the link

> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../regulator/mediatek,mt6363-regulator.yaml  | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6363-regulator.yaml

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

