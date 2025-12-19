Return-Path: <devicetree+bounces-248072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53933CCEA68
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52B90301E6CA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1CA828A3FA;
	Fri, 19 Dec 2025 06:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VcMzey2s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37D62B9B7
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766125923; cv=none; b=Fs3Na529oQzlj3x1Kt1QTQO3lMJqTfY64O+jWPdXeEZTMpXMLNVum6/XvP+v7AaRLEEL9CxbwLT4RoVFP1JfxCwE8M9Kx/6ZeouAj1hnSYL7KHminI8MNsaQ/tUfXPiJ4A5HKZ4jJ+kmtMg4jwTlwYIehoSkuIfe0ng/EnUgSMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766125923; c=relaxed/simple;
	bh=Sjzr76KVyyvwXpqvzn6KhHyoGoiOHJn0q0z55NM5Fz8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=g85ZlO3KP7cUnl3naFrrk0oVWuCe3Ha5jGERLPRH1BemQbf+ICtusaXzp3+rQlYkxYunJRPJf+w+8fzqLegiUtZPMhTVKcfeco2Ok3vLOmrc3PTpVCK1xqj/AaSR4SKNzAyUF9Bdmc8mrTT+snpsqbMoBL0TMAlyeLn+GnF4vns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VcMzey2s; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a0d6f647e2so22300765ad.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766125921; x=1766730721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ffCxZ2nFXFTlfxcGv5zSYTwlGZiMvXvgW6fCFKo5KtA=;
        b=VcMzey2srm1ZtPfGDtqaPumEl+rOSeA5f+a03ADDaEHzhfBCX+f1um7gNPn1iWfM2R
         x3HB3Bmlpf8HtayxAkA+89H+cN3b35DCERXLKqUrwWBQNJpGAdXSONd11C6FA21hGBWJ
         JleQwwyP5BEEpCibQ0NMxbH8HGas99cX6FC338E7qdBZv7TUwIHXF0/N1mMica3X0e9w
         FJnRSk9f0AiYvTOWUO5iUU77iA9m4W2o/HaJ+uwko8oubWsKIxdOgB6oVEVF9070PzL7
         5ycCmYzXvilEikerWPhbUvtphYiffhKReL7UB9Q0rJWurBu2duFQ4cP2x5I/vE5SnH+k
         hmwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766125921; x=1766730721;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ffCxZ2nFXFTlfxcGv5zSYTwlGZiMvXvgW6fCFKo5KtA=;
        b=o/z8GKTPgHeEmFefapVrXL5WXRWpZEUA/e6ImRt+mNerSV6x19pjMZYEH9YHphMaUd
         vjvVR4bLUIvoMjgg4cuCd3ayoXHBLYaXZUYXwE6Sv20ahOAUMK9qj+lMyKcsLasS0nqC
         875CPNpPAMqNbsgV4NKUdGlovFjVjfgNSChttGPqgywWkahptswIwvYrcVflrw8cANdW
         AOa9LIvis13sx+1HSkev1mHl60/F50y2vh0ILVxEQlDFSK/50KZimAfBuQIgCPumk1u3
         ceyWw8/O7hkCUwJiZsr0WcoaOL2y0GyKX9i/viZJj7nvP3tN72eJ2pBLgX8ZYwdlW99/
         3hlw==
X-Gm-Message-State: AOJu0YwiVidab9Zj/BVU373Q8jyLGqr54PdSNSzk/c48JZZa/uCJqF7X
	9WEkBau50D+Ji8ZBgwmIpNdVjBA2unscKkZQiEgxyXVp1+rnQkDF1P7/
X-Gm-Gg: AY/fxX73e2d85wfrySD98kI+fDlTOE7xuNAQ3320HIqv3vpamJC00eI/MqcVlEQYcsm
	9tbC0/rO4/8t5Xqf5pw+j4MgVwHt04DlXBXYMX5ZO/n3uoBYLLW4WQjF63UH2PZ4mUjjE1OAbGh
	IClpQOX9WVDVLF6k451LLVul5tLWPM7J+zFqI9bTPSyRb7MWquMgL1ok8h5PJWu+5SZB52eJeVO
	Ns6/PvkFZglGQ9oBnP/q42/LRtnnXWiZ+8EFALXIQEvGVVDkQKJVf456PJFdYzHepQF7NsfsM25
	SH9xLj7wDI/RnlGxvyTwO6RsnwozWYiv+ONLBU+fQYHx5z2daRRJHLbX9PhbVUECNDCv/Bd7UGT
	moFXDumUmhR/k0P9BQT2WTaCZtCFwcVM4aT2vAFftJ1tcKGmedNNYb7x8kFGOC01Tp+vz62d96s
	bzoAzHGjWRS78OZpezcIBZLXoWy0puiZjggV/2ZrnvIsw0o/1tvIfnqV6VybwPDSLoV7OqCxflM
	LozxhLwALhpCWc=
X-Google-Smtp-Source: AGHT+IGyFhky1G4hqCr+wi/pSF3CrrH4Dip8ZF3rUWremoK9ISMKxqO8TRKZ2xEf6hlUkzi4PRFAIw==
X-Received: by 2002:a17:903:40cb:b0:295:9e4e:4092 with SMTP id d9443c01a7336-2a2f2a41a37mr17259965ad.56.1766125921058;
        Thu, 18 Dec 2025 22:32:01 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c74490sm11679335ad.5.2025.12.18.22.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 22:32:00 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH] ARM: dts: aspeed: bletchley: Remove try-power-role from connectors
Date: Fri, 19 Dec 2025 14:29:48 +0800
Message-ID: <20251219062948.528824-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the "try-power-role = sink" property from all USB-C connectors.
The try mechanism is unnecessary and wastes time during connection.
Since power-role = "dual" is already configured, standard USB PD
negotiation is sufficient and more efficient.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index 7c27bf6bb51d..d1a04b63df9e 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -414,7 +414,6 @@ connector {
 			label = "USB-C";
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x20>;
 			power-role = "dual";
-			try-power-role = "sink";
 			data-role = "dual";
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
@@ -501,7 +500,6 @@ connector {
 			label = "USB-C";
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x20>;
 			power-role = "dual";
-			try-power-role = "sink";
 			data-role = "dual";
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
@@ -588,7 +586,6 @@ connector {
 			label = "USB-C";
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x20>;
 			power-role = "dual";
-			try-power-role = "sink";
 			data-role = "dual";
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
@@ -675,7 +672,6 @@ connector {
 			label = "USB-C";
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x20>;
 			power-role = "dual";
-			try-power-role = "sink";
 			data-role = "dual";
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
@@ -762,7 +758,6 @@ connector {
 			label = "USB-C";
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x20>;
 			power-role = "dual";
-			try-power-role = "sink";
 			data-role = "dual";
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
@@ -849,7 +844,6 @@ connector {
 			label = "USB-C";
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x20>;
 			power-role = "dual";
-			try-power-role = "sink";
 			data-role = "dual";
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-- 
2.43.0


