Return-Path: <devicetree+bounces-259132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKogHZL9c2mf0gAAu9opvQ
	(envelope-from <devicetree+bounces-259132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB4C7B543
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4813301993C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 23:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AAF82EC541;
	Fri, 23 Jan 2026 23:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XV/+6cLt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929C226F2A8
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 23:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769209226; cv=none; b=TQ8N3zlplpM/cwp04XBcZ1ZZeKStAd/Rp8EYD4c2+5WIsIrURQwhwiU73d7vGTBKqOSIZaBoiX53kKtBUopQ7VlPBD0wgN3YIugO7eKF8xiDHBxIIkb2+Y39rW785zx5COVIPmXaf2GNvvH0m/XTtrmMIAestVBn3Zxq8UMG7W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769209226; c=relaxed/simple;
	bh=d4had5SJ6UU947wWnPxCbKq5o/uVBE9OQgdVKZb1HiM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bcBDxZPlf/OMu0WYGnw7hWvOF6vP4ZYNQjneUtcCxjy2KmHbmXHyZpwDo41SuWs9Ouwsq0d3F6QgdXvRjcNuX7gqSbUbR0Q/2sGLrM43ns0tNja73qjUhbeCogrQkLwJMRHfRABtU5s2TgLtZlzY8P+RXj/HtfmAXvupS9FtHss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XV/+6cLt; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee4338e01so15480285e9.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769209223; x=1769814023; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=As37iQpL3zu91gYcoRq3jQn9d3CPwOGsKIH2tX0HSIU=;
        b=XV/+6cLtgdVGFodHHYxVbqttKZKnI5G04f8eBtI602jEF1msQRdnxfNZVQ4zua9Ct5
         nsbszjMHsrl02nWlC2D2ZUBtGL0em/NOhf4bcywfkxl0F6b6xdvuE1lzKoprCUGAoXDC
         b5IWaQip6+JUNlCU787oH/x2j2YBQfe/jKF3YW7NQaAjZlNGOlAIn0L0691TkYKs8O+X
         WNRDTMe2hlbs8IjJ0xxjG+dS0xDamC+VDa4RlZD2r7X8f9hHPhanSmFaDX/44Psa5529
         3/ZRdXdmmXHBDasGevEtBaJ+7uJLvsQ1fI/XukOmp+IhGAGnipCo19VmxPWT64n5HcxI
         3kog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769209223; x=1769814023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=As37iQpL3zu91gYcoRq3jQn9d3CPwOGsKIH2tX0HSIU=;
        b=fgKVbCiCc9w8PcMGio99pzDiwYOF4KshUtzDkaYXzBTUDW8akzaPychtpk+EauxzMl
         RcDZxGDvaehumIsWLXQpNfGszYYaxWK+67+Shi1FvczKEFhJZboRU7BLpuHHK1bDFEpn
         YKTDRDOwbv4ROrud9+PzMYToAWTis2XJwN1CJgNbxP4pMSAtsIZp+5B0XomxFGmAdix5
         i/oqvIlZhHMKiWUXBuEwXWlmNT0I/bEU5VhhiVj6W/H3cw0zGi4lLKr5CVyensDB6KrO
         0KebzkkFDZa+9BFccHAhOyTKzSxSqvZVJLy8QQr/inhNUUyyVmVh87m9+QXQLOpwqCQ+
         sNTA==
X-Gm-Message-State: AOJu0Yz0F3D7VsjbJRzWaxhjb6BdPvhlJOK4XkygCGTOsSW/HQCBNcnO
	EpGrw4gSD6sk9lHqSNOxolC59TLMpm1GMf4/h4fzbGtcjTCWz3DAKx1b
X-Gm-Gg: AZuq6aIXv8ALSAQ8InxeI0JGPPA67nhtBDsX45ihmT1Z+TTJGNvrbdjdkWktpoPTTJj
	dPvzZxKpkyMY0LpKW/OhmcNTokJ897UgrWHxvN7D0U4V672maL90cFpX/hwOnWpiMWjRozFYUm4
	4As3JRAyG5g9AGNANZqucUeL9xntD7PEu+hJfM8DqshouLKJa52SGTCGaNEyBQvcV30J8lzqr0S
	00ejNAwo4LxwJXOjIjbzOMMoPOKsNthsloxGouLNr75tX2ZYA+NcNl13/zuVNKO5qKhHjUtdTH4
	H8WdX1Gn33Ak7T7Om+wAkk9+Vzz+mzrnDQ/CrxP+ZAo5PCa3q9JhxXkEI1qZSSL1EgxOdxRc3wJ
	swEhQSseZzV4kVwJPcQngfxcMa96nGgD+BE/pZdBgNX68dbstkRKxiYZR613nOWsGG0JLGTiRGq
	SBo97iZbpm9svlPNxEDzKLpemgx8foDo0HQITMo+mHSfO/eGKpdtxTyAkp6XvVislQVQDoyuGjK
	cSG/R0/xYscqA+AF2PQpDbs
X-Received: by 2002:a05:600c:608a:b0:47a:814c:ee95 with SMTP id 5b1f17b1804b1-4804c959aa2mr72966345e9.12.1769209222655;
        Fri, 23 Jan 2026 15:00:22 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:bccf:b3b1:e288:4e83])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cc278sm157142665e9.12.2026.01.23.15.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 15:00:21 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/4] arm64: dts: renesas: Fix SD0 failures on RZ/{T2H, N2H} and RZ/V2H
Date: Fri, 23 Jan 2026 22:59:53 +0000
Message-ID: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259132-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1AB4C7B543
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi all,

During testing of SD card functionality on RZ/{T2H, N2H} and RZ/V2H evk
boards, it was observed that the SD card initialization was failing for
UHS-I cards. While investigating the issue on RZ/G3L smarc board it was
found that 12ms ramp delay is required for SD0 power regulator to ensure
proper initialization of UHS-I cards. Similarly, while investigating the
SD0 initialization issue on RZ/{T2H, N2H} and RZ/V2H evk boards, it was
found that a ramp delay of 21ms is required for SD0 power regulator to
ensure proper initialization of UHS-I cards.

This patch series adds the required ramp delay for SD0 power regulator on
RZ/{T2H, N2H} and RZ/V2H evk boards. Additionally, it clarifies the SD0
power jumper settings in the respective dts files for RZ/{T2H, N2H} evk
boards.

Cheers,
Prabhakar

Lad Prabhakar (4):
  arm64: dts: renesas: rzt2h-n2h-evk: Add ramp delay for SD0 card
    regulator
  arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Clarify SD0 power jumpers
  arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Clarify SD0 power jumper
    setup
  arm64: dts: renesas: rzv2-evk-cn15-sd: Add ramp delay for SD0
    regulator

 arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts | 9 ++++++---
 arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts | 6 ++++--
 arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi  | 1 +
 arch/arm64/boot/dts/renesas/rzv2-evk-cn15-sd.dtso      | 1 +
 4 files changed, 12 insertions(+), 5 deletions(-)

-- 
2.52.0


