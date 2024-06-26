Return-Path: <devicetree+bounces-79963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51000917788
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 06:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05E0F1F237A7
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 04:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C1AF14D2BE;
	Wed, 26 Jun 2024 04:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="SH5drXVZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E799113AD28
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719376941; cv=none; b=AhuGPYhuCcrjBsbiffts5wxhDDnKelLW47A6Fng2PfkEwPqmbYwRjpY6jO8nYrLphUa2mVktxLtqcu8/BiYBHUgzHIsq4s6tYMHH+9/zqSs0Eszd0cz8qkD9crmllcNRfZyY8BZARsat9tCoTeFD2qZVrItWxMOqowluutGgze0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719376941; c=relaxed/simple;
	bh=vpoqjqBY4sK4dwraEfD6i0clD+AXrwjJaktHaDYoWww=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RNBXLZb+ZDrUQGnIYukE0R9D3M8Z25Bqo0ggV3JGzrmIBYWns4ZlXHZC4aBAQyf5bPqTDxfYbyNPDaJx1ZSNk+pvJJIlcefbReskw8660Y2gB+/TRW7u4/BqeA5IqwW2ORZrHbccmkHsX14SOTCZH0YEAegXtjSBLGrOhY/WIuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=SH5drXVZ; arc=none smtp.client-ip=185.136.65.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 202406260442093cdbd490e2c901c5ca
        for <devicetree@vger.kernel.org>;
        Wed, 26 Jun 2024 06:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=sZstMfiwokmmM5Q8G42iRnSGsO4Vlddg3ciPFHlwc0s=;
 b=SH5drXVZQtLPot89mmhnCeKR4ExGnbplwr7UYtIGkK3HBBh0DJS/md86dVgjm8l3Co+a7N
 rydW7asCVWLV1ceWN8jWWPKHYyRH2NjUDn1f/kLbaHAq1CquLEu/wHTWQER+fGtnBSHH9a4+
 PCml23HESltYloVQB/IEMFH37rgpU=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v2 0/4] arm64: dts: k3: Resolve remaining dtbs_check warnings
Date: Wed, 26 Jun 2024 06:42:04 +0200
Message-ID: <cover.1719376928.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

Changes in v2:
 - reference reg-mux.yaml in am654-system-controller child node
 - base on top of dedicated am654-serdes-ctrl schema patch

This goes on top of
https://patchwork.kernel.org/project/linux-arm-kernel/cover/20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org/
and
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240616-dt-bindings-mfd-syscon-split-v2-5-571b5850174a@linaro.org/

As we are working in this area, having a zero-warning baseline helps a
lot finding own issues quicker. Maybe not all of the suggested
resolutions are optimal, open for feedback, just want to have them all
fixed now soon.

Jan

Jan Kiszka (4):
  arm64: dts: ti: k3-j72xx-mcu-wakeup: add dedicated wakeup controller
    compatible
  arm64: dts: ti: k3-am642-evm: Silence schema warning
  dt-bindings: soc: ti: am645-system-controller: add child nodes used by
    main domain
  arm64: dts: ti: k3-am65-main: add system controller compatible

 .../soc/ti/ti,am654-system-controller.yaml    | 25 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       |  4 +++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  2 +-
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      |  2 +-
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  2 +-
 .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     |  2 +-
 6 files changed, 33 insertions(+), 4 deletions(-)

-- 
2.43.0


