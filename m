Return-Path: <devicetree+bounces-79411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDCA915354
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:20:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 798D3280CAF
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE9D19DF62;
	Mon, 24 Jun 2024 16:20:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1155019D89D
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246029; cv=none; b=J/xz/AV1P383K0H/Sg7Wrzz4cNcOFynjKzT1vKLJ0Y37vzN8B/XxicY4pfGF8e4a0gk04vNlEUskq1y0R94GRF3m8dcYIHQ50TxSiJ2sP219+zpuo78w9EFjaDw5hFAWlAFSlWdeAoR14CJcEINa8fkhlBigQ7Nymqpui1ox2/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246029; c=relaxed/simple;
	bh=1oyhCAuj+050kiKmI8qixR3nFZ1Y9XrVFqA2Ry4LSGI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EPpMpfxmMBK4ZD5RDcZz1A3oG4JgGg6J5AZVIAZWfhD14HD5ERX20IIEtlcajD4MdTgK3ni2F9HK+IkVMh6fi3HH2Qg/nOUPxgdccSHzMdzJOfP+wVWk6L3tty4sUCtaqsR3LMHbqRojhRRK8c9EPQxOkOP1lPWUJrBpXhD1ugI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQc-0001wn-4y; Mon, 24 Jun 2024 18:20:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Peter Robinson <pbrobinson@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable SPI flash on PinePhone Pro
Date: Mon, 24 Jun 2024 18:20:20 +0200
Message-Id: <171924573794.612064.17015120113364864391.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623204616.1344806-1-pbrobinson@gmail.com>
References: <20240623204616.1344806-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 23 Jun 2024 21:46:14 +0100, Peter Robinson wrote:
> The PinePhone Pro as SPI flash on board so enable the SPI
> interface and the flash.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable SPI flash on PinePhone Pro
      commit: c7f024956d9f35d8b305fe90fe33d7f15055ef25

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

