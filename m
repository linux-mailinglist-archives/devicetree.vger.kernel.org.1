Return-Path: <devicetree+bounces-32328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F268382EFE1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 14:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CC12285651
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 13:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B191C1BC5F;
	Tue, 16 Jan 2024 13:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Rd8Ppt88"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A71BF26;
	Tue, 16 Jan 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 40GDfjEm027724;
	Tue, 16 Jan 2024 07:41:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1705412505;
	bh=VxBu6hTc7ywOegJWteYHT/TCvPqzN88cxPO+F6jKmMM=;
	h=From:To:CC:Subject:Date;
	b=Rd8Ppt885MWHWlQgDEy+mSAXBW7wBXHwsTI3QItR97AXcKl1ctZ8mG3ZmZfrU7M+4
	 enatlivoWXLL2xrV7dqRzdqyDgzq4Ie5JsrkU3hMSIJd44HtPyKj0BsyIlWmnhe912
	 nnSJwcsGlWtblf5XuKgQCJebpWZk4PNphWgBsvH8=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 40GDfi3G026997
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 16 Jan 2024 07:41:45 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 16
 Jan 2024 07:41:44 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 16 Jan 2024 07:41:44 -0600
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 40GDfgKd063303;
	Tue, 16 Jan 2024 07:41:43 -0600
From: Devarsh Thakkar <devarsht@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
        <airlied@gmail.com>, <daniel@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <praneeth@ti.com>, <a-bhatia1@ti.com>, <j-luthra@ti.com>,
        <devarsht@ti.com>
Subject: [RFC PATCH 0/3] Add display sharing support in tidss
Date: Tue, 16 Jan 2024 19:11:39 +0530
Message-ID: <20240116134142.2092483-1-devarsht@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This adds display sharing support in tidss display driver along with an
example overlay devicetree file using which can be used to enable display
sharing on AM62x devices with device manager core i.e. R5F expected to run
a custom firmware which supports corresponding display sharing
configuration.

As resources can be partitioned at different levels a flexible scheme is
followed while designing devicetree bindings and driver changes keeping in
mind possible scenarios in which resources can be partitioned and various
DSS hardware IP's supported across different devices.

A rebased version of this patch has been tested on AM62P SoC which also
supports same DSS IP as AM62x and the patch with display sharing
functionality is already available in vendor-specific kernel source tree
[1] along with documentation which explains the design [2] and DM firmware
support [3].

NOTE1: This is marked as RFC for upstream since AM62P is not yet supported
in upstream tree and for AM62x SoC which is the target SoC for this patch,
the dss sharing functionality is not validated on upstream tree due to
missing OLDI support and display sharing DM firmware support, but we still
wanted to get some feedback on this.

NOTE2: This series depends on :
https://lore.kernel.org/all/20240115125716.560363-1-devarsht@ti.com/

[1] :
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/?h=09.01.00.007&id=d805270609cfb6b2e67bd2fd5959d71f48393196 
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/?h=09.01.00.007&id=93d751a94cbf9ad07c7f658e78aa510d919d7cd6
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/?h=09.01.00.007&id=665c17837dc8bed27e8d63388f8f7f7a85c0cd94
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/?h=ti-linux-6.1.y-cicd&id=f8d7f1a9617862af922c6bc10e0765ba4f4857d6
 
[2] :
https://software-dl.ti.com/processor-sdk-linux/esd/AM62PX/09_01_00_08/exports/docs/linux/Foundational_Components/Kernel/Kernel_Drivers/Display/DSS7.html#driver-features
(Display Sharing mode feature description)
https://software-dl.ti.com/processor-sdk-linux/esd/AM62PX/09_01_00_08/exports/docs/linux/How_to_Guides/Target/How_to_enable_display_sharing_between_remotecore_and_Linux.html
(How To Guide)
https://software-dl.ti.com/processor-sdk-linux/esd/AM62PX/09_01_00_08/exports/docs/system/Demo_User_Guides/Display_Cluster_User_Guide.html
(Display Cluster user guide with demo details)

[3] :
https://git.ti.com/cgit/processor-firmware/ti-linux-firmware/tree/ti-dm/am62pxx/dss_display_share.wkup-r5f0_0.release.strip.out?h=ti-linux-firmware-next

Devarsh Thakkar (3):
  dt-bindings: display: ti,am65x-dss: Add support for display sharing
    mode
  drm/tidss: Add support for display sharing
  arm64: dts: ti: k3-am62x: Add overlay to use DSS in display sharing
    mode

 .../bindings/display/ti/ti,am65x-dss.yaml     |  82 ++++++
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../dts/ti/k3-am62x-sk-dss-shared-mode.dtso   |  23 ++
 drivers/gpu/drm/tidss/tidss_crtc.c            | 120 ++++++++-
 drivers/gpu/drm/tidss/tidss_dispc.c           | 254 ++++++++++++++++--
 drivers/gpu/drm/tidss/tidss_dispc.h           |   2 +-
 drivers/gpu/drm/tidss/tidss_drv.c             |  33 ++-
 drivers/gpu/drm/tidss/tidss_drv.h             |   6 +
 8 files changed, 481 insertions(+), 40 deletions(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62x-sk-dss-shared-mode.dtso

-- 
2.34.1


