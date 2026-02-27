Return-Path: <devicetree+bounces-269397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMbrGF3foWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:15:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2F01BBDD0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7331B30098B6
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6604F36E483;
	Fri, 27 Feb 2026 18:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="oyctG9i/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758D036E46D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772216155; cv=none; b=lvxxwn6mWhIkvgr1rcfOlKGhd+IpLQ83A5klFmnJwcJ9fkCMhESHTfA/V8HIqs19NZeTH/2Jlii3pxIaaYn0rnMIEo9g+oaXLz7FtAQvscD+JGvtSROUBIQ+ABtHbI95biFXX7J1eDSSRoHnvbA2iw4QPGEneefP56hPElaDWYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772216155; c=relaxed/simple;
	bh=lFxX50iVSlnpuiBMKPhLIJk3W+4PP2Gcphk0SCPZefU=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=Vkomm9KjgUuBvqOAq6ARmioehN/QXN/T4x4ucKuiuOOCkZwh5Mp7CeuEShMfTsszQ1Ir0LcZ4G12qvS1yJCAZncFp9PYwl1Ut2aMmK+Lem4M6+pWh/kdeGqCwjOznOT6gDrFucwqCa+bOciqSduTMmL7vcOw6A59LUMUDsV85RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=oyctG9i/; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1772216145; x=1772475345;
	bh=IJQBuqJIDFLF068ZEeM//Jn8YuHmvtnbJIbkjKaD0TI=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=oyctG9i/fhP0IwGW7lBNWi5EXeTgSsLoEIr65yB+dy/aKzk8cnRE+EXjuPfqqXTPp
	 5CBgaGu0fDtLYbI3Zs9///0JJs74omxS8LObpVqa9yOiRHX1vTzTKA/a9w62wVk42b
	 DsacfO6cl6wawLL0s0YTsSov1DMPX8VUE2Xc3wPx6DW22aB+OP2W2xRy0JUaUZrgP9
	 Hb/wdZsoprdiFHb8tBTVZLC2R/7bgoGpuHeYho2tTEZ6g35EFMWcyKZpJzSKsZ1MyE
	 o5kfJUeoD1JFDQzV/19BXVO1bGStZTMys3ihiiKatmilRdidXg0VS8ebxPx8F7wp6i
	 eIM9llNPE9dPQ==
Date: Fri, 27 Feb 2026 18:15:40 +0000
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
From: Harry Austen <hpausten@protonmail.com>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Harry Austen <hpausten@protonmail.com>
Subject: [PATCH v5 0/2] clk: clocking-wizard: add user clock monitor support
Message-ID: <20260227181507.19890-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 0612b8fa22ff3219816b113f35263756f3547ea4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269397-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpausten@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.infradead.org,protonmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:mid,protonmail.com:dkim]
X-Rspamd-Queue-Id: 0F2F01BBDD0
X-Rspamd-Action: no action

Add support for the clock monitor functionality added in version 6.0 of the
Xilinx clocking wizard IP core, through use of devcoredump.

This is a follow up from a patchset I submitted quite a while ago [1],
where I was attempting to utilise the UIO subsystem instead. Stephen Boyd
suggested use of devcoredump instead [2] and I have finally got round to
giving this a go.

This is currently untested on hardware, so any help testing this would be
much appreciated!

v4 -> v5:
- Add Krzysztof's R-b tag to patch 1
- Fix patch 2 by moving dev_coredumpv() after iowrite32()
v3 -> v4:
- Patches 1-4,8-9 dropped, as they were submitted/accepted separately [3]
- Patch 7 removed, as no longer creating a new UIO driver
- DT binding patch mostly unchanged. Slight rework (removed allOf) and
  rebase, so removed Krzysztof's R-b tag just in case
- Clock monitor support patch now reworked to make use of devcoredump
- Rebased on top of clk-next
v2 -> v3:
- Move kernel doc variable comment to bottom in clk_hw transition patch (2)
- Remove extra line (and add Krzysztof's R-b tag) in binding patch (5)
- Add Krzysztof's A-b tag to dynamic reconfig binding patch (8)
v1 -> v2:
- Split and improve clk_hw+devres transition patch (2+3)
- Fix/improve DT binding patches (5+8)
- Utilise auxiliary bus in monitor support patch (6)
- Add dedicated UIO driver for monitor support (7)

[1]: https://lore.kernel.org/linux-clk/20240826123602.1872-1-hpausten@proto=
nmail.com/
[2]: https://lore.kernel.org/linux-clk/1bd17a02bab46391872e4934895b83e8.sbo=
yd@kernel.org/
[3]: https://lore.kernel.org/linux-clk/20240913191037.2690-1-hpausten@proto=
nmail.com/

Harry Austen (2):
  dt-bindings: clock: xilinx: add description of user monitor interrupt
  clk: clocking-wizard: add user clock monitor support

 .../bindings/clock/xlnx,clocking-wizard.yaml  | 24 ++++++-
 drivers/clk/xilinx/Kconfig                    |  1 +
 drivers/clk/xilinx/clk-xlnx-clock-wizard.c    | 69 +++++++++++++++++--
 3 files changed, 89 insertions(+), 5 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f

--=20
2.53.0



