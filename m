Return-Path: <devicetree+bounces-308978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WwBMIMz8J2q26gIAu9opvQ
	(envelope-from <devicetree+bounces-308978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:45:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F6F65F99A
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:45:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=rp7hQDul;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308978-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308978-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA7D9307D74B
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 11:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7357D3FF8A7;
	Tue,  9 Jun 2026 11:38:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198DC38B7BD
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 11:38:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781005139; cv=none; b=Oavb+ZbDVmIUBmH2GVKE/ByYkQ6/q4bA6BLQkMtAc9uZ9Xwd6K3cu5QMZUaMaooYXFAWPJ9GSxNQEnxmi/Stmo2XdIsf+Rp8y7ME4XCYBqA8StnGfQvvj/bhYTbYWRipK+q+xsEuiik11SViaByyS4VpjjVsA5H3gjXGlb4fqi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781005139; c=relaxed/simple;
	bh=mVw0y+bHtOArz6HJGNlsSNM7DFC9Jx00bD8nGe8taNw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VRkxzsyeZlNHdM5gpw/nPCPdgjd1HKw3sGi0bAZPLyQ84MwwPcbsvzTO1vGMmnIzeuCMBsuUeJQRP/z5L3eDkeACz4ho6l3gpU/1md5e4ZcmhU3mfzylvudNBft5HXoBWB1+6nHPgrnlJ5TGXBQsYISvOvei9FO/4Tdp6skIlkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rp7hQDul; arc=none smtp.client-ip=209.85.214.173
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2bf237e1433so60489025ad.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 04:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781005136; x=1781609936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tv9NcVNNm5k10R2xclc5mA3XBryiKRvqVdDaYxEN+cs=;
        b=rp7hQDulYDFIYKZz90W5fbukaYy4kpE1mYZzytsiC3SgTxnfd2l4YgWFjSqds7z0Br
         QwkI8XGwNSEbE7S8A095ekWqk6H/Vd4BNMEr99IfKr1AUX9UXOnnjehkAGGiDevcI/kB
         RvFj0t0JzI1bycHera3QSAIOnDye0FfozdHl8r/rLT6FTgzfhaOMC4mgkhWTHc/AWmvo
         itXQ+61EHUt3ipEV4LY6hebZTxAxyV7yv83SXPl1Deavn1EYEJRJ6Cu8/sDUo0fFnMAU
         nIL0TnkpL/l6xl6Y+ravunmk7WFX5G/Ha6+TfDIbH3dGO1kYLc92vPpTcjG6noi5mFcp
         s6SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781005136; x=1781609936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tv9NcVNNm5k10R2xclc5mA3XBryiKRvqVdDaYxEN+cs=;
        b=deZMrZCvq1HcrvUeZvUU7Tcy0Q6LF0uTAZ9NBFO2qoYzTxQ2RYqfxVC4H82R3V++jA
         JHlhzI9hlax8uY+cOAeEhiLrhiGbkiX3/a4nLiPBw7uyrOG8tkh+Q6qpv+qNXEj+8Eva
         kTBfyyqf4m70CAL4tdM2gEjB96+dKGtB2xEPvZbjy6V/2IJHoIGOzydreKux8Xu4050x
         VCKUXuPbZ1m13MRw+geXH5b+3U2VpkUGrNV8jARonj8Yvi5XcgA69iTqhDBdGuwBE4s9
         nW9qR+Gfpkg55VL9oWJUyMyekdEFPhQFqkg72DnztHIQxQmp5ZW3ygBMuq3XGw6TDvj8
         rtfQ==
X-Forwarded-Encrypted: i=1; AFNElJ9pB8lwIwnayg+ToptQg7iAdIcCNOfahLs6cUU4ed8R0ujkOehDyhLjvzdtgsxFMOIgF7MuLHPsF6KM@vger.kernel.org
X-Gm-Message-State: AOJu0YzcAjosbDriyJ1riZek49WChW52HbA+pwLCyKCxtBsJcsZ8C97S
	uT4BPQd4vC1CIT1o6f+Rhkg+wxw0gEm1ZtjPhh2VW+E31DtPMIzh8/i4
X-Gm-Gg: Acq92OFyfJFm282tnKvrsIIrHLNle2czxTDzWWzRzR1Gln8DVtBW4me3a1HERW91Sop
	e53BEpbay8WqzIGdjvKLC1cFEQW75+4FSCy8EYVL4d5eGqLtWKKNZ9hoyYmGCl7iluJa4IP/1YK
	WE+ST+kk4SL9jynCMqoLrewiz57cvlDfxQVFnjAU0cRFCZ2XIyAG+shd8kgwQNR8R7p8sSvaV0+
	BL5ekYwjXfIPIhPt/7PqBiDi1bEFGeNZHNhTj5YsYxWuZCjvZLG6QpTghtU7s9Oe2Lq1OFCywRr
	M3QZMuoD2GKwft1D7m+5JKAhxZrjaNEtXVSRfheHaz8B00YSNqufCsJW6q1Uv6reG6LZ6VbNsix
	9urOPstFRcWpk30PMIJSxVnJrm8Ke5fmcecsbojq52G/p43fMgz1HkG923ztAxKO5annKeKg3dL
	UNm0Lijm3FOcbn7z+jDnM3dpYVFUDf2/YnuCbhE3Cy/Cq1pZwzkIDjgrHW+051Hu6OVmDl
X-Received: by 2002:a17:902:fc50:b0:2c0:e5ee:f554 with SMTP id d9443c01a7336-2c1e80d29b7mr222699735ad.8.1781005136393;
        Tue, 09 Jun 2026 04:38:56 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f70660sm210755635ad.11.2026.06.09.04.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 04:38:56 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Mark Brown <broonie@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v6 00/11] ASoC: renesas: fsi: Fix system hang by adding SPU clock
Date: Tue,  9 Jun 2026 18:38:25 +0700
Message-ID: <20260609113836.45079-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308978-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phucduc.bui@gmail.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:phucducbui@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0F6F65F99A

From: bui duc phuc <phucduc.bui@gmail.com>

Hi all,

The FSI on r8a7740 requires the SPU clock to be enabled before accessing
its internal registers. Without it, register accesses may hang the system
even when the FSI functional clock is enabled.

Previously, the SPU clock remained enabled because it was left running by
the bootloader. After adding the SPU clock to the device tree, it is
automatically disabled once system initialization completes.

This series adds the missing clocks and aligns their names with those used
by the driver.

Following feedback from Morimoto-san, the driver is also refactored to
improve stability. Clock initialization is moved from the runtime path to
the probe function to simplify the flow and avoid redundant setup.
Additionally, the shutdown sequence is reordered to ensure the stream is
stopped before the hardware is shut down.

The driver currently uses clk_enable()/clk_disable() without matching
clk_prepare()/clk_unprepare() handling. This series adds the missing
prepare/unprepare operations and moves them into startup/shutdown paths,
since clk_prepare() may sleep and therefore must not be called from 
atomic contexts.

The series also fixes a race where in-flight IRQ handlers may continue
accessing registers after the SPU clock has been disabled during shutdown.


Changes in v6:
 - Add Acked-by tag from Kuninori Morimoto.
 - DT binding updates (drop uniqueItems, commit message).
 - Improve probe and clock error handling.
 - Small improvements in clock handling paths.

Changes in v5:
 - Drop spu_count and rely on the clk core for clock reference counting.
 - Reorder the patch series as suggested by Morimoto-san.
 - Update the probe error handling path to ensure proper cleanup on
   failure.

Changes in v4:
 - use fsi_stream_is_working() for Fixed a race where in-flight IRQ 
   handlers following Morimoto-san's suggestions
 - Handle the return value of fsi_clk_init() to properly support deferred 
   probe, as suggested by Mark.
 - Split the clock refactoring into a devm cleanup patch and a refactor 
   patch, as suggested by Morimoto-san.
 - Update dt-bindings based on feedback from Krzysztof, Rob, and Geert.

Changes in v3:
 - Reordered the patches following Morimoto-san's suggestions
 - Updated the DT bindings based on Geert's feedback and renamed the
   "own" clock to "fck"
 - Added fsi_clk_prepare()/fsi_clk_unprepare() and moved them into
   dai_startup()/dai_shutdown()
 - Fixed a race where in-flight IRQ handlers could continue accessing
   registers after the SPU clock had been disabled

Changes in v2:
 - DT Bindings:
   Define "own" clock and add "spu", "icka/b", "diva/b", "xcka/b" to the 
   clock tree.
   Use YAML anchors and "if" rules to enforce clock-names and r8a7740 
   requirements.
   Relocate allOf block and update example with full 8-clock configuration.

 - DTS:
   Rename "fsi" clock to "own" to match driver implementation.
   Add missing clock names: "icka", "ickb", "diva", "divb", "xcka", "xckb".
 
 - In the driver:
   Refactor clock initialization.
   Reorder shutdown: stop stream before hardware shutdown.
   Move SPU clock enable/disable handling to fsi_hw_startup/shutdown.

v5 links:
   https://lore.kernel.org/all/20260609013107.5995-1-phucduc.bui@gmail.com/
v4 links:
   https://lore.kernel.org/all/20260605121955.105661-1-phucduc.bui@gmail.com/
v3 links:
   https://lore.kernel.org/all/20260510084303.122426-1-phucduc.bui@gmail.com/
v2 links: 
   https://lore.kernel.org/all/20260413100700.30995-1-phucduc.bui@gmail.com/
v1 links : 
   https://lore.kernel.org/all/20260403112655.167593-1-phucduc.bui@gmail.com/

Testing:
  - Verified on r8a7740 (Armadillo-800EVA): FSI slave / Codec master mode.
    The system no longer hangs. aplay works correctly, while arecord has 
    some noise in the recorded file (this likely needs further tuning, but
    it is not part of this patch series). 
  - FSI master mode is currently compile-tested only. Full verification
    requires a dedicated HDMI driver (FSIB) or hardware modifications 
    (resoldering board resistors) (FSIA).
  - Youtube video link of the test process (from v3 verification):
    https://youtu.be/w3H4v5djr7M

Best regards,
Phuc


bui duc phuc (11):
  ASoC: dt-bindings: renesas,fsi: add support multiple clocks
  ARM: dts: renesas: r8a7740: Add clocks for FSI
  ASoC: renesas: fsi: Fix trigger stop ordering
  ASoC: renesas: fsi: Move fsi_stream_is_working()
  ASoC: renesas: fsi: Fix register access from in-flight IRQ after
    shutdown
  ASoC: renesas: fsi: Move fsi_clk_init()
  ASoC: renesas: fsi: Use devm_clk_get_optional() for optional clocks
  ASoC: renesas: fsi: refactor clock initialization
  ASoC: renesas: fsi: Add SPU clock support
  ASoC: renesas: fsi: add fsi_clk_prepare/unprepare()
  ASoC: renesas: fsi: Add SPU clock control in hw_startup/shutdown

 .../bindings/sound/renesas,fsi.yaml           |  60 +++-
 arch/arm/boot/dts/renesas/r8a7740.dtsi        |  12 +-
 sound/soc/renesas/fsi.c                       | 267 ++++++++++++------
 3 files changed, 244 insertions(+), 95 deletions(-)

-- 
2.43.0


