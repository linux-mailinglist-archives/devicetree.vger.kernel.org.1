Return-Path: <devicetree+bounces-256148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F366FD3320E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF6233018E95
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:13:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D312C225791;
	Fri, 16 Jan 2026 15:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VPPwwjZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6818D283FEA
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768576381; cv=none; b=E2vqI8bvnr5p40ubZYtfU1A1IudgLam7A/d1JHzk4EggJYTphM3bVvdbiFfK+6f0exHY/5TZwaxXcNhjsY59rULKHRoU2Wd48JJvM37G58bXaKC+sqbU4z72npHZZ+6DvKYl12hhTJ1GVItQ/m4Bv1XZ3kN7TaoLpJ8KZ4gzmJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768576381; c=relaxed/simple;
	bh=W8Du2oDRoyUgx81DMi6zQRmYVixmkTdP39Df8Cp6QtI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KNswTX1IxrgJzfodgLij+i7oIDwvs/Z7u7O8xM7OWW9rs7izg5fwSwF2/XFr4uD3daiWLCIMDtvLlN11worVxPSwHZg+LWvO4PLcIu6c39tRL+YAhNRgU47CBuLvsVMo1CnOA8e/T7XFgPasureso1GCgIbanqF/+7x4jAXWfOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VPPwwjZ/; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-81e8a9d521dso1318891b3a.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768576379; x=1769181179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lRiEbJrzkH/I22ILSwaqJapqGZa7fvSUC1WPmu8Y6zQ=;
        b=VPPwwjZ/tbNtCPKYw3kN5z4QJIAHvuw0vzhlLzLo74l2HxYleVJo25duy0mRZkVwvO
         DYvj4vLn4OG5GvDIDkvYG0+BqTAg6lB3+PDT4+smrpPBkRxryuEbhnTlCIkuGEy0WpWQ
         T8EKu5enPohJKHYLmiy18b2v1PooBguqhgJ+OXQLPu3hXsh+1O6bwc4z9Mm9bPdi7dMs
         H/Vb3NnHzs35xKT3EdEtHyHa9tVCe8xalG675D0w4C6YNzBQIX7gxV9BQGXQKTcbkH5Y
         jFvEvVar3t5NjCOImzziRs88Eb9aLV+KUXoS0HFquUJtnd0ZzmnEx6qMiJEVyGAXxbjC
         /vvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768576379; x=1769181179;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lRiEbJrzkH/I22ILSwaqJapqGZa7fvSUC1WPmu8Y6zQ=;
        b=EgTiQCzfDHmgGXd2vl3BbWg91Ld0YfcBZXvrAScQJYGE2Rj1tqbeqHPXyXObzBA4KX
         GknonVj7PeEqyk8sKCFo94w6xW9LlubFE28iWZ2k/4wxi4HfxJMLsErZMsJyAGgluTS3
         QX/mCicxe8I+AQXxFN2cy4caIZLgiYfLlm3qLqufgE3Bi2C/X0q4/QNnhWV3F2wwVj8G
         98Yec6tH/RCLQkoilouRCCRaEjvldLfGK6sTz+zudwOVXKXOZ20Lg9Er92odjv2Oia6/
         4kGZzReoXM2TXMHAgFJnzlPXVyKjzJng9jRgbNLFELRlwSmCL1fxcqsVKx7ou34hKUQ/
         v7LQ==
X-Gm-Message-State: AOJu0YzjN+l5YfErFMqPSTDZY9DcSwKXHgdleO9E0gFOEKV8cjGyUAkt
	eQaNU8XVxb5iMMyxEA3RwqfjNRxxe5fubMk8wUllgj8Efnykp7XKUn9tqndkM+DV8rM=
X-Gm-Gg: AY/fxX5HvO1r7i6yORVkNOFMqwg/Bn+pcQsjKBUn9diI1EENMDg7fRtp3ViPtN3E/4G
	f3VGzyVc8MLJ1b41NojnRcOugkn95LnugPf+hglHThGivW8rKDSbAB65ibkaz4go8NahXvg+Oij
	19B5QtlXSMPP8XoSicvX+6T+Tceb/YODGme29pdSezTGd/z7ICXfIa31F/dnNHEfBcnLjCYUYRb
	XmX7c3KtygqugNPMGmPnRBcyI8Pa6HU/CY2KH0Yi7j5Bthhckl8R4znudtBpvj7ez8AF0fXz3E8
	EoSWks3h7PkDRKR9pAKKtopT54OyyqMf3sCFxvYNVXVrDgzFtRR6V3rOufxfGPy3/Vn794nESYb
	M5TPvEC8MdGuO7Mh/2oK2Qh2moKfMPO9StrTPPxNX5kSGiivadhsxg3CZwllrP0cTxQcCQOsINd
	AKICohhkZvt82qXnWNgj8=
X-Received: by 2002:a05:6a00:3c8b:b0:81f:82b2:ecf8 with SMTP id d2e1a72fcca58-81fa1890ca1mr2604735b3a.63.1768576379447;
        Fri, 16 Jan 2026 07:12:59 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a65:fc91::1001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa12b51fcsm2345072b3a.68.2026.01.16.07.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 07:12:59 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	pbrobinson@gmail.com,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	conor+dt@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Do not enable hdmi_sound node on Pinebook Pro
Date: Fri, 16 Jan 2026 23:12:53 +0800
Message-ID: <20260116151253.9223-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the redundant enabling of the hdmi_sound node in the Pinebook Pro
board dts file, because the HDMI output is unused on this device. [1][2]

This change also eliminates the following kernel log warning, which is
caused by the unenabled dependent node of hdmi_sound that ultimately
results in the node's probe failure:

  platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error

[1] https://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
[2] https://files.pine64.org/doc/PinebookPro/pinebookpro_schematic_v21a_20220419.pdf

Cc: stable@vger.kernel.org
Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>

---

Changes in v2:
- Rewrite the description of change
- Link to v1: https://lore.kernel.org/linux-rockchip/20260112141300.332996-1-jerrysteve1101@gmail.com/
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 810ab6ff4e67..753d51344954 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -421,10 +421,6 @@ &gpu {
 	status = "okay";
 };
 
-&hdmi_sound {
-	status = "okay";
-};
-
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <4>;
-- 
2.52.0


