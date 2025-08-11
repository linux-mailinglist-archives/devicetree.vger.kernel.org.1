Return-Path: <devicetree+bounces-203109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDD6B200B0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA660189B5EF
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 07:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33CF42DC330;
	Mon, 11 Aug 2025 07:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMEvTVq9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0932DC32A;
	Mon, 11 Aug 2025 07:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754898471; cv=none; b=d27HIxWSOhgZWRxiRefjeZH0jf2A6oSBLLeQ9OzGYTFTpugKxhuVvx+bTvxNhI2eCX17d7A8qL4tykG3ymHhPk/aHiYUSxfMaGe6C2cK61/YmHxKfTQw7ryhkl834ZB5ZtTG08+9Tiry7QDr3XJMvhOJvuZENMD20qhXmuEg+lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754898471; c=relaxed/simple;
	bh=RTJN9RqRJ4UnrPrUYqFKFXdjiVHAvBNzSUV0agHEpCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n6PQYnLytQ9K9ElkqPUeB7d4EeZKXotNJvrW7wog8qE2FiPvN4sbhj4m+k7LWPTvsMepRMYEdOT+AKoXCBpgabPoO6vXS+qGqncGMDzfMsbugQxQBTaggwQgL+Q7sKrjTjCPsxOS+Hf2ivSXL85rxlXu3j7tKN1pXzMyacWgvPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMEvTVq9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36169C4CEF1;
	Mon, 11 Aug 2025 07:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754898470;
	bh=RTJN9RqRJ4UnrPrUYqFKFXdjiVHAvBNzSUV0agHEpCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fMEvTVq9mH5UQ+CteJtO3qeUITYpyPArJqZdO8zN+Ojtqz/5TLMo5qIb5+VuTvd5O
	 9WhOMwLS9cQVb34kMY1uVFjDuKhA67JMVk/gPPhqW5MjCFI/pAhU0DFrshJ9BHdMcG
	 1nSJWesI8hsBoIPvjjMOfOr/hgX4Pvvoh3ZZvYh0TGwBQPmjyBZTgC736gKFDdppLD
	 M2V6oIe/2WOeeuom3JxeUuwvSFZPIfMnEXvQLL0evzi50Jc5N96kj2fZ8mEla5HZow
	 7eom7wiHjK9I03tlz1HRvrA5RuGO7PIX+E9BrGsLNxZ2rHn3nGZ4WZ847hGK8LcT+X
	 IfSz4ABQV9Nhg==
Date: Mon, 11 Aug 2025 09:47:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jay Liu <jay.liu@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/6] dt-bindings: display: mediatek: gamma: Add
 support for MT8196
Message-ID: <20250811-chubby-infrared-spider-df0d8c@kuoka>
References: <20250808125512.9788-1-jay.liu@mediatek.com>
 <20250808125512.9788-2-jay.liu@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250808125512.9788-2-jay.liu@mediatek.com>

On Fri, Aug 08, 2025 at 08:53:56PM +0800, Jay Liu wrote:
> Add a compatible string for the GAMMA IP found in the MT8196 SoC.
> Each GAMMA IP of this SoC is fully compatible with the ones found
> in MT8195.
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Jay Liu <jay.liu@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,gamma.yaml     | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


