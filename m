Return-Path: <devicetree+bounces-276284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDVcE68juGk8ZgEAu9opvQ
	(envelope-from <devicetree+bounces-276284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:37:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D320529C897
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C7F23175C07
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119E33A255D;
	Mon, 16 Mar 2026 15:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovhzMWqk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C913A9631;
	Mon, 16 Mar 2026 15:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773674777; cv=none; b=lI6XOnmJusB6eOWbTPVEIUqwuh+EWnw4jiDHqnWMTeE4w2zhLyMxz/7nk4PpY8VgARCUToiBRrY4X1ZOqXUtVau/gaygJdCK7AjGGKk1UT/UEGzw6YBUHvmQTiZACduHFtOzmHRYcCkUhM41NbNXkjod5xbTYLpMmpXL1qtZeG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773674777; c=relaxed/simple;
	bh=f5yrzvJyKqNO0mx1A368jXTrlKXyBPupbgbIJWVdVDg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=s8ZvG/jEuPIdFX2M/RgC+aGvGp8vnEQcafz6EYSXGIVFIaeSy1Rr1Ik+mkoKfIsKyAYTVYYGwZWU8zKWrcA6Y1EZO878AxHPrMF/CR+QTIf45WTR2aX/quu+H3b6jBUnOi4TkLZLT5orkM1H2hjlECWQrQ2VMTN/u2/vBhixShw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovhzMWqk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56604C19421;
	Mon, 16 Mar 2026 15:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773674776;
	bh=f5yrzvJyKqNO0mx1A368jXTrlKXyBPupbgbIJWVdVDg=;
	h=Date:From:To:Cc:Subject:From;
	b=ovhzMWqk806ZgRSfbKVBcxktTp+WFCFPfQii4kiAXjB/7c60iC/cGW0GHW1LveMa0
	 w/GQbssWk9KmNuPvTBzHBcTD5l8BjYuvvusZgzfGltD1S1YLexZmxaFLWHSJknBZOb
	 qNcxmTgvrz/dsom3WZx91hP+Qcgdf47U7v+rm5W6ieJU0kj/+TjI/qiCdFP9PVoZ91
	 sIpBJT8ODkhe6zDwzJd1eKnmkGMDp6rdFGMrI2248Zckv6qoDbNcXanZFY8Gy6rPX6
	 Oakf0AgRspS14udOdoJv28RnnQOX3DrM/YXIw5YSg/O4eMMR0NHRV0kHi7iEw8PCz9
	 xcSh00OQLnp/g==
Date: Mon, 16 Mar 2026 08:26:14 -0700
From: Drew Fustini <fustini@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Brian Masney <bmasney@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Drew Fustini <dfustini@oss.tenstorrent.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [GIT PULL] clk: tenstorrent: Add Atlantis PRCM for v7.1
Message-ID: <abghFg5INVslFFcc@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276284-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D320529C897
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Stephen,

This pull request introduces support for the Tenstorrent Atlantis RISC-V
SoC in the form of a clk driver, reset driver and the associated DT
binding. The reset driver was reviewed by Philipp, who agreed that it
could go via the clk tree. Brian reviewed the clk driver but there is no
review/ack from you. Please let me know if you'd like to see any changes
and we will post a new revision.

The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:

  Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tenstorrent/linux.git tags/tenstorrent-clk-for-v7.1

for you to fetch changes up to 23c8ebc952849b3ba47d04d0ec95daf5cc136061:

  clk: tenstorrent: Add Atlantis clock controller driver (2026-03-09 20:10:26 -0700)

----------------------------------------------------------------
clk: tenstorrent: Add support for Atlantis PRCM

Introduce support for the clock and reset controllers (e.g. PRCM) in the
Tenstorrent Atlantis SoC. 5 types of clocks are generated by the PRCM:
PLLs, shared gates and standard muxes. The reset controller is setup as
an auxiliary device of the clock controller.

Signed-off-by: Drew Fustini <fustini@kernel.org>

----------------------------------------------------------------
Anirudh Srinivasan (3):
      dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm-rcpu
      reset: tenstorrent: Add reset controller for Atlantis
      clk: tenstorrent: Add Atlantis clock controller driver

 .../clock/tenstorrent,atlantis-prcm-rcpu.yaml      |  54 ++
 MAINTAINERS                                        |   4 +
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/tenstorrent/Kconfig                    |  14 +
 drivers/clk/tenstorrent/Makefile                   |   3 +
 drivers/clk/tenstorrent/atlantis-prcm.c            | 870 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 173 ++++
 .../clock/tenstorrent,atlantis-prcm-rcpu.h         | 103 +++
 11 files changed, 1235 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm-rcpu.yaml
 create mode 100644 drivers/clk/tenstorrent/Kconfig
 create mode 100644 drivers/clk/tenstorrent/Makefile
 create mode 100644 drivers/clk/tenstorrent/atlantis-prcm.c
 create mode 100644 drivers/reset/reset-tenstorrent-atlantis.c
 create mode 100644 include/dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h


