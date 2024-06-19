Return-Path: <devicetree+bounces-77643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8982690F877
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 23:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 404E81F226EA
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 21:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0CF67D075;
	Wed, 19 Jun 2024 21:25:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF58779B84
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 21:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718832357; cv=none; b=bZPqcdoG6d/afihR+OvmeBRJ6tgEIUMXE80vPaGqSbaeWqer1AeKtQryOiJP3fNIAmQk7k0frBkgWmw36tgE8kGiUR5oSiK1iWO52vBJa35jSNkC6Lh102/WEnKT92lS+Flc94knVNnYuA0WmnsMdF7+ujZZg8ga3VRSGsGZSb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718832357; c=relaxed/simple;
	bh=M2ZUPfAFCyLyKCoF2hAT4ddJ3cXQCSnNXqZQ2/LUgAw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lzTD0S//mn0VLJnDhsmbKHnTolLwyPjBy/XGZyidcRzo5hJVhhV3JI47issh9ts75YuziF4s87dDmvHNKo+rJSFBNkxZuhH6bc3wE3msh9WD6Ms6kREDYaRVj5w1NGIcONJSt2lDKMPx2fol7OKhbQBYDSootSe9ksR7Gcd6MIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e8616dc.versanet.de ([94.134.22.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sK2oD-0001sS-CL; Wed, 19 Jun 2024 23:25:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject:
 Re: (subset) [PATCH 1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK
 Pi E
Date: Wed, 19 Jun 2024 23:25:27 +0200
Message-ID: <1938148.VZ3vTMCxA0@diego>
In-Reply-To: <793B93C3DF509ADC+f2b62f2b-bc05-4573-b783-ac0a6083a21e@radxa.com>
References:
 <20240619050047.1217-1-naoki@radxa.com>
 <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
 <793B93C3DF509ADC+f2b62f2b-bc05-4573-b783-ac0a6083a21e@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 19. Juni 2024, 22:07:25 CEST schrieb FUKAUMI Naoki:
> Hello,
> 
> On 6/20/24 04:31, Heiko Stuebner wrote:
> > On Wed, 19 Jun 2024 14:00:46 +0900, FUKAUMI Naoki wrote:
> >> use GPIO0_A2 as interrupt pin for PMIC. GPIO2_A6 was used for
> >> pre-production board.
> >>
> >>
> > 
> > Applied, thanks!
> > 
> > [1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
> >        commit: 02afd3d5b9fa4ffed284c0f7e7bec609097804fc
> > 
> > 
> > Patch 2 is not appropriate, sorry.
> > 
> > The aliases are sorted this way since 2021 and the order is userspace-
> > facing. So for the last 3 years people have boards with the sdmmc as
> > mmc0 and changing this now would possibly break a number of boards.
> 
> this is the reason I didn't add Fixes tag. I think this change in next 
> major release is acceptable... but it's wrong?

Correct.

Because with that change, all people mounting /dev/mmcblk0p1 or
whatever in their system would break their userspace after a simple
kernel update.

And that falls under the "we don't break userspace" mantra.

People should be able to expect their system to keep booting with kernel
updates, without neededing to meticulously validate each kernel release.

Hence that mmc order needs to stay that way.


Heiko



