Return-Path: <devicetree+bounces-79382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0D5915134
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 361202867F2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2B4019B3C4;
	Mon, 24 Jun 2024 14:58:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F305719B59D
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719241116; cv=none; b=AkAyPHe/WFL2QKfFNz/IAwugliD5SFjMpYf7GEnKBZsqcBQFnpBDbrGFofzLvfBsIr2MAxZadGSrJq23zsA1DyBu7SSyqthp2Lthlup2lS/NPa4i2Cc6nF21qOqYBlEsygN4iHKwrXxvFKPmv6Cvb9pfheNIywqfj3cJ2clGMsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719241116; c=relaxed/simple;
	bh=RArBktljEKwDlCnZSNGaVWC21dpHR+SM2Tgckwc4dYg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dcPOlwo6Orm4PCw2YAEhEFFNl+4RF3MbVVhnt8VeSrsMqjBdkDfds6M9ODmRL7OtT+LMSCr7DnwlMllMxLZUawTyjHwcidzhJWD7wx/Be9nOdFXaCowpBMSDvFtIOHNS5e1NbrPA/i+q2wuJyAlwEyU6kv1KlbM5sW52Z59aO2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLl9C-00019N-TS; Mon, 24 Jun 2024 16:58:22 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>
Cc: chris.obbard@collabora.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 sebastian.reichel@collabora.com
Subject:
 Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK
 3C
Date: Mon, 24 Jun 2024 16:58:21 +0200
Message-ID: <2557120.Y4W8hZkJsM@diego>
In-Reply-To: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
References:
 <20240623023329.1044-3-naoki@radxa.com>
 <20240623040409.1756986-1-amadeus@jmu.edu.cn>
 <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Sonntag, 23. Juni 2024, 06:24:56 CEST schrieb FUKAUMI Naoki:
> Hi,
> 
> Thank you very much for your comment!
> 
> On 6/23/24 13:04, Chukun Pan wrote:
> > Hi,
> >> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.
> > 
> > I don't think a fixes tag is needed, because there is no documentation
> > for this. See also (sfc part):
> > https://lore.kernel.org/lkml/d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se/
> 
> I see, I'll remove fixes tag in v2.
> btw, is this change reasonable(acceptable)?

it is, also no need to resend, I just dropped the Fixes tag myself



