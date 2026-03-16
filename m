Return-Path: <devicetree+bounces-275961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPlbMNWrt2nkUAEAu9opvQ
	(envelope-from <devicetree+bounces-275961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:05:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 546BE2955CA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:05:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A80073006695
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8662734CFC3;
	Mon, 16 Mar 2026 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="J27DOwr2"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EF01EDA32
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773644753; cv=none; b=oCvh4n2xzOsSzNTjUbvLcj/fu+uYf95iAT5vtkgAQK1fRJw9UNSxdd/onBwgTbC5nxX4Jam7mFC2uiTUfxwAGoZdmcxplQlU8uKGWhBA5RwilkBYxltp2bWkC6RFvrN95znGSWBYWUco7PvUC5zMDzSnM0pkdnooP6MHx4+wJSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773644753; c=relaxed/simple;
	bh=yIOLnwcp50s7At+xwmFvBgWYP4mOCNRnp+6Z0fZhW4c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oyhenRguOYoYvtUfZxGtkwEAPaP7OtQiouiV+g6g4PKUnXneCsuIwv6BLgLq0Ph0SYnv+UgmQg/xkC4r2GSfzlPAMswFOadV4A2kTz+0H4sbBF4rBeSR7EeeH5OuJPkiQyKRQHHJuthAv/vdrlPdAD+vCKP9Jrr6DIb73yCBqyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=J27DOwr2; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20260316070540712194b5fc00020745
        for <devicetree@vger.kernel.org>;
        Mon, 16 Mar 2026 08:05:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=ZMRxjLXE8D2Cdgp/vdO8bWkwaeP3e4nJ6ZrADBGSOnE=;
 b=J27DOwr2tTRTS1V6o/PxmyxZQRfmumgdd78Zp60ZvpxnVludKEpsSX0NvzMp7+l/FZr6pE
 eEycWKJxuh4mMJlyqIz9kHKqJQs086ImNsyKPXsUeYfo0nKPRQOn/KaMgV+3iuY3rA7SEwWz
 NBAbZpGK9yjo6Sq2xOynZJQPrz0irTZGncA9Id38li8qZzbE6qDRsu5qWJS0JjpsDo7upaF6
 PGhf2keqrLW2g+T/tUG9eSye1+I0KEEr8qQLaeWXzcbiAzXxesZ6wqRpc+aV3BUM23mqEsAj
 +RsT1X5Xn1FdsW8f6V1CaJIBmTVgJohW5k1d2p0NG6LaR6/GS8nCZUPQ==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Andrew Davis <afd@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Abraham I <kishon@kernel.org>,
	Roger Quadros <rogerq@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3]  ARM: soc: ti: k3: Provide reset cause information
Date: Mon, 16 Mar 2026 08:04:22 +0100
Message-ID: <20260316070429.1545707-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-275961-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,siemens.com:dkim,siemens.com:email,siemens.com:mid]
X-Rspamd-Queue-Id: 546BE2955CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Newer TI SoCs from K3 family (AM64x and newer) provide a detailed reset
cause information in RST_SRC register in the reset module within memory
mapped control registers. To make this information available in user space:

- provide the DT bindings for the reset registers
- add the rest registrs to the device trees of the corresponding SoCs
- conditionally add custom SYSFS attribute group (if particular SoC
  supports it) with "reset_reason" attribute providing the textual
  form of the reset cause as documented in AM62x Processors Technical
  Reference Manual.

The location for the newly provided information was inspired by
drivers/soc/tegra/pmc.c.

The series has been tested on AM623 (relevant DT is k3-am62-wakeup.dtsi).
Interestingly, K3 can have multiple bits asserted, for instance in case of
WDT-triggered reset:

$ cat /sys/bus/soc/devices/soc0/reset_reason
Reset Caused by MCU ESM Error
Reset Caused by Main ESM Error

Changelog:
v2: amended mfd/syscon.yaml instead of separate reset/ti,am64-rst.yaml

Alexander Sverdlin (3):
  dt-bindings: mfd: syscon: add binding for TI K3 platforms reset
    registers
  arm64: dts: ti: k3-*: Add am64x and newer reset registers
  soc: ti: k3-socinfo: Provide reset reason information

 .../devicetree/bindings/mfd/syscon.yaml       |  1 +
 .../soc/ti/ti,j721e-system-controller.yaml    | 11 +++
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi    |  5 ++
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi   |  5 ++
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi      |  5 ++
 drivers/soc/ti/k3-socinfo.c                   | 88 +++++++++++++++++++
 6 files changed, 115 insertions(+)

-- 
2.52.0


