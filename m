Return-Path: <devicetree+bounces-54819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD23892B66
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 14:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEA861F21DC9
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 13:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A79219F0;
	Sat, 30 Mar 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NAzdlbD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86BD614A96
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 13:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711805663; cv=none; b=lT+r8cEBx59XjFB0E9fq6VtfSJLb2nW65UVZU6zeGc7ccI70Kd0GDchPQ1+H6xq0meZDG31EqIb7ms/VZKOzkyRxBqQP8Z9V7Ans3b4Cgx7KNmXbrOebSetcAtRHLtY67hQD8kVLCnQKrJOhrW27jHyWr0ZRAVti/fg7JDdidDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711805663; c=relaxed/simple;
	bh=b5BAnNAzuVJGQLT54cg66vEhDR5t6XTVi+TumuM+TWE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cinNKjCKBJJNyjyzrO1NwJcqCihvAyUeE+A/mzW/bcpMAhvc1w9i9AyysjNe50sIVaXvRkJ7BynhGtljWikpYYdbWJOCP+vKCEblHi0CATxOKSGf7cjyii8Um93oOyRmJ1V6U7jXzF9vc7SAYBmcU+10Liqug1zG+lJLd0sQLN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NAzdlbD2; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-34005b5927eso1999135f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 06:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711805659; x=1712410459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=grJR46I+1DnHyZ0Zjw+rpwAPFOhrK7vpoH0EHH9w4rk=;
        b=NAzdlbD22hlggdpqNn+tTIdkDFxRA+G292tYNudYMWfY4FRTdM0ywvTdCv0JDLBddI
         y2EZY4oseYdWHBwsjRu0CwIOS8SwxWkurkaaXurV/OGr5QYRepSDypkpAtDCkW+LoeOW
         2e5Cd8OK2kxKVRseyR/96eBpDqlp/VacqsTVZeHNG86e/YGjR6T3i0RCPfZDXlAH5n27
         /+B69iSTsdPoKM4m7HqsWwZWAC2bFEugk5VBlQrj7Tm4gmaDhNZWftG9Drk9jlaxL6ZX
         jeV6gZtsbJpDqZW49SNte2NIksbOH0l06p0h8kpKo9+wnGDC97QtdcB+AnDb9OoDAYKO
         8fyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711805659; x=1712410459;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=grJR46I+1DnHyZ0Zjw+rpwAPFOhrK7vpoH0EHH9w4rk=;
        b=ljDKrlBsOu5lxXTkYfkDdfVTnejoeuk8KQwJmbxknsMZFl6sIL8PSvdZUjgRpsNQSN
         LkdcifjqEY2+vUXS/XH71C4OpQ0ah5z+nEMwGAZtBA9YSdzmwLPnr7gMYD7BJHudnQz6
         IOV3CXt9uESvofMcOErmVryLv5rzjTF1kbvw+U2Snq/OOPl7WSoRl8p6a/mCgOs5gZ5/
         k4erUyFsQ/5Lk3WmXVnEJ/Ogho79BfCdmx+vP4UxwxN+/3ohroDQy2J661PXZ0TzEHto
         inq5g+E4kjt38OBb3W5opT8q1uosp/L8/eA/T5Z42elYRKfzIukqdy58uWrsOsSMv6y6
         oESg==
X-Gm-Message-State: AOJu0YybWpLTWyxJXoSCNbfKGLDnrLkBLoB91AqaNtVpmuN9Hrg7fu1g
	BS5n/KXMUBTwPpRyFfWXsx8W67ki2PtSyzoNOF0Fhj+1SAtR+ZKV0XEls3JmYbBinw==
X-Google-Smtp-Source: AGHT+IFoId/XoC9DHDtyTSxWYNrcu16tiyTKfEXlXUPQFq1Kcj1yzBvpm8MrLWmUQk090mPex2Ug+A==
X-Received: by 2002:a5d:474a:0:b0:33d:2071:9b85 with SMTP id o10-20020a5d474a000000b0033d20719b85mr2881980wrs.19.1711805659388;
        Sat, 30 Mar 2024 06:34:19 -0700 (PDT)
Received: from gilles-Precision-3571.lan ([2605:59c8:6662:b310:962a:f8cf:49d0:f63e])
        by smtp.gmail.com with ESMTPSA id dw11-20020a0560000dcb00b00341c7129e28sm6454869wrb.91.2024.03.30.06.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 06:34:18 -0700 (PDT)
From: Gilles Talis <gilles.talis@gmail.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	shawnguo@kernel.org,
	festevam@gmail.com,
	alex@voxelbotics.com,
	andrew@lunn.ch,
	Gilles Talis <gilles.talis@gmail.com>
Subject: [PATCH v2 0/3] Add support for Emcraft Systems NavQ+ kit
Date: Sat, 30 Mar 2024 09:34:07 -0400
Message-Id: <20240330133410.41408-1-gilles.talis@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello

This series adds a device tree file for the Emcraft Systems NavQ+ kit [1]

The first patch adds a new vendor prefix for Emcraft Systems
The second one adds the board to the arm/fsl.yaml DT bindings.
Last patch adds device tree file for the kit.

[1] https://www.emcraft.com/products/1222

Changes in v2:
- Add Acked-by review tags
- Fixed device tree warnings reported by dtbs_check
- Reworked leds node
- Remove unused i2c6 pinctrl entry
- Removed unused regulator node in Ethernet entry
- Link to v1: https://lore.kernel.org/imx/20240328202320.187596-1-gilles.talis@gmail.com/
---
Gilles Talis (3):
  dt-bindings: vendor-prefixes: Add Emcraft Systems
  dt-bindings: arm: Add Emcraft Systems i.MX8M Plus NavQ+ Kit
  arm64: dts: freescale: Add device tree for Emcraft Systems NavQ+ Kit

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../arm64/boot/dts/freescale/imx8mp-navqp.dts | 424 ++++++++++++++++++
 4 files changed, 428 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-navqp.dts


base-commit: 4cece764965020c22cff7665b18a012006359095
-- 
2.39.2


