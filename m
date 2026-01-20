Return-Path: <devicetree+bounces-257645-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cC7PClEHcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257645-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:53:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AE94D4D9
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7997294979E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D484C47ECD7;
	Tue, 20 Jan 2026 22:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeNzCXI8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88001466B62;
	Tue, 20 Jan 2026 22:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768948076; cv=none; b=HLZLeVD5f91xblcoIGKCuJGiwRvR2F0gdr+IHLeJEnuhzoqTBAutYjklYXZkPRl81VbBoaahbKVx6Q4iWsyd8RipGdv9W31M6xFSjAYQtMPcDDqWeogGLLL4nHYIPWToo3m/NP9AyChakao/KMfBVvXMIFzpyryXp8scd69GTtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768948076; c=relaxed/simple;
	bh=Ed14O1Q/5LFqtv16WBlu1n537Kg0lLh7bI+z/E3e2T0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=pO1rjJ7i6btfCKg/Wc36n3hU/O8Siy9AQA0oXLGV+TwRkOMN7u5p4fg8tghkx2EQCGCZw1x/Qsot7vvtOIdNb9cKnNyGEeVV9KE32zftCAsoIJOnKUxUeZUXvhFgXKmJGTizbdqnXVT4V1uF+fglRsXkownv85cgVJJbVWr77nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeNzCXI8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DF72C2BCAF;
	Tue, 20 Jan 2026 22:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768948074;
	bh=Ed14O1Q/5LFqtv16WBlu1n537Kg0lLh7bI+z/E3e2T0=;
	h=Date:From:To:Cc:Subject:From;
	b=JeNzCXI8+0jRV7nPHCMQSYb762ncqn+bcuKGK8PHW3+yvGvDSAC4/AjBKPS4GZeiz
	 mCsWl/cstY0RYbcGJhrxPS1m00gbppYEth1QSya8j0lgEYSoKYGlvncIOFQ4VMZjjj
	 whWqQCeofm+mwF2zmGyQ8K7tvD1MPeG4xTP9uGZv/bOGY7Y91290Uk+2FS8XlJclZC
	 cCb9EfZaqGKSzjwqxS+2wQaTIHvN+ar0iN5Vm3TsVVh0q7RJJ/4RPCcImrJl8ThdjV
	 4iDhLiSYsnm2yw/n4039ASOj6zo/AdW6t8gcFDqDgDmryHt9Rlcpo7LPO3L2EIrqCw
	 zLqIR2HnugnIA==
Date: Tue, 20 Jan 2026 16:27:53 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree fixes for v6.19, part 3
Message-ID: <20260120222753.GA1357911-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257645-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: D9AE94D4D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Linus,

Please pull another couple of DT fixes.

Rob


The following changes since commit 235a1eb8d2dcc49a6cf0a5ee1aa85544a5d0054b:

  of: unittest: Fix memory leak in unittest_data_add() (2026-01-02 15:36:37 -0600)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-3

for you to fetch changes up to 81122fba08fa3ccafab6ed272a5c6f2203923a7e:

  of: fix reference count leak in of_alias_scan() (2026-01-17 10:20:43 -0600)

----------------------------------------------------------------
Devicetree fixes for v6.19, part 3:

- Fix a refcount leak in of_alias_scan()

- Support decending into child nodes when populating nodes in /firmware

----------------------------------------------------------------
Rob Herring (Arm) (1):
      of: platform: Use default match table for /firmware

Weigang He (1):
      of: fix reference count leak in of_alias_scan()

 drivers/of/base.c     | 8 ++++++--
 drivers/of/platform.c | 2 +-
 2 files changed, 7 insertions(+), 3 deletions(-)

