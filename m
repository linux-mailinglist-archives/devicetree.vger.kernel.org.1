Return-Path: <devicetree+bounces-274329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GG4yM7TGsWnvFAAAu9opvQ
	(envelope-from <devicetree+bounces-274329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:47:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC3A269993
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6712030936D7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657522DF719;
	Wed, 11 Mar 2026 19:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RhKcQYAp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C6E295DAC
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773258347; cv=none; b=O3izMeT4xMDhDPYnOHjTdPiNyAI0nH+4FMhOaAWqIPYyaq5E9BCzU/YGOSd7QogfNfEPRTEADSln7yu4yr9g0as1eNZJ9F7BtcjsF6n7JqzBU3tkfo5IAKPLVc3Z/Nv6+afq+N2y1+0laan6k56sY9CF/tq6cDkMX8fPZdXYxIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773258347; c=relaxed/simple;
	bh=VwQ56VXUaPri4KW77dpEQUYsi6yUrAih166WCrpBKTk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A2btqSe+1GZoUeaoggLrIhmBml69Mmy9aEwGfSVfZrxC6ExWchf6gt57tYswKyDqsp5vdzpaqsE40HhOtCEShMgbsrCioKw1A/tYI/WiArlYo2jcZtADcQNeb01Yy6kXJ2N+Cg5RAb3BWEn9G8jSNQdoBph+Oqnr/LGKRYu4FAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RhKcQYAp; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-128e4d0cc48so310703c88.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773258345; x=1773863145; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i1uUn/7K9WlWtyyo40gm+4/cEvjyqXdggwfumhJO2Xg=;
        b=RhKcQYAp/d4i27uiOoywCFdDoFJz4aDr8HI05def/NuCtifB6Ydtqhav6hKi8RUsBL
         WLUiYZf0KsJ9scCdcNhsS7eoOu7utx2dRB1mH73KjfXATZLY5+X+Gx/jAzhnx9HxJks/
         jvOYwXSs9KbcsejTV2ERpVqCJn/IL+2hjM+/l+fzhuVutGOuPB0BLCkV/LafIh5RtzPG
         r4m7bxg3SsZQlmKhDEVE9UJMpeQVq+/6U0FZHS6bRQ5qCBbRolvQnqZ6Anw+FjOMz+HK
         BWlrfQg6Gi7yN2sDydETYQht7wvNohD8ZneEcHKF4o4F0J/w9p+rUZfD4EGwuGDWqq3L
         jbpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773258345; x=1773863145;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1uUn/7K9WlWtyyo40gm+4/cEvjyqXdggwfumhJO2Xg=;
        b=vDP3xn/i1zfn6Mp4XEWzkBSPqKR7spo315B9UJYK22WMKvphj1qJNSZDbmB0+n//hL
         Mua63KGqbgguS1Ndzx5XFcEirFBYWxnfrEE1U7TBfozjd68pIKxxwjDSr1mFB50ZYmqr
         WIoYkYWQKs0gcJPf6fyCxUMFK0Rc2xf52Zu82NwFvP0/Q1qZwK2ajpZwEYn2q0OQBZ6u
         KeCcHZG21RAs9ixaCTcU1WJsOTFwdjWj9gzDQzTcEg1SIczkISZJt86aYilR9Few4Q5n
         HlOQu6+N+TW0rFmQLY7B1cs3HSL4D6boxatE5/bv9cpxvclEzR5Rxc1huQ0VcJ5/fGmd
         47Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVcmmZ2wvJXtGcGRBJWXUQYDuE/BTKjBLkhEyLVU2QtLmDiquAlETWARtczMx54ml3DKsxjh6FJLEHx@vger.kernel.org
X-Gm-Message-State: AOJu0YyoM2D9XQY2IMeeqgprfKfOYKv4s9OUbN9toAaOizpBxPAQi36G
	54OJeokpw4zXDUHR375Qax4LpIEuUh3+YLLdoT139DIKopI4sq6pSKBxDP9MpQ==
X-Gm-Gg: ATEYQzyUJaXU5bYS5CLIMYzTgcAxmxzdyOihf9nhc/YhWHltm1tzQRRBeS8UfuLD6Kt
	fU28qT4POJJrhlPmkAYg3GEN2j0eEOSn3wwK17xlJGi85rmnCrJIMGYZntmLNPdzzkmAPysy2PD
	dA2BY1hq0UUYTCeaDl5anlpWyMWiUNPUw9Dx+oZAHBoQ/wGjRCnA9PzVIZdSJFCaQXkiCajX3So
	Rj7/l/mFLQKA42u6Tcpi24hYiiJu9ByclEb628p/TwJ9ncAxYBkaqaqjyCvZ+zANQmPNZqK/6WO
	9SQsHNhNw3Khs9xi5M39GX7lAZOazsEHJQZkUg07q8sQqo+b+V9Ek+RZSDYnx+oErgkLPvwya2/
	FSYKX/E7nBQ7M82nDB0lsjnNRBcB30EOxk+i6ZbXoDU6H8//oSrIdXipnFkXlOVjefZwBA+nnIj
	7dMnsuoBlmk82/U1J27IvB+iyhBZq6lyM7TWEh5WDy+YQHrvmx0zDiq0drqVSNbhF+a7nSDQ7IT
	kxtp5KW
X-Received: by 2002:a05:7300:dc87:b0:2ba:6a79:f04c with SMTP id 5a478bee46e88-2be8a2ea792mr1389351eec.18.1773258345011;
        Wed, 11 Mar 2026 12:45:45 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:866b:f519:b5db:1242])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be8aa96fdcsm3739660eec.30.2026.03.11.12.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 12:45:44 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: johannes@sipsolutions.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	briannorris@chromium.org,
	Frank.Li@nxp.com,
	kvalo@kernel.org,
	linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: net: wireless: marvell,sd8787: Relax length constraints
Date: Wed, 11 Mar 2026 16:45:31 -0300
Message-ID: <20260311194531.70441-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,chromium.org,nxp.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274329-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7CC3A269993
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit 31ed9d9d71ec ("ARM: dts: rockchip: Limit WiFi TX power on
rk3288-veyron-jerry") added calibration data for the rk3288-veyron-jerry
platform. The commit message explicitly notes that "the length can vary
between hw versions", as documented in the original text binding.

The current YAML schema enforces fixed maximum lengths for calibration
data arrays, which causes dtbs_check warnings for rk3288-veyron-jerry.dts.

Relax the constraints for the two properties that have
variable-length data in this platform by adding minItems based on the
actual data used in the downstream kernel:

- marvell,caldata-txpwrlimit-2g: 508 bytes (from rk3288-veyron-jerry.dts)
- marvell,caldata-txpwrlimit-5g-sub2: 744 bytes (from 
rk3288-veyron-jerry.dts)

The original maxItems values are preserved as upper bounds to maintain
validation for other platforms while accommodating this specific
hardware variant.

Fixes: 25f855413885 ("dt-bindings: net: wireless: convert marvel-8xxx.txt to yaml format")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/net/wireless/marvell,sd8787.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml b/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
index 930b700b73d0..0d5b4274f151 100644
--- a/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
@@ -37,6 +37,7 @@ properties:
   marvell,caldata-txpwrlimit-2g:
     $ref: /schemas/types.yaml#/definitions/uint8-array
     description: Calibration data for the 2GHz band.
+    minItems: 508
     maxItems: 566
 
   marvell,caldata-txpwrlimit-5g-sub0:
@@ -52,6 +53,7 @@ properties:
   marvell,caldata-txpwrlimit-5g-sub2:
     $ref: /schemas/types.yaml#/definitions/uint8-array
     description: Calibration data for sub-band 2 in the 5GHz band.
+    minItems: 316
     maxItems: 750
 
   marvell,caldata-txpwrlimit-5g-sub3:
-- 
2.43.0


