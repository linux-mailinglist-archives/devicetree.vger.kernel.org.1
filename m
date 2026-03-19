Return-Path: <devicetree+bounces-277766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HP5EtPxu2kgqgIAu9opvQ
	(envelope-from <devicetree+bounces-277766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:53:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4652CB6D3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95FB3310A3B9
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEE53CFF7B;
	Thu, 19 Mar 2026 12:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="fDIadPVk"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898873603C2;
	Thu, 19 Mar 2026 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924625; cv=none; b=jQnVAq+t5U0Mm7l1fr6SyDEm4U82j1R02C8FN6YVQSYxk+4gLnFx695cjFEqJBPWIHLCKmH66h1M/sgT8GhXk/omxOzBOHQgmqO6GhFJAZdfeOzPbrh5W13Lt2I4eEFvNVKsAdlsSCEdU7msE6Uq/FncxJaw0oppW/LzkWjGELk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924625; c=relaxed/simple;
	bh=SHYByCBNiJ2JYWjyClCA5GddQx7gtnPawFIm9DTRTXs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=C12G8eJPSzqwH93jOKrAGtsEpBYYYd48tkue7Cc+e6zX/wLf6ZCadNiVf384F9SHGNXjrU++LQUjk5/UbqVx0CcsPGXWjMLy3dehfyWwCoZxS2UYJBOCOExgXSI2qxYmmC/Zq2zLx5icAXzNPDxSVnOdIMr46AVaIIVlmoxT6iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=fDIadPVk; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=NF6w8t5jTyzsEb0m2tYRzroS6jTcRuQ0VrGUp+agBgo=; b=fDIadPVkdIF4vsB63JSmgVDn52
	Yykz0b/gU2GEmYUS1TRRLGsBlf7B/+jkX14oHsBj0O7FYSX7h90KdIr2vi85xPND/zu6pH0IjbIVc
	NBDMl1HMemTk4ha+XJPWdkn6nBuRPDnDWVXDiS/sMYU7RvKnRzOlAEjKzgpMV1WNRB56gN3WtGAVv
	IPeI6gSw85VHKtuXgGHXPHelHVRjS5JA60LO/aa8+XPnA510SB26c5j698JXDXUwBB6KvMeivWgaE
	JtoxPusg0D75ROfjdnDUMuv58RlZEjuBiI/qMAyV+yowQrOK2VsvOgTk1BRSK7pcx5PsrSoc1SsJ9
	+CRSJUag==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w3CpP-0009x4-2H;
	Thu, 19 Mar 2026 13:50:19 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w3CpO-000MiA-2x;
	Thu, 19 Mar 2026 13:50:19 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH v2 0/3] TQMa93xx on MBa93xxLA-Mini support
Date: Thu, 19 Mar 2026 13:50:07 +0100
Message-ID: <20260319125013.2421621-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27945/Thu Mar 19 07:24:38 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277766-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.981];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:url,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Queue-Id: 9F4652CB6D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi all,

this series adds support for TQMa93xxLA on MBa93xxLA-Mini [1],
a single board computer board in small form factor.
It has a reduced feature set compared to MBa93xxLA, with WiFi/Bluetooth and
WWAN applicaitons in mind.
An overlay for Ezurio WiFi module is added as well.

Changes in v2:
* Collected tags
* Fixes commit message style
* Remove unused display related DT nodes
* Fix Ethernet PHY IRQ types

Best regards,
Alexander

[1] https://www.tq-group.com/en/products/tq-embedded/arm-architecture/mba93xxla-mini/

Martin Schmiedel (3):
  dt-bindings: arm: fsl: add MBa93xxLA-MINI
  arm64: dts: freescale: add initial device tree for
    TQMa93xx/MBa93xxLA-MINI
  arm64: dts: freescale: imx93-tqma9352-mba93xxla-mini: Add WLAN/BT
    overlay

 .../devicetree/bindings/arm/fsl.yaml          |   3 +
 arch/arm64/boot/dts/freescale/Makefile        |   5 +
 ...3-tqma9352-mba93xxla-mini-ezurio-wlan.dtso |  35 +
 .../imx93-tqma9352-mba93xxla-mini.dts         | 597 ++++++++++++++++++
 4 files changed, 640 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini-ezurio-wlan.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla-mini.dts

-- 
2.43.0


