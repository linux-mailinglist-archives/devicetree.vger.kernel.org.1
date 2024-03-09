Return-Path: <devicetree+bounces-49564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EE8877014
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65DEFB20D1C
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 09:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0300376EC;
	Sat,  9 Mar 2024 09:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/teTbLR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DA83715E
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 09:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709976760; cv=none; b=LZxPiwVvFODkJNOEkLHB9fN826+A50M3y0Y5cLfVaOxxA+SSYs0NtIIW6Ud2wdXtxDShihRTXR87d5nJeYP0vyXs6MyDwCtcr1+p7c5K0OQysM5SiKpmDJno+jHtjkyFsV2NavDLO/H9bPLUG4EHP7Mgp0sXcWWQKq5MlhfjHaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709976760; c=relaxed/simple;
	bh=XnXdcvDQFYqlFJoUcdCDdNXCfb13eYx84k+wBrI25Dc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qkX4SyvJ8gOQ8GfefpafDpGFnnBY5PgaoKGWS/W9wXtr/MCMF+5oUdQK33/y/b0NOqTwQXZUtBUpnTF1XDeEy73chpunVrdrzr91Q6F1u5bGrZDRxNvj1nhHViz3DO3c0JHOpk2xwDjDIw6Jmybs48Sis5a1HItEOmJfRaAo440=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/teTbLR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD129C433C7;
	Sat,  9 Mar 2024 09:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709976760;
	bh=XnXdcvDQFYqlFJoUcdCDdNXCfb13eYx84k+wBrI25Dc=;
	h=From:To:Cc:Subject:Date:From;
	b=l/teTbLRNg8JhUUya8ZdQY1LePJGfZ1TOoMMx54Xyj3M0kneg+p4UU5HqMfEyPpA2
	 J4QxFoSU70rmCnvLmbRkiGZyywMdkSd/ahRfjdTP8tuUy9yqKgyOs3wnwVuqGfv+iF
	 oWCppQUU+rObxJNN9koFlF8d2+bL6gvEc4oJAnLqw5DF7BWDtq95Ds3c36r3IyJk85
	 0mL9M6unBtl+M7XCVCxIozKTe2Lpk/U6Y8EsTW9zwUAWu/Sgkv/WMh80R/i8BWPUo3
	 5SwmjixT4FJNE7UXkfA3QhIaQ+bbtvitiQ952ZYVx/8R/rHlPm7x67yhkSzi20inIJ
	 r18RGkQ5yLCzw==
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
Subject: [PATCH v4 0/4] arm64: Add support for Airoha EN7581 Soc
Date: Sat,  9 Mar 2024 10:32:13 +0100
Message-ID: <cover.1709975956.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce basic support for Airoha EN7581 Soc and EN7581 Evaluation Board.

Changes since v3:
- remove unnecessary entries in Kconfig ARCH_AIROHA section
- cosmetics

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
 arch/arm64/Kconfig.platforms                  |   7 +
 arch/arm64/boot/dts/Makefile                  |   1 +
 arch/arm64/boot/dts/airoha/Makefile           |   2 +
 arch/arm64/boot/dts/airoha/en7581-evb.dts     |  26 +++
 arch/arm64/boot/dts/airoha/en7581.dtsi        | 154 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 7 files changed, 195 insertions(+)
 create mode 100644 arch/arm64/boot/dts/airoha/Makefile
 create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
 create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi

-- 
2.44.0


