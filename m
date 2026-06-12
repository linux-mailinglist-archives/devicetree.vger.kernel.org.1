Return-Path: <devicetree+bounces-310767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bbUVIkO+K2q6EAQAu9opvQ
	(envelope-from <devicetree+bounces-310767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:07:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67059677A49
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:07:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b="NSAjnw/R";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310767-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310767-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C1C0F3058A01
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74475363C46;
	Fri, 12 Jun 2026 08:04:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F97A36B05C
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 08:04:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781251467; cv=none; b=pRpzI5giwXquj3mnD/Fj0HeLYecm4Gm9QMJJiMdNPHYXh9mZgjzR+vzG40eSNWEsD+qB3ujxvwRzjNiKNWMh8obFVNILOERfRIif3XN8bb4+C2wCt7lTTff+OxAKVyUkDTOdEwHFJtxyEFYKcXdcaD70hSBg5U4GYl6HKOPLvao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781251467; c=relaxed/simple;
	bh=SD6udC50xqZVQxPXlHTu+aZ4viUT2akMMWggNWejb70=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UUIOPLTBrOaaHbzVmFY+FuBNLFfpsiaZg+s84dioPPp7lJglP9UFvIGSCb2SY1PG5qizcyBYLBev9loW9c1IUWi+D3MhY4h+yFCZhkUmMYEzhjyeTAkz+yqnHzN61rxZ1SLyOwLxOPFrn2PHLz9lEik6MOrIuvUKJdP0DFs3jqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=NSAjnw/R; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=Xe30Lk+zeo5LYt
	5BDIEDOR0jr3l6SkDT59cNfjB+Tkc=; b=NSAjnw/RMqDmiDQRvIW1BHss34wUzi
	TDpaNkwdnLfFTbzwdFjGWBKpNTVD56CB+CgdDz9j8I9cH4XBhYejkuXx6D+IdnD6
	KbTepUQvuVfS+GpfQVe1rL/pAkz3iGzYWdK9HoxqfwKR89wqsGmMQ0+yrKGb14IY
	3fYBUaNls1/gYtBUkrXXHn8oD7vcxA3K9IY0NZMozF1ziXpDPX/jQ/Y+L8vHVZvF
	7Xo8pPO5/2k/ZPnE95M5AYWtFG+4aGyIu9LFBrYWxBAZ70alfsKSdCTQ77Rn2W8A
	/hp4RA1uoXjsBgqNEHyrC0S2L9Y0JhQx46ehC4sYQVZH12NQEOiHz+MA==
Received: (qmail 2443762 invoked from network); 12 Jun 2026 10:04:10 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 12 Jun 2026 10:04:10 +0200
X-UD-Smtp-Session: l3s3148p1@WXr16wlUrKcujnsK
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/2] ARM: dts: renesas: r9a06g032-rzn1d400-eb: Enable SPI and FRAM
Date: Fri, 12 Jun 2026 10:03:54 +0200
Message-ID: <20260612080354.57459-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sang-engineering.com,kernel.org,vger.kernel.org,glider.be,gmail.com];
	TAGGED_FROM(0.00)[bounces-310767-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux-renesas-soc@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:geert+renesas@glider.be,m:krzk+dt@kernel.org,m:magnus.damm@gmail.com,m:robh@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,m:geert@glider.be,m:krzk@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[sang-engineering.com:query timed out,vger.kernel.org:query timed out];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RBL_SEM_IPV6_FAIL(0.00)[2600:3c09:e001:a7::12fc:5321:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,sang-engineering.com:dkim,sang-engineering.com:mid,sang-engineering.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67059677A49

Here are the patches to enable the SPI-FRAM with FIFO (no DMA yet, needs
more work) on the RZ/N1D Extension board.

Wolfram Sang (2):
  ARM: dts: renesas: r9a06g032: Describe SPI controllers
  ARM: dts: renesas: r9a06g032-rzn1d400-eb: Enable SPI-FRAM

 .../dts/renesas/r9a06g032-rzn1d400-eb.dts     | 25 ++++++
 arch/arm/boot/dts/renesas/r9a06g032.dtsi      | 90 +++++++++++++++++++
 2 files changed, 115 insertions(+)

-- 
2.47.3


