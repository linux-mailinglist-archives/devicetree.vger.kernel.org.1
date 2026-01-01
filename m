Return-Path: <devicetree+bounces-250880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C719CECC81
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5333A3002516
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C599257851;
	Thu,  1 Jan 2026 03:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="lyzF4U6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A726E221578
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239013; cv=none; b=aYxklHR6uH/VGottORDuyEju4xlnm+6llDiUEA0lDw3XbI7gd3AUsVAUIhgCkJdGF9TLhavO4VispCNdoYb1JXbpiC2oRS+txw4lwo6tQClP1C55gpDmWw/bE4cmAy8rcsmp5l8L++skY/E/owu8BsnuDxUgvIGANBEWRMFW+4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239013; c=relaxed/simple;
	bh=ZLfMQM/zQRMk9Qs8dR4QX9qp2U2KBNX8GnpyKccXRzM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m2vrDOFZFAcELgX4P/CSL/kzQFhLld+5quGDaztOQ4j6tFEAlB120psybK2hjDlFfNvMAsVfI5oMzfRmXuYcB1ubeMjA+RRqrT9guZBcuA3fABV/Rfg1tGOTJ5WvD1BuftYzqhTRvBG1IbK/Rc8bysyZ4U9gAH2pnfIGpGOarEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=lyzF4U6T; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a0fe77d141so123926015ad.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239010; x=1767843810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jIeA2KNOq3j25EC6hciLGLT0ZJhCWc6ylGKcYpLnhhU=;
        b=lyzF4U6TfyoQ6LhWsFn78T18MpO6fEyGd/oeqTCJd388hDQk9hFMy4Rd0cwSrJWVE+
         2NdE/23J8cU2MG6dZztcHwdNM5dpkKMJDkVraZqiMztY2WzTBiFZfyKkm38Ga2CHYrE4
         9izlZMyQKiV0kyJj0FsIzjQGo2PFXdbWDZ2BI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239010; x=1767843810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jIeA2KNOq3j25EC6hciLGLT0ZJhCWc6ylGKcYpLnhhU=;
        b=MQUNMAE1vrED+KMzhV/81ljrSLodL2BdoKu7EjmPteA5mPz8lGE4AQIBmGgpBzZyy2
         2HKFAiLvSv46dTTzZcdRGzkpoATJM5xauoEm1eqsmee9Cqpdr15raHafnk8EjEv6AN5w
         afWyYK0ODB1JXRtbK6kSm+wjsg0RSX0rs1j/4R2IjvWXZl1iKlEIccROMHMb4PS2QuMH
         Yw7V654NyyRll3fSJgQHcAEvlsYFZkdbvEMuDEH7MpedGG44dQkR88EKyCxHSBY45seL
         B9qO0YI0CD/T4MFYlf3VQ1LUXghFMzVcls9fTBFBk7imxqMIDJVDXQzWHc15AoLp7nzu
         JavQ==
X-Gm-Message-State: AOJu0Yz0Y+2eW/HTivGh+DZ7aMJ09q+zg+IQftm4AdkJnhVYwphWjIYM
	bGmuil9ijYtt3R7wWJTxjAmYmlTAS4zErLmfjgLTeEsGKnYqhCykwkwXQCIUCEJZ2nY=
X-Gm-Gg: AY/fxX7g6cPM7s1HMKd7nzqOtoSkcOcYwAUQNo+6C9Xg4cGJMBBa7umfrU/2HDrfXlM
	he4+XZ0DfB9fLEjU69c9KjUptYVtCQ64F1aVY1APvjtTrB9zLvrek1aSV69m1ttY+OZflshRifM
	W45ve4a3Ef/BUdPh7MuCEu4UZprR11k//4YbIJ4Wvj53rLsIu8zXy9lFEH96hMSno0IlXji4F6B
	BzHbqN1S478KkJTkWuhP6VtORus6fg9fjB252cpycvjQip7nR4lHB3jfmEgWwJTjisOSaH8mNVD
	GA5Ix5DG8ASNoF5MuSxc98g7a3At+C8RXV724cKwrgfLg3ulBg8plvWoyYpEt2M0fsODseu9MC/
	rG2Ru3vIOVjJN6eJ5qIc4PsrZQ9qBGbQh49QHIJVwnUZiSwWa50zRMfKefY7igBSEb/JuAiSnRR
	Yy4Z4SAdol2NzynTkLIX6JxLIrgQ36YRPRmktgM08zDmCkhzw22mx+
X-Google-Smtp-Source: AGHT+IHWLoj2dAsPZaFCTMWbBUjlUV2x4LqvvsY9iW6nKl/Lm6h8sT6ZFW0RZnH1hPW3hXhIU6VfSQ==
X-Received: by 2002:a17:903:1208:b0:295:20b8:e104 with SMTP id d9443c01a7336-2a2f2a5721dmr298948875ad.58.1767239010025;
        Wed, 31 Dec 2025 19:43:30 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:29 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 1/8] dt-bindings: clk: mstar msc313 cpupll: Correct clock-cells value
Date: Thu,  1 Jan 2026 12:42:59 +0900
Message-ID: <20260101034306.1233091-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260101034306.1233091-1-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

clock-cells should have been 0 and causes warnings when
validating devicetrees.

Fix the value and fix the binding example.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../devicetree/bindings/clock/mstar,msc313-cpupll.yaml       | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml b/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml
index a9ad7ab5230c..889419fba269 100644
--- a/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml
+++ b/Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml
@@ -18,7 +18,7 @@ properties:
     const: mstar,msc313-cpupll
 
   "#clock-cells":
-    const: 1
+    const: 0
 
   clocks:
     maxItems: 1
@@ -36,10 +36,9 @@ additionalProperties: false
 
 examples:
   - |
-    #include <dt-bindings/clock/mstar-msc313-mpll.h>
     cpupll: cpupll@206400 {
         compatible = "mstar,msc313-cpupll";
         reg = <0x206400 0x200>;
-        #clock-cells = <1>;
+        #clock-cells = <0>;
         clocks = <&mpll MSTAR_MSC313_MPLL_DIV2>;
     };
-- 
2.51.0


