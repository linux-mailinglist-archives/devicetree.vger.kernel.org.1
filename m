Return-Path: <devicetree+bounces-250696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7281CEB20E
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94E27303CF6B
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4522EA172;
	Wed, 31 Dec 2025 02:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="Zu9igmjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7EFE2E7F20
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149732; cv=none; b=vDNJEdJD42W46pV677n/4mXCKTw3ElqIgHloVQPRDPpmw622chgvCSO2pUmMY2xNkNpmFeAWxXtsbpSIx1kJKbwetleLLGV60PZ8QYiEZLSYPjT/xfNyYZ3FxM6SsVaXfDqA6d6ykb5Eov7WGtxJ/1H1219fQOxbEWdu4/ndd5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149732; c=relaxed/simple;
	bh=ZEh6HY8TlpZzNh9Y/VgVSP4NXtaCzoCeqh3+WNcTNKE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QzhV7grKfCZb/hIF3XkBiiZrgIYSikSSm5zylaJG9H2zlLnQGe3N3KJFVhJlJXNX8SAF2pZE2kyLUOjnulxDPbbi3B2L1y6jZBVi7ywbBXCw8YtDjqkSZQ5LowxJWcZ5+uNXRk16dYKtJWK32HcWpdS6D9v9bzwSfAk/0Se96/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=Zu9igmjS; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a0f3f74587so148852405ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767149730; x=1767754530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wd4rh3c+/URJQakUKeuqVgMvcwLsodqXqcB6M6kTlbQ=;
        b=Zu9igmjSwEVDioDBbrYDW+ot7bmumiZ9ztdGDzij7/WNFp4EkMrdVRIJLsFlAUhuSl
         8FPHirzL2zag7FRxPgK+EZzvC0sV+LC1Eewbx7J/1yyv+inYWpuvrHUN3BeDgwfHZkDo
         nZqmZIRcyhItblPlY9h0RHx0KZWuFyB6254I0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149730; x=1767754530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wd4rh3c+/URJQakUKeuqVgMvcwLsodqXqcB6M6kTlbQ=;
        b=aJOrhrxtWMfc4IQnSGgYg3xm5NGqZf68aSDeZPteth+xqEOT9YD/cPLkb0fqWEMIjf
         tSaviU8xM/Ea4K9WJKyqjznYHlEGUvzAzdCL3A6azEUIv8YUije2kyn4IgyCktaWWXsA
         onHIheN/p7hbTyuV1ebNZ6JVY5brX1OG3KrH9S33cYZ710B6T+m/tOmKY4oMyp4S6yxO
         TsKWsdUJZCEh0JEBn1gQYJXtiD6Sz/5pFqojoOWoKKkvls4v8rzuLMul+xJm0BZJ0ef5
         DSjAf6Awe08QpfcGjGZXQSQd2OwY4ZsL4n6GHspg8CpKIedW8J7pJvOpb0FYLUdiKA7X
         AD5Q==
X-Gm-Message-State: AOJu0Yxg2xgF3xwreIXbtLP8R6+vCrK0Lsisbo1wzBQM+aabGiHLUnW8
	ok5f+d8oTjnctgBqpBg417TeIFAVq+Xqni4j1hSy/gv1G51wzGqE06x5sRcIn80DP1I=
X-Gm-Gg: AY/fxX7rZJigmpYn+ngthjs9dEYY6WRcZC/6c6zLoXvn7qWOlEcBp3rNwQIebJwXor5
	cH8qzSBYDd/DGBJ5NcwDjTmVYFCdQsxrM7fWPLNP+rs12BVqApzdTVFEhNlXCvtBLlF9LenD1qh
	xw1u43HKjzN2wSUr9XeMg4L14PrW7PXPl790tCAFDKXNeHLi2IP27OKT84aQjizmtLUUh0u826a
	gzJ7Fv0ReGXpfW26DMJBAHtELO9qupWtqW5tg+sfIZhUyKcybie2w7gycybr6iZHDN4wWNuYacd
	W/TU5OKa6/+zKejat9i/nl8M9kLNVx4SxkvxNYzWKqOFts/VwVpJDhtCmzwND14DCTLNJyGT7Wi
	kCSIjxK6E9LmHkGcgPMf/gtv2HkHVyKZJFUkBSpu7g8fnCIGCci2j/XCt3xH7nstWu2TSfRbKeY
	VhJnHKBPr8j5bTHaNMSpVSIVdWOVbeMdUbaFd0f30B5CYX4y3L7EtgUQ3XJ4FCBlo=
X-Google-Smtp-Source: AGHT+IGv6dzbSVpNHqBw+G423BACmAS7OeW8PWWQo4nElFcppe2PVKR/NkxEPPlKfSyiFgkONrjplQ==
X-Received: by 2002:a17:902:e809:b0:297:cf96:45bd with SMTP id d9443c01a7336-2a2f2231b01mr352340145ad.19.1767149729925;
        Tue, 30 Dec 2025 18:55:29 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d5d3e1sm307762945ad.76.2025.12.30.18.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 18:55:29 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 0/5] Sigmastar DT warnings fixing part 1.
Date: Wed, 31 Dec 2025 11:54:57 +0900
Message-ID: <20251231025502.1139168-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I saw a slide at LPC that had sigmastar in the "hall of shame"
for DT warnings. I finally got some time to look at this so
I have fixed the ones that are obvious and quick to fix.

I'll fix the rest but they might take a bit longer i.e. one
of them is about the register shift for the UART registers,
that'll need the binding to be updated I think?

FWIW this platform isn't dead and I have been rebasing all
of the out of tree stuff that make it useful (Audio support,
display, hardware video decoding etc) but its basically stuck
on rewriting the clock driver so that it is mainline-able.

Some other people have taken the limited support in mainline
and my out of tree stuff and made it run on old MStar MIPS
machines too..

Daniel Palmer (5):
  arm: dts: mstar: breadbee: Correct regulator names
  arm: dts: mstar: breadbee: Correct LED names
  arm: dts: mstar: infinity: Correct opp table name
  arm: dts: mstar: v7: Move the reboot node
  arm: dts: mstar: v7: Add sizes and ranges to sram

 .../mstar-infinity-breadbee-common.dtsi         | 10 +++++-----
 arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi |  2 +-
 arch/arm/boot/dts/sigmastar/mstar-v7.dtsi       | 17 ++++++++++-------
 3 files changed, 16 insertions(+), 13 deletions(-)

-- 
2.51.0


