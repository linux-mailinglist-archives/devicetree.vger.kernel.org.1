Return-Path: <devicetree+bounces-325330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aigrK8OtVGpTpQMAu9opvQ
	(envelope-from <devicetree+bounces-325330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:20:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A247493A4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:20:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=QGAnsDoO;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325330-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325330-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9406C302F421
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A863DEAD6;
	Mon, 13 Jul 2026 09:19:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0083DF001;
	Mon, 13 Jul 2026 09:19:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783934384; cv=none; b=rAPM/Punc+AgmVl5QgLjcE0ffSYRZf5MKpmN9OR6oIsQWSF4ts0vSiDN7VLTul68uFIxTjOm/j7ltzhs7F7g6amLJHHZz6UFlE+y6JN/h6KVFg9t5p+q0w2EIuTxRFsoZUu4u8SeAt+j+gUdpY5K48iOaUMAPooywcsyiFLUvhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783934384; c=relaxed/simple;
	bh=7bQDH/OZ23fOmfWvFy1z4i4nRSQhcF9nRPCTaxhKRaM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FllJFbSSoHgmY9y4GHbRfva/DE5oOmLb7ntgop0lLHQu7icxWc96THXd2K/QEQwosi62W1wLqXqM9FNkUngJkTHpfVd6qppf/wJ6zVIHmeA7cpa7MTkJtKIEA7+g3LHZupT8EA2mrabPsq1f83MqZiMQXEPruHpEZqSWwQNBYEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=QGAnsDoO; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=z9Ce94XR2IBdMohRvs8y69ajZ4JeAI2hb4QUuYehro4=; b=QGAnsDoOm0yhaw1y81UbA5kH0O
	A9SLOzYZVLggRrrbHKx+ZpNF6jyeLdTTgV5jQ/37iJVfr0BfoT9qpwyhsXu9+L/9Ww7M37eehDgHr
	W7AkDc2YvBetW/F3F0CFJfGc0qBJQM3W+vVNZ2DmYt2kD3vU6ynewcxo9tHF6XHCPYrzyxyPNBA5n
	nOb/HJo4zpKGW8Wmy09niLZH8dXq3lAR2tAfyDTDuSyxXPyH8Jgp4jEYetKk1NMeWXyMLmL0fllf4
	A7IePrx7Q1yf8fVR5v+VzGm8TmdUCrUGETV6W0eoYRBmgZTKZxr0uRhvIoGjv0sBLh47hlOV7ZACE
	cD6b5BKQ==;
Received: from sslproxy01.your-server.de ([78.46.139.224])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wjCp8-0004Rx-1w;
	Mon, 13 Jul 2026 11:19:38 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy01.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wjCp8-0004Bh-0f;
	Mon, 13 Jul 2026 11:19:38 +0200
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
Subject: [PATCH v2 0/2] Support for TQMa91xx on MBa93xxCA
Date: Mon, 13 Jul 2026 11:19:20 +0200
Message-ID: <20260713091924.2319674-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28059/Mon Jul 13 08:25:07 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-325330-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:alexander.stein@ew.tq-group.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux@ew.tq-group.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:from_mime,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36A247493A4

Hi,

this small series adds support for TQMa91xx, i.MX91 based module, on
MBa93xxCA. It supports most interfaces similar to TQMa93xx, but LVDS is not
supported at all. Wake-on-LAN works on both interfaces.

Best regards,
Alexander

Changes in v2:
* Fixed commit message on patch 1
* Adjusted description in bindings
* Fixed PHY irq type (-> level low)
* Collected Conor's A-b
* Link to v1: https://lore.kernel.org/all/20260707091424.1702245-1-alexander.stein@ew.tq-group.com/

Markus Niebel (2):
  dt-bindings: arm: add MBa93xxCA as mainboard for TQMa91xxCA and
    TQMa91xxLA SOM
  arm64: dts: add devicetree for TQMa91xx on MBa93xxCA

 .../devicetree/bindings/arm/fsl.yaml          |   6 +-
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx91-tqma9131-mba93xxca.dts    | 937 ++++++++++++++++++
 3 files changed, 942 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-tqma9131-mba93xxca.dts

-- 
2.54.0


