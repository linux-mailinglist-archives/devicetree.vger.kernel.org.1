Return-Path: <devicetree+bounces-253957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A25D13087
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:14:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6640F302AFC5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F2635CBBB;
	Mon, 12 Jan 2026 14:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jIqkQOjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF6050097D
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227206; cv=none; b=jSyAKLdp5vGjaCeSbgVaxxHUG/YnXS/UIL1JUdyzk1GqHpkPdiHPudGxvUxML5uME9IgXcy86CpVXgsgqAx2LYjUgjVWTMLBwVikUC6r+d+au12br/VGr2cuN5Vdbk0EJkHy4csVk3Jwc45SAETP9gL5y65c3AYDEEUH/Lf+IOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227206; c=relaxed/simple;
	bh=kZPEybQa79Po7uYKBWe7nDf1LeZokoViaQo5LZ9XLfE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L4JAHs3oFPYkA9QEYueglCyntCFLNqxz70n7g3AgkPd/cmRt2vpWCs+Nl0wo/RBz/pzfZEZ8vy+8uH1paJ1bGEAh+T8MWj/sE1JF7kpAnjAxMuDzq1IbThNLHRPfDMrWmvg7NqNL5e1v4ZhPN8uDtEmiokR5+MymcEOCM/iumWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jIqkQOjc; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-29f1bc40b35so72196255ad.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768227205; x=1768832005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+jlV+CAPs310WldW/buR8RNLyPHwhl+Y2cQ6sQ4HpnA=;
        b=jIqkQOjcaOHLfYTzbBu7pHcnV+rg6jdgyTc+VpQq/JXi15ujAfs/cM+hcgJ7vjdh8v
         lIvX0dT07V1Sc+vCMPdOb/PEHBvHl6vwrPYXUaTpQZsvndXLLTrT0hZylEGbI1suV7oo
         LI+RauJLtQSstiaMxqEXhmY2V0OmMj5cf9aK/+HFyz1dsvtJxboPCXGbNgHuPPy1Mdd/
         +r6w21n0do9VpcgEHkIkADD4ZExV9TyXC4TxNs8uIa5Qz/rnHmRj7L5Y5G//veZKDzLw
         NwMoQlp5pR1PAHVW0mBfHTyRPwlT/x1O6CL8h+ha9Hza8uUjm2Khq7OFgn8aYT4Dw7zp
         tmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768227205; x=1768832005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+jlV+CAPs310WldW/buR8RNLyPHwhl+Y2cQ6sQ4HpnA=;
        b=fbwiYdra97wBMl6UVGIeuwI32rGocDxAoJj8KBdNyv9WjjqFcfbOmWa6uEGjwTelSj
         Ua+/ieMHWgkdqAANh10u7IXdJoZFFc2gi2ypr8ltKGkcs84TGtTEPqmd/2ld3w67/tRw
         9Tin9NlUWdlT/bgTQ5rIAy1z/hwv6kxHB72emZV0NeuJ5wyMrbmrGVW8Kl12oJqa0Ic2
         XxJEeAtYKeenJOf3cgp4TbbzkCiePT9s5vwj6PzLFLxpbbAIoX+IOt/kPa5I5JcgRWc0
         LfZCQeCR1pcM5Xq8twfhHOsq4EYkrvnYmULRJt7cfIJHVBTjPRcjN2EXshX9oxBnQYyr
         sTMg==
X-Gm-Message-State: AOJu0YysvKovT5EYOFqG8QTTyUZx/0wX0+kwxfc1w5KbkwRPjuMdkvyP
	1ckJcH3id2RVBz74E99JWUvGM6E+OA1h348y48v0hQJWBmuHOXtjzMsF
X-Gm-Gg: AY/fxX5VfljSE1ai7WfiR/BM4ZuQkRTDvjPd2KkxGFf40mI2AcirJPGIJ9yruZnFT9+
	RKWGBuzKVlSRkWyvh9p/j/zQmnadqXeGmrMh5prUKnIkfc6qSJyYE60UuusuQzgNmArS3mRpdVl
	tYHV3iiNXw8HFDb86cSEG3b3VZkb1OsdQRwufDdgCbCJub/JZccBwS50SXB4FeNDi2krBqDpfF3
	HwdkAHLumrxhqHnF8m5TcE9TsYAsJYEpkXM/JeCt40Dp6jUFMvbKDaemHKm9JkloHmJWP0tJH/L
	6vebfHRnIMC+3lsHRBCojIKLPNKmJHUT0Wjsei3KpyVPt594mD7toAUuAEqSWAT7fKZ9voiBUVd
	2scf0EBA+TTFY+FB4TirCk+tTCscMMmN/u43aS7p+JX5GSK4N8556/4b3kEeasAITjeCMBWq3IW
	rd8Gd01xoi
X-Google-Smtp-Source: AGHT+IEce98yak9gOUEEAV8f478oht3gyp/nFi/fv0TYVmXF4aE5SsLzQdDp3zKy+V3GJSQ3S2BOSQ==
X-Received: by 2002:a17:902:f54f:b0:299:bda7:ae3c with SMTP id d9443c01a7336-2a3ee428923mr168226395ad.14.1768227204669;
        Mon, 12 Jan 2026 06:13:24 -0800 (PST)
Received: from arch.localdomain ([2a09:bac1:6500:8::19a:1f0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a512sm179660615ad.10.2026.01.12.06.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:13:24 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: heiko@sntech.de,
	pbrobinson@gmail.com,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Remove hdmi_sound on rk3399-pinebook-pro
Date: Mon, 12 Jan 2026 22:13:00 +0800
Message-ID: <20260112141300.332996-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the Pinebook Pro specification, it lacks HDMI port,
but hdmi_sound is wrongly enabled.

This fixes the following warning:

platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error

Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index eaaca08a7601..a6ac89567baf 100644
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


