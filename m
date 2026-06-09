Return-Path: <devicetree+bounces-309177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zzx7GeM5KGr1AQMAu9opvQ
	(envelope-from <devicetree+bounces-309177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:05:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CA4662213
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:05:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=g6I8d02s;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309177-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309177-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3AF4F303D880
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5597495534;
	Tue,  9 Jun 2026 15:54:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0994963D0
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 15:54:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781020492; cv=none; b=gJIFOKV384e8GdB/S+nei7eYfQr4P7c7MRtqFcM27+U8AJKoNUFIlQdwiy6++dFYHVIv2RhdFbJtutEA6BVwdD9Sdhl5TQy6LgaQFt3ptGyH3O2rswdxwKdgREj8Y1lccyBxc5Z1vKvL3DnLBe5aPZGvx532ASbDHPrSDiK+mno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781020492; c=relaxed/simple;
	bh=9SF/jX8GOiX2deBZMN+oVb0daB6JW8wK1yNsTM/SK2Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Aam0ciCTn0LYEG6tzykfMl0oCCpB/lqIwqfsjNy7/l7LgjfuoDKATsA78AYGZbUzrsUYAKh2tk7vVU4tOYbGqmFhBJdRnTSm697s/oKgSsydCz1mgPZsFyGVgyrR6avvWyrsaHAr8AgMBKUew3SdUVeaM+YN3Bd5vszf1w3FA7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g6I8d02s; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-490af320e2aso62506875e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 08:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781020490; x=1781625290; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aWwFGlSUcw639N/YKTjCDkqA0Z4pIkuOoAAVpcehPeE=;
        b=g6I8d02s3GXTsXz1IH9xywGoHpwKbaFwaVyIK6GkThumZcpzIxJkmDbRHdmhFuPPi3
         nnhZE+zqaNpDG00d44Ett9+jNoyE5WNqe/LVSJvctHCY1PDuJ5FtW8e+jlxExk4OP36k
         UqdexYj/ezHWQJGxKD3Lcfjx5JQZMnGJEzclcK6VnpNJPjYGo9PkwOrJAK6K3Yskq5vr
         M4R5E1MNncOea4rHz3dRqLUFWZVVReFEqTBvS0dMYUnqHpJxHY8G+rUmXfGL7P9wbI2t
         zjL46zsVxlhdktUUxGKMXNkibb8qkhPLWIlwZZkji90dAXQlHXjca135qqka9dxIt2Yy
         xDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781020490; x=1781625290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aWwFGlSUcw639N/YKTjCDkqA0Z4pIkuOoAAVpcehPeE=;
        b=ssXk5EIovHqKRTYDDHbm/NWl6d1nNQZoDzBDVu5n3TI3Le3avGBgZFT9uJQ6SYr58s
         538F/zuSTh2MIr7jo4gw4uSPEJQO7jjzpI/1NiJdapRiw92z7x8qrakuY2Ju/z3rs61E
         J218OpXPwJNXMLvx8tt99zNelF9BF0w6OZ12+ly3kOjNOhTIRd+KULFsGQl4b7qK8gaK
         uoCwtP7p08NlQ9Zeagv/NvfgMT/WyIcV7+6wfv1ox0peTCLCZgUDkWZHH2JCfG+fGwWh
         9G3Zx3jq7izL3i9/Nj9CEGHQSn045aUyY5BW7vYYdqfE5dyIlNfsA15cZnWuTowHvVR7
         3NzA==
X-Forwarded-Encrypted: i=1; AFNElJ8waxk8MNdh4HvyYmaBfb/ZEdMu87g0kS/d8+UaeWqt2wCncgKz3sA/Tbyy+33ZycZqFZ0OfCzEnDgr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+v3EBrLBMLOPuvucTk/eL0wTVWeGZLOz6FZoGHmLvXsagB2it
	ab85HbjiDWc5ZC4O+sFmkz4QoCRX1aKD9QkSTavft3mXXymdlAcjRLhH
X-Gm-Gg: Acq92OGqjfaN6I50x8/P/VSH0vJquKzoQ42kxo1eZF48yHM7eV4TBW/0JneFY1pj1kh
	UlCfVj2QOXHPf6HhvRIm0Q26Z2cSuQBSc8Z7WXlA7d97VeM9lNQwKnpMGZ3nSihZByQFoTYzh3S
	jQvVlJWAgexkzr2pSH6AXKaZmwn94MAe+a/Tqlo0engPSfuhqyGgCtlOgdddQcr8fkSOQiZcbCZ
	lQcxFw1p2NM0tItAmqzTtQPXop6nWYRCcQNo9y0lHfH7G/tKpZJ2lklO1o3eFVclHCVjuDw6VLO
	FQolksPH8VwRMchJjLF+gWHJ3ctmxemRzy1MNmoQx1pfGaiJhWuyz8TOLGFtQPzp5oPPSYzI6bk
	9McMfPfs2PbyIrUf+SonHZz5bYM0shMdlCs+WgyzgbjS+0nK6PVYZl97y6bFkBXBmKzAh9levV4
	Zd+zMRTQ+iN1U8ervapQbAnksR3inrN4HC5+OdBwknMoIC
X-Received: by 2002:a05:600c:458a:b0:48f:e518:d110 with SMTP id 5b1f17b1804b1-490c2614beemr300545925e9.32.1781020489356;
        Tue, 09 Jun 2026 08:54:49 -0700 (PDT)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc3d663csm545506645e9.11.2026.06.09.08.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 08:54:48 -0700 (PDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: openbmc@lists.ozlabs.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com
Subject: [PATCH v3 1/2] arm: dts: nuvoton: npcm7xx: Drop bogus FIU reg-names and clock-names
Date: Tue,  9 Jun 2026 18:54:36 +0300
Message-Id: <20260609155437.3285042-2-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260609155437.3285042-1-tmaimon77@gmail.com>
References: <20260609155437.3285042-1-tmaimon77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309177-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@codeconstruct.com.au,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08CA4662213

The NPCM7xx FIU controller nodes only describe the control
register block and reference a single unnamed clock. The
second "memory" name in reg-names is bogus because there is no
matching second reg entry, and the clock-names strings are
redundant because spi-npcm-fiu gets the sole clock with
devm_clk_get_enabled(dev, NULL) rather than a named lookup.

Drop both so the DTS matches the resources actually consumed by
the driver.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index ab3c3c5713ae..83cd10b47273 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -191,9 +191,8 @@ fiu0: spi@fb000000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xfb000000 0x1000>;
-			reg-names = "control", "memory";
+			reg-names = "control";
 			clocks = <&clk NPCM7XX_CLK_SPI0>;
-			clock-names = "clk_spi0";
 			status = "disabled";
 		};
 
@@ -202,9 +201,8 @@ fiu3: spi@c0000000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xc0000000 0x1000>;
-			reg-names = "control", "memory";
+			reg-names = "control";
 			clocks = <&clk NPCM7XX_CLK_SPI3>;
-			clock-names = "clk_spi3";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi3_pins>;
 			status = "disabled";
@@ -215,9 +213,8 @@ fiux: spi@fb001000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xfb001000 0x1000>;
-			reg-names = "control", "memory";
+			reg-names = "control";
 			clocks = <&clk NPCM7XX_CLK_SPIX>;
-			clock-names = "clk_spix";
 			status = "disabled";
 		};
 
-- 
2.34.1


