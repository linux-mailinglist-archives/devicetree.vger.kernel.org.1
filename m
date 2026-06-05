Return-Path: <devicetree+bounces-307395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m+QFNCXBImrmdAEAu9opvQ
	(envelope-from <devicetree+bounces-307395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:29:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4FA648241
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:29:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=nvaUTNug;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307395-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307395-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 307E230D6776
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF673126DA;
	Fri,  5 Jun 2026 12:20:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318AB3BED7A
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:20:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662027; cv=none; b=LlBPn4eQQ0l4zg23PIJd4DM4AsEt9OYRppYdzVAKOcHpMz1R6x4i/jIJ8bXX70/JPvR4UTjUTAaJO8l6H8rzrXqrk6ionY0d4diNP9LH1bdcEwwUVgd42zBPJ/bTCVjCsB22iO5ti2iY0vkXSUX8JDU4N4SENjMbKA8uTsZbxvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662027; c=relaxed/simple;
	bh=fTbdpRCyfFLaOtbYVQuXBTeh5e2Blvm9k0H83//ETNE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YFdTKpk2/uE0oN87KSk4kDBHof0y10C4KASjBIgU+jxzIWvI0S82Ob4E3v1sb05n/n7+0+20BtNCkNo4H/WHZkATEjHxNelepARDPv7Vq0C1k/xSzrgmpprrFc7YZFjhVApqHHj07vRWxp/ZiF/OsqsFXIrZy+vcwnAwBzwOKko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nvaUTNug; arc=none smtp.client-ip=209.85.215.178
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c85c9e8b7e4so797659a12.1
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780662024; x=1781266824; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwW5NMDZEbB74SUEwI6Q2ihuAyLFKsCwR8MKDpGPFxY=;
        b=nvaUTNug3ZU0SWxUO3S3khfKFoXf/Dg19CWpHNsfV7eh2walln0B0rIVbXcF9irpPk
         3OkmwsOrQO1SMSi6AQk3mpk3tddDED7nxQqpdE90VvkklCyFQtbYnnZ6GbTnIEKJfeFj
         lkrI64/NCFM76th/SxL0aNtpcHUtOYulxfyj0ZP+knvKgq2rXAX2zuXq/gC0YJCrhLMn
         xmpKEiF9iyEjOxDya8xj5c4JUXXQCpDpaIEVuZ+CcaCyRLTFC5iTtgRuy5QK4V3ZREZH
         TCFivrKluxZHcVZXPpOUZ6QjzqulCS7paNSYQfruvHSHY7Tpq9NJcxLctxsp/oKoXDTY
         50GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662024; x=1781266824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JwW5NMDZEbB74SUEwI6Q2ihuAyLFKsCwR8MKDpGPFxY=;
        b=R3dvndd0axFIdCSgo887zGvXnx5e0HXcPnLiSn1RIvKMdU2vDHSec+V9wNr12GD8JM
         /1LT/mJ3EyMFTp9z4T+kNzp3PHKn7Ek/VZ6hPigHwAThC8bC7MoOlnD6jigJD+Jhhq5X
         6Hq/S+Po1hhKJwpo4q7IGt3dj8FSUBb7zcy0oeH0iFj21eq4BB27p5puO0/sBC7tpzLV
         s+jIz4ROkoJWLVVzn+VsXzWPzcjA6bcu9rZgLSPHyUXbd8SMBK9OX0BsBsTfSdcazrJo
         BCCdJyQ3/WwUsIXEL0FpBxWhVhN6cbPLHcV4/u3KZdFYZz7fPyTuRgV/+YvzTedKYmNN
         HZOg==
X-Forwarded-Encrypted: i=1; AFNElJ82BXwBRbamA6qPlQpOY8jN5sqmNvgGG9OkjN7WheIoy3+URzZ/Zq+lkDQhWlU0OD+VgZnzcMaRWO/c@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/IOtF7sRZuCd+8YgilftB15ohrSY7XkNDPYXmgHwhXj4SfYei
	R+hPTxzsve1IkGbK1ytc/9VYp9yYmMup0gsVBoNlAYXmu/v8+K51FS2C
X-Gm-Gg: Acq92OHMCKPHddxhauLTTt4lnnEvSLect8zBM8Z/jvLY5VwhPb3dEe6BJNSRRD3kiSG
	jis+FjqBz7zLxtbTJQdSCBkuQEKnsedscwvtLqbA8xELqaOQnaUU8cbQ63gQ7ET+bjj119P/kdi
	/nvwOK045gLSu7w3CpcArCbmcNrCyXiLHtuUt+WngkcupE8e8V4dFZ/G8/V66Khs2dB1teIcnRe
	6h+oflZO7VC9RXsHjfzPFMaAuQS8z6rDRij3by3z5CXOQxn32fRrgV+eCWJ9BKo/T9tkAPoSN1t
	hcgRKflERUwjcbFolceBSVLO4C4NlCgsEktcrvSYa8Wf/LIXt0CBMkFPE9vfKIqnSeOVZ8tVRMh
	sUNHdJzoIigrnKH00tKo8mSKvwLqOW7vI8hcrnYty1lIxvWQD5fAxHoRmYYSL7HoyZrwGKWzd5V
	bwbq2X9lFS5CimTSx44Pmc+K8CLWRzZydUTNTEH6GQnQP6I4YaOXYks5/LM4l44zFAC7PY
X-Received: by 2002:a05:6a00:4390:b0:842:6a3b:60ea with SMTP id d2e1a72fcca58-842b0fbbb03mr3362512b3a.40.1780662024485;
        Fri, 05 Jun 2026 05:20:24 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282221059sm8594381b3a.7.2026.06.05.05.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:20:24 -0700 (PDT)
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
Subject: [PATCH v4 02/10] ARM: dts: renesas: r8a7740: Add clocks for FSI
Date: Fri,  5 Jun 2026 19:19:46 +0700
Message-ID: <20260605121955.105661-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605121955.105661-1-phucduc.bui@gmail.com>
References: <20260605121955.105661-1-phucduc.bui@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-307395-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phucduc.bui@gmail.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:phucducbui@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B4FA648241

From: bui duc phuc <phucduc.bui@gmail.com>

Add the SPU bus clock, icka/b functional clocks, and xcka/b external
clock inputs to the FSI device node.
This prepares for subsequent driver changes that explicitly manage the
SPU clock required for FSI register access on the r8a7740.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 arch/arm/boot/dts/renesas/r8a7740.dtsi | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r8a7740.dtsi b/arch/arm/boot/dts/renesas/r8a7740.dtsi
index d13ab86c3ab4..6f9d9bbfd159 100644
--- a/arch/arm/boot/dts/renesas/r8a7740.dtsi
+++ b/arch/arm/boot/dts/renesas/r8a7740.dtsi
@@ -393,7 +393,11 @@ sh_fsi2: sound@fe1f0000 {
 		compatible = "renesas,fsi2-r8a7740", "renesas,sh_fsi2";
 		reg = <0xfe1f0000 0x400>;
 		interrupts = <GIC_SPI 9 0x4>;
-		clocks = <&mstp3_clks R8A7740_CLK_FSI>;
+		clocks = <&mstp3_clks R8A7740_CLK_FSI>, <&spu_clk>,
+			<&fsia_clk>, <&fsib_clk>, <&fsiack_clk>,
+			<&fsibck_clk>;
+		clock-names = "fck", "spu", "icka", "ickb", "xcka",
+				"xckb";
 		power-domains = <&pd_a4mp>;
 		status = "disabled";
 	};
@@ -614,6 +618,12 @@ vou_clk: vou@e6150088 {
 				 <0>;
 			#clock-cells = <0>;
 		};
+		fsib_clk: fsib@e6150090 {
+			compatible = "renesas,r8a7740-div6-clock", "renesas,cpg-div6-clock";
+			reg = <0xe6150090 4>;
+			clocks = <&pllc1_div2_clk>, <&fsibck_clk>, <0>, <0>;
+			#clock-cells = <0>;
+		};
 		stpro_clk: stpro@e615009c {
 			compatible = "renesas,r8a7740-div6-clock", "renesas,cpg-div6-clock";
 			reg = <0xe615009c 4>;
-- 
2.43.0


