Return-Path: <devicetree+bounces-40118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A7584F4E7
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:58:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02CBD1F223A2
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF832E3E5;
	Fri,  9 Feb 2024 11:58:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E4036102
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 11:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707479892; cv=none; b=W6mddEZrN+D1UIbRDbEq7xFtqFbYSekkL57sJET735wK+WKTs8yie+ul3jv2x9ftyLY4UdtL8Ode2i3sjU3fDtvXAha8l6gvB0V4iu+LKQs84ZmYEnLArkoiLSBke26RGDOHH8W4LjOVSP8kttbSZm4UROiTJCae5ULcMc/4nOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707479892; c=relaxed/simple;
	bh=jCDRhO1dRvuQPIDXH/X1mUzczbszngS3rdBRb/Z98FQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Jhd17TomGvj03GdS38eJNSKPVwZji5smYcGDcQ+qaRT5qoy6u5xRiCMWMbV3kWEg5gMeZMNpB3wLYhgcTU7FBvKMNXLX1CW53IkslGVATr/qJfiH7l60plWQaBU3tKWbzyTpm6FO8dXXj2Gzs3fWG1TrqxRD2eDMOdzQBfzhrkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0658DA7;
	Fri,  9 Feb 2024 03:58:46 -0800 (PST)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.100.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2167F3F5A1;
	Fri,  9 Feb 2024 03:58:03 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Nick Alilovic <nickalilovic@gmail.com>
Subject: [PATCH v2 0/2]  arm64: dts: allwinner: Add Transpeed WiFi nodes
Date: Fri,  9 Feb 2024 11:57:57 +0000
Message-Id: <20240209115759.3582869-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

a tiny update, see below for the changelog.
======================================

This adds the WiFi DT nodes for the Transpeed 8K618T TV box. It uses a
Murata module with a Broadcom 4335 chip, which works fine with the
mainline Linux driver, given you provide the proper firmware files. We
found some in some LibreELEC repository.

Patch 1 adds the pinctrl node for the 32KHz clock fanout pin, patch 2
adds the actual SDIO WiFi node.

Please have a look!

Cheers,
Andre

Changelog v1 .. v2:
- add /omit-if-no-ref/ tag for clock fanout pin node
- update commit message to avoid mentioning Linux or driver

Andre Przywara (2):
  arm64: dts: allwinner: h616: Add 32K fanout pin
  arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes

 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  6 +++++
 .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++++
 2 files changed, 29 insertions(+)

-- 
2.25.1


