Return-Path: <devicetree+bounces-235835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA6DC3D4E8
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 21:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FBA63A5241
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 19:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB85351FA1;
	Thu,  6 Nov 2025 19:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hEvelUD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ACE2DCC1C
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 19:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762459185; cv=none; b=r0IZqqDTShO1I/hySLgM9sNpIyq9nloPF4CsL+XHMF3kwBr96ZHtfTpbqSMJ7Z/jY0UPSqP/8Wh6GnmrZZG4uWclNAZ+Lh0UertpX7mf5D8AXwdrlXLaZcWQFEGWDsIA7aIElcBN32X05jCzWZAEcJgD92T1r+FEYcig2QPw4bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762459185; c=relaxed/simple;
	bh=t/qaprO29W8nNlhcn2cJ5KDh0nDpS8i3Bz2ryrAj1OE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NKTbqW6Axt4GGy1xvOcPMc2omUrvD/D5Xqtc9Ul+gTqF/oG9ak24yQyuvWMxbOd9ECri03B5ibe1RgFhKVZXnxxHwJE6+xapxnHyhP2Inb4dUFSqzHT9CAn2VGgV5LBM1FAVQ/TSTVgQYYIdQsd5jiXXb/edvBCWPR29Ba04YjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hEvelUD2; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4710665e7deso65425e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 11:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762459182; x=1763063982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OXDqfUWM+p0Z7nN20QoGOJq1S+ZWNbFic52FirlUgMs=;
        b=hEvelUD2fKqsqGWq6zOADkOTob0aRebRw5TIo8LRb0lE36+ehErbdAbtkJFh5/HDHD
         GMycicSqYQGp5kei3Ii7IXLlfWwKjoKgrXglltBY1NKoTMrX3YFfbxmMhnPCuAOUjHjs
         ENGh1L3xU6QfoYWQELW66fIonXpmjSchGExE/X8Izb5AmEaakm2BRpkQwypgO4lrRa9r
         mnLjAsi7wsvQKer9bmvSxmEbJR8Lab5qUzDMANfRCYQR/2CiLpbX0wldplVo6whGCJEz
         pR2xcGSq6aBdH7B+5DoXdyOAvQCVUh7cO1U3Z4Ui2yydift71dz6oMg2oR4Vmvoxt1Pf
         SXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762459182; x=1763063982;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OXDqfUWM+p0Z7nN20QoGOJq1S+ZWNbFic52FirlUgMs=;
        b=EyJLiHBxgxy4jhNxpDrXltfHri2nB1GPkEowm0PnJUeu9CCzDbBgu+rAwnb1Ldhhv0
         oXwxOdkOU98ECqdT2J+wpaYEaDie/rfNpRO3QP8U/q1nwXrWQWedhl4n1ogExxpO+10p
         e3eDOxLtlf/sDD9b+gSQHnCi/zxZqMEagF0XlIP8AHFQoIAfD5IWGOp79pPkOcN107v4
         NbNt6TD9vOcdfNXxA+I7EWOehTT33wMBlHiy7NjHkZUoUsSP2udwcKq4tosf7DYZXXM3
         Iko9epiZ2GcqaoQAE0tTndFDRYP0Rjk9EhnlHdvIJ6aau/3EjZmoHSpVthBrkXfmdPYi
         UXnA==
X-Forwarded-Encrypted: i=1; AJvYcCUXucigrdSSoMlw+ecVx7ekV5ql3ojRSXoUwELGDF/G3FSDYmTJ4hdvFv/eYCrfy6rNqkVS2ahclc8N@vger.kernel.org
X-Gm-Message-State: AOJu0YyVzXiyjiZm9OklWV3/vO2U5tw2jHCFlB+BVAT+cyAqd40ND+y3
	nvHlKgLqUU51LQxyWy0/fKuKqbG0/B1QjNdLEGN+obdLQu1qImcR434x
X-Gm-Gg: ASbGnct0HGXR3sDkC2oSemGG/vqQC3d4Vvk/D0D9IbjsWlm9LCNIrEWrTHZB4vjfGN/
	H5fjlA1Dyd5K6OTFgUGLVQFFQCC+kE7myi6d446d0ONAL6zdQa5NiqJW6PnmMsH2ZtiwUSTDMEk
	7iT0KfQVAvyehyXHBP6wTS5HKrqu4gpRhb3sK8BM2w/hHgqojcAgT0A+lYPkUwVIpAee1VRmgPa
	fJtAroIbM6CgEoPEyXCuMG1NIDbet9kMMCgCsh4sZoJ3yChEn2mr53Z2tFp6ULFA10O3aKs37Ck
	7GK5C/Nszzd3Je1xJybQnj69571rYNhs9vfVEidLmk2h4GHLN+M/odyaoKfHSSVuIAKUqVj7MQK
	i4i9AxkMhEYfdbfXOFN3p2HS35gdQWk8ygcnu9MIUhh+etbAR1/ribdzmP+/qb4r9Fd8Nf23xY1
	fLo137nBKa5OSD0oHbVWvk4cQAfTzUcYA2FRsRy9h9
X-Google-Smtp-Source: AGHT+IH2zuNZAuG//FFua+3NFYrMOZHDAhHafYeLf7JfFRe38hh4R4scyQumglGX8PwDG+TuA7G4XQ==
X-Received: by 2002:a05:600c:3b86:b0:477:5c70:e15d with SMTP id 5b1f17b1804b1-4776bc1f08bmr6914605e9.0.1762459182268;
        Thu, 06 Nov 2025 11:59:42 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe62bfa0sm990037f8f.5.2025.11.06.11.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 11:59:41 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v3 0/5] clk: add support for Airoha AN7583 clock
Date: Thu,  6 Nov 2025 20:59:27 +0100
Message-ID: <20251106195935.1767696-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This small series introduce some cleanup and support for
clock and reset of Airoha AN7583.

The implementation is similar to EN7581 but AN7583 introduce
new reset and more clock divisor support.

Also AN7583 require some additional tune for clock rate so
we introduce support of .set_rate in the driver.

Changes v3:
- Drop .set_rate patch (will be proposed later)
- Drop chip-scu binding and related patch
Changes v2:
- Add .set_rate support
- Rework DT to EN7581 implementation (clock driver is parent)
- Add additional cleanup patch
- Merge binding with schema patch
- Add chip_scu phandle

Christian Marangi (5):
  clk: en7523: convert driver to regmap API
  clk: en7523: generalize register clocks function
  clk: en7523: reword and clean clk_probe variables
  dt-bindings: clock: airoha: Document support for AN7583 clock
  clk: en7523: add support for Airoha AN7583 clock

 .../bindings/clock/airoha,en7523-scu.yaml     |   5 +-
 drivers/clk/clk-en7523.c                      | 543 +++++++++++++-----
 include/dt-bindings/clock/en7523-clk.h        |   3 +
 .../dt-bindings/reset/airoha,an7583-reset.h   |  62 ++
 4 files changed, 473 insertions(+), 140 deletions(-)
 create mode 100644 include/dt-bindings/reset/airoha,an7583-reset.h

-- 
2.51.0


