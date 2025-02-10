Return-Path: <devicetree+bounces-144672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CC1A2ED45
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2CCB3A4C46
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D4522258D;
	Mon, 10 Feb 2025 13:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="RAV9hxnj"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE66A1B0F00
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 13:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739193172; cv=none; b=TjT9XpkUuAUD7+G7aqR3mGGdKs+ZYIpwAUG1uNi+DGA2/XnDcc5RN9Vwc1N+6UQWokuw0HGpzEaybeGKz1dYkgDmXZjhav5UgWD4Xm5SEQuaPLhIGf8vEKyMCphbk1E96NvGHZal7eHajx1OnLXIrM0P7bGYrEXrljdLR3NQsb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739193172; c=relaxed/simple;
	bh=Z/Su0wfCeLsevkoE/23XLyZPKdT/pG01xuTTvz1PImA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mdR6sXGyTDNUB9S5JLgOkxJDpl0+nVkoZPA6V6mxE+wTOaG/Pc3ksY9fJStsZ3c0EX0tlgDFXsWp6GklGlsWOcId8jvAddgI0WbwzmlA+Esm688GTS8l4nhJKWpIAhajdxKOlZTlRO1zBZnh4et/ZCFXqooqW8seqTkK4WJgIU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=RAV9hxnj; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ciWRVZkQ9j2tyd4uX+oemeWAvXhKk4+4yp01dpYdRZA=; b=RAV9hxnjvFFmJpnvDXAaLc7cvc
	D1+sixqRRZYRhNw6BXb4RXQz1s00EyeV0zz+wgQsvReL39hoRcoRK9IsZ7z9TJ3jR76vIN5YM+C0p
	wDjt0GHSHoVsdrOBC3J4dH/zqJE5kMJHZbJ0+Uow2M5m5yU4x64/772J5uNZI3xxH95hkIPlvIQ3E
	VK0oW1JlR6Hz7AZ2zZRFJhlHz5Q+YGlQhKCIdGvLwiDlpgBt/Tv5CtjbNR5NpeCi+uFDuavZGWP+D
	vnzjZAZpbDm0DrWinjUL6llQcUVAtDHawKtVpFCZdw55bbbmC+rzs1thcgtcEG5BYAutYK/GcvVSu
	/3PdCOgw==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thTah-0002q6-Oy; Mon, 10 Feb 2025 14:12:47 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject:
 Re: [PATCH V2] arm64: dts: rockchip: Enable HDMI1 out for Edgeble-6TOPS
 Modules
Date: Mon, 10 Feb 2025 14:12:47 +0100
Message-ID: <2928143.Icojqenx9y@diego>
In-Reply-To:
 <CA+VMnFwHEXWP=d_X0T0E9fHFDCkXHxpvgML6jAHNfh9ikXTZWw@mail.gmail.com>
References:
 <20241227132936.168100-1-jagan@edgeble.ai>
 <CA+VMnFwHEXWP=d_X0T0E9fHFDCkXHxpvgML6jAHNfh9ikXTZWw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hi Jagan,

Am Montag, 10. Februar 2025, 13:51:07 MEZ schrieb Jagan Teki:
> On Fri, 27 Dec 2024 at 18:59, Jagan Teki <jagan@edgeble.ai> wrote:
> >
> > Edgeble-6TOPS modules configure HDMI1 for HDMI Out from RK3588.
> >
> > Enable it on Edgeble-6TOPS IO Board dtsi.
> >
> > Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v2:
> > - Rebase on top of Cristian's series
> > https://patchwork.kernel.org/project/linux-rockchip/cover/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/
> > - Update hdptxphy1
> 
> Cristian's seems merged, please queue this as well.

only partially, i.e. I merged patch 1 of 4, because actually enabling the
hdmi1 controller needs the alias-removal from the phy driver, see
Cristian's link "[1]" in his cover letter.

And phy maintainers seem to still be otherwise occupied [2].

Heiko

[1] https://lore.kernel.org/lkml/20241206103401.1780416-3-heiko@sntech.de/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=next



