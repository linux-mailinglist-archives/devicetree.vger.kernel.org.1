Return-Path: <devicetree+bounces-48921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BEF874507
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 01:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB9091F26068
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 00:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08586360;
	Thu,  7 Mar 2024 00:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9gbFrL5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C0F161
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 00:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709770287; cv=none; b=Pxz1/WMKk0T+trvwvyHnFBGTN/nlYe5kk/F/4uITFDJDRfuDX+QOqDbKJvQlMRj8ErImTq05LJTBWDPW1ZJR5xbof5PAC2TdZJV5aGpyQDQSDIEIIcjkBOhaDOSovf8PqLXkkWij4o4a4COBi5v4ANdWW25meh0zy1U+KnpNh/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709770287; c=relaxed/simple;
	bh=9dW+Tg3luROBUa+K0GjsqUgbOVrsoczefpncspQ0sBs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RFufByZpGZPZFUU5FM/WMYIO6akGrSK0sPwi5KTXPvQvqPLx6mUZMrJijdyvDwcJndZX48gQ0z2aXw8TsVYa73P08EfF1+ZftHvSHfjTuLZzFaeWrRvMTIUlE5c+76oqyjEPKTF3nz19XLMNbwR+UbM9l6arWhHNY/R3pkB/sso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9gbFrL5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1134BC433F1;
	Thu,  7 Mar 2024 00:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709770287;
	bh=9dW+Tg3luROBUa+K0GjsqUgbOVrsoczefpncspQ0sBs=;
	h=From:To:Cc:Subject:Date:From;
	b=k9gbFrL5oxbRo+bAyRovkOzgliACgP1MOdw06w9Ud+uZDuk36lHh8NF4YkNLsQ50F
	 6QXllpuVHaoal1HD0Hfo7HMkbNs6p7P6E9+w81SItPetdUudUVIkC3fSUwRz5i5oAb
	 hyWbZyUjgwpCuuSXoOH39e9vaYdgXRKcy8f/Whg7T77kA+BSnG5xPlJi8JhWFeBE5/
	 dXEZpJzhkFEWifOGgryx+ozZnDGtmb1qrdSD0KxdQ0Bm6LQXC9E7g07y3yipbexLvH
	 qZtEpBfA7i19JxITpDRMy5t+vQnqzMDOslVs3XUEZ0fZlyL/akEfMeJo9SjcEE+Z1S
	 OgIx4jvPF0UeA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	lorenzo.bianconi83@gmail.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v3 0/4] arm64: Add support for Airoha EN7581 Soc
Date: Thu,  7 Mar 2024 01:11:09 +0100
Message-ID: <cover.1709768157.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce basic support for Airoha EN7581 Soc and EN7581 Evaluation Board.

Changes since v2:
- fix cpu-map definition
- add more cache info
- add missing soc node
- remove unnecessary definitions

Changes since v1:
- add missing en7581 entry in airoha binding
- fix checkpatch errors

Daniel Danzberger (3):
  arm64: dts: Add Airoha EN7581 SoC and EN7581 Evaluation Board
  arm64: add Airoha EN7581 platform
  arm64: defconfig: enable Airoha platform

Lorenzo Bianconi (1):
  dt-bindings: arm64: dts: airoha: Add en7581 entry

 .../devicetree/bindings/arm/airoha.yaml       |   4 +
 arch/arm64/Kconfig.platforms                  |  13 ++
 arch/arm64/boot/dts/Makefile                  |   1 +
 arch/arm64/boot/dts/airoha/Makefile           |   2 +
 arch/arm64/boot/dts/airoha/en7581-evb.dts     |  26 +++
 arch/arm64/boot/dts/airoha/en7581.dtsi        | 154 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 7 files changed, 201 insertions(+)
 create mode 100644 arch/arm64/boot/dts/airoha/Makefile
 create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
 create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi

-- 
2.44.0


