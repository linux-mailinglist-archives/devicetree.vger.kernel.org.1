Return-Path: <devicetree+bounces-309237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I2BRNU5EKGpRBQMAu9opvQ
	(envelope-from <devicetree+bounces-309237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:50:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4AD6629B6
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:50:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=EgytfFbC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309237-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309237-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1E95A309EC4A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2DAF480967;
	Tue,  9 Jun 2026 16:39:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE5B47CC74
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:39:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781023174; cv=none; b=qX2CnT8SsJ7ZivpR1zUjdAWQRG9FrOhqmqqbhOS2CXvAc7uH3E132kUEp+wcUNdU5ixhWf7rIa6SNciyFnNhPB8VbLzVJT5r4qOttaOI0tmqkKCTvtfro+OqIgtlJFOa/o3PB6vbK+5np3rpZ7uFqk+pQ1wrI+U0fnfMe6EQ62Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781023174; c=relaxed/simple;
	bh=OpliSXEf6ClkOWJWl4do4W3JZ06bMKfHQs73OZhh8FY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ug0vJpDSQOM1EnJXmSz8tdY5844k6GZeiYWwQgCu/ZH4ztCEzilRipkKWyZ4OwMRQUvR5KcpOVoY4W0VlwtMGzQEv+nqYoFTlNRCkB295LgUPvQ6wOA/qrh/NYIDMnx822+kspJ8dIuKO2Ka/1ogkjARYh14rVHlsvnMtzBfeVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EgytfFbC; arc=none smtp.client-ip=209.85.128.50
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-490ac10e337so50530945e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781023172; x=1781627972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IhKTkY+fAoMNRjsm960hiVmd8n0Q73fNbvw+JMhEZdQ=;
        b=EgytfFbCnEv9XryQVJSDIOIjIk6oqPM008xNWv+nFie+pqwDIVyuc80qUIL8epHqMb
         ygjTZ724cZ1loJTemyjM9AH0mpkkFJxU2eFHuXmxWdG4b6IUUpNXAoGgFgbZchFk3FGy
         8hzuJync20O2rhIKOh6vEcxxfhzGkl63u2s6mgthatUrSpgXPT7T1cXilZfI4M0hneoX
         nqwHxdkSZKo4QPpBGzHamOWYa7ipmJDyC+TZlaSJ11BZ5iordKG5WuMORAdTfN1bwUAu
         kszrfKufDBS0KU6Qb1xXtwsZ6l/SnAfzguYuQwYXhm9yNewZhon10q89J9NOtBGsyXYW
         q/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781023172; x=1781627972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IhKTkY+fAoMNRjsm960hiVmd8n0Q73fNbvw+JMhEZdQ=;
        b=cNBycdtxLknYM85OOMHD/XylNaze/9HA232H7M4z2qmjPhaG6QOV263coO2Jq89XXM
         jF6+O/u8em9gQhKkuOyrZVpVHR2MUNpnuP58XDxSFoBpfS6lNeRmj/EyF8JpIzi5b3NK
         t2sga8HSvVd/T1iM5VofwZDRY7AU90V+lSx3TxO8DcmhJ62bBQy2uWsFT5JXaGj6ogAb
         JV2qEQuTU8LWhC7ZZ92lIXwEbjyVJomiFmI1fOWoF5Ozyr4bt5EqRKv/qZCtR5zeUT6l
         eCE/PpeKiXyt13foSPmyZbAHiWG+ElNRv8XvEs/ZVvmecbqoMVCCHSuFKVgJq2VkVPre
         D0HQ==
X-Forwarded-Encrypted: i=1; AFNElJ+GNDCsJhqU3XvsnkCBquXoTidkf8ZZJO5B0/wxcfT7phu0PTlAMqynSLHR01Nax/6HsYm/Y9rB84Vb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxgq3TRv5ZImYvsZA5WEWTt+lG43ABtN0p0+F/TiIHGN+OK22AG
	m11Dw8RBrbvlFLedSTsrr4RuRljELGPFE1CI55NP7kZDp7pJvi9uuUw+
X-Gm-Gg: Acq92OHWuvSzpjbsa8rGZx4WRUiAN23zCD2I2tYkVlaaEDaf1AgFmflPe/GN/PY9PTQ
	4hp5gVQWX64XyTt/HHPARzQfUVeBsHH8j17tq1X5Vm72Mw+TuimUPYOfCKiwKjPZBh4PmKMruHH
	8zsTml2Bqpv8RCOWDF6uqLGnoGEACRRu00YccyVNfuZOdxcZBh3qvGryT89UWztKlGniz3U0q8G
	OLNR9BWlPmYmYEfnagY4ssYBMTZW3cx/JD3PwHFKJP9RDNrQjJ+nz+xctKFzxM7qO7uLt1fPnbj
	ScvjJ3z9Mq+hJpHugjOrUXLsMgXiQjXttYrPHAxmrXmhzVvl61nFShpqmVJXUB26FnQ54t6n1Cw
	ZhH0AE8lI6UCbBq2UeUai+sFg1vQ5qU/9XsBGHbzkBWc/k808KZmSVUeqpPd/RovPqE3iskJf0M
	N3W4J0B/G47M4gxYzWxW7O4fvBoszqQrzMw/tZb14r2gBP
X-Received: by 2002:a05:600c:354a:b0:490:ba0a:1178 with SMTP id 5b1f17b1804b1-490c2616e16mr347140765e9.28.1781023171627;
        Tue, 09 Jun 2026 09:39:31 -0700 (PDT)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490c2d2d11asm440860805e9.1.2026.06.09.09.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:39:30 -0700 (PDT)
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
Subject: [PATCH v4 2/3] arm: dts: nuvoton: npcm7xx: Drop redundant FIU clock-names
Date: Tue,  9 Jun 2026 19:39:18 +0300
Message-Id: <20260609163919.3321228-3-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260609163919.3321228-1-tmaimon77@gmail.com>
References: <20260609163919.3321228-1-tmaimon77@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309237-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@codeconstruct.com.au,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
X-Rspamd-Queue-Id: BC4AD6629B6

The NPCM7xx FIU controller driver gets its single clock with
devm_clk_get_enabled(dev, NULL) and does not perform a named
clock lookup. Drop the redundant clock-names properties from the
FIU controller nodes so the DTS describes only the resources the
driver actually uses.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index a16450abea0e..83cd10b47273 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -193,7 +193,6 @@ fiu0: spi@fb000000 {
 			reg = <0xfb000000 0x1000>;
 			reg-names = "control";
 			clocks = <&clk NPCM7XX_CLK_SPI0>;
-			clock-names = "clk_spi0";
 			status = "disabled";
 		};
 
@@ -204,7 +203,6 @@ fiu3: spi@c0000000 {
 			reg = <0xc0000000 0x1000>;
 			reg-names = "control";
 			clocks = <&clk NPCM7XX_CLK_SPI3>;
-			clock-names = "clk_spi3";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi3_pins>;
 			status = "disabled";
@@ -217,7 +215,6 @@ fiux: spi@fb001000 {
 			reg = <0xfb001000 0x1000>;
 			reg-names = "control";
 			clocks = <&clk NPCM7XX_CLK_SPIX>;
-			clock-names = "clk_spix";
 			status = "disabled";
 		};
 
-- 
2.34.1


