Return-Path: <devicetree+bounces-109165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BF599579D
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 449E4B20D17
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 19:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D032212D3B;
	Tue,  8 Oct 2024 19:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Q34orJe5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0351E0E1F
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 19:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728415749; cv=none; b=XxJ4jbLNNNDXRhrGqwkbi/vr8fnY/cOvaWS7zmfwNUHjYYEhQkDXHjnR0/T7yx2TXrEVi0atf9+FSGY/KlgK50i1kWL3t3Ph9tL4ZvZEs3cWbpYMnP0UKR7iBSi7eLIdR2VneMqMu6PCfsCutFCJa9gE7uGUaGcromjdY3hQJnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728415749; c=relaxed/simple;
	bh=eZUPpp9f7ZjHiosLc+GX/lkoiTXRTUeOL8JyTKvENvY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pAMOPSH8zcFTIA9OO6i3PJnABj8yrx4MK879dOlDIOovSW733kkkPj/NGCO3w7zHf5715nMR0A2yOQZzCdwOzpQFXwcV8IT//kCLlFgrooapnUhSXdlJ+wh3bpfZgAxb4+STBqB0X68uZ7IGvnrxebsqezjswejXCtqkWjxpa4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Q34orJe5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KtSzMVuMEzmsb3s5fp/CzqSj8SpZ1YGfO98bqbEbK/0=; b=Q34orJe5ZHnr5MZ9vAdXxHcZq1
	2aXNdxjKHtLoRCTdqvUstJhkbRHJjR8nmgvorfvRdVWR5QsHZYPFJSfBhdwvVmLxXh69TC5UmoITQ
	ckCf1XrvTxEql4JoARhK1FRrB15FMC6LAcSSCYqJ80R3yg+RIGG79oLKStW/tOLEXPABJ0xEQC5Zo
	7skbO7QIvIQDaqW+ENEmc5UQlqJ/apHM1tQruTFUERRcrxQH+DA/hOQ2AcCedm+ArOhvN1EMai8id
	Gj9TPzXlPzU/lSspkiP7g6xEKcEudOPQ3Wq6TI9ri8l7Stoxw00X2PLzQ2hh4MDnrn8bjq6j/qROr
	L2ZQfpdg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syFtH-00072O-4F; Tue, 08 Oct 2024 21:29:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Drop deprecated 'rockchip' prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 21:29:00 +0200
Message-ID: <172841572989.2562611.5754395853486071565.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008105450.20648-1-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 8 Oct 2024 12:48:00 +0200, Diederik de Haas wrote:
> Property 'rockchip,system-power-controller' was deprecated in commit
> 961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
> 
> in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
> replacement is (just) 'system-power-controller'.
> 
> Drop the 'rockchip,' prefix from the px30, rk33** and rk356x DT files
> which still used the deprecated variant.
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
      commit: b975d52be58c6be2a9a971c718782c9430ca8b50
[2/5] arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
      commit: 303a1ff41587642f669ab550c31ab319510fabbd
[3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
      commit: 779713c2d87d0918511a665b888313f30314262e
[4/5] arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
      commit: fafeafc33730604665a39bc9a70271f2da54a063
[5/5] arm64: dts: rockchip: rk356x: Drop rockchip prefix from s-p-c PMIC property
      commit: 2f0f7602dbdf4aa2ee50446f8f488445b37bb04c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

