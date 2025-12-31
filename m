Return-Path: <devicetree+bounces-250700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9896ECEB23F
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D5423031A3B
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405C13002C8;
	Wed, 31 Dec 2025 02:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="hARDrP7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6146D2E62B5
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149741; cv=none; b=cNWwtaPLdqxN5nhWDh+/5KRKHCxNTvcRgXCuJD4dtTmMrwD9kmrI1wsqYaVcddNdS73pe5cqlS8MxRxpofbm4EX5kYtIr9h4VB7kSoa8VZ4S9RVA11aTRSXaGMOhWlklghyCd9Bk9bQiySMA0MO2NryTMvy8yRzUkWYqWlg7ETg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149741; c=relaxed/simple;
	bh=lQfu9dd32r/M/FnaUnwBLlapdfth0jP45zLEDLrsj1s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iyub+pINAV8hntIOh4Tt3/163jsnTV2k+wgWya0bFP9KZyNlb5E+jBD1eZY0TclmMjfIPGJX/x+HPM+zkw3279meIJGTivhZpkGuhCK1R83YaXBI7umZli1MzgmdecVY6pUWXivUkGF0DYLEHbWsJwvX4n/3MBUam4mD11HzHK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=hARDrP7f; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a0a95200e8so90578685ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767149739; x=1767754539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5H6KXg9o2QtM55dEd8AiNf+pVaQWGHEPICjIkw8m5C0=;
        b=hARDrP7fD/0xobrLLNNLF+0m4mZTMbi6L0jV0zBZDl2zE2EjL2888siXyZrdLzGIx+
         hC6Fuq6jttlY2DAgOKmhzVunk5pnVLtucJ43vigbdORa7Sd7WGsznv1QmK5T3fYpciAC
         seDsZo25umuWTHO21qynIBiPw44uyDBJEYaJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149739; x=1767754539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5H6KXg9o2QtM55dEd8AiNf+pVaQWGHEPICjIkw8m5C0=;
        b=j3bvfIEngMWOe3suR2QTs+60SqRq3yf0G00KfHvK6EXmjOONS7O39Q4kA3DTjHiGPo
         cJmkQVcn1ZjVa7+5h+Lx5SUZV5tHSy0ZAHHIRvltaBTZOz18fdzE02KYHmlx5tHwHlt8
         EycKruTTgs0+3LLwTIfCxrFVOlk3AhChZ/sbzAhGsQmttaWfEgnAXVEVIrXi/LNUkTXH
         xKJvligj9J/KYdqHstQZ9nz+ajicdULJti4A7jk25Rhu9nZIpTQD5q3Y+TBYPyFAYPjL
         JnjBtQVQxXJI8PcC0zZJay+oUUPaUDVSycKgN8AZk3j5oFOkdYHy3VRJ95BMLOv5r1pT
         FLNw==
X-Gm-Message-State: AOJu0YxsSfd1DfqlfKL7nXWBdPW9y4P2yhXMcxwfO3Sk/ssILZqZyjU/
	I5kGR0MTrYRvyMTOsu1X0k4e8YhF2Op/rSzUfxS0dtm21eFlGadSZJw6SO1XTzPzJGk=
X-Gm-Gg: AY/fxX5LK68XsUYv9JENwTGTaA5cEPGAJjH0otPVfPCbKVzPAuqAg7BhtbrBImqYgQ2
	qCwOTJEdXqCIVvZdEmnFaRiVRKTKpCMU9ly6+DEYWjjYoZ1T8t3xTSfUf5ORM/2PYNBKuXBU0UC
	XV705BOhi0+W//smgQqyFMzteR2N26VtlvwmslutYxJtUytUKiL/8DuX1jWTPJWkEHRBIsu0kgJ
	svgL7Re1ERJm1NZS+NvP1n32D7W0+ss6xSNIa0ThFJMyVUGHXjBNazyvHo4qIkBU4eOs4kYYu/T
	9wuu8ByenDaqgzaKFoh1W0kD70dK1fZG7Q2ElYcrbUX4BZtaz10MFUfkqZx+VEnIAGq8uLIy2KV
	7qNbFxW3VbNjo+/8SThNiyUe8aXKzyOSvMoRsceX7Mfih6FO4q2ySGUObm0rLcHoGi0VhjhmwB/
	WM5l0nZLyAtHkb8gaNPiJ/8zBoQWDTwAmSBkNW6HNnj8+ZEZUvLnfM
X-Google-Smtp-Source: AGHT+IGNZWmQD+37d10BuOX8nsQ+wmTlSI5nVUSJjKMPtoRhSKCQeiaZCOWCDQHE5uljxYAncU1GZA==
X-Received: by 2002:a17:902:f60e:b0:2a0:9028:11af with SMTP id d9443c01a7336-2a2f2a41622mr349634425ad.59.1767149738625;
        Tue, 30 Dec 2025 18:55:38 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d5d3e1sm307762945ad.76.2025.12.30.18.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 18:55:38 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 4/5] arm: dts: mstar: v7: Move the reboot node
Date: Wed, 31 Dec 2025 11:55:01 +0900
Message-ID: <20251231025502.1139168-5-daniel@0x0f.com>
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

The reboot node is currently inside of soc and that makes
the dt validation stuff complain that it wants some properties
that don't exist for reboot which is just some glue and not
a real device.

Move the node out of soc to fix the warnings.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-v7.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
index 3eeafd8c7121..db661e189eec 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
@@ -73,6 +73,13 @@ xtal_div2: xtal_div2 {
 		};
 	};
 
+	reboot {
+		compatible = "syscon-reboot";
+		regmap = <&pmsleep>;
+		offset = <0xb8>;
+		mask = <0x79>;
+	};
+
 	soc: soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -105,13 +112,6 @@ pmsleep: syscon@1c00 {
 				reg = <0x1c00 0x100>;
 			};
 
-			reboot {
-				compatible = "syscon-reboot";
-				regmap = <&pmsleep>;
-				offset = <0xb8>;
-				mask = <0x79>;
-			};
-
 			rtc@2400 {
 				compatible = "mstar,msc313-rtc";
 				reg = <0x2400 0x40>;
-- 
2.51.0


