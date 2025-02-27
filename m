Return-Path: <devicetree+bounces-152262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B61FA487FB
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 19:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5137A18888AC
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 18:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671C5206F15;
	Thu, 27 Feb 2025 18:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="f62JKQHc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999641EB5CB
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 18:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740681681; cv=none; b=K0/BW+IBB9lECMgWm/iis5aaW9YKB4v7ewHcIZ84pHKxsVB0l8mPGE2hu0nJ/XJNtEAO5nRUkluliruyTT0OIFylxhRdVsqrjTyFRag1sA2cVBzkx2HT58CeiIFjDZ8kADbt/CimOCuHSHTTBGLp5ygbW4F3wsZCIWA+BObB16k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740681681; c=relaxed/simple;
	bh=VsPeGELfKzh2zGT/k2lCE+HEjrx0IEdRBb/n1+v7KX8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KzlDRebi9FZY6nvHO+Au/nIdXfdLEReEZXFlxiPceA4neRP97xTIaKcaEfDA5B+doVqlsUw05btz3AodZWviClqF2mdEYrX4pwHFzWx5IN1+PHCFOQ+SC4xbxQJCpIJXqrbB63SatNzoVdoDgbZ7rSvkwEiUJV3JbYT/uNwkdSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=f62JKQHc; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1740681679;
 bh=r6E0ijl99dglGUtzxVKRHRyEXc5SE/61O6khRNhDT7Q=;
 b=f62JKQHcPLUlhYYC8194xogNnJuYQ01KxcjbDGJh/n6U8FioxshS+THWOIc2Z27Gf3jYNo5VP
 c90ZS1RWYL3+dstlH8/gO+XIN1J4Bgo7IuOtEe3TpXHOdg6azpVO6ra7ToW+lPyiA43myFs8d0j
 +c3T+0GJgDh9jhI9jYNvrExXtSp67aciiKps082zbUq68EbkFMSd+iMjDW8uXsZ9WR8MV4IJXSR
 e2QaKT2zGOjaCrUnUrtOsEIEzYX3p6kPOyGN1TphocGy3ov+5GmzrvCpPHSR3vfKB12G58bjH5X
 3eaJ/TG++k2RbM2iUUSlE8b1y30oj/Jwg3zdzE5MKXyw==
X-Forward-Email-ID: 67c0b1c9bf572996e8621452
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/4] rockchip: Add support for maskrom button on Radxa E20C
Date: Thu, 27 Feb 2025 18:40:49 +0000
Message-ID: <20250227184058.2964204-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa E20C has two buttons, one SARADC maskrom button and one GPIO
user button.

This series adds dt-binding, driver support, DT node in SoC .dtsi and
adc-keys node in board DT to support the maskrom button.

Jonas Karlman (4):
  dt-bindings: iio: adc: Add rockchip,rk3528-saradc variant
  iio: adc: rockchip_saradc: Add support for RK3528
  arm64: dts: rockchip: Add SARADC node for RK3528
  arm64: dts: rockchip: Add adc-keys node to Radxa E20C

 .../bindings/iio/adc/rockchip-saradc.yaml     |  1 +
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 50 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 13 +++++
 drivers/iio/adc/rockchip_saradc.c             | 18 +++++++
 4 files changed, 82 insertions(+)

-- 
2.48.1


