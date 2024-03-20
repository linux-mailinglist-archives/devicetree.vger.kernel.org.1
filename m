Return-Path: <devicetree+bounces-51975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 842648813B5
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 15:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A891283C33
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 14:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA9F44597C;
	Wed, 20 Mar 2024 14:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="JEOyQC+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CBF1EEE8
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 14:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710946382; cv=none; b=FNesbfHjevtB7yuG5Wfc0D0ALL8kXf98MKFk3nFxmIhf+Tg05ZUepXIrXA4L9iHE8JFDGs+XtfquyyQbpjpiZGP6MM5KwNaSoQX9/j2G+EA4aOHj5vlboPq0TsrpWpapYqYK/R5vA70Gjfv891yrWRk4s1ZjT5sJiCBFvwxH6nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710946382; c=relaxed/simple;
	bh=AZ9qaaGQLRaLh2erSzhK0546WiFMXsWnmx6StL2v698=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KVB8G/EWH0vEAdbkQcvsQqlWEQU4iwBB6xI4+OjlykKAS71J58IFjdM5KmmSlNgdoKok+3n/y9Lo9kS7DgkZfzq9TOK/HcXAbApnEBpppGO5pZjZ+3lN+V0HRVaOaGBKPyawJmnQTYDPJwHYLOGqV/fy8Xv8S+UAEJQtyV+Nia8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=JEOyQC+G; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 202403201442414b0282d4c179d397c1
        for <devicetree@vger.kernel.org>;
        Wed, 20 Mar 2024 15:42:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=cEHbLT2jVMdGX6hNOXRPoDNWmYXIjvyLR3rnxVrloAg=;
 b=JEOyQC+G6Df3UxPUC6GR75I+3In8YqORK9QBRfp0779YntWoaX4uT4kR7jdzWPaBP4HgSt
 PZRb7CpeQXzeY8J18hL0SSbsyaCywPSYR/WPiBIM/JCxQfFEwR7OKeDlAzbb1jMTGuIVOE5m
 MymEvUAZ6AdUz7/sz2YbWAnU4Pi/4=;
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
Subject: [PATCH net-next v5 00/10] Support ICSSG-based Ethernet on AM65x SR1.0 devices
Date: Wed, 20 Mar 2024 14:42:22 +0000
Message-ID: <20240320144234.313672-1-diogo.ivo@siemens.com>
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

The fourth version of this patch series can be found in [2].

Detailed descriptions of the changes in this series can be found in
each commit's message.

Both of the problems mentioned in v4 have been addressed by disabling
those functionalities, meaning that this driver currently only supports
one TX queue and does not support a 100Mbit/s half-duplex connection.
The removal of these features has been commented in the appropriate 
locations in the code.

[1]: https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/tree/?h=ti-linux-5.10.y
[2]: https://lore.kernel.org/netdev/20240305114045.388893-1-diogo.ivo@siemens.com/

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
 drivers/net/ethernet/ti/icssg/icssg_common.c  | 1221 +++++++++++++++++
 drivers/net/ethernet/ti/icssg/icssg_config.c  |   14 +-
 drivers/net/ethernet/ti/icssg/icssg_config.h  |   56 +
 drivers/net/ethernet/ti/icssg/icssg_ethtool.c |   10 +
 drivers/net/ethernet/ti/icssg/icssg_prueth.c  | 1189 +---------------
 drivers/net/ethernet/ti/icssg/icssg_prueth.h  |   79 +-
 .../net/ethernet/ti/icssg/icssg_prueth_sr1.c  | 1181 ++++++++++++++++
 include/linux/etherdevice.h                   |   12 +-
 12 files changed, 2724 insertions(+), 1210 deletions(-)
 create mode 100644 drivers/net/ethernet/ti/icssg/icssg_common.c
 create mode 100644 drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c

-- 
2.44.0


