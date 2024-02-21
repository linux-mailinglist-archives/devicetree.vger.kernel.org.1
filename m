Return-Path: <devicetree+bounces-44114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 722A785CC85
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 240471F22574
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 584EF384;
	Wed, 21 Feb 2024 00:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/GvYKn9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340DB193
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473883; cv=none; b=Wnldk4Z7CnzJUyV6hFl7BDVVJ08GAHObyoQHtg0MBcywIR2hhOhz6n2rYvKxZOML/2eloLjIzt14hFQYH6hAWSmtA4OswFwe6U221pWTvi7rn42kE9PF2w0gWdmmgXlySEkX9Gw9MiRfbfPs/7Tm3CwljXsvUI8uLg5moHAimZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473883; c=relaxed/simple;
	bh=RY2bDK44tTv2tulkjonSzZOfGjNahjZsufwTSHacQzE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CvbO34zF/PLcYyHNG7gNWGwQn04Rx7iZOvVQVx8wamwu3A8cnXNnbE1ifsInMDesr4QITffG9umLhki8RDIf+/NysKKXSk52HZvIfbCMb0JY2kRFvaRShYl+gSrHNwViPNu/1QTpXFseBvDjmabWPvEUAyqobmFwXcN5nTzmA1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/GvYKn9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53D28C433F1;
	Wed, 21 Feb 2024 00:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708473882;
	bh=RY2bDK44tTv2tulkjonSzZOfGjNahjZsufwTSHacQzE=;
	h=From:To:Cc:Subject:Date:From;
	b=r/GvYKn9KrkLYeaYftafwTyVEhWRazlqz5T+4FDVOslsFZDdxaeZMVVpZcE0stfiM
	 ojRvgXkb5yRZwLoQQzNKfj+Ud8omIkRZeR1ATMtobVmS9SqTXEWf3pQ8ScgeG5gTcJ
	 AuptZFE8XzMzmjKs6SMJYWSAgCveP0F7bGv8Jb31aMsIq0qY8wCoYCov1VJoQW1cbw
	 m3hr8D2sfEd4hrtJh4x80XsJF4HJNCCBYQxxEI38rBCSrP5iopJQkCDkreHM2mPBf6
	 RWAznfzcLZ4gm2wwOhUkNLFhnXjFSw/17DMzW8RCnrdRPV9z8rH/V3cW72kuNfAir/
	 d7BVByyI6JZ5w==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v2 0/4] arm64: Add support for Airoha EN7581 Soc
Date: Wed, 21 Feb 2024 01:04:26 +0100
Message-ID: <cover.1708473083.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce basic support for Airoha EN7581 Soc and EN7581 Evaluation Board.

Changes since v1:
- add missing en7581 entry in airoha binding
- fix checkpatch errors

Daniel Danzberger (3):
  arm64: dts: Add Airoha EN7581 SoC and EN7581 Evaluation Board
  arm64: add Airoha EN7581 platform
  arm64: defconfig: enable Airoha platform

Lorenzo Bianconi (1):
  dt-bindings: arm64: dts: airoha: Add en7581 series

 .../devicetree/bindings/arm/airoha.yaml       |   4 +
 arch/arm64/Kconfig.platforms                  |  13 ++
 arch/arm64/boot/dts/Makefile                  |   1 +
 arch/arm64/boot/dts/airoha/Makefile           |   2 +
 arch/arm64/boot/dts/airoha/en7581-evb.dts     |  27 ++++
 arch/arm64/boot/dts/airoha/en7581.dtsi        | 137 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 7 files changed, 185 insertions(+)
 create mode 100644 arch/arm64/boot/dts/airoha/Makefile
 create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
 create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi

-- 
2.43.2


