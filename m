Return-Path: <devicetree+bounces-38373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC28E848C7C
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8394B2185D
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 09:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DBC518635;
	Sun,  4 Feb 2024 09:33:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57BDB18E0C
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 09:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707039194; cv=none; b=TdcHKL9DEEniNEOf7StJajFeMwNYzioPMVYPv5W5eIZMX45kVEMJstMkjyMw5S1ZTnh0BDzjXUkBUtYwRPP6Dof3dYKABPk1NaxmcxmUrULJg8rqRLxFrb699xnDWnTyBFf2yYeLt2Mp39R+uB05ZD2yvmop+w/jyfr1hrzloo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707039194; c=relaxed/simple;
	bh=6KxfOEJfLeLK0Giis09Z5345Dt7XsXUjhR3g6/6lIt0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=d8ggKBNJF8WVs+OjkYJsiZlW7YuqHE7MSOs5UW5DdQjXtHdUh8PXSD87dNUuTWOHr2XdkXuMvYhjlxbY4gLVbeKUJO2vAcO7uEIxKkJtNd4aqSr2YwClbjQeNVviTPaRLnwCP5e6G+vTJ+FZz/UKXC1th8TVulHnkRNuZloiss4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 24CA91FB;
	Sun,  4 Feb 2024 01:33:47 -0800 (PST)
Received: from e110479.fosdem.net (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32B3D3F738;
	Sun,  4 Feb 2024 01:33:01 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Nick Alilovic <nickalilovic@gmail.com>
Subject: [PATCH 0/2] arm64: dts: allwinner: Add Transpeed WiFi nodes
Date: Sun,  4 Feb 2024 10:32:53 +0100
Message-Id: <20240204093255.148972-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds the WiFi DT nodes for the Transpeed 8K618T TV box. It uses a
Murata module with a Broadcom 4335 chip, which works fine with the
mainline driver, given you provide the proper firmware files. We found
some in some LibreELEC repository.

Patch 1 adds the pinctrl node for the 32KHz clock fanout pin, patch 2
adds the actual SDIO WiFi node.

Please have a look!

Cheers,
Andre

Andre Przywara (2):
  arm64: dts: allwinner: h616: Add 32K fanout pin
  arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes

 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  5 ++++
 .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++++
 2 files changed, 28 insertions(+)

-- 
2.25.1


