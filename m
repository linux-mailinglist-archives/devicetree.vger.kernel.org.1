Return-Path: <devicetree+bounces-270377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAMvJSulpmkTSQAAu9opvQ
	(envelope-from <devicetree+bounces-270377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:08:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A8B1EBA73
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C41AC305ACA5
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BE36388E6D;
	Tue,  3 Mar 2026 09:04:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AD33559E1
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772528660; cv=none; b=ctXi0wYvN/z/ZirGy65weQ/lsIxOdVSsf5LpX2UkOs3cia9Epzwfmye4PZcwb+wlTJhA2Y2p+i20G7MvZS0KO2L8KNXHM3K1ZtE85Cd1oPEkHBBRX2bX22l0959pj4t/YEOX+gJ/wdC15EhcTKb4fvYtjzNzyZBBi1RJJFDTWY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772528660; c=relaxed/simple;
	bh=u/oB+juUyehiMTo86CuId9XkHNGUcsQAYMN/hj3QnKM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fSvATd227dApcfiomLwt7gn5hC/0N/xgDMu4sOGBoQ8CQFuZv2waVOVkG9nzoHZ7CGW6zY70vIqlT8pMwhMAbiQ4d0mVxONACGYgcQlD9rgbBgnDEw96FmIkfdX5xM9hcLBoPdqis68WVRWT/JjVHFpvOGCvL8zCEaFB+0K2+gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-824a3509a12so2473024b3a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:04:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772528659; x=1773133459;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jOSOKW0kCqITngNEZ1ehcTCopjWs3+gJ5WzH0JONI+w=;
        b=Ykg9R9PXpCtW6gHUW/Hhjn9rSzzlpfV23SyzTrinsW+dLlUVCU8dO+rHLYsqjs0JTp
         PWyqGHxHQk3BzKzbA8FNM2mqHtXAqFIFo6DbMWiH/UNpMkR8uokNG2RNoP/9qdFGQeo7
         w+l4g6VgTUEvyd/B32OYAqvnY31pd2133PnIYtZ+WInxDPFrU2Mhgieotoe+PMbAL2r/
         73dYbJ/t+dXDt3Xjikfxz+RuvXzrfO8b4vsomR/Kgc4sg06wHqq/18/cEGjoYgpY2YO0
         z425LyHhYG63KmBhE7RLgsydXiOdGLtsVs+EVf96FweSLwx0KCV5gPzxTUP0DxqCDyKs
         HQBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUruCW+nO9m/wBuKGZXNeYkeKtC9zWlYOVBOO+9BDWMWgd5STzZZiAfxnfu9KbzR0GuABHgjKeRbScn@vger.kernel.org
X-Gm-Message-State: AOJu0YwOCv9CTdrHOGwkd3qpUplrpWSVB8fykLye5OWppdjBFGA3PnPv
	kw7u5hvEVflYexKYaT383PkvALZW2wJ+2dgu62CKXGYrKNABBKyoj4ALdp63E+yK3Jc=
X-Gm-Gg: ATEYQzyi5YMcZHJoI18z+FvHCR5C7xHAkp5Um8OkiKBIoq3sj7II4+zkGsQ6RvNe0MB
	sH1WYAV4jB4XaghL/x47ZlchnaT66MRDh8i/JgmfjaRBr6/XE+J+3qLW7mJ2NEc9KA5muNWUtiu
	NynNkgG8fvY7PTixVG4G5pTBc3tJ0/euSuFu2AJQ8W6XV84zCSzu/52B/mi+GqGZpyNtQwLdJDb
	ZUt+lgfE0B0OVPvdVApXfsmA6N6/8ok4YDEyU0uCWez3KK7jQUSGAnVFaKOkgCXOzcC2AWZf5vw
	IcINshgaXwnziSM2vTsrfkgyvXB0O2YJMckh4kppb/Hdjqu1kwHLnYrwB+jaBX2LFBobX53fcSl
	EdHnJbNt0I8dItDj0gUbdTB2OtN8ZfVzsuVAM5VaOtSxqo7x0QMsqaz+Sfk26kQK+BI5qTjmgXv
	OuV4ZLK6T3WAEYxpEL
X-Received: by 2002:a17:90a:f950:b0:356:22ef:57ba with SMTP id 98e67ed59e1d1-35965c17f28mr12237786a91.7.1772528658429;
        Tue, 03 Mar 2026 01:04:18 -0800 (PST)
Received: from archlinux ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4c0792sm1638259a91.14.2026.03.03.01.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 01:04:18 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 0/3] iio: proximity: add driver for ST VL53L1X ToF sensor
Date: Tue,  3 Mar 2026 15:02:39 +0600
Message-ID: <20260303090253.42076-1-email@sirat.me>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 28A8B1EBA73
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-270377-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirat.me:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series adds support for the STMicroelectronics VL53L1X
Time-of-Flight ranging sensor.

The VL53L1X is a ToF laser-ranging sensor with I2C interface,
capable of measuring distances up to 4 meters. The driver
supports both interrupt-driven and polled operation.

Tested on Raspberry Pi 5 with a VL53L1X breakout board.

Siratul Islam (3):
  dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
  iio: proximity: add driver for ST VL53L1X ToF sensor
  MAINTAINERS: add entry for ST VL53L1X ToF sensor driver

 .../bindings/iio/proximity/st,vl53l1x.yaml    |  49 +
 MAINTAINERS                                   |   7 +
 drivers/iio/proximity/Kconfig                 |  14 +
 drivers/iio/proximity/Makefile                |   1 +
 drivers/iio/proximity/vl53l1x-i2c.c           | 901 ++++++++++++++++++
 5 files changed, 972 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
 create mode 100644 drivers/iio/proximity/vl53l1x-i2c.c


base-commit: 39c633261414f12cb533a8b802ee57e2d2e3c482
--
2.53.0


