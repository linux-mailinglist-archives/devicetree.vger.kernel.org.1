Return-Path: <devicetree+bounces-133612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AB59FB06C
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FA1B188297B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 14:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 017DD1AF4EA;
	Mon, 23 Dec 2024 14:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNx4YZzc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5B41917D8;
	Mon, 23 Dec 2024 14:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734965900; cv=none; b=qh5lpT9geg9Hv3mUcNnXybKAYgPFViVYC8176vFKfiyWl3FMb3GRdQMVp0rGdCkPgqEJ5fVwr0q2GpD63ypBPNLPkqQ1ZIgTJjHifQYLzBJSWAT9RCSIAq+zkSWDPiTEDyU+60EIgjaYX8hEFMWxN21LgTjzaNvogN5Y+C1Z+74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734965900; c=relaxed/simple;
	bh=bTXyhy5LGoHUqetVuQXM4/3DpaWUAqTOWIbBAh3fDK0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=loJpIl2idNGXJOZssqu03Sq65c+KFa9WdVlQdujOzjFfdgq9uCdN9OO9RBvL7Azp3ALWw4t8qL4Zrmv3YdJgyL5YgIV/fUlaDcp9kzu7rp1rcWys9czAbP7a1OJhMNcH2cjCec7bOPo6o3x8AfUjU7g2fqoMWUlmI5ofugJzBC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNx4YZzc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81ECEC4CED3;
	Mon, 23 Dec 2024 14:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734965900;
	bh=bTXyhy5LGoHUqetVuQXM4/3DpaWUAqTOWIbBAh3fDK0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JNx4YZzc4TjHrZmhyFZpXk6bnCd5Ln6K0EQ8fDRhar6iWSp2e4Jj0ZAWde1gq8GkV
	 Y89OjvHcaJprYB9HLq+tD7cbKDqAYSJEBZ1gO/jHaoUHKNvkETSX+WA0NeNdOcvCce
	 u0ptLsttFTzb3VvSe9PeG2r6ub0TAZYd1lmykio60sgnjEh/l7w1icf7KsF9RpPsfA
	 MtNEsuahDLTBpJt9CczFiai+wuKil0T3WvHYGRIOjvIyfmNuzlW6pxUOOZxXNom+Oi
	 VYw7Y36sxY98yk3oQ8ZU8Jla0WD1J7QvKr+4S3ZINzDlrNy3prXWGRuEvBYv0U2gWb
	 NovTQb+vvzfvQ==
Date: Mon, 23 Dec 2024 15:58:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, Tim Lunn <tim@feathertop.org>, 
	linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: arm: rockchip: Sort for boards not
 in correct order
Message-ID: <dzrmlapgca6vwqpfxi7sub37z4taerinslfthqwqi7jltb4xxh@wtry22ybpd2r>
References: <20241223110637.3697974-1-kever.yang@rock-chips.com>
 <20241223110637.3697974-6-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241223110637.3697974-6-kever.yang@rock-chips.com>

On Mon, Dec 23, 2024 at 07:06:35PM +0800, Kever Yang wrote:
> The board entries should be sort in correct order.

And what is the sorting rule for this file? Board name? SoC compatible?
Explain this in commit msg... and please test your patches before
posting. Public infrastructure is not replacement of your tests (see
failiure reported by Rob).

Best regards,
Krzysztof


