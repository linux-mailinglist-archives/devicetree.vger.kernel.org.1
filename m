Return-Path: <devicetree+bounces-260802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K4sNkwwe2n2CAIAu9opvQ
	(envelope-from <devicetree+bounces-260802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:02:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF89EAE589
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:02:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 19AB9300B2A3
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97543803E9;
	Thu, 29 Jan 2026 10:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="fEbSVsxw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0F737E2EC;
	Thu, 29 Jan 2026 10:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769680951; cv=none; b=fEWIlcEvZ8/3bAtdnAXV9YNXpzedqI7JzL3O8nazEGYoR0pQT1IWoZkMBYt7gjhML2LT90f9JLMlQCZw7KHwWWl/IBboMCgW9e/UuzaWM9Oo2B/6exAOb5HRgsuXZUg0xrW0+KVbXJe2AvHkMDq0sZB2TQQLguQ9tGkJyBIqZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769680951; c=relaxed/simple;
	bh=YPXowlMRj5xHqun6D/AYKPRcLJcRYokVA1SxHCq14+c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=plzGu02xO2fINIudDSQjKT3Bb5hLs3wAH/k2FHjJlov/Tfauco0cAamN9YBdyMDq5wnm/tjkfoSQKepXIcaI1OfSdSMA0FA5v2gHR1jVrwF+5f+VtdwEpD5F6cZrpJldJ521t5ZRVn7v/CQLIH9Z1TP/15N+ATFbHe0DKc3PbbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=fEbSVsxw; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E680810F4FD;
	Thu, 29 Jan 2026 10:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1769680500; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=TNf7l43MX55crtLyATkZX7s/kbESvyujXOEVyv/5/Yc=;
	b=fEbSVsxwx5FJdG0tkvHTWRAJdGY72k44WhwRUeb6ayrhzX85DL6K30IPTbc31xy5rFoFhq
	osVlRlOfEUCno5Gtung0eSw9X+vTbu7Q5AcyJnrpVdmF++wZhWXDKJOPoJqxolHwQIk25c
	TrNH0H7dy9M+KVPKVzg9wWkXalIu6ZC9B+u5Cr1ND9cI/WHbmaVS5OppXJgAnLLQr/TQj4
	Ajm9EF3GmUBfiLukKLFVOcSsuRQ+kYTpeGPmONkXoVClgM9kABA3ulewJY+u3vpXFchxg1
	G0LHj9wv5d+t5Whsy/g4vp2mcPZB6tCVKZ+/QzIzqYY/j6RpMfcsT0DGxEijYQ==
From: Lukasz Majewski <lukma@nabladev.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Lukasz Majewski <lukma@nabladev.com>
Subject: [PATCH v4 0/4] clk: vf610: Add clocks to support MTIP L2 switch
Date: Thu, 29 Jan 2026 10:54:38 +0100
Message-Id: <20260129095442.1646748-1-lukma@nabladev.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nabladev.com];
	DKIM_TRACE(0.00)[nabladev.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lukma@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DF89EAE589
X-Rspamd-Action: no action

This patch series:
- cleans up clocks' setup on vf610 by moving VF610_CLK_END define
  to driver code
- introduces support for several clocks required by MTIP switch IP block

Lukasz Majewski (4):
  clk: vf610: Move VF610_CLK_END define to clk-vf610 driver
  dt-bindings: clock: vf610: Drop VF610_CLK_END define
  dt-bindings: clock: vf610: Add definitions for MTIP L2 switch
  clk: vf610: Add support for the Ethernet switch clocks

 drivers/clk/imx/clk-vf610.c             | 12 ++++++++++++
 include/dt-bindings/clock/vf610-clock.h |  6 +++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

-- 
2.39.5


