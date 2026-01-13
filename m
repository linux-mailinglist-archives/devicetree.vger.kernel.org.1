Return-Path: <devicetree+bounces-254254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D301D1694D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:03:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 234F4300FFA3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD4F034F24B;
	Tue, 13 Jan 2026 04:03:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED4A15624B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768277007; cv=none; b=XBuGeozjFxcubP7YpjcH2z7wokxas+7Dpa31iPRg9Z0sreJvc41Qba/3mCJYS96R7jc/9Ym5cp/FeWsnYpxiIIImNpN+4l9Pr0eaSF8l2iS5dcgxNurnY5z1kg4GvdFUb1axuRcIzd2ToH+c/ajbQPvpUUpY1DWOTCANNwNDS5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768277007; c=relaxed/simple;
	bh=dWUJsKZ2h/0smvxapJKBns2otP2wccaEw19tjCUT4+8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ITzSMH0yVBwE/1IUmnPmPvkQ15dWLE1ERH0XGRdQQdAKrw4nptjHRPSHQIr1XSDGud+7sBtcGrJYg7CoGlwVul9+1SnC98rOxOajnO1ZX6Ke3Kt10tBkF2B1aSemFN3VzP9VN30A1viW0fh/SF961d4tHCOFqq+BLIsJ2Ca0Of0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so3443758b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:03:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768277006; x=1768881806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D/JUjAcW99ZWO41j4FsrRX5rCWlDwcYvE5F/oX8fxfU=;
        b=oa3xrk70Lu1hLf+sDCHtGWH+4oxlmKsOyyjjhIX6l9gyUlYWbRcnDUeIRbTiK5fm6F
         bAeaJN5+g1yV+s4l7ITH6bazooV9IuO1biRWQa/Cru2o1gXswVpbaDfTbatgVbBK4BJD
         lcWmCGWqc89Jh32XCbm2e4prHYILVg8WTbZHx72cBa1PEOhRhwWGI9aEh7DhwR5XeOfd
         0Zuk5FY1g9rB+SxGwzUtBLGnzfDCyPo3f4ExYLLoJp/n/gCt4VXPgGyS2w4TTHc2A15+
         WSFS63Sp86V6orMN6em7vlFgaqkvBGV2krk8fIusY5JiPn+OYRlJwSuJPqtreHoI7Nx/
         ou3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWGMXzTGg4718bI/2OB7ztx/T70njfH3JmuMnCo2gEidqImixfmeWslGm8hC9eg57ZST9hmafITPLtc@vger.kernel.org
X-Gm-Message-State: AOJu0YwZEglN6Lk36HABbz4tRI2rRRtqSRzlVk1LDQYTQ4MoFexdKE6H
	eoUS0NJ7gSems9CMCnNwH/uLyUM9LwuqUoBtNPdrIeFWHaMP3zRLAFK5
X-Gm-Gg: AY/fxX7B3FgOa61NnzkCHFStIqrRR28hELQRWf5AJhok9ldjrcJRQEmkRnb0Ed1V/LO
	Qe87MyboAv/CzYo0OxqLMZlGkPshCKDhR1zrMziagBkA5kf9NhCoTCnn89wYCgTgPWek6DEHS2J
	yWilA+tvoCmvLPwbCrDI3quz/B4Zr3UjPJuC7dQ2CdjMw4J7uxaCsuQrKd+pxonhcls08iKGxXM
	s1CYIOt9yxzfLH17W/NieTkPqOSdWv17RS6ffaXjiDcWMl96I5X5+Hv13W5Nu3m3kyrfzXIw2nv
	rFz/cNJsqgJNfQNrwRhiJWQpGQnTTrycxyJa4Kuyq8bRQWaXAHSfkwphcM5U0iSAdGBfAb78tXn
	suQ0yUqoWvvL9y96AvtrDiSqSEFrzvqU39jKD+X++5WXXcNsXQZKcTaHhR4QwO2QIPbdtZk0fVA
	IyVsSIaEfaL+2mSsj2QIaignpLIuwc1lA76A==
X-Google-Smtp-Source: AGHT+IEE/Pr3dqbJy4hDyLYvJOf7AiE0ENSzFoaiAAxR5R9Y0GkbCgS/+ZTUwImFvao264LzrWtKmw==
X-Received: by 2002:a05:6a00:e85:b0:80a:fc3c:f839 with SMTP id d2e1a72fcca58-81b7fbcb811mr15101131b3a.49.1768277005410;
        Mon, 12 Jan 2026 20:03:25 -0800 (PST)
Received: from DESKTOP-LUHV3PD.localdomain ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f3ce8df8bsm7776016b3a.40.2026.01.12.20.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:03:25 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: andy@kernel.org,
	geert@linux-m68k.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 0/4] auxdisplay: Add support for TM1637 7-segment display driver
Date: Tue, 13 Jan 2026 10:02:38 +0600
Message-ID: <20260113040242.19156-1-email@sirat.me>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds a driver for the Titan Micro TM1637 7-segment display
controller.

The TM1637 uses a custom two-wire protocol (CLK/DIO) that resembles I2C
but lacks a slave address, requiring a bit-banging implementation.

The driver exposes standard sysfs attributes for 'message' (text) and
'brightness'. It handles standard ASCII-to-7-segment mapping using the
kernel's map_to_7segment utility.

Note on implementation:
This driver is implemented as a standalone platform driver rather than
using the auxiliary display 'linedisp' framework. The TM1637 protocol
requires manual handling of the decimal point (merging it with the
previous digit), which is difficult to achieve cleanly with the current
linedisp character buffer abstraction.

Siratul Islam (4):
  dt-bindings: vendor-prefixes: Add titanmec
  dt-bindings: auxdisplay: Add titanmec,tm1637
  auxdisplay: tm1637: Add driver for TM1637
  MAINTAINERS: Add entry for TM1637

 .../ABI/testing/sysfs-platform-tm1637         |  20 ++
 .../bindings/auxdisplay/titanmec,tm1637.yaml  |  43 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 drivers/auxdisplay/Kconfig                    |  11 +
 drivers/auxdisplay/Makefile                   |   1 +
 drivers/auxdisplay/tm1637.c                   | 297 ++++++++++++++++++
 7 files changed, 381 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-tm1637
 create mode 100644 Documentation/devicetree/bindings/auxdisplay/titanmec,tm1637.yaml
 create mode 100644 drivers/auxdisplay/tm1637.c

--
2.47.3


