Return-Path: <devicetree+bounces-255798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A751D294C6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1A383014BDD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F77533122B;
	Thu, 15 Jan 2026 23:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="N4go62Cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1361C238D27
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520567; cv=none; b=IYQtNXyFozWoi3/PTBhTH7GutOqfDCAZHiiddWs5L8QB3n6JSxB0cNP0seJ/A2aOoZLhOt9bm2Pdw5+xnNvhCVLPybpeG5+DXj1NciW8CFF5KeVM5QcZfatqsSRQKxfvp+uy/q+M1YSMqeauxo97KyuOjF8cN6Ds955msrz4OSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520567; c=relaxed/simple;
	bh=4+/gILBdjn1eZEBZTvS6mqsYmffWsLQnnJt5jEOLzKI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CE/5fAMtbpHqi3xeMbTdtivRYWv0SiM8dhm9lFU47E1P039D7wCtNXI7r6lqSXif60XW6WG1d24FukK7SQIN04Os5u6pGcfG/ns8+rV+PLgk6asHFlpYDLI1IQJ9HTKVEDUJtjUPGk2ItXEMc5bkTIKfRSCj/Lcz6as66Bvf4Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=N4go62Cg; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-78e7ba9fc29so14818047b3.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520564; x=1769125364; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v6vy68HrZiN7lT0nxeuJXtxrb4j0PV95v5MAtlSQSF0=;
        b=N4go62CgnPyeeeqgNojZRccmBL44eQJQrQLhLbNHBkJct2kQO8DRYS9qNfcQThmyPJ
         fdamRuGHNOh12CbSNWpVcBKxA4wm0b+11e/EqjooLUwQASoRrI/WK/mAQ+rajY8osPYO
         1OU1wyxGtnM0eVJ7gFVBHIN5Qw1VyixJJONLNFaeCZ2605Sglvai89W6Zv4kjJZz0c1q
         w0B8SmhxlGgJvjsJtxGogU28THZBi7Pcjdy7+YeaKDqiQqS+Oh7Ccg9LBMkUeiiL/0K0
         uSSfU/hN7j5L0VXFF/sB92hvfmZ3zfeyuReDGuY37dP8hL4x+7zpjnmRPhFFPu0gkP5s
         tKrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520564; x=1769125364;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6vy68HrZiN7lT0nxeuJXtxrb4j0PV95v5MAtlSQSF0=;
        b=gLu7MieiCEOguVCN/TPlD8IEkelaqB5tJdreicl6CCDZOUREhfSKPB1Il4l5CcOZFK
         F+iSaY5JdTXSiqugDc3Y5OezwXTFkO0obpPiV9gQNWPFVr8K+W/OrN090HRWZduPru1Z
         4mA3ylzlSnN1/3Ngiu3FvXccfZOWcOL2byDuEcPHUfclnhqCD6qUSPu1lKUGj9sjZEl9
         iB2xSu5sYjyJMW90KJ9JSD7IO0AGTEtiLqqqYj7qm88RdmwkVq3NtkCK7tsmAqDqs+jC
         kW5qSh4XY4FQecX3VcCdfZSkpvPbp0aaFNugrxwfCwUerTBONHxnLqjRxzgx+CmFvgck
         Pb2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWpePTub5/vrYeC6AzyYSSnEO1e2KQYAr5Ly3/DSVGIruGGkgiR0bq0UGqMzvnzHTplY5tVcrPRP7mO@vger.kernel.org
X-Gm-Message-State: AOJu0YzJG2Nv2ELgNnz5GfHUxjBBrScicKRBJWPruPL8y6dVXdCaeNvE
	amMhh3KrhIuAspUS4hxD1cDdWRKcDHDhnk5STiLWRrQUZkLQCVGY+0hQ1Q++Iku0hUk=
X-Gm-Gg: AY/fxX5ZgdrMDozOtkUFg/ZiXDxQYDhety+lHF6gWap4sRoh4pYcJKOGvT9Cc9pW9dQ
	POLYgefp+N1tCa6Xzc4zjZnGJ61eIMlek3m1K/HINbGNIDnOdp3efmApJyrOsz1ihrquD+Wdz3q
	4EnvtAXjoXSKQNFmUml8PvxSQfKlJJdSMchNjrkpbejztg76JXbsaqqd1HefJZnLeb+V7b8/w8s
	AsFTC8kTTJ3IpjUgo2Vt8D4zSiwfSpbNu7CGEgvMR7DbuEeamv+ViHdjyvG/VGQl6okqmfw1ogb
	fipisHD1r1j26y2VhdHgmTX7s+Nof4Nq/gqgr5UPgAjiMdVVUlTVnNBvgvdrzLp8UfRReZMwvsk
	gPvgKMuwZGBtKoZrfU8HDv1n+tEiu2aNJUHjPLWBV6CHLO7eOPo4QZp7onoNPHG6gbD8KDVdb9B
	TDi92QOtA8WfyvR3W6ytV1Saj3NugTWPQBg2242fYXzRKZq4cG6J3jmPzPHLOIOPusg0dgMqwtA
	ZQhhIgVhQ==
X-Received: by 2002:a05:690c:498f:b0:784:8338:ff78 with SMTP id 00721157ae682-793c67115eamr8895767b3.29.1768520564077;
        Thu, 15 Jan 2026 15:42:44 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:43 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH 0/8] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Thu, 15 Jan 2026 17:41:59 -0600
Message-Id: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEd7aWkC/x3MQQqAIBBA0avErBNGF5FdJVqYTTUkFk5EIN49a
 fkW/2cQSkwCQ5Mh0cPCZ6zQbQN+d3EjxUs1GDQdam2Uu4OLN4vy4fSHqBUtem1x7rsFanUlWvn
 9j+NUygfoh+4lYQAAAA==
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
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

This series adds support for a Syscon block in the upcoming Tenstorrent
Atlantis SoC that covers clocks and resets. This block is instantiated
multiple times in the SoC. The current series covers the "RCPU" syscon
block that controls clocks and resets for most low speed IO interfaces
found in the chip.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>

---
Anirudh Srinivasan (8):
      dt-bindings: soc: tenstorrent: Add tenstorrent,atlantis-syscon
      soc: tenstorrent: Add header with Atlantis syscon register offsets
      clk: tenstorrent: Add Atlantis clock controller driver
      dt-bindings: soc: tenstorrent: Add atlantis resets
      soc: tenstorrent: Add rcpu syscon reset register definitions
      soc: tenstorrent: Add auxiliary device definitions for Atlantis
      reset: tenstorrent: Add reset controller for Atlantis
      clk: tenstorrent: Add reset controller to Atlantis clock controller probe

 .../tenstorrent/tenstorrent,atlantis-syscon.yaml   |  63 ++
 MAINTAINERS                                        |   5 +
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/tenstorrent/Kconfig                    |  14 +
 drivers/clk/tenstorrent/Makefile                   |   3 +
 drivers/clk/tenstorrent/atlantis-ccu.c             | 991 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 164 ++++
 .../clock/tenstorrent,atlantis-syscon.h            | 101 +++
 include/soc/tenstorrent/atlantis-syscon.h          |  53 ++
 12 files changed, 1408 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


