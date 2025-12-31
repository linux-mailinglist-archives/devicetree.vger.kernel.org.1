Return-Path: <devicetree+bounces-250699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4ACCEB235
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:59:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4936C30993C8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3F82FFDCA;
	Wed, 31 Dec 2025 02:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="IZv8JjyO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8573D2FD69B
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149739; cv=none; b=Uln0r4h/njV0LklMu0L4dbF1X3QzBORvrNH5hr7ABtMGim1q9UujfQGQr1snC09uP4GHiZSxd5dRpDkwWltWz6Osv+B2q3cx5xh5pvE8ozEOxR+KTrisIXfmQQ4UwFuGXBLofwpUGZiKYrA1XMBNgcqZOxiRsfLBlHC6dgkRA2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149739; c=relaxed/simple;
	bh=PBQCg3+L6JLaXAGUjrgnxlhGB1/QTJ15Kyw40OFrIwY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HIuVzb3ZNmEAmO0qsiapHfDlIsRkbZmJDibYjuj90wOPNZodjRBkZknkq1vLeCBjXN9t8nw6lSnV3bOdPviKEslkJCc/EpxmA8BU1SjBTCuok9xYacSUkYC2/ZOsVrZXudP0RSIbNU6hTuP0fmc5NKgUPqoY/yv6eIcMOAacin4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=IZv8JjyO; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a0d06ffa2aso129147945ad.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767149736; x=1767754536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8nO95DWiLuK/HLrODAyEClEtcgPmdBbgclZ4JIKObwA=;
        b=IZv8JjyOXQid0WC4KpuJALiZcq4hRhZDkOi5ATfR5B/x5ajWNiA6Td5lZdmH2ywMUI
         EpzjkO+5nx3J4+HlHr5j8XZLNlx0AeJgbFJRrJoNncEVaR5T1GlaZprNnL4yFRP80p/q
         Fm2oCWMT0Shpidki5wMdTWF4+P8zwgzUv76pE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149736; x=1767754536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8nO95DWiLuK/HLrODAyEClEtcgPmdBbgclZ4JIKObwA=;
        b=Pvf74yJCZHkTO/rD8AhXy/HASPpxT06zxebxSJpxRn6YDxgvhH+KFFubhpy0gzlsjL
         vf2/AOWbGBLTfsdqlBpI8mu0gcFCv577x8Pdw9W7Iz8/w/etqCZPEKkJp6RMTYLh2gG1
         cpTubZcX3Xz3z9BBhUG/9qafJMF1ZereLEEbkUKvyOkOwaCrXbqBxBilHeWswxngOWUa
         NouafLaL59XbYLzzL4hh/CxHTdLrSV6b1YVuYps4b06UTZ2IJqNDHtSAdfktNekCUTS3
         alzytrVaz/4InuFJZ0YJAs0DEX5XP+veIbKjO47HCMJl/w+zFh94/qfYm8gFMufjtSU0
         iEEQ==
X-Gm-Message-State: AOJu0YytO1pxASrW75QpTbYAp5s5VNT9JtxnHClakpBDxGc283Z0Wf8n
	nnLtRWKvdaLVyTIlslEDAdWBld8zxqMJ0Z7zj2x4nNRxCK4MSRiNO5MUkehHgTgpnMY=
X-Gm-Gg: AY/fxX5kS1d/5ifljiyYuMpFzB6prejGH/aIKY/KXRVOFTc8ktrEKhk3SYjfVvLsZx4
	3EgZcVa32oXXREGlXfB2txAnktCQhnJcxicEXxtAKnyCViEv9PGZBO3ceauhEwD0lKJ/foauC/t
	QsrEElVsaeWZIdq73e0suBxlkoIH5Y4vr09QLPjS4YkRqQYqtrjmh9JNpJp1CuulxSVuDTTnaHO
	lTqZp5pC5fksI9s/upOGJAG/y7C9o9b++QaKj80EGClvy/SvIhnRpZDzivv6eThPzq7Yrgc80Jp
	wJU/d0bDJYDZ6ikaceXQ4Welp130GPCtmn/c5h8EpIin52FNcohcO9L+B9evfX+BBtfaiwc3zuc
	qN01Rmpny5FjHOo0XjuB9d+cOJB74Op7gQg9uqlssg4Z/StkD4V8c68P0utGDR/f0jFz3h97p7S
	LNSce4GkzK6RzD8jng1/3xwJVS5yAyoTYyZq2jyGRnfSJdAibs0V0f
X-Google-Smtp-Source: AGHT+IFs4DDdGoJSiyVbnLhxaEB44PpmmFvpZ2pWdTgqYBNiarv5JfqMMBMRBsjIs5SYY2rb91tgIw==
X-Received: by 2002:a17:903:11c7:b0:2a0:a0cc:9997 with SMTP id d9443c01a7336-2a2f2a3e022mr359025575ad.50.1767149736471;
        Tue, 30 Dec 2025 18:55:36 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d5d3e1sm307762945ad.76.2025.12.30.18.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 18:55:36 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 3/5] arm: dts: mstar: infinity: Correct opp table name
Date: Wed, 31 Dec 2025 11:55:00 +0900
Message-ID: <20251231025502.1139168-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251231025502.1139168-1-daniel@0x0f.com>
References: <20251231025502.1139168-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The dt validation stuff expects the name of the opp table
to match a regexp and it currently doesn't.

Update the name to match the regexp.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi
index 441a917b88ba..b7d15a3288ad 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi
@@ -9,7 +9,7 @@
 #include <dt-bindings/gpio/msc313-gpio.h>
 
 / {
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.51.0


