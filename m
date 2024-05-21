Return-Path: <devicetree+bounces-68254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C24A8CB559
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB4DC1F221A0
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2442D5647E;
	Tue, 21 May 2024 21:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="VcUUV3dm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D291EB2F
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716326585; cv=none; b=RBHPqKdKK4l5vduUzft/J8CsxGHw8/E/bbuqah6ASdx3x5n/h4sRKpHOyrNbBi/d7aARPXsVTDZAg+fhXEBAN1nDLRyDiN29RSBiqrN0I+ia2DwfkxnJKCzT5umgwlnQxc0vJJn43ZluUYooEexcvLm1YsS/b1f9Lp2oHilqkPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716326585; c=relaxed/simple;
	bh=YJ7KJNVEY0nD3CLnLr55Yms/XPIA0CL+Z3cIOA+FFeg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WHbv8EgZN7r1jEgUTXyx5GgLzo6R6gbHYrtajcEP5yjkJFl3K9TwCqTcEo7yYenBcOR/MW9cXp56jIXjpLo7AH6XKq4OlIBpWRljjt0+ohyCGyRJSIdS0siIh+4knjuQqrNQGXBt5SQw4z5m8RTiyev+vBcyPKz6cVMnXierEXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=VcUUV3dm; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1716326576;
 bh=iSM4GlQoeQiLh4kh00cMbzGdcD5BMtLxx/m4Qk1LltQ=;
 b=VcUUV3dmB4iKyXNX8HGCx2bOAIVN2Ufcp5lqsgKRLKhWF2lekqlvZXsE74dEWUnERmCzqUn/r
 nVUiC+TLEle6y7IufdDN9lgUrmltA/lCipZPv/+aIFb3UQ/K7gexJc2ZWpTul5L4MNsS8RHBQsc
 nc9tVZ1H6/KeMaQ80u8PzUIqCfr9Ecb6CO4kCAVrmESncQQ4O24mT1SXNmc97Jyk+0SOfPQxSvd
 g0jtneA0k+nbzLwc4nPKP/z0fMWPA20lybvzQqY759yM5MMo1+HmgRAZAgtkwp8Y5BBujzoUqN2
 Mdu1QxyZos72EW/hhvX9lq/i9ymx6yV6QPdqrQ75qRcA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Radxa ROCK S0
Date: Tue, 21 May 2024 21:22:41 +0000
Message-ID: <20240521212247.1240226-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d10ad8b6b0c828344b0e5

This series adds initial support for the Radxa ROCK S0 board.

Radxa ROCK S0 is a single-board computer based on the Rockchip RK3308B
SoC in an ultra-compact form factor.

Schematic for the ROCK S0 can be found at:
https://dl.radxa.com/rockpis0/radxa_rock_s0_v1200_schematic.pdf

This series depends on the series "rockchip: Fixes and improvements for
ROCK Pi S" [1] to pass DT schema validation.

[1] https://lore.kernel.org/all/20240521211029.1236094-1-jonas@kwiboo.se/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK S0
  arm64: dts: rockchip: Add Radxa ROCK S0

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-s0.dts      | 293 ++++++++++++++++++
 3 files changed, 299 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts

-- 
2.43.2


