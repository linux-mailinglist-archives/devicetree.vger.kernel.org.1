Return-Path: <devicetree+bounces-248883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B26F9CD64DF
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4AA1C30ED725
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC8531D74C;
	Mon, 22 Dec 2025 13:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="W7tEVU6g"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE7F2853F8;
	Mon, 22 Dec 2025 13:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766411802; cv=none; b=bJ4qZ4eaBo4HDCNgofhhIhhidj6rS8SX9JUxuDz/1Hqwocl09xhtwmgMIKLv9IHVZamKjyq4bpB8b7kvHTvFRCsA8cpPN2SQMSzS9hoTMWldgj2DMh7AcmpLqEyvEQQTBTzJRWmEp/pmlC9e5YkYdOlsNCzVN7hb+stx5tgkYEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766411802; c=relaxed/simple;
	bh=PyVHX6rngIYrwSpZ0m9chKG9rXk9tAhIEN/55VWHhUk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gTrzWsOl/vQTDr+HdVsfnqnkUjOmHdNSG1o7j4yI8ODiyq9zzq0/X85uQmBLacwxLp7AC64EEE2SMAla1zWjo0zSz3C+I1qw9P2SXXDdNbHQAMUYLpLer+NgJY1f+mF9w5jxEKNgZFag4qMwGAGhSYQ45SqejXFSs5oZT8u+7Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=W7tEVU6g; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EF9j4Zh6hODxeJEZzwpl1vVN/ET5lq8w58TpeUPzcjU=; b=W7tEVU6gLErw90KYq1AQazMwWA
	9s9tdvm/2q9+qaPtBrb3/SEi7FAczy1LpoKf4AXSt8M3FOLZqCTjsijm8AmE82h23b/29xH0oF7Vp
	TkM4m3pT9MbUhKWTpcskmUi0sjdEDNnkfaViOdN/CSuWl28l5lL2aryR7ymCIG8PxPF2qwicJAi60
	0rfys1AGk4mNW37uJTTXrzGYNOO6N+Qy5n/Pyp6ZhBgWefbhlp+RxZ+11vTOunEYC79+gyIdepm5N
	1i5Jo/2vUBzYBflpJC7lmJZdN7AUEEiTaNWq+Vq3lX7ZbQVjX5SABnBt+yW/D2LfebaS/576Ja5S0
	e6aRyExA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXgOn-00063E-VY; Mon, 22 Dec 2025 14:56:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	=?UTF-8?q?Rapha=C3=ABl=20Jakse?= <raphael.kernel@jakse.fr>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Bluetooth on the RockPro64 board
Date: Mon, 22 Dec 2025 14:56:30 +0100
Message-ID: <176641178738.1651325.3752551269386396461.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251130161259.9828-1-raphael.kernel@jakse.fr>
References: <20251130161259.9828-1-raphael.kernel@jakse.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 30 Nov 2025 17:12:59 +0100, Raphaël Jakse wrote:
> The RockPro64 board has an optional BCM4345C5 Bluetooth device on UART0.
> 
> This patch fixes audio stutters by setting its correct max-speed and
> compatible properties.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Bluetooth on the RockPro64 board
      commit: 9c68a9483e31a9ad25c5399bb5f066b2e4980ad5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

