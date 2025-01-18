Return-Path: <devicetree+bounces-139476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 403EFA15DE1
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 17:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 736EF164171
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 16:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7777F198851;
	Sat, 18 Jan 2025 16:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZagNFP79"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3631925A6;
	Sat, 18 Jan 2025 16:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737216089; cv=none; b=YWcH2qj/1z0npBrw8z/g9w47v3ViwmVlSVgA/t6+rjtuw+rVGXquCSr+j+K/rNvzFzZS/kMAqEiq2QHyIbBCAMhjzrTPjr3aWCIkt5oV0NswPI2gaul5OO5rygoYnqMf8D//vZfEOw1qyy33j7kVyEfIP0kEFlcre+MZAArB5Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737216089; c=relaxed/simple;
	bh=ViqJWys7z7tzicOakO0vgP9wxpUd4p24cnmiSBZE57c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Iwo8W34SQUVmYl0rf6/leesqCBkN2FGqmWQXLecU1VH2Xha6bUMJ7H16d6spOdzBigtbWmjcUIYI9pLq9HhTVhCMkPbfeTKiCu89kPw3u/QUpyVy0zaa538WlWWYYDfwOsoiMW50VEh7tdNQVuCToawtvHUVSxIyakFi82jNB+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZagNFP79; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36CCBC4CED1;
	Sat, 18 Jan 2025 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737216088;
	bh=ViqJWys7z7tzicOakO0vgP9wxpUd4p24cnmiSBZE57c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZagNFP791YPBCAus+Oa7lHcvFzN//dKNmA9krZYQgEHkeBoKSn8W7Wi1j72eDdgWs
	 uSyY6HImdQxsqDUzqqpAQ8ncR8KjPgbHCXAvJeAhfFxKT3WO1OG0q28O+q16J1Vshw
	 QYlS1YXVi34INaEhgM0FoJP0LmTyiEJQSuQ+uoPbLSVt2pWUhjplMS/kb85EVDkrog
	 m+5Xj+dgnWjbhBMvtF2frabLZqDcjKA3QCZ6q+v3TvC9lxuxwhedttLS0MXfSlEekC
	 PPv54XusLiDlC+I1JyYhs1YLBn/986tJeBzlKg1qbOuV5D0H6cqDzuDcXSXU1lfpDV
	 hOGrlOK6L9gsw==
Date: Sat, 18 Jan 2025 17:01:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	Steven Price <steven.price@arm.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: gpu: mali-bifrost: Add compatible for
 MT8370 SoC
Message-ID: <20250118-excellent-tarantula-of-rain-afaaaf@krzk-bin>
References: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
 <20250116-mt8370-enable-gpu-v1-1-0a6b78e925c8@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250116-mt8370-enable-gpu-v1-1-0a6b78e925c8@collabora.com>

On Thu, Jan 16, 2025 at 03:25:57PM +0100, Louis-Alexis Eyraud wrote:
> This commit adds a compatible for the MediaTek MT8370 SoC, with an

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> integrated ARM Mali G57 MC2 GPU (Valhall-JM, dual core).

Anyway, your commit msg explains "what" which is obvious. Say something
not obvious - e.g. not compatible with 8192? Why not?

> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 735c7f06c24e632ab738d062f15378f754c8adaf..6f6211950bb495fa6bfcdfe8d1e27e5ce7aeeae0 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -37,6 +37,7 @@ properties:
>            - enum:
>                - mediatek,mt8188-mali
>                - mediatek,mt8192-mali
> +              - mediatek,mt8370-mali
>            - const: arm,mali-valhall-jm # Mali Valhall GPU model/revision is fully discoverable

Best regards,
Krzysztof


