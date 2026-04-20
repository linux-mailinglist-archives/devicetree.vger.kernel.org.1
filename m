Return-Path: <devicetree+bounces-288662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEv1FBUS5mmnrAEAu9opvQ
	(envelope-from <devicetree+bounces-288662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 13:46:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C2B42A076
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 13:46:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B43F3054F62
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 11:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA1E39E6FD;
	Mon, 20 Apr 2026 11:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="Cn17oX3X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6427739BFE9;
	Mon, 20 Apr 2026 11:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776685560; cv=none; b=EwalZ+kOJqiIJComeJkFjEBjSIKxvT4J5XypJtkYjayBwqJDW34vpqByk0qySo5z3zfKRBeQHZyhax5jB5komoXvC+MSFGlm+oA9WFgfPP5LSlbzg/ObSs1Zd4j+YnFpj4rR+JzXrkwlbQCLtiFBSH9QWnefGT+54GzDwnP7QyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776685560; c=relaxed/simple;
	bh=fmCUluiOM4pQhqOBw7LaKvSLx/YkSi3y8NX3vRPUB+8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I66IlbjRR/8XjgVWDBLL9Ze/vuwhxfPW8CJV8Mdc1mq/KKZ9zLSNAu0XLtORia0f77lNciRFBUnlj+z5Q9MwMUcdgJZYH3k1gX8wLA7uD56MEhf3zo3Q7ZXqGyzfsA6McqOxNgIG/k6FEtsqnwiOxfmZ8S5CA2MwPVp5Z5vSPKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=Cn17oX3X; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.. (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id 753061FC8D;
	Mon, 20 Apr 2026 13:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1776685548;
	bh=bVVY4TQNa7JRVGxpjCbc/o+R/dODtLa+hMeOsdP8WnM=; h=From:To:Subject;
	b=Cn17oX3X6wd68Y+TY/j/J2iaHCN7RzftOYXIc2cjmo4WnAsvPLsCgTsRhy6u8pRDy
	 hNeinFJmmzc5qBt7OHdBiYNfYV9hLqJDhiHAu+Vtzz9xdHlnYRko8+swrYCazNScQ9
	 cJ9T4p2j7dO+JmxVOFkRBdkM/w9YTdRy8YTNa+yJFVhraTH03RnVeKXTeQTKAATX4E
	 QaUklMn1zXTeDzCy5SaVcxG4IP79pUuc2tSVGDiNcvXLzm6gSp6C8C7x15oNjlCdq6
	 MZPgnH0IviCQzmhBbQc/SwVixrU+6FSbOJW3dC5BpWV2HneAJuUbxvwiG5IjVULFqB
	 g5x+3Jv+Ix+WQ==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: [PATCH v1 0/2] spi: spidev: Add Toradex LAVA HAT
Date: Mon, 20 Apr 2026 13:45:34 +0200
Message-ID: <20260420114537.78160-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288662-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,toradex.com:email,dolcini.it:dkim,dolcini.it:mid]
X-Rspamd-Queue-Id: C5C2B42A076
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add a compatible string for the SPI loopback device present on the
Toradex LAVA HAT test fixture and add it to the spidev driver.

The Toradex LAVA HAT is a board used for automated hardware-in-the-loop
(HIL) testing, it provides several test-related functionalities, and
exists in multiple variants depending on the board it is mated with. The
SPI function is implemented with a loopback on the MISO/MOSI signals.

Link: https://lore.kernel.org/all/20260310133254.GA51497@francesco-nb/
Link: https://lore.kernel.org/all/20260316073547.11437-3-francesco@dolcini.it/

Francesco Dolcini (2):
  dt-bindings: trivial-devices: add toradex,lava-hat-spi
  spi: spidev: Add Toradex LAVA HAT OF compatible

 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 drivers/spi/spidev.c                                   | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.47.3


