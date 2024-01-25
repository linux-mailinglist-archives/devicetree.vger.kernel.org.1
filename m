Return-Path: <devicetree+bounces-35290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1A883CE37
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:12:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A40831F2351D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973BB13A273;
	Thu, 25 Jan 2024 21:12:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDE313A250;
	Thu, 25 Jan 2024 21:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706217149; cv=none; b=bgJBUJHU5AbC3HITKs8LjcnWRyvJFoOWV5OtPB00UAdz8TOexfwXVN7eUKQ2LLOWDWN/tfHqNPbYCZ8vmNtLUzs5LDFA+r5TM3RVNEIiwfyVTM+6VoeLdeH2/PYeMGxdMA346T9kEP4t/O2ul36H1mkQxtjoFpbnjDLwKaH/s7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706217149; c=relaxed/simple;
	bh=noS0XUGVob3BCAiy43jmc3g6KQLzyjK5d/ixWrOz2lw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=X7m4l0IW2sF5DiW1rsR9E4APBFU313H95TPYHlgNztNU4GusoPZXB23P0rF4uL6/6/NPNOZN2elAVt/ZMXDvhaD1V0KbdkGq3QEFzgHcMZ22zqzOrZewowUXwzjY0QmPNCyxoe35/rqAJnZVpU+IZyagVojGLuf8QSIxVWtvmAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71H-0002EX-0F; Thu, 25 Jan 2024 22:12:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b
Date: Thu, 25 Jan 2024 22:12:05 +0100
Message-Id: <170621707726.1872080.10519033279482537538.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240106202650.22310-1-alchark@gmail.com>
References: <20240106202650.22310-1-alchark@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 7 Jan 2024 00:26:45 +0400, Alexey Charkov wrote:
> By default the GPIO pin that connects to the WiFi enable signal
> inside the M.2 Key E slot is driven low, resulting in impossibility
> to connect to any network. Add a DT node to expose it as an RFKILL
> device, which lets the WiFi driver or userspace toggle it as
> required.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b
      commit: 82d40b141a4c7ab6608a84a5ce0c58b747cb7163

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

