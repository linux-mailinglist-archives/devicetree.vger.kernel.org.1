Return-Path: <devicetree+bounces-120002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0955B9C111D
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 22:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B42821F24AE2
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 21:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDFF217F47;
	Thu,  7 Nov 2024 21:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="kCa6VRMd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DC51DBB0D
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 21:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731015592; cv=none; b=Vl5hiBo4G4aMoUxQR3pwsNEnPSMXP5SNMzj7IwKSEcDSLz657Oz2osCC9S0WnORORAPrJkeclhKhl3Gh6w9psa+LmT0RiNfkRsdE8jWe8BrikCeoivI8Tuq5iWGnW4nPukmM5yf7SCRCzN7swmdWcj9b8z8AIid6E0+SfX9UQWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731015592; c=relaxed/simple;
	bh=/YeE+A8/dBZeNECSaE/mI6yXThroVp0Y0j7VZPsSCYc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VZkCSyVIAw1i/zPbaxDTI0bf5UTakDOgxcplihPVNvC9wpPwCutGnASjGcvKjeyY67bqi92GYX+0X9yriMYgRKSXGKOMYPLzQhHaC3iZitMJRgXdt8PP86Zhv2Br4DLRl2W+/QItN7kS63eMSLYC6xuqBUAmfvI3vaWZHUlVrpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=kCa6VRMd; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1731015583;
 bh=6rS61pmtnnZyCNnDhYW7Yxzdh8e4M7TjjBsbO0wWTpw=;
 b=kCa6VRMd2su0pogAc5w9eG4wpU7mL2qVj5NujQnjA4rjnubDxkgwGvqpi4DCQZC0PeH157w+d
 cSZMgZgk9yKr2URnMy0sTzwDnJCNxs4mMfmmtiR+/1Ndh+9AC0G1qa60SjuZ1g3dMrGMjNQwcGf
 Q4FbWFahrHBD4vJmZ8tv95utkvKwLvUwxunDOU/LPowQ+Zny/cdpIXXb1ITnRixMk8bmQjQol5y
 qelN9iWLLJsHpVEosJYhfw1dSYrlW+l97dWEtEOIEM6iXVf5MH0JUoE30cLSd9c/smGeYWJLSBu
 8B1JUWgwAvtRys3mRkAOcE2kl3DJRB2tMQsgocOQKPAQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Enable GPU and HDMI on NanoPi R6C/R6S
Date: Thu,  7 Nov 2024 21:29:08 +0000
Message-ID: <20241107212913.1322666-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.2
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
 207.246.76.47
X-ForwardEmail-ID: 672d31376ff4b179fef28893

This series add the necessary DT changes to enable GPU and HDMI on
NanoPi R6C/R6S.

Runtime tested and working with video=1920x1080@60 cmdline on a
NanoPi R6C.

Jonas Karlman (2):
  arm64: dts: rockchip: Enable GPU on NanoPi R6C/R6S
  arm64: dts: rockchip: Enable HDMI on NanoPi R6C/R6S

 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

-- 
2.46.2


