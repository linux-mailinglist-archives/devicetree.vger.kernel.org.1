Return-Path: <devicetree+bounces-272817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +N1zFUqcrmk7GwIAu9opvQ
	(envelope-from <devicetree+bounces-272817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:09:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6388236CC6
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E7E03009B19
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5281B38B7C6;
	Mon,  9 Mar 2026 10:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="BKMdqH/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A34389459
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773050951; cv=none; b=mOWIwQEGdxYMp7N1Ui9BbHnTh+fuTNZC7Ok2SW9J1y2EgQT5NEr1RA603SbhT+g60mZ7uHrgqj40v9iD/ISseCFDjySYKlARJsCX88mvPUIdrxi8fltQHcOXChO+E0/i8mrGvSbTl343IW2yByhDppqOUMDyShV/dhT1qtLcLjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773050951; c=relaxed/simple;
	bh=uQXfj3pvqBjabRfgr6BBpynWmWGeFWLId5CIyth4528=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c4xsy/5zLtbAzGL4kA9lmN2uCuzfTjXFBZEfEhKPB00n1hHzM1uu+0MH3ejGeD4pFZMzQlR+f+gYnOMqAc1ehgwED+Lrk6XA2mkdtQbaF8Xyfxp8SI6Sx3f4wu469PONrevz8o41a8RGHcvCDKsxSp3hGFI2fgAYT4qdONi+fAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=BKMdqH/q; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20260309100857da2668a88d000207b3
        for <devicetree@vger.kernel.org>;
        Mon, 09 Mar 2026 11:08:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=jSLZtLPFNYP99Gp43k1eVbX2dL2LT8yQcf9WKPjt9q4=;
 b=BKMdqH/qcRjY7+zvRPudjerq6dfqp8IlajHtYlGpOLRV/YqMwsOtTVCw+8d7I4qDM3oLEM
 nht9zNeNNn41vU2TVMiB+5/XCNjN2nX6365V9xn1ltl72Ly6CoRW9zLtDk3DKhdFsAqa07lm
 oJwndfwH5YHjF0TjVcl+4znQKQdyN8q5tjJp+Wecu9eZr4LfeInVTy7RZa2tLa0Ao6pFp9/x
 Xj1NESmLM52ozfGF9VxgGA2AqzG4wMHGBQMNiv4tyPQ0wwLfeUNWnbGNo/W3aJM0icCbGo+Q
 W0aGlrPOR+dz14tyEgELKmw+4J+VZKL0GVbAz9jzniZlnxFw5hNEnQrg==;
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
Subject: [PATCH 0/3] ARM: soc: ti: k3: Provide reset cause information
Date: Mon,  9 Mar 2026 11:07:52 +0100
Message-ID: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer
X-Rspamd-Queue-Id: A6388236CC6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-272817-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,siemens.com:dkim,siemens.com:email,siemens.com:mid]
X-Rspamd-Action: no action

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Newer TI SoCs from K3 family (AM64x and newer) provide a detailed reset
cause information in RST_SRC register in the reset module within memory
mapped control registers. To make this information available in user space:

- provide the DT bindings for the reset module
- add the rest module to the device trees of the corresponding SoCs
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

Alexander Sverdlin (3):
  dt-bindings: soc/reset: ti: add binding for k3 platforms reset module
  arm64: dts: ti: k3-*: Add am64x and newer reset module
  soc: ti: k3-socinfo: Provide reset reason information

 .../bindings/reset/ti,am64-rst.yaml           | 39 ++++++++
 .../soc/ti/ti,j721e-system-controller.yaml    | 11 +++
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi    |  5 ++
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi   |  5 ++
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi      |  5 ++
 drivers/soc/ti/k3-socinfo.c                   | 88 +++++++++++++++++++
 6 files changed, 153 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/ti,am64-rst.yaml

-- 
2.52.0


