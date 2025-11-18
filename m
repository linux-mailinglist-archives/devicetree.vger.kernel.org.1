Return-Path: <devicetree+bounces-239741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 35524C68EF7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 435503684B2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024B234F262;
	Tue, 18 Nov 2025 10:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g/9CCKgi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DFB34EEFB
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463222; cv=none; b=Z+VKR/QuFLbugycJc8mE4hGk7tLOKcT2ktqfluHC3xifZb0MB4ru5PAeHgYDlxFZRTo/TTW9wjP8wI5fsLUBKDTzzuCWcIqmULpDXC/O1shbmjqSwDgzlYMMgb9n9jnkdR6pumnlNi33i/FY38aRTAdc92FCa/UwAvJQ2pbrvsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463222; c=relaxed/simple;
	bh=OEoDPVAl+S0COKkIlbVNnqQ2XcG7pPYJZgZLJdWqaeM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IIWKF0B2gLFvJlNiuUxEMw+OGUnEQ+AXfL+fef5MM1z5Z2j15MqOLe/B+V6XgfaW7uPA3YHk9czn+A3v+Ez1uF3WCXqNx9At6ohsgCSkVso638eR9JR2eRZzenIPrBtmmfSGlAHGOE21mal8Y4JCOirLb7rnpDh+HjutF2QERs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g/9CCKgi; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-299d40b0845so39939595ad.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763463220; x=1764068020; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHVbT19SoV5m4YcosKHhTcv+qnuVQe5xO2ZctZWhciE=;
        b=g/9CCKgiCLa7JkBKuXF6/Ffqm9mpoSc3YHgPM9bfFFcuPAHwo/Aie4DtjfWhoOvxiu
         kZKYomqHgthdsnZl7nIHWPQean7zPTEGan4fASM3oj/WMwAB0YE8OZdvs7t4pX9nrGOU
         K0oIWS7bITkdQVf1lEws+Fad8XkBGmrMKjezuHHrIkRNuQ2c39LQAG51eoRotsPASTGC
         l+hyrvd+YdmIq8DWYdR7iVsYevHvF6NZykDcO6hoSkO/2Q07vDav3J1XL7PtoJASZ8oC
         LFfT33MCd2VTATatxCSboLwoNsTDw7+fk/EPWVbztMjLXzV4EWDzFoykN4rIUYD8Rn/U
         BEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463220; x=1764068020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CHVbT19SoV5m4YcosKHhTcv+qnuVQe5xO2ZctZWhciE=;
        b=bS4qno9JNmPcD/YrZ/u21y0a3MOC8pNLw8KU2AGu1uLk00A4pkNbny2rpMWrZF8Dnj
         2P3I+IlvtzE9dPAzd+ftbOE3EeatduRaZBMkvnJbxPHIsZ79iDlP68CmiNT77qFtU498
         +kIc/QhRsWbDOzGIZwSwc+OCa0viibgHKDgRW1iNCFAzQajBW8fRKQdo0wlkYULAtpPN
         8q1TExMwi5XwJcaaN0W9iFvzmaxyFZm2wR+9chGVHmp1U8pGDeGdku8W5mF0rcxjzDh8
         aaHiIljALrbDJaCa4pnEbVe42utF0f4tHfx1/78sNZGKiYN8cuwK5fiKz7YZAXgpyf5I
         dz6g==
X-Gm-Message-State: AOJu0Yw9MsIZl4F3is+e9GJFvH+Q8HQwsxxC7QFLDiRoXo3IYhxnNDvw
	O9ZcGHnRdl0pDwgWWz9tiudzpYTtcOsV1IiBGiXuvJizt8Aof7pe44kc
X-Gm-Gg: ASbGnct+90fgPf00V6GtJFm2UvlDAgGnsDQMh8kkd61jGe4FoBKj7VpH3D4j+UfI4iP
	EN4aH8qQCdTTK80yOnFOff1WCmRqhksnZZKlpmmQsMTe8vUNQqF+XMTn53UVfzm3hPfMXcZSg9Y
	Pz24S5/bptTgo2Mcp+R5sVpI/TINO/pY67ogCjC8kZ2TdqESmxCqTn1v3qTjdChNGe2b/IDyHtZ
	M0aotIwYIUv7mx4onqz477M1MsQQJvmQ20q3PlEeWEpEbYnGvzAH64Pj+CDLk+4TlTMPeAFlhLD
	6P346rpR5ZUc9y1HTtDUrfB0bi4MNVqEmFZ7TPzowVjYrPVvemZ5sN5zWSKMgzLI6mD0h1i0tS6
	nGiCy8VPYAkGnEjxEOBdmv27vuCF7TcsTOh/ZUH+yM73yMggOAD9lHruHczTYQOg7HUi2FGYvNy
	x2Qr/syIJ60VFArxv/SKoGnu/oTtbE9jQALDRKFmAmo2Z9AseWZLCdoPQjrr4nh3m9REEOYfXvW
	dllBWY1hCVCzio1fKeFTYh/KJ9Lyo/q2Q1dMm9RBnvSpccF/WFfXGg5hFr2SUv1hwyLtg2ho7To
	MkrElanZQw==
X-Google-Smtp-Source: AGHT+IHtRhbx1WQdiUDG5aFG9T4qFsxGHKIp2R0JtXKiVt8V59WsATTy92beJIoZk8kXpFVbidfKkA==
X-Received: by 2002:a17:903:2b10:b0:297:d777:a2d4 with SMTP id d9443c01a7336-2986a752800mr183541415ad.46.1763463220093;
        Tue, 18 Nov 2025 02:53:40 -0800 (PST)
Received: from 2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net (2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net. [2001:b400:e30c:5507:a914:c4dd:879:41e4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b924be368bsm16274111b3a.9.2025.11.18.02.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 02:53:39 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Tue, 18 Nov 2025 18:53:20 +0800
Subject: [PATCH 3/3] ARM: dts: aspeed: yosemite5: Rename sgpio
 P0_I3C_APML_ALERT_L
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-yv5_revise_dts-v1-3-fcd6b44b4497@gmail.com>
References: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
In-Reply-To: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763463207; l=877;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=OEoDPVAl+S0COKkIlbVNnqQ2XcG7pPYJZgZLJdWqaeM=;
 b=4USKdt1HV3IaiPmMl+bPEbtszHgor0AgWJDbq4gqBruxhvUo8q11T/z4s2G7YCnQuS1soGZLw
 /YGhiMgDbX/DINgsGqQnz5J9GP4ANI7VTQb+UhQKnY16LLvQDl8qHsK
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Rename P0_I3C_APML_ALERT_L to FM_APML_CPU_ALERT_N for clarity.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 45b8ac2e8c65a4f672e64571631b7f6944f26213..060757b7211a6da777c51d9f0c886796cf2450a4 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -964,7 +964,7 @@ &sgpiom0 {
 	"FAULT_P3V3_NIC_N","",
 	"FAULT_P12V_NIC_N","",
 	"FAULT_P12V_SCM_N","",
-	"P0_I3C_APML_ALERT_L","",
+	"FM_APML_CPU_ALERT_N","",
 	"ALERT_INLET_TEMP_N","",
 	"FM_CPU_PROCHOT_R_N","",
 	"FM_CPU_THERMTRIP_N","",

-- 
2.51.2


