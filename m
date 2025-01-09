Return-Path: <devicetree+bounces-137022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC156A0745E
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5AC01606B7
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C06852163BC;
	Thu,  9 Jan 2025 11:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3Osmzss"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9911B2163AA;
	Thu,  9 Jan 2025 11:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421222; cv=none; b=D6ql5R8+5UYrUy2utvNFNIO1CD6yNhCM/mamhgDQplcZgVDfqfVZhdcL3maDAep+xDyQX5a5vPmtMjcszYecBzH88sFt1yby28kN1KQ+3nLomLPBJnnjpOWzEnm4F2W0fsgyc6KqOy6fD8u0G4heCWI1Fn7sLbyN5gmqC/J9pRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421222; c=relaxed/simple;
	bh=p9TIhZ7OX45tv8xEyiNTKxCq5RRiqfzvRAm+X/81d7E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kTCKA17r0vClPvLOoqsBCVj9E5dgrt9IgH50WOJI+oRxPvjc8VbAoNaB4tBt08ZMbQr+WL/RK12fOttqBNKIt1daWgvvVKohUrycy6OhfGTVvzATpYDSx0huk1NNho7rWOmtl4610vTyhcyO4I9BOgK/rK50x8cMP6SRyGEeNdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3Osmzss; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E413C4CED2;
	Thu,  9 Jan 2025 11:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736421222;
	bh=p9TIhZ7OX45tv8xEyiNTKxCq5RRiqfzvRAm+X/81d7E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=P3Osmzss9bivLlAXPP80FDZzf6i4wCubrYw4m30ieMYEX66TKKpeBb4gwp/iaDKn8
	 kHuURrzwslSw57vBc0Hq+KqWTVGWoET3kYvSZNJOESlkNOnz3TucmliRrRf3o2yjBc
	 uwpF57uRS2o7KSfIVXtA8G0D5WNrXDlN3/19iyPOxvyPQesho77n8v2cYEGiVUecw8
	 nRnn53J+ZaAiHDGTD7LWeTfyEDr+k6AWv8vnIT5brFe9NOSaFP4aV9e4FoczeYezSd
	 tiClthcn+T6qJNW6PNdZiw9jMc1NPD0t4xKDv60ziltqnLfUPhyL4+sERxuQYg3v4s
	 KWHb3X1YSiThA==
From: Lee Jones <lee@kernel.org>
To: heiko@sntech.de, Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20241224094920.3821861-16-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-16-kever.yang@rock-chips.com>
Subject: Re: (subset) [PATCH v2 15/17] dt-bindings: mfd: syscon: Add rk3562
 QoS register compatible
Message-Id: <173642122026.2601082.8486356764608570006.b4-ty@kernel.org>
Date: Thu, 09 Jan 2025 11:13:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Tue, 24 Dec 2024 17:49:18 +0800, Kever Yang wrote:
> Document rk3562 compatible for QoS registers.
> 
> 

Applied, thanks!

[15/17] dt-bindings: mfd: syscon: Add rk3562 QoS register compatible
        commit: aba4f736fc5553b936808ccdfd3ce21ee3ec7ae0

--
Lee Jones [李琼斯]


