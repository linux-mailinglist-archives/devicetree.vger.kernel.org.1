Return-Path: <devicetree+bounces-254551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F9AD19452
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37339300791F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E53A39282D;
	Tue, 13 Jan 2026 14:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="WHp2vL0z"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C460438F954;
	Tue, 13 Jan 2026 14:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313072; cv=none; b=uiNbOVYrjUXgTzxVXjX37dN9N9+5CQGGIp+lBl6YKM1L7zQJSKwcRNTNgLmF8XWX8zw2MFb7UyIQA/PdHgjVhgK0EZzdM2cIrm15ohtLsSfKqfk3/seTZ7oKZ2fCEQyTMPd0ZdcnqsphdCKJ9HrhuigMaG75XVbgYRcNnlK/dhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313072; c=relaxed/simple;
	bh=shRYwWbWjyroLMI8uhZkpxhQQ5ACX+ddHyBv8bjAEA0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c8U3NmICKeRQJs1lGfUA30m687bWRvbS0239YxkB7weTZYni/y9KgbvMg2x6gB8UJ2VQpZKYQT/0Yd3fkVr2Wl9rDBlwSpy+LF/MCYjCsxvB6+08Miklxd8LAZHR7jl/qaPjb88/z3/QbyESerFoJh6tY1c0cyKJht919vyRMTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=WHp2vL0z; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wd6e5O0iU7JUgh7BLqurbGHD/MNBTN0LHMWqkHNi984=; b=WHp2vL0zrGIflsLJgiFDyokK5d
	auqTfGMEKpj9z2iU+AES00Fn/QTlHo6NCor2RQz1YD49/RMaUdB1+P0z2Ii7Ls7SmWk+rw6ZBYoYt
	xsJzrnlYhoL8vr97+5jGiQEHoGJe/wa4EM12OY/drKIATD7wM5hacTKmv96JMp9dU1pvxXArZctBs
	GZ5v4t0GpIxl28kpB6BDtd/6GoTVhBc5OWlntPAjs6fkLqNjtOUkdboLM45W3QlOextetbpclrKFI
	V87r3ODZ8nVCkAL/Ep3w5mA+GUPbHFQXqko1MA55x5Bay4hL+MkeAezdHzqN72/zFYWtM7OolWA8n
	z85j1JGA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vff0P-0027FZ-0B; Tue, 13 Jan 2026 15:04:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] Support for QNAP TS133 variant
Date: Tue, 13 Jan 2026 15:04:17 +0100
Message-ID: <176831295369.3955755.7083512245905184027.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 04 Jan 2026 20:14:43 +0100, Heiko Stuebner wrote:
> This adds support for the TS133 variant of the NAS series.
> 
> It turns out this variant is build around the RK3566 instead of RK3568
> as all the other are. This is "fixable" by not including the
> soc dtsi in the board files and not in the shared tsx33 dtsi.
> 
> While adding the devicetree I also realized that some things are
> wrong in the common dtsi:
> - the shared sata controller for all variants is sata2
> - the TS133 does not have a "copy-key"
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Move SoC include to individual QNAP TSx33 boards
      commit: f0761f6be5ed62bc282349c46784d676571ace83
[2/5] arm64: dts: rockchip: Fix the common combophy + SATA on QNAP TSx33 devices
      commit: 5a16e131ddbacdd7acfb8cab6ff0ca1c57339600
[3/5] arm64: dts: rockchip: Move copy-key to TSx33 board files
      commit: a81a2d211344675de4d945eb2070e3ef1202060f
[4/5] dt-bindings: arm: rockchip: add TS133 to RK356x-based QNAP NAS devices
      commit: ae2208dfa2ac3872f2a0d4c72f1a29fcce7b56a8
[5/5] arm64: dts: rockchip: Add TS133 variant of the QNAP NAS series
      commit: 26cfaee2972c95a6d3ad85549df089a4ee93a551

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

