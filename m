Return-Path: <devicetree+bounces-141306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0301A20500
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 08:20:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28FE93A4303
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 07:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB02F18BBB9;
	Tue, 28 Jan 2025 07:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGP30Imz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD55383A5;
	Tue, 28 Jan 2025 07:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738048851; cv=none; b=gyKfHFgv8lRUc7be7qaUm6TZtuJnc/ObkR+sK91qHEUdFwonBolJonsXHltHv3RB+JP08+2dN/gMLx7w4FKmr55v6Jqh4c0aT+HDaz6kmjtg9Kg+ltACHhcR28zsecym1EdUBCvb6iDRihiyEzGCpWrH8o8C/yduMmTFV7GoYLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738048851; c=relaxed/simple;
	bh=6imr/Ij8DmjqfODuyxHY3qf/1LVweAyqgXMuWL7+KPI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NfBx8P7gGjO0bNHZCLk7hLAsJkA5karyGT03grkClEs8WZjjCdmHACkp02ZSCbO4UAXkXtB5C0/MhvAfVyzUvHfAMI6Q7nAfuPx1xVK938v9jMU/CKwIWsybf/noqOpBoIA1IsZs9y5IXDSJugQL/45Y60vjSxK+zC/HhF7vumI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGP30Imz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42E23C4CEE4;
	Tue, 28 Jan 2025 07:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738048851;
	bh=6imr/Ij8DmjqfODuyxHY3qf/1LVweAyqgXMuWL7+KPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nGP30ImzrO8XZS8eU8Swnk2985zVVKwBIHzZuE80spUwbG1vLTA4kSUuyYrMdzOEq
	 yGOcLKuJCqDF/XDgs/9KHikqEY7dv+iC1SGnyonAuAVNwCDR7PFtadrGcYKChx5pbA
	 Og+aUNj/b2tTJBmIDNxKnAwIyfChQ26C+iInxayKCDtA+Q8GIXqsH33Ou3k9mohCsB
	 r2pPIcWi2VD2jV22SRSesMMsrNYu0QqmJH1txYu0iU7SqmWu4gty/stNA+Ep5jL7dh
	 pFnxJ7F0d7XQ9ojyyZHp5YGrhFsTGRo9d/s8HQezpu3qtz/MnNdWsuLVu7XnG+DvYw
	 KjybRFqPrax0A==
Date: Tue, 28 Jan 2025 08:20:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukas Schmid <lukas.schmid@netcube.li>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/4] dt-bindings: arm: sunxi: Add NetCube Systems
 Kumquat board
Message-ID: <20250128-grumpy-bird-of-plenty-dc7abb@krzk-bin>
References: <20250127202127.971172-1-lukas.schmid@netcube.li>
 <20250127202127.971172-3-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250127202127.971172-3-lukas.schmid@netcube.li>

On Mon, Jan 27, 2025 at 09:21:23PM +0100, Lukas Schmid wrote:
> The NetCube Systems Kumquat is an Embedded Controller based
> on the Allwinner V3s SoC. It is intended for Smart Home or
> Industrial automation without the need for a traditional PLC

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


