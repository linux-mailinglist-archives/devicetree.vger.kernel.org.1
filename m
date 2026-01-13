Return-Path: <devicetree+bounces-254552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A885D19467
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:05:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1187B301514D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958EF392B9A;
	Tue, 13 Jan 2026 14:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="i5vpYb10"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF16A392B98
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313079; cv=none; b=gB5FmN3ESHyTg/8O5Tg/xjEgSLcF5KJ1BWnnxUnUqXZnCCUR4fAe4szvtDbFS2vkFRBCTdZR50VkqmT6WM6Yoxg88+QVp07wQUgHQudmkdwCv+PTiQzrkppNrcB1Ktkhk2VKA2a0aErn5W3SNfgt012KNVV4TrDBmdQQvJ9I+2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313079; c=relaxed/simple;
	bh=KrYPdssMIwWZVUu4AhH8JfCAnKdffQiDlNYUBdiUj+A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xml7ziKmnVdZvHPZvPrsBwVGj0Ct6shswrOuLUrd9Yo6E7zX4gOCGXgvpV67mYCy/smMJnZTwjDgo0Dard+4fXTgLUJWzp8tdw2a62rbhpfKXfJpdAfzQxuUZt+98HBqUwGO43T95tx/B//kVV4NfcpS+wnDK1w1hQMqSPr4bp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=i5vpYb10; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AQO1vg4mmW5S/RBUtw1dHkSxQcde9e9m0fNMRR8sntw=; b=i5vpYb10UyIszz7mEEuZ+U++QB
	+Q5EVfZU6iIcJbqVKUbPGcE9vAnW0eVWmare8L04kfSlootIanmLvWBP9kVIWoDu3JDaX5qBBfVzY
	cvjcIS3dXol3FOo4nmOnVK/YMKqqnYCiK8eJ54OEvKTFkR2hGbfroXk7kRGR4di/IeeWUxm2pdPQA
	CCN7UofK0kYkQAcWlrRLiDFNjFeLfuoBhjB6Nq1TtZ38ePaW4jcW4o6MAEA3tkLkBCj7QbekkGDCk
	PFeNgYwkNHkaF7nw8wQ/EaQroXBViXm6lXzEnCkIEKp/IjfRxiEJxVHdWESa5rYbc8qdOIMUNA3vp
	fHZhjzhA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vff0Q-0027FZ-7e; Tue, 13 Jan 2026 15:04:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	sebastian.reichel@collabora.com,
	kylepzak@projectinitiative.io,
	damon.ding@rock-chips.com,
	alchark@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Tue, 13 Jan 2026 15:04:19 +0100
Message-ID: <176831295372.3955755.10476613035498683234.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108034252.2713-1-naoki@radxa.com>
References: <20260108034252.2713-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Jan 2026 03:42:52 +0000, FUKAUMI Naoki wrote:
> The BL24C16 EEPROM implemented on the Radxa ROCK 3C, 5A, and 5C [1]
> [2] [3] is designed to have data written during factory programming
> (regardless of whether data is actually written or not), and we at
> Radxa permit users to read the data but not write to it. [4]
> Therefore, we will add a read-only property to the eeprom node.
> 
> [1] https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13
> [2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
> [3] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf p.18
> [4] https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
      commit: 4ad1a7548080e9e9ac1a1e78672ce2acb25e69d8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

