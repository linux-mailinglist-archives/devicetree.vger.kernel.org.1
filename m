Return-Path: <devicetree+bounces-158740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D8FA67E7A
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 578B619C3CBF
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 522262066D3;
	Tue, 18 Mar 2025 21:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b="APKiW5A9"
X-Original-To: devicetree@vger.kernel.org
Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [162.55.41.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0F41DF260
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.55.41.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742332144; cv=none; b=PrYFKJJ5w2xhP1SoKUm5+0NhJ92PPGG5z/7SwqJ5+6HE1Ue1bm/husWM0C61ZfGYiQqkiD7z0aqKNxRZjfi0FODJT88OTI4jif+onUmf5OQM5xQjMLl4IdpeMpoLdq0jcOdEohBhwG+FnnXAbZCQTi8EWWHLy6gvk8xTZI1uc10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742332144; c=relaxed/simple;
	bh=cyacAfqmvzmGifPcVn2et0hLqOF5XeQd/o4G2u+UMsQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=LJJ4zcsWiT54qxhzBO6OYPQy2e00osbVPaTC1KryrprcPnMzzAxeq0/kvQHSLUX4T7DOMwRJqm6EuYDCwAO/c/zhkHXk5n2VBmudlhi0dajxMXO/wom3oV3FanCWFfJsu6ue25LegwoyKfAPC/zQ94T/NOufp32AwgeNLPua18M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org; spf=pass smtp.mailfrom=kleine-koenig.org; dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b=APKiW5A9; arc=none smtp.client-ip=162.55.41.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kleine-koenig.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742332140;
	bh=cyacAfqmvzmGifPcVn2et0hLqOF5XeQd/o4G2u+UMsQ=;
	h=From:To:Cc:Subject:Date:From;
	b=APKiW5A9lGSxNcsdXVAfFOBYot3HPfcuoaaiNjWd5MGPO0rke82qbMypVck8PkZY9
	 te8BGIP4aeX5xFLeOxq3Ej+6VbQIvEc9t1+qoV6FyUcSltc6AoWxRowHOn5Da6Hf4g
	 /GmTG9jKqfT+/5QdlyRQh7T+8GyeVroFQP5dyB5YXDZCSyxb6DyTmOB9IWrJoaRBRh
	 RFjOqUTL+xPWVROJs722gICHnb4siyRGbn4TO50ljBfgmkJ4I/KOWJgrUdTYBzLVVU
	 LK9w0ua0u0bQYPjSMQNDWNBNAwIn8t3Q9bs3uQv9L4IGDoN9YbU/Bc+Oeegi0LblgS
	 Vk3VKSyoBivCQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id BD9B5FC59B1; Tue, 18 Mar 2025 22:09:00 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Tue, 18 Mar 2025 22:08:44 +0100
Message-ID: <cover.1742331667.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=815; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=cyacAfqmvzmGifPcVn2et0hLqOF5XeQd/o4G2u+UMsQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2eDdq5Iz2G8UD63/OAkq+umAAF9HZzcChXowU cLacVz3FLWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9ng3QAKCRCPgPtYfRL+ TuQqB/9XcEvLaGuEWwkeXwRmPJCJKZvGpIH5H2iA0BwBrmxDBTTS4agp7DhRy/sUpzFLyZOj66D brfnZj7Sj7cLzC5Z1qa3dEpz3evfUAA9opEGEP6OotAwXS/wppIa3m/iZ8pBxoMVRYIRAD7A759 IwnjN6ThSd+5XvogjhBfA/Qv670pxh+iP3rlZ+1frTNW57n/0CnwLCF2HhfkVVCL5kglrT3FZQ/ KpyZLp0hVzYvhT4mpOJ6vgwtZjKP2BLEJtHhgWZumOEsfvmC4IP6LhDWy0vAp48SmK1jpHvi3Js hhTqEUJ5tf7Jpd/18zHPW2aH4SsJjTJKQwZEguYl/m4HuyAu
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

as suggested by Heiko I split the patch to improve the phy setup of the
gmac ethernet into two patches. The initial patch can be found at
https://lore.kernel.org/linux-arm-kernel/20250318184550.47642-2-uwe@kleine-koenig.org/ .

Heiko also suggested to add Fixes tags. I'm unsure these are justified
because while these patches are an improvement the old devicetree is
working fine. I suggest Heiko to add the tags if he feels strongly
enough about these.

Best regards
Uwe

Uwe Kleine-König (2):
  arm64: dts: rockchip: Correct gmac phy address
  arm64: dts: rockchip: Add gmac phy reset GPIO

 .../arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
2.47.1


