Return-Path: <devicetree+bounces-309939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZvjHL6aSKWp3ZwMAu9opvQ
	(envelope-from <devicetree+bounces-309939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:36:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1818766B8A7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:36:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZYQNy7Mm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309939-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309939-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A884932AE461
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB15F426698;
	Wed, 10 Jun 2026 16:08:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6624342DFEF
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 16:08:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781107707; cv=none; b=rMNgONGQNCSIi/cus0KcBvjVG6wT6F2dyR/FA+OOUgWomVItIXoOCxQWQEpVn/RzzKq43vQ5Bo5Ikc17/tU1ddm+L/qe2vNezldCMDKW84yNQ+b34e7nsGlVEZMDyMjl/qKNxqXEMhTgkABOWEu7d+78YmcKVdsAeryxM0emI0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781107707; c=relaxed/simple;
	bh=cGlTcOV212mg/hPBx6FZG4MGelnH6EBTGWij8/R0tmw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rsFTMDF9PXZPqXdtNv88+zq2qgnEXycJ5apmPYhPrtNNPPJ6RK3lPm2LtVkr8t7+2qy+mtZXcsBAQ9gjviX4VbdvB6/PgfPibYZKZbJ04jzyhc5ICn0DsFO998c46/zfTB/ap7P9TUerxInqy2TAjzeVIziX49eo9JdoNFcCc5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZYQNy7Mm; arc=none smtp.client-ip=209.85.208.53
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-68d23430690so13861403a12.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781107705; x=1781712505; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qoK0+VOLEx0qCIrFRKNSEUqTEcnKybrGgvrByJSNTM8=;
        b=ZYQNy7MmGKU/pqf8IQVnsJe6NVj7SqwnK7GKyXk15wESebs7Q9iIUQrENnKfOwuNBR
         SH90xM3NcKkT98PwML42WrUvuPYwJw8FFoBxlg1OH8Ad6iLcaX6Y6ANBFrZFaMtPFswD
         FSjipAvje4ApKNhApejoMjKIxTcFSK9zAtBMBIe3y+afUHaIYOz1cTa1EdQwj6auRjV6
         BvTDVypAqTxkCKxITplZLApfknmleBSrzBwaebhcQv/5aecz9EP0P02uZ/fRZAAc6lES
         JKeY+XEZBP1gPE/I76qTMGde+btX/CaokBlcLtgKX11fk1QnbKFNR30LzL+XDVKn+7T4
         zlIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781107705; x=1781712505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qoK0+VOLEx0qCIrFRKNSEUqTEcnKybrGgvrByJSNTM8=;
        b=jRnAl2GrAptUGN/RmoyEM/3mYUeRchS32WKPm+JlNfsK/AYXuWvebje86Xnpsf3niv
         Nn/CxPup3HF33VOuVjTXphjHTHjGd+z4d3SFV+OeBKL0+xizpxCr124qJjmKcfmKLnNj
         mcnYBpvWWf3civDATEMv/qP8K0n8YUQZJAAk4o6bT7mUp2oMOofMIPEqA05UIgYPyXBj
         xgFrU3nAViiYn6U/J17xcz/0DajDS7CINRUAgXQlPeYG5lmpToAIgdGSTBJJjqd5nBv7
         Lz93AdfnSLeroWACZYdxzsA3Bet/zrvNFvvZMAnRs3QbSq2XoalCZ1GKDVKM3IChXpIw
         pxZQ==
X-Forwarded-Encrypted: i=1; AFNElJ9/u13P08f9pxjv3Htf3N1S/xianfO3rWB5aqoPSkHugSDR/npGdYGtD6Mem8UOMRme5aRQgjEAAkLd@vger.kernel.org
X-Gm-Message-State: AOJu0YyqG6bGjon06UM5CpcfXG24qINHqvKJqTNRmgv23KNMEewL91bc
	KflB+0sbxoURSry3vU+IrUHaoMtxhTFDNupCaqgT/87CTh5K31vdOmKrpc2g1A==
X-Gm-Gg: Acq92OHRvGSFYN/dDzMES96IZk3MpZnGw0oHRPvhf6bnXeAhyq0/tWxKeBfRFAi3QfW
	QIbd5ty1q/jEZ0Q9U0GXgVa0L6II7okWvNc1zcGzrUjj4CpAra3dxtJksutO6/boUirkHpHcgrY
	i+NwHNRsH1jyKcbyeYakIWnp3uQyx2UFylN4dUIlwhHYTxbMqsAPAXxlicKSE2bO9aHf1ov5tdn
	1s8QX7Gv07UACRrNDwBsn1zlWgpTt0fw17c0JopdDE0fhfSGS9ofnjiXaOzsKGJkp79Lz/eBTC1
	I1h/nsIA+cp3KvXeDmd5/GZ7A0ky6yOj3CxMTpQ9Nq/XZDtbO+vlec5690SNy6UGBdekgKKLXTH
	8DUrqjGrXSIRyQPg3fb/xbP9xFf1F2StAVNpaCXb7neqAs4wFaQq4s5k0ycYfDzR8ucNM2D+Cx8
	W7KVNCF5g2bErr5GL3nK0ljU7RgIogjwUoto1AWtovxkdU
X-Received: by 2002:a17:907:7617:b0:bed:7ce4:20c3 with SMTP id a640c23a62f3a-bf3749d9bf3mr978318866b.42.1781107704467;
        Wed, 10 Jun 2026 09:08:24 -0700 (PDT)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055305d40sm1188524466b.45.2026.06.10.09.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 09:08:23 -0700 (PDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com
Subject: [PATCH v4 1/3] arm64: dts: nuvoton: npcm845: Reorder timer0 and PECI nodes
Date: Wed, 10 Jun 2026 19:08:14 +0300
Message-Id: <20260610160816.2828713-2-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610160816.2828713-1-tmaimon77@gmail.com>
References: <20260610160816.2828713-1-tmaimon77@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309939-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@codeconstruct.com.au,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1818766B8A7

Move the timer0 and PECI nodes so the APB children are ordered by
ascending unit address. Keep the existing timer0 clock-names property
unchanged.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 .../dts/nuvoton/nuvoton-common-npcm8xx.dtsi   | 26 ++++++++++++-------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index c781190b42c5..7976baafb994 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -59,15 +59,6 @@ apb {
 			ranges = <0x0 0x0 0xf0000000 0x00300000>,
 				<0xfff00000 0x0 0xfff00000 0x00016000>;
 
-			peci: peci-controller@100000 {
-				compatible = "nuvoton,npcm845-peci";
-				reg = <0x100000 0x1000>;
-				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk NPCM8XX_CLK_APB3>;
-				cmd-timeout-ms = <1000>;
-				status = "disabled";
-			};
-
 			timer0: timer@8000 {
 				compatible = "nuvoton,npcm845-timer";
 				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
@@ -139,6 +130,14 @@ serial6: serial@6000 {
 				status = "disabled";
 			};
 
+			timer0: timer@8000 {
+				compatible = "nuvoton,npcm845-timer";
+				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+				reg = <0x8000 0x1C>;
+				clocks = <&refclk>;
+				clock-names = "refclk";
+			};
+
 			watchdog0: watchdog@801c {
 				compatible = "nuvoton,npcm845-wdt", "nuvoton,npcm750-wdt";
 				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
@@ -162,6 +161,15 @@ watchdog2: watchdog@a01c {
 				status = "disabled";
 				clocks = <&refclk>;
 			};
+
+			peci: peci-controller@100000 {
+				compatible = "nuvoton,npcm845-peci";
+				reg = <0x100000 0x1000>;
+				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk NPCM8XX_CLK_APB3>;
+				cmd-timeout-ms = <1000>;
+				status = "disabled";
+			};
 		};
 	};
 
-- 
2.34.1

