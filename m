Return-Path: <devicetree+bounces-275981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHM5Luyyt2nUUQEAu9opvQ
	(envelope-from <devicetree+bounces-275981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:36:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 291CC295B40
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:36:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A59D6300750E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A523502A8;
	Mon, 16 Mar 2026 07:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="WFWZVrz+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8123502AC;
	Mon, 16 Mar 2026 07:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773646567; cv=none; b=gIc6qxVqK3q3mReT1PNqVIPyGf7p34ShpzbWcQpFjp7xcNC7XxRniRWN/RvJLQlGB0jajMWPlhLuuH31Q0fzys7WKzmrPIhA0lrByLMAOcqf+dyefXrAVT4wYsICM6P+HH7GmpaSBeqqw+M9vHTFuiXKTDqIvpqjrk5RXwzci5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773646567; c=relaxed/simple;
	bh=pURDc7OaFVz+/BW3jfbaFBTr8kmIx1bSO7X67TBUrs4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Y7K2Yvr5tQhIJyF4AjTsqPraGYa9D3xYTnc++cBiBT6mq/1G79kcex2gPAESWG7zQ1nPivZRPsh6Necd7Whuvi6z20nKZgwyRrJVz9txHa1AAbflhlhk624dyARQnrKfFwNh20TBKkTPm42Samy36NtKbFMHwJ7S4Ra7t3Y7Nyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=WFWZVrz+; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id A5F9D20205;
	Mon, 16 Mar 2026 08:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1773646556;
	bh=wOZMuNw1ZPDjvWEnM8CHFX9oZa0bb/YAzydxqZOFIME=; h=From:To:Subject;
	b=WFWZVrz+AQ89/V0rHugUQl+N8FMOgV/Dq7hJpTJ5G5bDgnfjcu/IZx7+78VOpNTuG
	 n3IukDslWwVDUymQfLRI08tmt8/4rpSxk18N7CQUUq736ljwtxudUEji8+xFKgWcbm
	 mMjldYeBgZtqc011/8P4d/6gkaYtss5r/HmvzBXu8eFoSSYxCe2SYyrk2Fwr34ffpy
	 dKqTrBFH00fXTLXty3hlcNUiLfzuIoMKIqVlRfj670WFhFQUWzJ61X5xKbfdSvoPDQ
	 mFvAwA9gc2/J16/xxNRGDNDXI9ZLOUkD8l0HdJQP6R0DuwzdyUj3UxnM3ppIemIbhh
	 vRDfKMd+Lw2fA==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: [PATCH v1 0/2] spi: Add data loopback OF compatible
Date: Mon, 16 Mar 2026 08:35:42 +0100
Message-ID: <20260316073547.11437-1-francesco@dolcini.it>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275981-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,toradex.com:email,dolcini.it:dkim,dolcini.it:mid]
X-Rspamd-Queue-Id: 291CC295B40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add "spi-miso-mosi-loopback" OF compatible, that describes a
single wire loopback between the two data signals, MISO and MOSI.

This kind of setup can be used for testing the SPI functionality.

Link: https://lore.kernel.org/all/20260310133254.GA51497@francesco-nb/

Francesco Dolcini (2):
  dt-bindings: trivial-devices: add spi-miso-mosi-loopback
  spi: spidev: Add data loopback OF compatible

 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 drivers/spi/spidev.c                                   | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.47.3


