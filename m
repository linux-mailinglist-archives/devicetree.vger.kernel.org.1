Return-Path: <devicetree+bounces-205892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B98B2AD4F
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD39F5813F4
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCDE320CC2;
	Mon, 18 Aug 2025 15:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="sg5TT64y"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B652C31E119
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 15:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755532102; cv=none; b=lEV1jCpwxYONyZL1gVAzAzNDLePGpA9RuUXltaqGuuse8LZ3A3lZEZy4DTX4eItkgoByaYF4LdTLc5B8SXenrgxCeNvujrrEpTI1EPEuuntehXqtSgPVRFZB++w+1PQZHD/Mk7CxD5vSpUYPvkwzsYb0HFy+2RVeeXR8ZQApMOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755532102; c=relaxed/simple;
	bh=EbDVwlCZ3b1okFX27KoWKyn1eVuD4Qh4cdMzfDNz6iw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=uRWyACx5j5kfLrmlbHcmGjrKjxfhGzKGWhs1weMQj5FIw60WcZThC+wwwypatMgljEk6AqY7YcujXwsdO0ISll7ktygZg0Lecpm4nFHkbwVvkEc9SgBKUouuBkgy5g2Xc099i6/2gvJeNWScDOMXdKzRxtTXXPw98aFRqd1/cis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=sg5TT64y; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57IFlsPq3197021;
	Mon, 18 Aug 2025 10:47:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755532074;
	bh=DaQrOZTOL9FdmJ5vPTmkctWgmHNoW6HaR+AB6GJWlb8=;
	h=From:To:CC:Subject:Date;
	b=sg5TT64yi56saP0naK1Y4qTEDGcRqsko/6In2O1QrFYcBzi4/hXfWj73jFptruJRa
	 kPD0f0ptFz4tuDpP/HHfpLxIoR8N7MD2GRC3vIY6OoJmHyAtLR5b9dSNGVl8nO0P+k
	 /hEnt3SbJxeNU4ZCgwlTvT2VBzoNvSV3PmhzpdV0=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57IFlrwY619508
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 18 Aug 2025 10:47:53 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Mon, 18
 Aug 2025 10:47:52 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Mon, 18 Aug 2025 10:47:52 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57IFlk8l1551018;
	Mon, 18 Aug 2025 10:47:47 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
        <airlied@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>, <u-kumar1@ti.com>
Subject: [RFC PATCH 0/3] Add DSI and Raspberry Pi panel support
Date: Mon, 18 Aug 2025 21:17:43 +0530
Message-ID: <20250818154746.1373656-1-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

This series adds support for enabling DSI output and attaching a Raspberry
Pi 7-inch panel on the BeagleBone AI-64 (J721e).
The patches include:
1. Bindings- Extend panel-simple bindings to allow the
Raspberry Pi panel to bedescribed.
2. SoC integration- Add DSI and DPHY TX nodes for J721e main domain.
3. Board integration -Hook up the Raspberry Pi 7-inch panel to the 
BeagleBone AI-64 using the DSI interface.

Harikrishna Shenoy (2):
  devicetree: bindings: dsiplay: panel: panel-simple.yaml: Add Raspberry
    pi dsi panel compatible
  arm64: dts: ti: k3-j721e-beagleboneai64: Add DSI RPi Panel

Rahul T R (1):
  arm64: dts: ti: k3-j721e-main: Add DSI and DPHY-TX

 .../bindings/display/panel/panel-simple.yaml  |   2 +
 arch/arm64/boot/dts/ti/Makefile               |   4 +
 ...1e-beagleboneai64-dsi-rpi-7inch-panel.dtso | 141 ++++++++++++++++++
 .../boot/dts/ti/k3-j721e-beagleboneai64.dts   |   7 +-
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     |  31 ++++
 5 files changed, 184 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtso

-- 
2.34.1


