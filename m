Return-Path: <devicetree+bounces-309533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9II3HFUhKWqoRAMAu9opvQ
	(envelope-from <devicetree+bounces-309533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:33:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BDA667349
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:33:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="foIe/pQp";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309533-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309533-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A5BE31BD664
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE1F3A5E8E;
	Wed, 10 Jun 2026 08:23:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9565223507B;
	Wed, 10 Jun 2026 08:23:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079830; cv=none; b=NmJYLiEnICaVun+ZWwJvhh9uZPpMqf1ORy2h0hTY6YdpBxpzKgo8Hx5eN2IC8XXre4hyh9n4mjMQqaDSoBCP+PzWD3BtKOiWSodJuvfJ67Ub/ltmOueBXuOgH0B+gxVo1pBWw79MhpcBkJW8NagHYBU5ixDWfU4CJzeig4w7aFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079830; c=relaxed/simple;
	bh=Zgoan1qkve3jFX7ew5iB3DDfZ6cSZUSi+kxWrLmfLWg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YgzrQ40EvVEujY4ouppzxeWR2i/PCTz6/yXWcNyPauW/4obbgqqgr9VYWKgqRm6g4UjpDEXEdkU46Hw3JKVGJoRkgG9ffLTIymQuVzqK6Knr+6Lf2AhGwgiY2ZmMAkJKpXC8M26cSH+zD6ifXUPOVcZSvhffi9JgtzUIqRLBpKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foIe/pQp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48432C2BCB9;
	Wed, 10 Jun 2026 08:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781079830;
	bh=Zgoan1qkve3jFX7ew5iB3DDfZ6cSZUSi+kxWrLmfLWg=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=foIe/pQp7IF40BftiSXd3+CBRsq3BtS0bTv4e9TvKdrBRj4vMMbRmFAx1ScmtNfIV
	 kSLyt59QvlbVL4UnORoRAy6sTFUdUzKIgIjZOctulV1X9caIBjOPHFkJpeZhBvxWoJ
	 +03CkypzxCvH4dG858X+BzCH+1LmwGEYuehFsApWlk5m6X92NG1WPa3Co5cBQWM9c0
	 tVmez9i5j6XzyNAwmSjFtXJ23z0n9hjMLqG1SW/t5BXPr6LNGv6knekYaVhURc0/zG
	 9orT2Rho2f6XTKbg6L3Vg8HnlB9JchMRbgkLkpmvJVUXl0gzfnmY9/vVCcopPw819q
	 pficTvXn6tpQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E640CD8CB2;
	Wed, 10 Jun 2026 08:23:50 +0000 (UTC)
From: Jian Hu via B4 Relay <devnull+jian.hu.amlogic.com@kernel.org>
Subject: [PATCH v3 0/2] clk: amlogic: Add A9 AO clock controller
Date: Wed, 10 Jun 2026 16:23:46 +0800
Message-Id: <20260610-a9_aoclk-v3-0-b7592d6c31e2@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABIfKWoC/23MQQ7CIBCF4as0sxZDQam68h6mMQMd2oltMWAaT
 cPdxa5d/i8v3wqJIlOCS7VCpIUTh7mE3lXgBpx7EtyVBiWVkUZqgec7Bjc+hLX+qGuLnTMayv0
 ZyfN7o25t6YHTK8TPJi/qt/5BFiWk8IeG0NSGqDldcRpDz27vwgRtzvkLXc7uXqIAAAA=
X-Change-ID: 20260603-a9_aoclk-bbf531badc63
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Jian Hu <jian.hu@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781079828; l=1538;
 i=jian.hu@amlogic.com; s=20260415; h=from:subject:message-id;
 bh=Zgoan1qkve3jFX7ew5iB3DDfZ6cSZUSi+kxWrLmfLWg=;
 b=CLkLsMQLmlqwr6kDr8q7H1tb3ZOnINqYZhuW13gL8m2ym+RDe4VzCIJBGhvdfJ3/MG1WPYHHh
 p20GYSQZEtBBCZsG+W52kgdH0fgI2ci3/o5GUqb8k4pMrXm1vgATIYp
X-Developer-Key: i=jian.hu@amlogic.com; a=ed25519;
 pk=zHUE+rNtH9z+Sb8au1/elWknjFQmy5QDVkBoxleuOIA=
X-Endpoint-Received: by B4 Relay for jian.hu@amlogic.com/20260415 with
 auth_id=735
X-Original-From: Jian Hu <jian.hu@amlogic.com>
Reply-To: jian.hu@amlogic.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309533-lists,devicetree=lfdr.de,jian.hu.amlogic.com];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jbrunet@baylibre.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:xianwei.zhao@amlogic.com,m:khilman@baylibre.com,m:martin.blumenstingl@googlemail.com,m:linux-amlogic@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:jian.hu@amlogic.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,kernel.org,amlogic.com,googlemail.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[jian.hu@amlogic.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amlogic.com:replyto,amlogic.com:email,amlogic.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00BDA667349

This series adds Amlogic A9 AO clock support, including dt-binding and AO clock driver.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
Changes in v3:
- Move COMPILE_TEST after 'depends on ARM64' reported by sashiko-bot.
- Rename i2c3 to i3c reported by sashiko-bot.
- Reword the comment describing ao_xtal_in's flags.
- Use struct clk_init_data to describe ao_xtal_in's hw.init.
- Link to v2: https://lore.kernel.org/r/20260603-a9_aoclk-v2-0-f47ea616ee78@amlogic.com

Changes in v2:
- Split the A9 clock driver and send the AO clock separately.
- Rename aobus to soc.
- Use CLK_HW_INIT_FW_NAME to describe clk_init_data.
- Use CLK_HW_INIT_PARENTS_DATA to describe clk_init_data.
- Use a9_ao prefix for MESON_COMP_SEL.
- Correct duandiv name.
- Fix pwm b reg.
- Link to v1: https://lore.kernel.org/all/20260511-b4-a9_clk-v1-0-41cb4071b7c9@amlogic.com/

---
Jian Hu (2):
      dt-bindings: clock: Add Amlogic A9 AO clock controller
      clk: amlogic: Add A9 AO clock controller driver

 .../bindings/clock/amlogic,a9-aoclkc.yaml          |  76 ++++
 drivers/clk/meson/Kconfig                          |  13 +
 drivers/clk/meson/Makefile                         |   1 +
 drivers/clk/meson/a9-aoclk.c                       | 431 +++++++++++++++++++++
 include/dt-bindings/clock/amlogic,a9-aoclkc.h      |  76 ++++
 5 files changed, 597 insertions(+)
---
base-commit: ca89c88bcf69daca829044c638a8163d5ce47af0
change-id: 20260603-a9_aoclk-bbf531badc63

Best regards,
-- 
Jian Hu <jian.hu@amlogic.com>



