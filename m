Return-Path: <devicetree+bounces-299753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAgeDR3/C2pcTQUAu9opvQ
	(envelope-from <devicetree+bounces-299753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:11:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9744C577C68
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:11:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EFB73049734
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7624237F8B8;
	Tue, 19 May 2026 06:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJkI6Igx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BD637F728;
	Tue, 19 May 2026 06:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779171010; cv=none; b=dIpyC/5NNQmMnAMyZW97e7W9VQ2xOe70L1nWBL8IPrMxTwU9BDwlrSVImpjRmcVgyQ7cJPdLoVsE+kBT7mPTw04k2X+kTk1oQlLsrl1ENsWsmZ6+q+MGfp0277scRyQPMfXkAqy+pNbs4iYJ2Un0YEwCTlsQCw8jTjp2mZZ3BKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779171010; c=relaxed/simple;
	bh=hBz6LTYI5t7x4hreKVlmTXs2Mvl6FjET6EY5b5DiR2c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ILIs7OzLQ4rGfGfsYFg74UgodqMbLS3LzjZlDXmSZn2plzsbKl3R5CLTe3QSfvVSbE52W3KG1WEAXOz1OcFPdHZ6Nn6cPgq7qbBvAZ07YYRt6bC9sYC0blp05UIk/9fe3YDi/pzGRKNXTgjupWt0dj8i27DyYTehUJkoH+x7f/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJkI6Igx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E16C2BCC9;
	Tue, 19 May 2026 06:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171009;
	bh=hBz6LTYI5t7x4hreKVlmTXs2Mvl6FjET6EY5b5DiR2c=;
	h=From:To:Cc:Subject:Date:From;
	b=nJkI6IgxQsCL7Ma5BbnEobWmhUntrZtd3CIDhqFvt18kfF4Hlf31g38SSadKQ8EGa
	 bxhrdWdjNXrgPcdiiMk3Plov1BHMujcvw+xSc0aPqE5TehGJNTtkbUCUKlJwgSpAFh
	 j/d7i4yYTs8HbWGmhRPL13mr5E1+6Zv+bN8zClLAztoKGlnwqE+MK4BR/ptD6TEwVv
	 dujm0n6g1ryvpUqFWYGfpGD5NsXgE7820+OELuqZuvIszSkYfwp3bh9F3e4/9vSfvA
	 mq7SF3a1fzy0jS2maJeR5PERs86IyHPfALkuK35ApjUBb39kG1PIO+NuyN6JTA/rcJ
	 RFkebmK5d+6xg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] i3c: dw: Add apb reset support
Date: Tue, 19 May 2026 13:51:01 +0800
Message-ID: <20260519055105.13079-1-jszhang@kernel.org>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299753-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 9744C577C68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support of apb reset which is to reset the APB interface.
The first patch is to document the exisiting reset dt-binding. 2nd patch
is to add apb reset dt-binding. The last patch is to add apb reset
support.


Since v2:
  - remove "_rst" suffix

Since v1:
  - add dt-binding


Jisheng Zhang (4):
  i3c: dw: Remove core reset "_rst" suffix
  dt-bindings: i3c: dw: Describe core reset
  dt-bindings: i3c: dw: Add apb reset
  i3c: dw: Add apb reset support

 .../devicetree/bindings/i3c/snps,dw-i3c-master.yaml    | 10 ++++++++++
 drivers/i3c/master/dw-i3c-master.c                     |  9 ++++++++-
 drivers/i3c/master/dw-i3c-master.h                     |  1 +
 3 files changed, 19 insertions(+), 1 deletion(-)

-- 
2.53.0


