Return-Path: <devicetree+bounces-48390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 12895871E40
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 12:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BD251C21ECD
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 11:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F0F5733F;
	Tue,  5 Mar 2024 11:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="BLDrdKFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CA84F894
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 11:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709639469; cv=none; b=XIKy5q58PQrEm6i88l54IY6Kekp+OhtW6yZf7+UIvTHCXb38uMAazYas79cy/j/6CdFuStIWrrLZWBBz9dlhbMc6KtVBTCtLHhDMgT6jmmywMz45a2fpW2upL8dWGI0OhEQxfW4rbzikDCMdaWn748bF71nypQLHn1QVQw2YwCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709639469; c=relaxed/simple;
	bh=pN0jNWwuyhB+gJWkNcCkNHM04EDIr/7NWTJ7gEqiFl4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Xwdg74EO/fJO6VgLby2Cu/nSMEUakro9/EKaETaAgMX3eAnj0sEZZPTWaQWlFAZ0lHVGG5rFIwPUZ1qz/zxPMRbYr8BwAd2x8W6pbC88fnCoS6d4B31Tqd3AOLxFbnhHG0Vi6gITng2KQQfWk2W42eZ6Ekm1E00L/f1xcXScJXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=BLDrdKFp; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20240305114053fb4e62f3946443d0d2
        for <devicetree@vger.kernel.org>;
        Tue, 05 Mar 2024 12:40:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=lmEudoCgUl1CiCBCCEg36MOvVlnzhYi3gy//qv1hPX8=;
 b=BLDrdKFpksDHUi69X5nTsL1leA6QXlM+81886e46JlpXlGXan9OOxq7In5VDthsw0WlUKs
 OFGb+3M5NinIB1Cxr19SsGN+o111x8faHwUH7WaD5jfe0+Ozj5YooBhEjhtDu4h46IyRxoWP
 qncZYA/KW68406xHH44QGTKx/DV90=;
From: Diogo Ivo <diogo.ivo@siemens.com>
To: danishanwar@ti.com,
	rogerq@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	andrew@lunn.ch,
	dan.carpenter@linaro.org,
	jacob.e.keller@intel.com,
	robh@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	vigneshr@ti.com,
	wsa+renesas@sang-engineering.com,
	hkallweit1@gmail.com,
	arnd@arndb.de,
	vladimir.oltean@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Diogo Ivo <diogo.ivo@siemens.com>,
	jan.kiszka@siemens.com
Subject: [PATCH net-next v4 00/10] Support ICSSG-based Ethernet on AM65x SR1.0 devices
Date: Tue,  5 Mar 2024 11:40:20 +0000
Message-ID: <20240305114045.388893-1-diogo.ivo@siemens.com>
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
AM65x Silicon Revision 1.0 devices.

Notable differences between the Silicon Revisions are that there is
no TX core in SR1.0 with this being handled by the firmware, requiring
extra DMA channels to manage communication with the firmware (with the
firmware being different as well) and in the packet classifier.

The motivation behind it is that a significant number of Siemens
devices containing SR1.0 silicon have been deployed in the field
and need to be supported and updated to newer kernel versions
without losing functionality.

This series is based on TI's 5.10 SDK [1].

The third version of this patch series can be found in [2].

Detailed descriptions of the changes in this series can be found in
each commit's message.

However, in its current form the driver has two problems:
 - Setting the link to 100Mbit/s and half duplex results in slower than
   expected speeds. We have identified that this comes from
   icssg_rgmii_get_fullduplex() misreporting a full duplex connection
   and thus we send the wrong command to the firmware.

 - When using 3 TX channels we observe a timeout on TX queue 0. We have
   made no real progress on this front in identifying the root cause.

For both of these topics help from someone more familiar with the hardware
would be greatly appreciated so that we can support these features rather
than disable them in the final driver version.

[1]: https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/tree/?h=ti-linux-5.10.y
[2]: https://lore.kernel.org/netdev/20240221152421.112324-1-diogo.ivo@siemens.com/

Diogo Ivo (10):
  dt-bindings: net: Add support for AM65x SR1.0 in ICSSG
  eth: Move IPv4/IPv6 multicast address bases to their own symbols
  net: ti: icssg-prueth: Move common functions into a separate file
  net: ti: icssg-prueth: Add SR1.0-specific configuration bits
  net: ti: icssg-prueth: Add SR1.0-specific description bits
  net: ti: icssg-prueth: Adjust IPG configuration for SR1.0
  net: ti: icssg-prueth: Adjust the number of TX channels for SR1.0
  net: ti: icssg-prueth: Add functions to configure SR1.0 packet
    classifier
  net: ti: icssg-prueth: Modify common functions for SR1.0
  net: ti: icssg-prueth: Add ICSSG Ethernet driver for AM65x SR1.0
    platforms

 .../bindings/net/ti,icssg-prueth.yaml         |   35 +-
 drivers/net/ethernet/ti/Kconfig               |   15 +
 drivers/net/ethernet/ti/Makefile              |    9 +
 .../net/ethernet/ti/icssg/icssg_classifier.c  |  113 +-
 drivers/net/ethernet/ti/icssg/icssg_common.c  | 1222 +++++++++++++++++
 drivers/net/ethernet/ti/icssg/icssg_config.c  |   14 +-
 drivers/net/ethernet/ti/icssg/icssg_config.h  |   56 +
 drivers/net/ethernet/ti/icssg/icssg_ethtool.c |   10 +
 drivers/net/ethernet/ti/icssg/icssg_prueth.c  | 1189 +---------------
 drivers/net/ethernet/ti/icssg/icssg_prueth.h  |   79 +-
 .../net/ethernet/ti/icssg/icssg_prueth_sr1.c  | 1171 ++++++++++++++++
 include/linux/etherdevice.h                   |   12 +-
 12 files changed, 2715 insertions(+), 1210 deletions(-)
 create mode 100644 drivers/net/ethernet/ti/icssg/icssg_common.c
 create mode 100644 drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c

-- 
2.44.0


