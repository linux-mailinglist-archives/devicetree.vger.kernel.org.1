Return-Path: <devicetree+bounces-140299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52810A19232
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2ECA53A2E2E
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C81212F90;
	Wed, 22 Jan 2025 13:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="hDGA3cWk"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D0818E25;
	Wed, 22 Jan 2025 13:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737551874; cv=none; b=SHKPW8Au1WvajwvgHLnplpgi7foqfsJ71B/VqLWoiqaDI08fjw8KbTnzLszC0OCwR0gbu8JCV8dtfV+DZFBGYKza1iHG0YJuyvL+UPPUTo1CWPCWILiEjJcHgOFebF8qgbPF+u1+9o7C99uz+IsgmrzrjMMDoimhJmv7sMM7x/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737551874; c=relaxed/simple;
	bh=7J8JYUJiLeE4gG8/YlACxnWVvHr1kH67n1Ss2dPnkxQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JiG84bGIN2RSgvgoJ8KOatFkgj9Df1d/EDIWTHDz7iQrCtxB1Cf/uPiMGvg9OZdtHu5kZz7/SUwOhdO5Z803hpXdjyyBga+wOvgUP+8Ev5NZrNAiV0zJGIOGrp/qjZClptGhl1AEzTNo8CD5n8j28sWjjLkaRVfTsSuIlV+SM0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=hDGA3cWk; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mQUPGxoaH8FA59cOm8IpluUIIZocGZ7cJ6+fjnFb0aw=; b=hDGA3cWkUIjckV8IEpqdEy2BJ2
	SgI2YPnxfeW+EhMoGELAoVeMIQQEC48m5RGhHktUd4o6xJ6W5DbSNnhOUKBbTOvZRtXuY9ITVNEVP
	NoBbLrmhH/h7RwgwGb5SIdr/rK60OO5V5v70Tt+AI8nHTANqupQw4gHiD5++N5/miFehZaDUJoNFx
	x7M74XOo97mJ/8sii2d8/cJF0akRn4K3LnkTF6+Jiklr1MqjC1hS3AXjI0792P+Mu7Mf4KVYSO4OT
	vAs4SLdi2yVuyh4FhK5SF8os7jka2Qq03ZuXOald3Rnqdk65NhQifqjN9xzuPiwd+u/6GvXY7nw4U
	6r1yyxGg==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1taabs-0003Kc-Ss; Wed, 22 Jan 2025 14:17:32 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 1/3] arm64: dts: rockchip: add overlay test for Edgeble NCM6A
Date: Wed, 22 Jan 2025 14:17:30 +0100
Message-ID: <39523024.10thIPus4b@diego>
In-Reply-To: <bbf47543-6fe3-409e-a988-35be63d47cfa@wolfvision.net>
References:
 <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <433a8050-98b5-409b-97b5-00fe0e719a52@cherry.de>
 <bbf47543-6fe3-409e-a988-35be63d47cfa@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Montag, 20. Januar 2025, 11:34:25 CET schrieb Michael Riesch:
> >> Maybe open a new section "# Compile time tests" or something like that?
> >>
> > 
> > The above line is to compile the build-time test of overlay application
> > (notice the missing o in the extension). This points at the target below
> > (which ends with -dtbs), which does require the dtbo to exist. So
> > essentially, they are both for the build-time test of applying (and
> > generating) DTBO. I feel like this comment/section would add to the
> > confusion? I may have misunderstood what you are suggesting, can you
> > provide an example?
> 
> Thanks for the explanation. At the beginning I was wondering what the
> point of this line was, and thought that a comment that explains the
> purpose of it would be beneficial.
> 
> Maybe it makes sense to provide a section so that other contributors
> know where to sort in their tests, so maybe
> 
> # Overlays
> dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
> [...]
> 
> # Compile-time tests for overlays (and combinations thereof)
> rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb
> rk3588-edgeble-neu6a-wifi.dtbo
> [...]

I do feel that both parts belong to each other, and we're reading from
top, so personally I'd go with Krzysztof's suggestion.

# Overlays
rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb rk3588-edgeble-neu6a-wifi.dtbo
dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb


Having separate blocks for overlays and the description of the building
blocks just causes the reader to jump up and down between sections,
especially once those parts become larger, so please keep things together.


Heiko



