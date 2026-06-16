Return-Path: <devicetree+bounces-312504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id beRuBSE6MWrXeQUAu9opvQ
	(envelope-from <devicetree+bounces-312504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:57:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50368F03A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:57:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=4A3QooNH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312504-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312504-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 895ED3033AFE
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED2043CEFF;
	Tue, 16 Jun 2026 11:54:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0DA41C314;
	Tue, 16 Jun 2026 11:53:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610841; cv=none; b=ZYaDyWQpMpa/xdU9EEzdNhdzSpISK3tLY0PmLdL9p173VueVeG3lkOxnIcbPe8ydAG5FwJlsdOHzybEWkelVYGIlTk3T1q1CEZIQCsh0kg/0OD0+tFZB8YmgsNlJ1goI6lLuv0zbOOsxbjMG01OjP14O422xqaQTFDNOC6mAHZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610841; c=relaxed/simple;
	bh=UDeaBDb6CnTVVWCQCGwXHWutDpdDlatc9jHaM9wB5AY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VK0syAQ+iYOipt/hkT4gN0v/wNllGoP++I3oY/RHvKzSHZfTYrHfI1ji0e851F1iP73UMwxdYnVJJUkXbJiGbzJYiNJdjpFWs+EAZT9zMNNbuE91WRvCNxtalVPz/56zoZ2LJXZNHnrCFpa8QJu8NEerV9/+NfZrt25eWPmcojs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=4A3QooNH; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1781610838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rBCFeFutKpKkUHB+jvdupWXEqkYfOSdSNbTjvMlEjrM=;
	b=4A3QooNHDUgcckOw2LoPOMp0nv3yjO+iJGyB5wEvzs86av1nkvygpZL+CpifXJCzSleLBW
	UbZqbUfFqgR4AgjN0Io17VnH5aK7dutpQF37u71nPktfRPh3djLCjJEZ/6lJ8bnQXLAXMH
	Q5/j0CKrYwLEJjPFTLgjdX41tEJrIaVCMD8++4YpQj6kNzAfWOGgOOG1bzI2jvdpgwsyGl
	41aIHHDsBXXY8RnDNn5VGuX9sN0fWXA6ed2vrzSs0GjxIHDse5YZPdwTTCb3g1yaYqvHUR
	n+rxj3D9m0Yk1dFX6KE2YRhuYPwdL+FHVbxt6PQwla87eYobVP7+J98CD0gYfA==
Subject: [PATCH 0/9] Support ELE API in i.MX OCOTP NVMEM driver
Date: Tue, 16 Jun 2026 13:52:15 +0200
Message-Id: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXNQQrDIBCF4auEWXdALRHSq5QujE7SKY2KmiCE3
 L2mWX48+N8OmRJThke3Q6KNMwffIG8d2LfxMyG7ZlBCaaGlxjXmksgs7Gf0VAteixiQl4rBhhK
 RvoSml8q5adCjuEOrxUQT1//T83U5r+OHbDnzcBw/gvePposAAAA=
X-Change-ID: 20260616-upstreaming-next-20260609-imx-ocotp-ele-a512ddf96b03
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1891;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=UDeaBDb6CnTVVWCQCGwXHWutDpdDlatc9jHaM9wB5AY=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JIcvQUq39hN7Zq3PFbrw1zEjdyXCJVfBEyCybE6utrj7vb
 ArRuq/dUcrCIMbFICumyCLFb/Ha1izWR/5YdRTMHFYmkCEMXJwCMJHumwz/c1SPPVD7xDzzw+34
 o1lPHtl1uTG/9D+zQTrn4eQV+/eeyWVkmHNb8fFHPWdpgek7f0So8L5McVmi/NNixYNXgRwvF83
 PYQQA
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312504-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fris.de:dkim,fris.de:from_mime,kontron.de:mid,kontron.de:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A50368F03A

The imx-ocotp-ele.c driver currently uses the limited FSB (fuseblock)
to access the fuse registers. In order to gain full read/write access
to all fuses, we need to use the Edgelock Secure Enclave firmware.

This patchset does:

* Add bindings to reference ELE device in OCOTP driver (patch 1)
* Add ELE API functions for accessing the fuses (patch 3)
* Let the OCOTP driver use the ELE API (patch 6)
* Extend the devicetree of the Kontron boards for using the ELE API (patch 9)

The rest of the patches contain cleanups that were implemented along
the way.

This was tested using the 'crucible' tool and through hexdump on the
nvmem device.

---
Frieder Schrempf (9):
      dt-bindings: nvmem: imx-ocotp: Add support for secure-enclave
      firmware: imx: ele: Fix indentation in ele_base_msg.h
      firmware: imx: ele: Add API functions for OCOTP fuse access
      nvmem: imx-ocotp-ele: Add keepout table for i.MX93
      nvmem: imx-ocotp-ele: Remove device-specific reg_read()
      nvmem: imx-ocotp-ele: Support the ELE API
      nvmem: imx-ocotp-ele: Remove the FUSE_ELE type
      nvmem: imx-ocotp-ele: Rename FSB access map
      arm64: dts: imx93-kontron: Enable ELE firmware driver

 .../devicetree/bindings/nvmem/imx-ocotp.yaml       |   4 +
 .../boot/dts/freescale/imx93-kontron-osm-s.dtsi    |  26 ++++
 drivers/firmware/imx/ele_base_msg.c                | 122 ++++++++++++++++++
 drivers/firmware/imx/ele_base_msg.h                |  22 ++--
 drivers/nvmem/imx-ocotp-ele.c                      | 137 ++++++++++++++++-----
 include/linux/firmware/imx/se_api.h                |   3 +
 6 files changed, 277 insertions(+), 37 deletions(-)
---
base-commit: 49e02880ec0a8c378e811bc9d85da188d7c6204c
change-id: 20260616-upstreaming-next-20260609-imx-ocotp-ele-a512ddf96b03

Best regards,
--  
Frieder Schrempf <frieder.schrempf@kontron.de>


