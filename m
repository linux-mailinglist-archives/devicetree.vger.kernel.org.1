Return-Path: <devicetree+bounces-248862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B1597CD6315
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDA673014B7B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74EF831A7F9;
	Mon, 22 Dec 2025 13:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="O7YYw/E5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9DF2C3278;
	Mon, 22 Dec 2025 13:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410798; cv=none; b=N5DO7KcQwivHEdzV+tBTc0nb3Rf4CbHG4aT4uBnkthn87kw26laH46AWxzlDk8R/tnvCwfXk4GgRvZ1HYjba6A6XUXamaHEmXxYIbvRcayf4it270Cr69pNJqleqJAS+qUwgFjj9C3Nwl9g0d0TX4WC1YGQPGg3sswUb0s35aEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410798; c=relaxed/simple;
	bh=1c9ZPZRZkz14B3cF0kxLCmvcGTxuNJZNvYxvmg4ZTGA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rLzalcmAQmDJPnvNsfLVT73GIhIJEF+FiDgoG1o6FnMMn17Qa9ckp0//HPKGg2V7WqKXjHPBj82PwXELvWbQEPu2nRCxFAU6B+/My7tWTbsGHz4UgDWGL+G/IH7NwI6G+yP27DKwZsty5aNb+JDpEYt8ClpNp5z3jM5k7fY0yMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=O7YYw/E5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1c9ZPZRZkz14B3cF0kxLCmvcGTxuNJZNvYxvmg4ZTGA=; b=O7YYw/E5YjomHWfZoJ7vD3dncy
	KzvaCkoIAq5An6hIlP6SiqkrKsZIG4DkoWc3ip7d/UDT46max9CrdQmtNsmEiOrxeaucRbK0E8d5q
	3PMWS0Xkscx98wmUYiv5Lz8NUmOtLM3kELki8YHZ/uvUCuBhXonOmxl1WYyuEqOON6WznjJ2pvddG
	XCDSBAgBXQicUbQnZElPczJ++2eQUbzzWHW8yf+k7lo4xuGo2gqdrRh0OKx+MWr3eS1iKKOfqV1ax
	qBf4vllJMezhHj67Qo62y2yluC5pU/kTrv7cZNmbCgraWji41QCeczhHrLrtGM4ZiamH4Svn9LdrS
	wOaUv7lQ==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg8c-0005vi-1b; Mon, 22 Dec 2025 14:39:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: enable saradc for ArmSoM Sige5
Date: Mon, 22 Dec 2025 14:39:49 +0100
Message-ID: <3767252.NG923GbCHz@phil>
In-Reply-To: <aUlHa-QhCLOk8AGa@venus>
References:
 <20251220100010.26643-1-amadeus@jmu.edu.cn>
 <20251220100010.26643-3-amadeus@jmu.edu.cn> <aUlHa-QhCLOk8AGa@venus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Montag, 22. Dezember 2025, 14:32:53 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Sebastian Reichel:
> Hi,
>=20
> On Sat, Dec 20, 2025 at 06:00:10PM +0800, Chukun Pan wrote:
> > Add ADC support to ArmSoM Sige5 board.
> >=20
> > Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> > ---
>=20
> The reference voltage is different between the different board
> revisions. Older boards (1.1 and 1.2) have SARADC_AVDD1V8 connected
> to &vcca_1v8_s0, but newer boards (1.3) use VCCA1V8_PLDO2_S0
> instead. I guess considering &vcca1v8_pldo2_s0 is marked as always
> on, we can ignore this difference, but I think it's worth a comment
> in the DT and the commit description. Otherwise:
>=20
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

darn, too late for this one - should've waited longer for
this possible Rb :-) ... I did add the others before pushing
though.


Heiko



