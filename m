Return-Path: <devicetree+bounces-46848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D515A86AFC0
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9018328956D
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF8F14A09D;
	Wed, 28 Feb 2024 13:02:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2874473508
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709125373; cv=none; b=fl6KnmWewFM/7SsZ0S5O+91RrWaVpWHvXxASrQI5UaBRLoyaLZnkMz2/mN6AD1hTu4CdNcho3slgN/MG5HDO7MgCeyEBH2J8e1g/+0b0pNOWHc624e5CLd+shLC1RSDdSpa+G4D5aZd7EsEASoXwriOyoDq3kG4DEy7PWfnS+og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709125373; c=relaxed/simple;
	bh=QsjkyqxolCaU00ZJBzcoMG8l5n3m7QZF8NFZzPIUWbg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SUyMVNcMpdBVvbZ4dtFh2Pdv2OKc9sb4MXmcSm/6vIpRJjRg+l/PY+PIoUr9bznrnOK0j2ChloI5bqBMzHS2D7LUI1QJYV0d06up5cGD5j8HYpaYk26jPSES8lQpWrhYn3gYkihVxjMIMuCzxmSxHhW//rADm8HcBZQ1rkvus9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfJZz-00020N-VK; Wed, 28 Feb 2024 14:02:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Wed, 28 Feb 2024 14:02:33 +0100
Message-Id: <170912529798.972844.13858021934962822938.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 27 Feb 2024 12:52:35 +0100, Uwe Kleine-König wrote:
> this is an initial dts to support QNAP's TS-433 NAS. It's enough to
> start the debian installer with a custom built kernel (original Debian
> kernel fails to open a console, didn't debug that yet) and access HD,
> eMMC, RTC and network.
> 
> There are still some missing bits and pieces, but to make people aware
> there are efforts to support this machine and so prevent duplicate work,
> I think it makes sense to add the dts in its current form already.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add QNAP TS-433
      commit: 0660dd951e1a09e155e31732fbdf735112b5d6c4
[2/2] arm64: dts: rockchip: Add basic support for QNAP TS-433
      commit: 9da1c0327d58e0cfc2d86799192585ddeb1ae4a0

Moved &gmac above &i2c* - alphabetical sorting and all


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

