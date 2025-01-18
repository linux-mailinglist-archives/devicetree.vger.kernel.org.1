Return-Path: <devicetree+bounces-139468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EA6A15DB3
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 16:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40E5716533D
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 15:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4972192B85;
	Sat, 18 Jan 2025 15:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3NM8f1X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D473398B;
	Sat, 18 Jan 2025 15:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737214965; cv=none; b=HGjevcVbo0GGnlucTG6oDuD7jTPCsEI7RS6n86VpI7ecrUIOlJXiBUpW4yGfIffCsQeRUaFr7GKocY0A71bodR/sG8UvDje9OVLnHQvylTiW2/lOgU6XKy/mRRnSaZm4MsSh5KIiGDAjGUjH8ZgAAI09rdlFkC5dBAxrkeCQX7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737214965; c=relaxed/simple;
	bh=gQVJZM6kehJm+VICTaAYznQuRVifIM5s+wBP887ZbKw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TKymuvmCFbVYrL677nNyguywpybBjLnAUVqoW/auYk/mf0cHUZ44b+CB936yyBqn9QH1n52Yv2ft8zie76wrCfrFWyb7H7ysWTUOjwclp08iwiSp+SDj1jOj8acsVCMw0LZj+1MyOK9BaK8LwNaNPs2KX57ckP52CRhbeKE+GNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3NM8f1X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38A57C4CED1;
	Sat, 18 Jan 2025 15:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737214964;
	bh=gQVJZM6kehJm+VICTaAYznQuRVifIM5s+wBP887ZbKw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o3NM8f1XGDT2FxfWntr/PL//AZvBv4b7qLjaT5whTyM+2/wpqoBCoASUU9afom2Fh
	 EyVmcVsefuXRkqZuHaUJW1zk5e6jkqIj2FY/II3T/AHmLes+dEl9uT1tNts4DLOE+E
	 YepENe4Rxt4TkPJNqx3QlaDFiG2rBfsxrkQsVelPakLZ63bIRGo70XDOwk71u7awj7
	 mOvt6exNfwa1bpjJQbVMHBJn8RN92Sb6KvttYRzJ0ZWIdcjyINYlz9iFMQEBe3XiV4
	 fr6Q7oujM5pLq97JZkIL1F0M9dOYSlCX4a0saXwP6ALfg8i1bUofpdprH0w9J3tbWG
	 YYaud5Wsr59xg==
Date: Sat, 18 Jan 2025 16:42:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, herbert1_wu@pegatron.corp-partner.google.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: mediatek: Add MT8186 Skitty
 Chromebooks
Message-ID: <20250118-ruddy-excellent-beluga-1aba0c@krzk-bin>
References: <20250115-skitty_kernel-v1-0-6ef2086858ba@pegatron.corp-partner.google.com>
 <20250115-skitty_kernel-v1-1-6ef2086858ba@pegatron.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250115-skitty_kernel-v1-1-6ef2086858ba@pegatron.corp-partner.google.com>

On Wed, Jan 15, 2025 at 03:43:43PM +0800, Geoffrey Chien wrote:
> Skitty is MT8186 based Chromebook based on the Krabby design.
> 
> Skitty also known as the HP Chromebook G1m 11 inch. The device is
> a clamshell laptop with an optional touchscreen and keyboard.
> 
> The SKU IDs of the Skitty devices map to different touchscreen and
> keyboard.
> 
> Signed-off-by: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)

That's a v3? v4? Version properly your patches and provide changelog
under ---. Maybe you even got here tags?

Best regards,
Krzysztof


