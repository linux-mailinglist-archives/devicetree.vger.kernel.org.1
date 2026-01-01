Return-Path: <devicetree+bounces-250883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 781B7CECC9B
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EE49303ADFF
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28741257827;
	Thu,  1 Jan 2026 03:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="UFn4bFe9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6CB257855
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239019; cv=none; b=Z9HEm4byPb40AtdOtLvC1zkeZ/Sa3hi7TPZi1elmTj9WhTxbzAl3A2U+QQEMYdiXPLkjLJZ8XmtH6xdh3SML/BzCG4tCauh0CV7Jzrn5cePR3vHtl9JL+GSxDvem6xvwS/T2V20/7N005dOVB06FFkH4/KpUJPhk4fTioe19SxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239019; c=relaxed/simple;
	bh=x7esWOn7p7IOWboFmVMuCYBkfY22HGxP8e2sDL5yQHo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mboE2GxTtjootUXurytCqnDqegceKbWzg8Xs4k4XZb72kAqaCHLw2/ymB5pkkfMqAefkDjwy4g4NnToGZCfNXK4cKiyGojlmqGtVy0VrbYXsQbqn4Qb2A18FMS7lA/Paydhg3I6bPsZDXhgnJKwtO5LsF/Bup1+DDspBPuaxgzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=UFn4bFe9; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a0d5c365ceso148882015ad.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239017; x=1767843817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CfA/CbhDb6Z2fvP1pbOmphPSTdUHIDS9WPfL/3T4NWg=;
        b=UFn4bFe9sCQa4UYwfvZwb4I9xB75fw+4KDvgfVPFnXmZ42keTP+wP6Vp20EcGatSFa
         JPDfTA6tO9j1xgBV2zWAaCrQ9G6HO298c08+gT4K1B0pQY8BsAEpoKXJrvNeR20Df3Kb
         mavMh6JWan3jZiihciDeFz9o9KpSI+5J81HP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239017; x=1767843817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CfA/CbhDb6Z2fvP1pbOmphPSTdUHIDS9WPfL/3T4NWg=;
        b=R3ca3QUZxKZuUK6ly6krOLXARYhJ67FI6wTTaaU50ywfzQMvoDyoXahN56KNMMa9//
         B0zMQdVAKxliaPkP4RZBB1hogLHqQ7sjvXfPVSh19BBG8Z7GxerX0fj1ar+0SKjEPMJx
         qBw2jUfH5VPqT8P0OLFE+/SseXl6qEP4sKbSUMSXakfMDMU1IFoSp3uuIFYeSjmAM8/F
         4J+Xp5N0EDHL+9I1tW99S57c2G8RzcEsK8VrXiPVYS/bFX6fAcfF6c5a63OAlFJAFDRV
         BuPWAdUXrcIJSUg9QIl92tQA8Ntqju1Nol9ALqTRDxj5BiTLffh2zYK65ucvJkaOpkat
         Lfjg==
X-Gm-Message-State: AOJu0Ywlh3E5IuLw7rd1vZP3wj4llLDYFZs0UU1thMap5pDyGNIQtigB
	biZxrojDx6p+uMHfVFUTMVTYq/62lU34LffAWY3pCrDZB0+8jHi25fCNxy9f3uGldQQ=
X-Gm-Gg: AY/fxX6cDnxKFv5P9RM97SaWiFpYz0tj6uxh9sGgbhaHEj4+iwKYWb0v2ole6Aq0GzU
	xwPvDYMFmDJ9PqtoMi8YwHucBgy6EgAIh2BHL58TPwt/K+mWW0abC5lh4ZWq2rq0Zl/k9AHqD5m
	94CCcgNQc30yWvFp654s2yfhkbI3Wy65f3IGd+oPNEOMujTy5+BR05qNrzftJafmJHy08EjXW0X
	3Na4vF3udlwEJzOiWvnPTtS8YCrsIkUXfc4ZUUzXxRUQgOzNC9fZsogGl9rwCqzMUNMplHiZJFQ
	iYzAeWLqDInHLs4G/G715WP7wkzMNkFPf9Ge5QBi7ZNv38OGYMLBzeV39reIq+oF8zjwOwi0ZSf
	LFKSGGrAs22Hr/4O3/qtqfebuzfgPhfE+3FfWscuMA41WqtWPDKaa+cUYnqnrHTeMJvlADAgkxr
	Ws+DrCWiSvj3zYKfkAoALmEL8m0rRyj1lsM/ko4pcuTLJOits+URCE
X-Google-Smtp-Source: AGHT+IG5ivYwNnKALjPqDlmOWulO/0XSWhu0KCN2LU+ZvUE01qjlIYvbQDaQH4x2zBE+8o5Ohayqdw==
X-Received: by 2002:a17:903:3c6e:b0:2a0:c1e4:e25 with SMTP id d9443c01a7336-2a2f293bdc3mr356242205ad.54.1767239017029;
        Wed, 31 Dec 2025 19:43:37 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:36 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 4/8] arm: dts: mstar: breadbee: Switch from "activity" led trigger to "cpu"
Date: Thu,  1 Jan 2026 12:43:02 +0900
Message-ID: <20260101034306.1233091-5-daniel@0x0f.com>
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

The activity trigger exists but is not documented in the LED binding.
A patch was sent to document it but wasn't accepted.

The intention of the LED is to show if the system is busy or not
so the cpu trigger is good enough so switch to that to clean up
the warning.

Link: https://lore.kernel.org/all/20210923065500.2284347-4-daniel@0x0f.com/
Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
index 71da10d9228f..0f03f471a344 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
@@ -35,7 +35,7 @@ leds {
 		compatible = "gpio-leds";
 		led-red {
 			gpios = <&gpio MSC313_GPIO_SR_IO16 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "activity";
+			linux,default-trigger = "cpu";
 		};
 		led-yellow {
 			gpios = <&gpio MSC313_GPIO_SR_IO17 GPIO_ACTIVE_HIGH>;
-- 
2.51.0


