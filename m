Return-Path: <devicetree+bounces-302746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NfkLLFaFGofMwcAu9opvQ
	(envelope-from <devicetree+bounces-302746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 16:20:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7CA5CBAC1
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 16:20:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 719203004227
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E833EBF36;
	Mon, 25 May 2026 14:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrY3zSkd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACAB3ECBFE
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 14:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779718769; cv=none; b=fsLclH57B4iW2fJ0LxokwLJXIb0C4C4xBQtYSuUUmHAJP0yQVzjOIVUYn2ZlSsWh5YXMpqV2IcmYsVZYfPQcfSh/Cb5NYDZEDrJoXq6WGaqW5BRc+7GeXyudL0MD5ie0yEtwHJ3hOOH27QTUvW9B4a2AXctZl2Jsbct7M4vQICs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779718769; c=relaxed/simple;
	bh=+a/wzNIiicc7kpKmSI4zTAxNxdHwoEmlMoCmpAUdsA0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TdVTJCOxvqiMFmZY2d/N3J85sWW7jsaVk9skcJ4fC7vRhb42cUIy1InTy0P0OOSqPUBBtWNNBdhPRPEPPyMtuf44RfKPVc3120/YuBFAVbuFsKq7m6NnQGZ0W7FWcpo6Fb3P9hmV+TZvkKQmNAcY4k+ZFiIjsoqt7An7Orbxb6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrY3zSkd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA0CB1F000E9;
	Mon, 25 May 2026 14:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779718767;
	bh=k9jJg9Yo/2FiEOE6zivQiV7XMOjReA8/ZmgaPuTURGY=;
	h=From:To:Cc:Subject:Date;
	b=GrY3zSkdP041jTa8KaJMZEPNQJKEZnbcI7bJxxz0/oXu7HySptVfU78fowUXAFuOz
	 SXBAE/9Fs2oyZQinux+1dK6bWZuSE24PUXww7IEY+zjMD+lrWXVXBSzDrfFl7ydZ3R
	 ZESGZFrPaZNrGGEy83F+Gv1wNaayPX8oVX8kIYeZBJeHSjiFD2Ic0J0a9kMrUwzsvq
	 NCeQz1a7PhOWj/KYem+ygROdaliqBgq0B/VlqRYoUgl5n0eisROA2yeoQRvFjgphIg
	 v9AqRdZKsEWvsVrqc/ZHtmry9Su5MUptAp4C59ghzBDPs8On1glgjkjwAfWnOxT+0y
	 +njGUrplRuzlw==
From: Jisheng Zhang <jszhang@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 0/3] i3c: dw: Add apb reset support
Date: Mon, 25 May 2026 22:00:15 +0800
Message-ID: <20260525140018.19598-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302746-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 1F7CA5CBAC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support of apb reset which is to reset the APB interface.
The first patch is to document the exisiting reset dt-binding. 2nd patch
is to add apb reset dt-binding. The last patch is to add apb reset
support.

NOTE: to align with "core_rst", the new added apb reset is named as
"apb_rst", IOW, the reset names: "core_rst" + "apb_rst". I can modify
it if maintainers prefer "core_rst" + "apb"

Since v3:
  - back to v2, I.E keep the "_rst" suffix, since removing it is an
    ABI breakage.

Since v2:
  - remove "_rst" suffix

Since v1:
  - add dt-binding


Jisheng Zhang (3):
  dt-bindings: i3c: dw: Describe core reset
  dt-bindings: i3c: dw: Add apb reset
  i3c: dw: Add apb reset support

 .../devicetree/bindings/i3c/snps,dw-i3c-master.yaml    | 10 ++++++++++
 drivers/i3c/master/dw-i3c-master.c                     |  7 +++++++
 drivers/i3c/master/dw-i3c-master.h                     |  1 +
 3 files changed, 18 insertions(+)

-- 
2.53.0


