Return-Path: <devicetree+bounces-258637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFkuFlyncmnaoQAAu9opvQ
	(envelope-from <devicetree+bounces-258637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:40:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E1F6E3D1
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:40:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CD853025D34
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 22:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E793D729A;
	Thu, 22 Jan 2026 22:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="gYcWw2+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D983138E5D4
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 22:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769121438; cv=none; b=ojFHW4dKagIXpUF8qUmrz6nNIJXIMuhvdMndLRr/XaGNf7eYcpLcYbTydRYeUEqDrt1xC7CYHp7Aoqu8cM21pEnOafH6I3qzRSXyhEuipFNkZoAwb77AG0V70F5TkD+bmZJkAmuXe7WSO6logHDylZSWEjONtItEjdNnGMNYRSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769121438; c=relaxed/simple;
	bh=cdJdxkh5bVfDEuJdu/cUdhAZrf0bAcae4F4u51uLNsg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TqW+BGlis+ADzV0L+t0f6CowSoiDIQfHdIG0RMVCWAybKAn0JlxIzOuViQu6qPnPII/M6sakc6HZqes63OSd7WcVNi0G6oJFNIwwjzsxkvcJ6saRdKDimGQKZJ6XmQgwue2PgDaPkrC7j2xCFI3UIIU9eQc7ZRSQwjAeN302F4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=gYcWw2+0; arc=none smtp.client-ip=74.125.224.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-649389b1cc5so1552160d50.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 14:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769121427; x=1769726227; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uJFvGWecxblPWRrtOP+G/pbSkfENKjUxaykiz55+f6o=;
        b=gYcWw2+0d0mGaXlDmZWsbn4e+mo0LktT/pHHkRPnWKLR0bHBTdgh94V6WTf0VwBJsV
         IyBs8vgkZAaUQqEAOv/Vuu2VjAFLDIAiXhzNhMf7EjYthOSn2u2091SWUmE7UliMnTlw
         IZEknZAlSGWXAKVv4Q9l7hgtFf/mm56mA9OSxukkpTfgeSf86vpvOpdqGNeW+GLqKL7G
         71n9z6WeEVpP35Luz6gdGUbrWafOw18zTVVggL3VyOCzzapIq7r2zjCUnMHVUsPU81DA
         3+Omtqekrhj+dzURFPkNC7KU4RzCex7JFMxWuE3oaKEIUw4OdZsyk5p1P9s7WeY9c3aq
         3I8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769121427; x=1769726227;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uJFvGWecxblPWRrtOP+G/pbSkfENKjUxaykiz55+f6o=;
        b=VYsOp3XzqNw25FvQrevKvFGoVquta/UdyQOZL6TDxaONOGnfw5MmU9LARe3lqRB+s9
         O0GW6N75WNFTf9BMFE+9KFG2BMVF84ioFSxC6WD4D3+0Fk62bS1QjXhcb2YGe/Y34gi+
         iJaH0baHo9cr3mTfp6TJHH+nWCRZyXBPIwK037I2H34dA2zXG9jQlkedRbplo9MPcOed
         h918yxBt+taia1qDO/q04O9lZgZebvwgwEZbR678gQ82Gj0Hhd4LiKi9MN7PMS4Rwt/z
         C0Pr6jA/QvZzluXzgDNFRwWDotuHQBBfSx/KIXeMBHXm2HLFa+3QWOz07Hk2EEledNdT
         VMrA==
X-Forwarded-Encrypted: i=1; AJvYcCUJ3DOPeCVniRUHOSzNppM1iLf2McC76BS0wb/iYO8KKzSpKF3twncAUtXYyayHmFHNw8ZqthyC26To@vger.kernel.org
X-Gm-Message-State: AOJu0YyhlZDW8WewjO1ENZYuCciF/bIj/RoHCx5RDrlDKoXBem5yFqVe
	5cptSehj7iauBpk69SFgMGmqgSindp1QUn4Wpsu4KtCV5quQqZgYcd0YN3Mc5D5y5XQ=
X-Gm-Gg: AZuq6aK02Yb3y6fPlgjudh1muOsk5/++jm32HuIHoujteoM3agK4g1MrZOcqWH6QLNr
	TBYOWERkDQOkesKBWHyziDoxB6WmvLJRPcxVguP34Xtvvj6037ucjCYcmFgI5FrR/nVbnV/IKvI
	azJzy0gqm7iNAN+NIiNZlXah8FUc0vCAgKrQSekswswj6qnQOqCEoF+7EyGefxpNFQ+oOC901xa
	+foPwFlBuBLEk01RnDasWl4RU2kE4vtTyHckTpOmRDZQ73qjaUJl1B7cjM7XzzT5bbx0opayByN
	O7rLolJMJs4NpCx+FlAMi/StvjGfkNfridKtk1rynQ5L10apJ4+pQRF/DJj5m5VMNnL29DuXWUR
	gDhYJrtlz/9YJqX8qkRduQhg9XI0lx5LiWzguUgYFvdUwU0lp/iZi6sT7qLO7SQkYMKVou6je6Z
	IbYEsKC0vqPOnshs7tQyM6y6J/azJ6fAUtr9UqdRV4yKQ5+rg5LK6cJzyxKFtQbuqzZFEscKc=
X-Received: by 2002:a05:690c:f15:b0:794:c2:5e55 with SMTP id 00721157ae682-79439921fb7mr9492697b3.17.1769121427320;
        Thu, 22 Jan 2026 14:37:07 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7943b01b09csm2766167b3.15.2026.01.22.14.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 14:37:06 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH v2 0/3] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Thu, 22 Jan 2026 16:36:36 -0600
Message-Id: <20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHSmcmkC/2XNQQ6CMBCF4auQWVvS1lDAlfcwLKAMMhFb02mIh
 vTuFhJXLv+XzDcbMAZChkuxQcCVmLzLoU8F2Ll3dxQ05gYttZFKadHHpXeRWNjF2weLSbbSqlY
 OjRkhX70CTvQ+xFuXeyaOPnyOB6va159V/VmrElLU58qgqdWkm+HqmcuIbicCulha/4QupfQFy
 UJOd7gAAAA=
X-Change-ID: 20260112-atlantis-clocks-f090c190b86d
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
 bmasney@redhat.com
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258637-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: A2E1F6E3D1
X-Rspamd-Action: no action

This series adds support for a multifunctional register block
(implemented as a syscon) in the Tenstorrent Atlantis SoC,
whose main functionality is to serve clocks and resets.
This block is instantiated multiple times in the SoC, with
each block covering clock/resets from a different subsystem. This series
adds a driver that covers clocks and resets from the RCPU subsystem,
which covers most low speed IO interfaces found in the chip. The reset
controller is implemented as an auxiliary device of the clock controller
and shares the same regmap as it.

The first commit adds bindings documenting the syscon block, along with
clock and reset indices. The second commit adds the reset controller
driver along with the auxdev definitions needed for it. The third commit
adds the clock controller driver, and the reset controller is created as
an auxdev of it.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>

---
Changes in v2:
- Improve the documentation about the syscon block in bindings
- Implemented all clks using custom ops
- Removed custom lock/lock handling functions for regmap
- Addressed comments on header file ordering, newlines and typos
- Removed code for mux parent setting
- Squashed down multiple commits that added reset/auxdev separately
- Link to v1: https://lore.kernel.org/r/20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com

---
Anirudh Srinivasan (3):
      dt-bindings: soc: tenstorrent: Add tenstorrent,atlantis-syscon
      reset: tenstorrent: Add reset controller for Atlantis
      clk: tenstorrent: Add Atlantis clock controller driver

 .../tenstorrent/tenstorrent,atlantis-syscon.yaml   |  90 ++
 MAINTAINERS                                        |   5 +
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/tenstorrent/Kconfig                    |  14 +
 drivers/clk/tenstorrent/Makefile                   |   3 +
 drivers/clk/tenstorrent/atlantis-ccu.c             | 939 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 158 ++++
 .../clock/tenstorrent,atlantis-syscon.h            | 101 +++
 include/soc/tenstorrent/atlantis-syscon.h          |  53 ++
 12 files changed, 1377 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


