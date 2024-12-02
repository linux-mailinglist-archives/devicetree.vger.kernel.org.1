Return-Path: <devicetree+bounces-126171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 104B29E07D6
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B7BC17757C
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3CF920897E;
	Mon,  2 Dec 2024 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="QyFbn5Ms"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A561D545
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733153553; cv=none; b=LrwYRLar/vJIF1DUjSQsN9QlFCnoak3rY06/nFb+AtqrADZDvnz3h1wkInUsA4PCQ0B+RbzSmty1R3nu1V9GkJUQyJxjTGYuhY6wBcmLM3dwg5PnflANls1voElxVBnHDRMSAr/32ZHE4K+wx8KaeCEx7WFZ5UMGkaziDrli0zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733153553; c=relaxed/simple;
	bh=RY8PXJlgu4p7NWNGMPhtuJApBObeepNpvmUR90zIN+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AADpyRdiN7OHOyrFqzpLfPGBTZ8OmFnGb8/ctHlp7eFSDc3PNFpYlIWmt9HYEGbfEhqHqhFDD+7QmH9JvehvsHiShc/a09lrMrjcbdeZPXtrtYTXjNep2JeKrDmZuPC9/rCrp+PKglzBwrIGLBYhpMF23NsJAKBOxWnoSTwRPBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=QyFbn5Ms; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8UlTXmqTD0hVxGuezAQrdINnlLV/4cWXAbXA5kGF8qk=; b=QyFbn5MsXOAB+vwNcAdb4r2vc2
	aKxodi9VxRUY66kSLGVZG9oKFfGaFvxXR6TGHBte5e+HKAroErJ7vVvhQ3KOwa4YDp7pr91br84yR
	2jOW0jBwU5REZorAdkouPFHGKCbSi94tCM0TAZ8cvxO4qWZxNJ5xvKeEZ4dMa+3aBTOPibU79NqJ7
	6AZrFbzWY8CoXvUibAI3BFzne7RNsFC1qXGZHra+Bvtrz5xEdQrrL5V8f1h526gDWDxPdaZnIJYkU
	dA/QOUk4WpzSD0TfSOeAJvFTrOxJZIi0F0R91t103NnhfF0b5L46Rpq6yjSURfPxw235INQrRmtyI
	l1Aj/lAA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tI8PM-0003np-2f; Mon, 02 Dec 2024 16:32:20 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>,
 Dragan Simic <dsimic@manjaro.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
Date: Mon, 02 Dec 2024 16:32:19 +0100
Message-ID: <2377405.n0HT0TaD9V@diego>
In-Reply-To: <c50f603a9e1a819f17f72e97e92aeebd@manjaro.org>
References:
 <20241201234613.52322-1-pbrobinson@gmail.com>
 <D6175VTSP13T.200HWIIHOIDQQ@cknow.org>
 <c50f603a9e1a819f17f72e97e92aeebd@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Montag, 2. Dezember 2024, 15:50:07 CET schrieb Dragan Simic:
> Hello Diederik and Marcin,
> 
> On 2024-12-02 13:01, Diederik de Haas wrote:
> > On Mon Dec 2, 2024 at 11:40 AM CET, Marcin Juszkiewicz wrote:
> >> W dniu 2.12.2024 o 04:55, Dragan Simic pisze:
> >>  > On 2024-12-02 00:46, Peter Robinson wrote:
> >>  >> The rk356x rng is available on both the rk3566 and rk3568
> >>  >> parts, the IP is all self contained within the SoCs so
> >>  >> it's enabled already by default on rk3568 so let's enable
> >>  >> it in the base rk356x.dtsi so it's enabled consistently
> >>  >> everywhere.
> >>  >
> >>  > Please, go through the mailing list threads [1][2] that have led us
> >>  > to the current state.  To sum it up, it isn't about what's 
> >> supported
> >>  > in the two RK356x SoC variants, but about the RK3566's HWRNG being
> >>  > disabled because the testing showed that it produces unacceptably
> >>  > low quality of random data, for some yet unknown reason.
> >> 
> >> So maybe there should be a comment in rockchip/rk3568.dtsi so we would
> >> not get back to it again.
> > 
> > I suggested to put that in the (original) commit message:
> > https://lore.kernel.org/linux-rockchip/6690040.iosknibmi9@bagend/
> > precisely because this was quite predictable to happen.
> > 
> > So a +1 on a comment in the dtsi with a link to the discussion in the
> > commit message.
> 
> Totally agreed on adding a brief summary to the RK356x base SoC dtsi,
> so I went ahead and sent a patch that adds it. [1]  I also expected
> that to be described in the base dtsi back when the HWRNG support was
> added, but it somehow went in without the description.

thanks a lot for doing that, so I'll drop this patch here now from my inbox.


Heiko



