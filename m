Return-Path: <devicetree+bounces-32810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 562F6830AD5
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 17:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB5CDB2695A
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 16:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB24224F0;
	Wed, 17 Jan 2024 16:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="Wwmy/zx7"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B8C22606
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 16:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705508182; cv=none; b=AHhxQpDWPJ7++8B9fsXk92ngVVpgMiDxFItGHwiMhtUB9s/a48BvEoz/oSfpYZUw4YHjBHwpLsOiMJ4sMaskRHQOMI/gHQ7yHhbChaL4sVJOHlmwMfAqAZ1Jvtr8kqvx05WWM1HxA3Mm+E1RdjFuFGABE2N+64ab2wLx0VoEKow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705508182; c=relaxed/simple;
	bh=v1D4C3wuCnMmeD4yJhRO76R/sJ+MPO5PS9ndWkWExzg=;
	h=Received:DKIM-Signature:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:X-Flowmailer-Platform:
	 Feedback-ID; b=ZdDulKxgUZCHDmTa7u0Lvnq6wm6npSb+ruYGt00ycAueuF9TaM5brNettmy5+hekJuMvr0Ug9oAS7+nzk0Q+Goc5YrcpRvhmyrjfDOl+BFMoIAqH2ZM9zmgWsprjHyUIMtCPklqjSYARJ+Y+6wCC84j5F9qiqxT3DS/b8GArE+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=Wwmy/zx7; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20240117161612ecc835a131b9bc492e
        for <devicetree@vger.kernel.org>;
        Wed, 17 Jan 2024 17:16:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=2itPv06mgmfT1qp2nK3pOwEj8EUh1SNrKsJPJoi2pIg=;
 b=Wwmy/zx7FKTuEfSB3h3G/zQwPgllsGOni9i6Qe82CYUVzRPXX3rnH7nBvQS7rBQnEPn6Vj
 2CHv4DFxCpHHrogGasy0sGQumWDTk3SAHKZ5rii1k8H8KyZ3R2hEpz29zjwIC4IyFa3xx19K
 yuzc7OfTzNOz34RRNeKLUnIjXMI5o=;
From: Diogo Ivo <diogo.ivo@siemens.com>
To: danishanwar@ti.com,
	rogerq@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	andrew@lunn.ch,
	dan.carpenter@linaro.org,
	grygorii.strashko@ti.com,
	jacob.e.keller@intel.com,
	robh@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Diogo Ivo <diogo.ivo@siemens.com>,
	jan.kiszka@siemens.com
Subject: [PATCH v2 0/8] Add support for ICSSG-based Ethernet on SR1.0 devices
Date: Wed, 17 Jan 2024 16:14:54 +0000
Message-ID: <20240117161602.153233-1-diogo.ivo@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Hello,

This series extends the current ICSSG-based Ethernet driver to support
Silicon Revision 1.0 devices.

Notable differences between the Silicon Revisions are that there is
no TX core in SR1.0 with this being handled by the firmware, requiring
extra DMA channels to communicate commands to the firmware (with the
firmware being different as well) and in the packet classifier.

The motivation behind it is that a significant number of Siemens
devices containing SR1.0 silicon have been deployed in the field
and need to be supported and updated to newer kernel versions
without losing functionality.

This series is based on TI's 5.10 SDK [1].

The first version of this patch series can be found in [2].

[1]: https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/tree/?h=ti-linux-5.10.y
[2]: https://lore.kernel.org/all/20231219174548.3481-1-diogo.ivo@siemens.com/

Changes in v2:
 - Addressed Krzysztof's comments on the dt-binding
 - Removed explicit references to SR2.0
 - Added static keyword as indicated by the kernel test robot

Diogo Ivo (8):
  dt-bindings: net: Add support for AM65x SR1.0 in ICSSG
  net: ti: icssg-config: add SR1.0-specific configuration bits
  net: ti: icssg-prueth: add SR1.0-specific configuration bits
  net: ti: icssg-classifier: Add support for SR1.0
  net: ti: icssg-config: Add SR1.0 configuration functions
  net: ti: icssg-ethtool: Adjust channel count for SR1.0
  net: ti: iccsg-prueth: Add necessary functions for SR1.0 support
  net: ti: icssg-prueth: Wire up support for SR1.0

 .../bindings/net/ti,icssg-prueth.yaml         |  29 +-
 .../net/ethernet/ti/icssg/icssg_classifier.c  | 113 +++-
 drivers/net/ethernet/ti/icssg/icssg_config.c  |  86 ++-
 drivers/net/ethernet/ti/icssg/icssg_config.h  |  55 ++
 drivers/net/ethernet/ti/icssg/icssg_ethtool.c |  10 +-
 drivers/net/ethernet/ti/icssg/icssg_prueth.c  | 556 ++++++++++++++++--
 drivers/net/ethernet/ti/icssg/icssg_prueth.h  |  21 +-
 7 files changed, 788 insertions(+), 82 deletions(-)

-- 
2.43.0


