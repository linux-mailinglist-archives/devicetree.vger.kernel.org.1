Return-Path: <devicetree+bounces-59078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F30D8A427C
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 15:15:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24AC52818D6
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 13:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C543FB1C;
	Sun, 14 Apr 2024 13:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="dwyKfVk3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7550018AF4
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 13:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713100549; cv=none; b=qzhSSlZ5GsL06q2klIEjluvKb0I2o5um0ql6uTxMXzn0ai63cfKMEhqbqMYgPIFYD37MPUKeXuWxGVZ2hxyGJH4+J4irFa0IKqbkflGItwYRRGxR8EUFbuqg3yRfsOSghjjKPOD+5HErNymKN4a8MJKXuF+Z417KmDk2BvKc2Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713100549; c=relaxed/simple;
	bh=8f8f9wkoxcukHE9YuMsOpkpM/PRDDU/wmMNvYNvxmZs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PQilyeKJnneZj3xjfHkDzkXEH5lG4Gp5l+sifWvawhFjzFslbhL9xbdJx2vEdI00Kb3j2oaT1mVsODWAQcl/X9L3oh+lErfm0tt1dHQbDaEgj0cVu/AqHjjQvt7J68fa35hZ5LxoMEOpk0qNBWyhhg3zLuP/7inCB5NvmiCyU/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=dwyKfVk3; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1713100536;
 bh=h8IXNmwz7bKOK2GJ14X+EcXt3RKFVN/vSGLDdiTpb6g=;
 b=dwyKfVk3NrwB10XX5dAFB493XoUJO32J3Zch4xJsWJDN4CJevSWTNbk3W+MKneHxdcufJgzna
 DcTBG+SEdKQezUP60Y3Y8kpY5SWPci3yRYsznwq+BrZCm5wrhdmicMCfGB973MqlGi13DFsJEYH
 cdB5++N93HKwh9VkxVO3peqUGY9WwxL6VQf1JropkOffQ/OngnKVdVv5nloqY13x0Wlqt5tF9AT
 Iptd0mu/1BhI/zhYkCrvsNlQVmsBcLYbsJwzJP1fKAI8JhREdFox9IYhC6hukCjpDCMm1hMZKtW
 eOzGyk/O21850nwKjjmHX3HtGe1Sph2ARH050K9Qb2mQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Sun, 14 Apr 2024 13:15:22 +0000
Message-ID: <20240414131529.1730506-1-jonas@kwiboo.se>
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
 149.28.215.223
X-ForwardEmail-ID: 661bd6f83b53c64433628499

This series adds initial support for the Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Schematic for ZERO 3W and ZERO 3E can be found at:
https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
 .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
 4 files changed, 517 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi

-- 
2.43.2


