Return-Path: <devicetree+bounces-238798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B2126C5E12A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F2DC14FD45C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B45264602;
	Fri, 14 Nov 2025 15:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="TuBdUAPr"
X-Original-To: devicetree@vger.kernel.org
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE6315ADB4;
	Fri, 14 Nov 2025 15:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.209.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763135208; cv=pass; b=aJLNUsCLSOWBXTEYoJDAfTHvgkGC17py/5B2iua/0XC24fNkxF5xAMRBlUDqFpayK8k1nqrZutuSbGNU3OmdBhYe1rfPs0mQlKRbFJifV9eJ0T5M47bJY3BvzesBXLf3DOTb5BaZR6ivr9Dm9PQKX8o63gv51deR8bTLLx82VzE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763135208; c=relaxed/simple;
	bh=vqOd+IRZPLlhz6CgapowylJFAsFZCVlD9+dQhLYQMsw=;
	h=From:To:Cc:Subject:Message-ID:MIME-Version:Date; b=H6QuyHE73SMKiPn+1GiUUFPUfraZB47iYhhlFIpMy3oC6GosG+5IUeRrkB3EAZImbgxg9hgeJV4EioKJY9ngChjrzkm+R6rL0m/XrQwJJ2fr5X3+w4Ya4C06VSQPu/bCtP8fUtVXeN1nDiNnms2EqlcuLdkwJnNsBZBdd9MBHfY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=TuBdUAPr; arc=pass smtp.client-ip=23.83.209.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 857E880118D;
	Fri, 14 Nov 2025 15:46:39 +0000 (UTC)
Received: from de-fra-smtpout10.hostinger.io (trex-green-7.trex.outbound.svc.cluster.local [100.98.37.69])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 39CFF801496;
	Fri, 14 Nov 2025 15:46:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763135199;
	b=TvWIJaJnpKnsR1x7CMAH/gXQryf4odxOMDBDGRwqSycrUf3HrTxiDRPy2yQfOhU9E+n/Np
	dMSu9OuoLdTM1E3yyxOhZ6K9xY60rUEuavSTDjz9AmoxQiro9PoHoSE+feD7+kGNxick9W
	woOP9wbSLnGJJ/nCVdC8VFMDcn6TVc/TcyVwPBKYd/0OyLYzSi7p4v2bqS1E26HMUdkFnu
	3Uc+9ZYhwHYqU4sXN+/ookj3EH4O9N7RA/8q6KTKo/GUgP3+YK/bE+DDnrAEA35RUTJYf9
	R2RKWdraUuQ4xN9MccNCwXHUS3NLLFH1TvlNHq50TFcvcD2ipPbYV6lnoRyyIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763135199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=+uXlKFVYsVi4QBQJBJcUPmQbfV+T3GjdjzcWzMszYJM=;
	b=rcG6rLBWjMqDkBN8m3qBqNVq7s8Bk9Dte96VgQ+pqUuUUY1JBh4q9BSXIbhq+vPLNY1vuV
	RKKiXk28HicwNs6LuAgVJvdELKfMaeRph3lV8tyFYvA4FRvV2frpRs2o8hNu4mGGr+Apx+
	5rz5riCsKSV8gr4rE38ShOtXyKoWDQTDnYQIKthJ5hHwq95uywAxqI8B1+6mviZcaGSkY3
	H0BT5uk60LqqayfzrFxysyYVXmFCsH5Dh/ApvWttJsvk1A1nxLVnnQ8UpR9JpiCg1Xzr7l
	zRV6K11ABj7FbMjs4fv60HnXL/8V8JLE2KRZEBB7bz2tSt0JhcqeSJ9Y2663Bw==
ARC-Authentication-Results: i=1;
	rspamd-dd986fb9b-jh4f5;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Obese-Average: 3ed153fe0592a4ec_1763135199389_3135456890
X-MC-Loop-Signature: 1763135199389:381336495
X-MC-Ingress-Time: 1763135199389
Received: from de-fra-smtpout10.hostinger.io (de-fra-smtpout10.hostinger.io
 [148.222.55.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.98.37.69 (trex/7.1.3);
	Fri, 14 Nov 2025 15:46:39 +0000
Received: from dell2016.. (unknown [IPv6:2a04:cec0:122b:2b8b:6420:6800:bae7:cb5a])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d7M221kWkz3yrT;
	Fri, 14 Nov 2025 15:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763135195;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+uXlKFVYsVi4QBQJBJcUPmQbfV+T3GjdjzcWzMszYJM=;
	b=TuBdUAPrdk7ie++Q/GRmovsHdYtY+3nid+IKt65m1xBlaf14wyY+8EBP+xw/y73PhDgCuI
	nBVWx9NYVwfjQog73Wc1P3XkKhUnzqoNhrLb/YzJTaNWG247/ThlGB/xoHbcCkZ57XXsH4
	nye0yP0TXEV0kAj3M3zJCj4+UYfeRGCr5DZ9RLIeuuT47Tpfkm3gLE007TiHAsCCCr/VS5
	LwPthzn4UZprXx9w8A8Zpa6IZ3oY7oOupLbmqZfqTdsjVcT/+80xTboJVFiPjoGs4UgblT
	xpJY7WZ/1nst/Urxs6ua5INuaOzC0ih8GA+S3zY8mIhixdmsOo2B87jhaGK+HQ==
From: michael.opdenacker@rootcommit.com
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	dsimic@manjaro.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: add Tinker Board 3 and 3S device tree
Message-ID: <20251114154617.69950-1-michael.opdenacker@rootcommit.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Date: Fri, 14 Nov 2025 15:46:34 +0000 (UTC)
X-CM-Envelope: MS4xfETTUH3GdUq3Y8Kq2rjoVX8uNYXR6It/83zBTkd5djVFJjY0X2geMB9Txf4s8jm63l3iCIBs/6iYoz0R/hIOzuQubgfExWfxoJx9RMDjXhQ2rjXqM2Vp 4GbNUs4GDnYpFJkIaABB9+1fmW/lHhp30+pquMKLFlCJf/5yIUiux2KMuqOUvx7JgkGrWjV6pwvoyiCR4FeqgufPwLqxEZOY4mpyvw0MD9Fg3tUE/j324aMe j4cvqRYHX0kRUKtBxwEX+9daH7v4VuyOnkSI3JwbL2taoLPDQ3qsAMEh+dGcvEnTbficpnArPxZg6z1T+zuLVgb/v1r9+0/QD3lJRX6feutbK2+/oQlS5fx3 HKTtwojF9ZcgIhyMKavywQmzxB567sX37ljQY7Zx/KN6/Wv/ZLHoUEqvFEAJUc9SFtnO+mpwwmIIjb15eUS4NpnJ1bkgeLpLsL3hqUgkbesLypjP6L3xe1lJ xYac2+oD3AQ/uSSgyp1sANbWMU7OLst7FzYnGoj59B9M7madMw4Xiis8uizeSXt78e0V3DHo+c6iGZRxHsJ1WX8ej1P/2jQ0AXvEgVwQ47lwzqKNV9hpYqTe vHNiQ/y/N9f3JmhfnnWBnx37
X-CM-Analysis: v=2.4 cv=etGNzZpX c=1 sm=1 tr=0 ts=69174edb a=xg8E7M7z/s+QKb9omSVFuA==:617 a=xqWC_Br6kY4A:10 a=-Yt9tNsTAAAA:8 a=d70CFdQeAAAA:8 a=LlwhRhX4rF0ufvdEZR0A:9 a=lqcHg5cX4UMA:10 a=qPQde0g9OtMA:10 a=HTceBwxjnJgA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

From: Michael Opdenacker <michael.opdenacker@rootcommit.com>

Add initial device tree support for Asus Tinker Board 3 [1] and 3S [2],
which are SBCs based on the Rockchip 3566 SoC.

The "3S" version ("S" for "storage") is just a regular Tinker Board 3
fitted with a 16 GB eMMC and a "mask ROM" DIP switch
(to mask the eMMC and enter "Mask ROM" mode for recovery).

This adds support for:
- Debug UART (/dev/ttyS2)
- SD card (/dev/mmcblk1)
- eMMC (/dev/mmcblk0, only on Tinker Board 3S)
- I2C:
  - i2c0 (internal bus with a PMIC and regulators)
  - i2c2 (internal bus with an at24 eeprom and an RTC device)
- USB 2.0 ports
- 2 GPIO LEDS

This code was tested on Tinker Board 3S using the "master"
branch of the Linux kernel.

[1] https://tinker-board.asus.com/series/tinker-board-3.html
[2] https://tinker-board.asus.com/series/tinker-board-3s.html

Changes in V2:
- Rename "Tinker board" to "Tinker Board"
  in commit messages and DT code
- Insert "-board" in DT file names
- Insert "-board" in new compatible string too
- Commit messages: change the way the references are introduced
  ("[1] https://..." instead of "Link: https://... [1]")
- Reorder alias properties and node names
- Add missing "cpu-supply" property to cpu nodes
- Use standard "eeprom@addr" node name for at24 eeprom
- DT commit message: add missing "Asus" before "Tinker"

Michael Opdenacker (2):
  dt-bindings: arm: rockchip: Add Asus Tinker Board 3 and 3S
  arm64: dts: rockchip: Add Asus Tinker Board 3 and 3S device tree

 .../devicetree/bindings/arm/rockchip.yaml     |  11 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-tinker-board-3.dts    |  14 +
 .../dts/rockchip/rk3566-tinker-board-3.dtsi   | 280 ++++++++++++++++++
 .../dts/rockchip/rk3566-tinker-board-3s.dts   |  30 ++
 5 files changed, 337 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3s.dts


