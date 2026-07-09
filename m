Return-Path: <devicetree+bounces-324062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9r+3OfP1T2qlrAIAu9opvQ
	(envelope-from <devicetree+bounces-324062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:26:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50162734F11
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:26:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arm.com header.s=foss header.b="c/735BIY";
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324062-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324062-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5CE93001B60
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E163AFAF4;
	Thu,  9 Jul 2026 19:22:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F007439BFFA;
	Thu,  9 Jul 2026 19:22:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783624946; cv=none; b=gFIi9SfOqKoqJWJmC8rUEQXOgkbGtmHQ38OkzVnvTpOCN2SRammPKiR1vbVi12LOfcZ/kefW97LklGg0abdDmudl/FRc7bdsmvodzHR8+OEweCC94/5uPjOISJhYK6hMmGfCk6d45iMLdXLnF8iRcVl6vBMP50nxKyZrh2J7zPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783624946; c=relaxed/simple;
	bh=6fbc1zMOckQ9tYF/nxEIPgsTtwm0FfeMsCMDNf7HVNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LMl6bhy/yTk0Rd8TjnAVKHQpqxXFlRTqZU/q8p0L6fOK0kVubgzJrauZ8sqL1K3yVJv/EWJsA8cLPDaIjVTLIBQNvbvMzkNbZOYf9tdJqdLpRG3zYFZWR4/2E1v/7epje233uIzs3CmR77ybVRoUjSpmipKgqMJEFXOH0mdCtzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=c/735BIY; arc=none smtp.client-ip=217.140.110.172
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B60C524C0;
	Thu,  9 Jul 2026 12:22:18 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4DDE53FC81;
	Thu,  9 Jul 2026 12:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1783624943; bh=6fbc1zMOckQ9tYF/nxEIPgsTtwm0FfeMsCMDNf7HVNQ=;
	h=From:To:Cc:Subject:Date:From;
	b=c/735BIYMdsOvnrBi/dVQA1f9+apLmvxS87xrc0TC4U/uhnRbqLX4+qC5j9yqYvRZ
	 Rb8EBQQjhcR44x3qzVB9jBixy3PTNELAR2XqSEhSyVTqbs+u7xCLe4aZ6VyUl8IhGr
	 io5B7ZRQlxgkrpWrWwdD9Yv5sqrFUj1Fk9vTVp7M=
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	mark.rutland@arm.com
Cc: devicetree@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] perf: Support Arm Bus Monitor Unit
Date: Thu,  9 Jul 2026 20:22:06 +0100
Message-ID: <cover.1783439341.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.54.0.dirty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[bounces-324062-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:will@kernel.org,m:mark.rutland@arm.com,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robin.murphy@arm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[arm.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,arm.com:from_mime,arm.com:url,arm.com:mid,arm.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50162734F11

Hi all,

Here we have the delight of another new PMU driver. While not am Arm
product in its own right, the BMU is found in the latest Neoverse
Compute Subsystems, including the recently-announced AGI CPU.

For now it is expected that BMU users will be ACPI-based (binding in
the latest "ACPI for Arm Components" release[1]), so the token DT
binding is more for completeness and maybe very early bringup hacking,
but there is a chance it may end up being used by more embedded/client-
focused subsystems in future.

And yes, I did initially look at trying to factor out the PMU register
accesses that functionally overlap the existing arm_cspmu code, but it
very quickly became clear that that would end up far bigger and more
complex. This is not a big driver, even with a few dozen lines of
nominally-duplicate (but also simplified since the counter size etc.
is fixed and known) code, so this way it went.

Thanks,
Robin.

[1] https://developer.arm.com/documentation/den0093/latest/


Robin Murphy (2):
  dt-bindings: perf: Add Arm Bus Monitor Unit
  perf: Add Arm Bus Monitor Unit driver

 .../bindings/perf/arm,bus-monitor-unit.yaml   |  33 ++
 drivers/perf/arm_cspmu/Kconfig                |   6 +
 drivers/perf/arm_cspmu/Makefile               |   2 +
 drivers/perf/arm_cspmu/arm-bmu.c              | 538 ++++++++++++++++++
 4 files changed, 579 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.yaml
 create mode 100644 drivers/perf/arm_cspmu/arm-bmu.c

-- 
2.54.0.dirty


