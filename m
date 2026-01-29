Return-Path: <devicetree+bounces-260968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MsgNm6Ye2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:27:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F383B2D77
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:27:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEDFC306DE42
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833DB349AE1;
	Thu, 29 Jan 2026 17:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="bxe51VTn"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE2C2EA15C
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 17:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769707404; cv=none; b=cNz8tAuWnXP46Igdn2t92FaZi4VGWuu+Bht+jkNO/U106TqnrKb2pHIJ1bc0CnF300vAO8AWImh20n5hP1BXjJMl/ury/Y0ji9GQSSqfMddFRjGQveW20PIh3JidGAXteYJcwpHae5i++WMIHQHec4XH4eyGg2ontKp3Fpc0EJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769707404; c=relaxed/simple;
	bh=SvH0AoqLQBztfThT9P/LUln8AmuAYBxZPjT9Lgf1hcI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QjklDxXjQrIlndhjtlHHv1FjFOIdVnl7+56gk3LJ4N2/9DbqRwFwBayxcuxIRYoSOdmEtT6tqy7Z/4ZZtOh3ouRi1b7Rh/po+znJjURPc8RwuNdO1Xqfi7unGxH+e/rwgpSxJ1QO3WlWVUR+mlhmM8qP/dSjx3OopktIE90XIA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=bxe51VTn; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1769707399;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TF8JgnJjP3MwCPu1WCIn/bHY9tGL0Ps0MgNVk/UJcAA=;
	b=bxe51VTne6PAUnEHSsR5xlFrzoUdmewfCiBqJfHClN6TTC/C5hcpEKBTbJyiR4740jI5qQ
	MxMrBgJgXhRJYpMS5E9GHU3/7kmiEu5fRtbO45BdITYMg8gnKIrUvyNpfa9heGvyectkMZ
	fmkCmyfYsikoXQQiLBDSxDIN+ikpfTQ=
From: Sean Anderson <sean.anderson@linux.dev>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-sound@vger.kernel.org
Cc: Jaroslav Kysela <perex@perex.cz>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Michal Simek <michal.simek@amd.com>,
	Takashi Iwai <tiwai@suse.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] ASoC: xilinx: xlnx_i2s: Discover parameters from registers
Date: Thu, 29 Jan 2026 12:23:13 -0500
Message-Id: <20260129172315.3871602-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260968-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[arm.com,gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sean.anderson@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:mid,linux.dev:dkim]
X-Rspamd-Queue-Id: 3F383B2D77
X-Rspamd-Action: no action

Xilinx helpfully included a read-only "config" register that contains
configuration parameters. Discover our parameters from this register
instead of reading them from the device tree.


Sean Anderson (2):
  dt-bindings: sound: xlnx,i2s: Make discoverable parameters optional
  ASoC: xilinx: xlnx_i2s: Discover parameters from registers

 .../devicetree/bindings/sound/xlnx,i2s.yaml   |  8 ++---
 sound/soc/xilinx/xlnx_i2s.c                   | 32 +++++++------------
 2 files changed, 13 insertions(+), 27 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


