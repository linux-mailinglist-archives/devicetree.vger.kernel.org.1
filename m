Return-Path: <devicetree+bounces-299849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNueIf8WDGrrVwUAu9opvQ
	(envelope-from <devicetree+bounces-299849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:53:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4769D57974F
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C68D6304FB81
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 07:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876FA3DCDAE;
	Tue, 19 May 2026 07:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Vzag1gZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5E13DD503
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 07:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779176847; cv=none; b=CVtIbxbaJN4aRaMGj4w6KcfDPIh+gI5xhkkuckfKLrYWilLj9zJkAhBOs/EfsQrYOp+ZdWU9+8EFBR/r9jR9uTcZrtRxq4oOODlljFMkITLj9jOb5tEO3WXhacqPdDUlTNRdIm8Wgy3v+eLHtEVIIOWrq339iS+c9QyBIN/IGQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779176847; c=relaxed/simple;
	bh=Es658tDUhANj0f65HggskjZBi7myAITa1mQQ3XfnQ7k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oDfwdn3eE+MY5uu9zPGK3oYaA63DM6RLxz/CeJrzcQbzRjmv97w9/Z13K2A8m6qXBi3kdQrIYO0Yhl6ce998XKkJu/h7V2GNwLAjlwFMHDNTk1QTBgEsA3DeLn6+ng3kabpRd41cXANNyixe+/F3aPh+qVqv60Ep51rIwBdRslA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Vzag1gZm; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=srNJzadSlYth5E
	K7RTZS50LIHoTspbgGwB8oo2XUbM0=; b=Vzag1gZminY87pBKXNWF21D2DuLBMg
	e8WtpP3ur4/E6j6Fl4khJB/ahtS3i1DcBp1DomtzJ9dI5lj+vKw/wsiewJvnNWk7
	wSlNnc2WyHxqYqv72SrjAfRHUtVLgvfzA5D0fjtNllWSzLiYiO45uEXl81wBxMbA
	r7PwvoKVVCU6HgUr/vrmhg+QfIWRx4ouyt3EwDvFT4wJ/5eDZBCtgrFJq28A5qOG
	1EFgXRFSBWq7WhWzzKU/7b6zE4lo5HRJnlO53rbsplYswiFh2WSeURDLhTqYwAUX
	6OXifaUzwb8wjSKdvJpx6WMBnQWgtvL4Ltx9qjupuGRZ5SCR4hPz6NjQ==
Received: (qmail 167933 invoked from network); 19 May 2026 09:47:12 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2026 09:47:12 +0200
X-UD-Smtp-Session: l3s3148p1@PW8R4yZSGLhUszca
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/2] arm64: renesas: r8a78000-ironhide: enable SCMI
Date: Tue, 19 May 2026 09:47:02 +0200
Message-ID: <20260519074702.3308-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299849-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[sang-engineering.com];
	FREEMAIL_CC(0.00)[sang-engineering.com,kernel.org,vger.kernel.org,glider.be,gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sang-engineering.com:mid,sang-engineering.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 4769D57974F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Here are the DT additions which allow the Renesas R-Car Gen5 board
Ironhide to handle clocks via the SCP through SCMI. For that, we enable
MFIS controllers, STCM transport nodes, and finally, SCMI. Needs the
MFIS driver which is currently in -next.


Changes since (internal) v1:
* improved comment about transport nodes in patch 1
* fixed abbreviation typo in commit message in patch 2 (Thanks, Marek!)

Kuninori Morimoto (2):
  arm64: renesas: r8a78000: add MFIS, MFIS SCP and transport nodes
  arm64: renesas: r8a78000-ironhide: enable to use SCMI

 .../boot/dts/renesas/r8a78000-ironhide.dts    |  34 +++++
 arch/arm64/boot/dts/renesas/r8a78000.dtsi     | 129 +++++++++++++++++-
 2 files changed, 160 insertions(+), 3 deletions(-)

-- 
2.51.0


