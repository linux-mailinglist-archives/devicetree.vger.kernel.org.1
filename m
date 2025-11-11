Return-Path: <devicetree+bounces-237250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ABBC4EE18
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ECF8334C0F3
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260C736B065;
	Tue, 11 Nov 2025 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VqaX+XIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8DB36B05B
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876594; cv=none; b=HA3HBJVXR/jl6QBFIUIcYdm+N6/8d5uGD0JYz7zWbxW3dLoBANMc/gvkFbevw5da4bzU8GQQhLYcTHrkEMUXsulTmzFYb+s1dmv8FlrLydPSeywpaw431F68rEch0fFLmqI1lGiBssIzd051au6h/msF1pfnNxcE0J94TDgGuNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876594; c=relaxed/simple;
	bh=R/BxvRnYDhmJfrosntBUW73LUr2aXcwvJAtyfPOFZHg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ni+5dodP/33C284EeN5r74OGfJuzRId0s+jnniaCEeNLdK4CuK3RPO+OfI0e4Meo5nt27UMyGq57177WfLlK481UaZCblG8J4xrSR/dPP3Gpz43k4Ci9kQW1ApCKkXakG+cVqCNm+3nVjN1o3btZeUfSDCKUiOTXfwhyZfbW9u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VqaX+XIi; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42b32900c8bso1525728f8f.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762876590; x=1763481390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wn1gmvaI3HpYNhR73OUUMc76SwfBuC0tr7WC7he5oYo=;
        b=VqaX+XIixQFuymwyNS3v2erA4attzBLFXoOwmPv9ZvZnimenfEtc/JIvX8J3e5iItl
         gNQ+GoHnNSi/dTBLnc1+ZtLvc9s0PDVnmgpnrSRpGG3ftPCNJpARLTqYGw0h0SNtSK4p
         jnwWc8sWxi3pYuNI9IGw5EHp0Bi9vDUbwwUW9dMGxMD/T2Bqwy/jnppxO6pXdG/cT64x
         9/6vyJDq1IgK9FBoSARs9a5UOcD7VHp7Di2QD5loYuMtFctYdYy9qT7waxPEYRlWlxi7
         Qy0OprpeIJ/MP2wFmVuBTdhT7ddNl5TIg5wLozH/2G1UGR5ewyrfiYtxJ6KzuIta5iU5
         wIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876590; x=1763481390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wn1gmvaI3HpYNhR73OUUMc76SwfBuC0tr7WC7he5oYo=;
        b=Y23Le6gJg8PSVMsPEkgHPNDHD2Gyr7o6lbPvw6MrirPF/5vg9IQWUSePEn1hhn49tB
         3kDjmpjHye5AcHVMX4QbVo3fRFDi9wKR3VnXITXu0e7hgU1Te2AZfrPtf2uoxhr7PpED
         eCpBQN9DXS0Hvv8VkOGJHjtmpgVMYua0cUd07edzpG/fdcqZCrI0iM30E5wiYd8ozSKQ
         dU7OcMHbMhNVZIp127r/tqKM7lPzMr5SFirWiQzgVSxqUbjpaB9vnw78WwKV1MYiVLvo
         GjwfX/FtVhw4XYN4N/mdz47yJ5ktLOAeUTL7/Pw+kCV4XCmOWXiVQ2E7mQ8Bo6g6fczg
         RbFg==
X-Forwarded-Encrypted: i=1; AJvYcCW8CCwkMyBPJXUnBpp30AGH2jNcEy1s+IiC1xQe++MeXrwbu+RXZ3l4jVx8CFvRIF378qCmMzaS99QY@vger.kernel.org
X-Gm-Message-State: AOJu0YxuvtfBLSfqavmXms7Ta/U6yVMkTtT8CuSt6I8bBLt9yn1/5VlL
	PPQ/29dTjWkJo5GOMw/fKwF2inUGqQq/yRin59ZI/J13GSKJVBwwLK2D
X-Gm-Gg: ASbGncsAwgCfmk5Rm2RoA44cjanilf2hvO5h59H6rDaKRw6KdjFIS7fQ4dZtOcfKpKT
	73bRbdxnE4FcP1BsTMpSCd3jkAWDOBtEb6q4oHobCSco4q5+8st1aO3KC2g32luLozvkLDficnJ
	+NEXKfIIiBscvvWvHw+zSqEd8nnlJ+5IZ4v7+CbyBQLa8ZNEuqI8d2pHbYMkXlB3ePzdm17pgjJ
	JXO8YV39E4/hh6BRdy7ywOseZIs+8Kd5XYXNKVMQBCvR1zfwID9dcxAy1lN5uazLxDv7w+WKeYt
	E/igQ8SbbJXxWv8thPN+3t90fFgaRHq3O8MeKjYDuz8MhilxeNEkA4kkVdZ5bTIR2aEQsqeAuEf
	ZDVJryegbmP4MkUIMtP2jeygmFYju9mpYjdmkU6KIP2NYbjrLr0tPm+AQtgzHatpM47n3fLjqjv
	g4Mo4ZqYz8HYeoS+fRr24uxNp1cDpA96BYJu43brkB
X-Google-Smtp-Source: AGHT+IEWa4s/O/cpurErrQ/yBB0qj+qI8Pv0XJdBicVTkdR1kfMMMCiO4Ga983PAXfh6QAJiVG/gdQ==
X-Received: by 2002:a05:6000:2302:b0:429:b9bc:e81a with SMTP id ffacd0b85a97d-42b2db828edmr9435347f8f.0.1762876590240;
        Tue, 11 Nov 2025 07:56:30 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm28676766f8f.19.2025.11.11.07.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 07:56:29 -0800 (PST)
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
Subject: [PATCH v4 0/5] clk: add support for Airoha AN7583 clock
Date: Tue, 11 Nov 2025 16:56:16 +0100
Message-ID: <20251111155623.9024-1-ansuelsmth@gmail.com>
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

Changes v4:
- Add review tag for DT patch
- Fix clock patch to use en7581-chip-scu compatible
- Drop PCIE SCU SSR write

Changes v3:
- Drop .set_rate patch (will be proposed later)
- Drop chip-scu binding and related patch
  Link: https://lore.kernel.org/all/20251106195935.1767696-1-ansuelsmth@gmail.com

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
 drivers/clk/clk-en7523.c                      | 538 +++++++++++++-----
 include/dt-bindings/clock/en7523-clk.h        |   3 +
 .../dt-bindings/reset/airoha,an7583-reset.h   |  62 ++
 4 files changed, 468 insertions(+), 140 deletions(-)
 create mode 100644 include/dt-bindings/reset/airoha,an7583-reset.h

-- 
2.51.0


