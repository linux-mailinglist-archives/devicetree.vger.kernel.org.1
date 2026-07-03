Return-Path: <devicetree+bounces-319820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z3csDp5cR2r4WwAAu9opvQ
	(envelope-from <devicetree+bounces-319820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:54:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC6D6FF41E
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:54:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=B0sh5JoH;
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319820-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319820-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 271F3303FB70
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1633538BF63;
	Fri,  3 Jul 2026 06:51:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040E6388E74
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:51:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061503; cv=none; b=N0VmsITo4m5p9BWn/tzR89vvL1dYfJFXyLJmI5OfTJHucrC1nFYJjDT8/co4ymq45fD7sOPpPcgfNt5wTBkdu5hXpHh9qt+FikOTrhKIMcS/B5WDU4eqN0mOFRFAZ3Td5Q3bnCsvltsgLGpudWxuuT/X655SefQbAnH99srIquw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061503; c=relaxed/simple;
	bh=9IgDtyv6yAMUkWsg7RNaWcItxtFHo8kakpm/KHcWfnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PPyQ1D8oEqIWCGejDkrw0cZ1glkU2JY776eKpAr1dYVBvUNn7RueDv8UqUGBCC17N3Rn3f5DqcVCaaGtN9jqjRBwqV21u1SKNYevZrq9QwySRkg817ACvOBNiZUvfA1pTitSIvL3b9noMSkby0GuzN78dGc/ZwOLtCZR1zSHtts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=B0sh5JoH; arc=none smtp.client-ip=209.85.208.52
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-698acd36d67so509168a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 23:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1783061499; x=1783666299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fAmctwTyX9ptfNTsOcFrY+BzuI2WSByIHEJFFIRpN/Y=;
        b=B0sh5JoHSmHxmmf1kJIE/VJIEPDH/UnoG7QIaQFGWkNwFThjQj9dpFSHMP96bp3/m6
         W1U9PjIhA2X5Zir7j8XXGq/ntD6uIGytzj2LzNK60UmlcWuTgTjliSmxQ6qzGFH63McV
         9Wfr6d2Lt0vtSaUTv7eXroshaoVOagIF4PKes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783061499; x=1783666299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fAmctwTyX9ptfNTsOcFrY+BzuI2WSByIHEJFFIRpN/Y=;
        b=VeHALzWIbcVbOlwI8y+NI0cCQw9tkyhfs2bMi19+8OL4ZbrSWp2SPbIFM/co7bA9TI
         TtgMclvjvIJsAq9fQqkItG9/QckH5ug6qPpnR1dktOwHL9Z5eNE42s7rWb6N5pImLHfN
         QrT3mVsqwt8zaqQufERSqYUhAcR8xl0JVUwd2xbZ5Rit1zL8WH6jwOn+wpZEJyvkbUEy
         EMYBaw86g1zHEnGvlF1i0SA1eMAATQAyGH8t+5knIJDJdy7CJ04a2CRK/K4BceRouQQZ
         grNl2HAZ16KlcaAN8kRAMLtO9JlbThFurs6uVtOIu5y49yvzRmxWuVwowNxCTUS9fwg1
         Y6DA==
X-Forwarded-Encrypted: i=1; AHgh+RqODS6NDXE7OHHO1nbgSJ4eG7Cm46YbxHgArez9IriJo+epqlg5HHolq/JGldM6sAc5UVROOjGYBs8P@vger.kernel.org
X-Gm-Message-State: AOJu0YzdXsDfwqWJ+2p+dJgVRZbm8qciOfu6AsI8ikDiHf6bcP2awC1f
	8M9qk/WAM5KpIoF51/kBU3/3TD4MGadVGuO4DP5KhCMRAljSet8wCcjEoZ8QVB8hgJY=
X-Gm-Gg: AfdE7cnY1jX/KSjatnSYwWj8v6hjs8htgAVyUINKsLLicVyeJcKNXyl9qJ56ckiekHQ
	HkuQb3tFELz9fyCxb/WHR3ImFotqDsbS5laQ+t+I/lZawHo7EpJCYO3t5kbCc2ApnmpZTIVI+yP
	1kNAW4SVKeqLHAiOve8KRTq1Slyjlmf7sgaSHfPJnFYvR8jC+vMLip6/cXTho7sd4yT0R/wLg3R
	AvkC7HwxkPy5P5DK1qkXeU1WvhT8sLF3cAklX8zBMrV0Yon8bwgMqezGz7CtBOchfgLNXEIDBr4
	+hfPzAgTqLfOWHf3Xt19Svajasc6PkMq8c6rGQCGSfmA550059fJqS45VMvrWpZA/lgafDPcpht
	WAJrbCWKx+yJ90O3qTmATCbyKjdo4AkjyUjGyZYNsvFjTQszd8gz64vYxl2K/5pznmWqtg917XG
	qU3KorE+mJOvC3Fw/bfQKK+vZX5bEl2XRJNlBAu8fUeXGjOSYdCT1IzepQ1yrngMZhRzSb2iFJi
	W6Eg6Uf+vA=
X-Received: by 2002:a17:906:bc81:b0:c12:9eb2:8093 with SMTP id a640c23a62f3a-c12aa175d30mr282735066b.53.1783061499463;
        Thu, 02 Jul 2026 23:51:39 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.43.95])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62c4695sm235462866b.44.2026.07.02.23.51.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 23:51:38 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	francesco.utel@engicam.com,
	domenico.acri@engicam.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v7 04/16] arm64: dts: st: add SDMMC2 support on stm32mp25
Date: Fri,  3 Jul 2026 08:48:54 +0200
Message-ID: <20260703065110.1433283-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260703065110.1433283-1-dario.binacchi@amarulasolutions.com>
References: <20260703065110.1433283-1-dario.binacchi@amarulasolutions.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-319820-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:linux-amarula@amarulasolutions.com,m:francesco.utel@engicam.com,m:domenico.acri@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,amarulasolutions.com:from_mime,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AC6D6FF41E

The SDMMC2 controller supports SD cards, eMMC memories and SDIO devices.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v3)

Changes in v3:
- Add power-domains property. Suggested by Sashiko.

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index ae36d703532c..44938c036e30 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1668,6 +1668,22 @@ sdmmc1: mmc@48220000 {
 				status = "disabled";
 			};
 
+			sdmmc2: mmc@48230000 {
+				compatible = "st,stm32mp25-sdmmc2", "arm,pl18x", "arm,primecell";
+				arm,primecell-periphid = <0x00353180>;
+				reg = <0x48230000 0x400>, <0x44230800 0x8>;
+				interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SDMMC2>;
+				clock-names = "apb_pclk";
+				resets = <&rcc SDMMC2_R>;
+				cap-sd-highspeed;
+				cap-mmc-highspeed;
+				max-frequency = <120000000>;
+				access-controllers = <&rifsc 77>;
+				power-domains = <&CLUSTER_PD>;
+				status = "disabled";
+			};
+
 			ethernet1: ethernet@482c0000 {
 				compatible = "st,stm32mp25-dwmac", "snps,dwmac-5.20";
 				reg = <0x482c0000 0x4000>;
-- 
2.43.0


