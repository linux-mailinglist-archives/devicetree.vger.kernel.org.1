Return-Path: <devicetree+bounces-44405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D195785E0F2
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:24:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B934285631
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98E380626;
	Wed, 21 Feb 2024 15:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="N/eabdjO"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B1F80606
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708529076; cv=none; b=i82NJuYOaMHWqVkEsLf/7/r5xjAWblvjt1GGLlCmOpXYGzvKim6gOK4m7IWlwgw66wtUs8jnOBg/JxxmclPhQM0CX9o3101Lxng4ohZJoUxrQ2YpED0FfKe/rvQluTJtoZmpnBpuEDIJH+wEyC3FiaNdLRQkMJvIE1NYEUx6GSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708529076; c=relaxed/simple;
	bh=xbSJySuLz+kUWt/a4hSL5ok5Gu+9XGsWi2p/iYqZpk4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N2AScZL4aaD8K4wjzUMVvthos89dIWij4OuQ1K+xL/32SFeYP0+lR6ZuPm9NCT7La3hzxMtZBbmhMij7cF49h5nRBEcJr1cSz3G5yb045PTe9x5Uev5kTo42d2sRk1n+iQxNQ07j6cZefCiK5qG02I68TaZhuiSEKPMW8Fav9yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=N/eabdjO; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 202402211524259acfa42e4f2fd95355
        for <devicetree@vger.kernel.org>;
        Wed, 21 Feb 2024 16:24:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=4somyZElZcPHvwR2g6Lf1q6jrCP6R7JaWxuo2W+uI58=;
 b=N/eabdjO7BahFVDEmBRrkOIi3G8+WgmtROHqivaOeyV+MijgW4p1QlYdMIV25zq22tZ6PX
 mFuYrvw3V5+tc7YJvByJ53J1eJfTz5bgZRdE5dhTMiFnpxMKbnG5qB0+4LDSSwuzScwE1BAe
 0D0rMp+ooTKjmwfZH9RJtHJEvg+sM=;
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
Subject: [PATCH net-next v3 00/10] Support ICSSG-based Ethernet on AM65x SR1.0 devices
Date: Wed, 21 Feb 2024 15:24:06 +0000
Message-ID: <20240221152421.112324-1-diogo.ivo@siemens.com>
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

The second version of this patch series can be found in [2].

The main changes in this version are the introduction of a separate
driver for SR1.0 with its own Kconfig symbol and the refactoring of
functions that can be shared across Silicon Revisions into a common
location. A more detailed description of the changes can be found
in each commit's message.

Importantly, in its current form the driver has two problems:
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
[2]: https://lore.kernel.org/netdev/20240117161602.153233-1-diogo.ivo@siemens.com/

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
 drivers/net/ethernet/ti/icssg/icssg_prueth.h  |   77 +-
 .../net/ethernet/ti/icssg/icssg_prueth_sr1.c  | 1173 ++++++++++++++++
 include/linux/etherdevice.h                   |   12 +-
 12 files changed, 2716 insertions(+), 1209 deletions(-)
 create mode 100644 drivers/net/ethernet/ti/icssg/icssg_common.c
 create mode 100644 drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c

-- 
2.43.2


