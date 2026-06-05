Return-Path: <devicetree+bounces-307383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8eQyCkLAImqzdAEAu9opvQ
	(envelope-from <devicetree+bounces-307383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:25:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DA96481AE
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:25:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=iVQ0ODLO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307383-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307383-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 640313054057
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF3C3128DF;
	Fri,  5 Jun 2026 12:20:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B578B313272
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:20:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662012; cv=none; b=IeVFiAw4qfzLexERjqiCkf1lO0XUmdAKL7Mli87PPrUB5wN5gzaymfBfnB/GdBuT0W558wpohxE3dYP/Da9unKKVX0JNcB6qqDDe8x/Qh1n/9g898FBkmmTTSQb6tqGR35xcFifSIL9CEN3QzRJOLsUW1PuzdYgy7dX5/XIgibU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662012; c=relaxed/simple;
	bh=1/gdeEPDNLQlnDY6pCq0IrTapXIIlKgQKO8Vd2ZWooc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bZtWBSqz2/f8m68bccMq2eb9y8vIbINZGn176PE8FkmksqEbnXm9mxX32CSnI9IUdpGyNWe/3w7xtPte7p6RC3Ts1/YV4K3w9MRyeAxr03JO47l+rWy+vZM4FPf+5e0EPX+RYQQ8+yUeftl1zuL8V+YweuLNCgiycic7OMxBbLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=iVQ0ODLO; arc=none smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-45efb698ef2so894374f8f.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780662008; x=1781266808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R546pyhcBIoOcNDyoI1JxBWHAliuH/MVaGxXBQ6qTQU=;
        b=iVQ0ODLO8DUASp0CshgZRDy3P4UqesBO/cMIFHlAy1iRv3JAY4R8GQBIzPtr+dlCTV
         YR9clvYjjKApVe1g3lds92IFbClyHvFQ0tCAJjwcZveRWWQDkIp1LTWtkofIAEHXrMLS
         MlSLQGcPGLyoXo940orUaLr7ARJzPV4+a+45U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662008; x=1781266808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R546pyhcBIoOcNDyoI1JxBWHAliuH/MVaGxXBQ6qTQU=;
        b=BPptguvdLuk0tJCY+tVtypkRyA+wTgVorPEOWBL/Ja+8VB9LyaymdedvO9d0yb820+
         6cFPyaoGUeB3zeMz0tPngaQpG25ULadMyCpNsxdP/UAVsNODEVSWIrBrFOyRQEarPNrd
         UG7Mct3FUOSjEjKGNHGKkdCAjU71ZAGACy9lFcMTxpYrDB5OwEJcid6IBWIYKqeDf8HR
         UwwLQxcG6q90xdpzSfv+YlsIQRRMJEJ2zSQeytYx7G+fPf5LeRBp/ik2WYA8X4xb/5kT
         2/y+xg8e0dzy4Brnv/IKANVjgwc+aEZGf5ru9zdqjxmIoeyeR/qlRaUDcarWbKdRIBbn
         GbmQ==
X-Forwarded-Encrypted: i=1; AFNElJ8UFrIpOYAZGuQegpG6tJEpZVn7pOM/Rgb/HfOdT5S75FTJJ0h5bu/l2vux/emVrNd0RrOqyoZu3LBa@vger.kernel.org
X-Gm-Message-State: AOJu0YwOotZnKkYS97tG8Btd055VCz2u0gGHWxpNrfzwxKKXzsxXysFc
	PyuUd2Q8Vo6GAndP1npZZHNe8nb8XaLhw6xn1ghD3pyuew24WVH/1O9H1X28dEEHb5OZsebHXvy
	Z7U3G
X-Gm-Gg: Acq92OHXHUUVEJtyLCagdGLjqMaQedGu2SDnI4nfZ5wH658DbPSwJ7bDfsRXFEcVAkI
	If7oxyse2hUiNxGZdBZvudHqsTWE588j9S4HPFq4NyfK72EGgH0toNs2PpL6RN/NCSn7LISw8zy
	cRSuvr+tDlizdc/U0Rc3KgJB0EMB7/iE5qqMTq6IgsoXVFYgR0N+RqeLLyNvuUhbPTCKLSyR4Md
	5+I9K8fbU4sq+YLkmIB/BjRSCeWOUam1lh7BQWQQk9dt+C0Dfr1XRGedjXWw0DidHfFBPmKZ3A8
	aDZzch96arv6A0NnXE5lXtK4beaLUi9j9qTGcuBsUE5uQT78KWVOW+QhjgomxuQElqzJtaPxQo6
	kWFB4EPT5Fhv+1MKERVto9w1goXgTDoDfwKZw65sPW6kQW9tpTa6rfREqyglSdDrgdGr3IuzLIg
	+b1GxQn5dXSt2ZbvAEf4K8JerpJ1Y2JrseWIiqXSrib77IMA0OAKcGgnwwF3lgre2WVKPdJc4d/
	Wxtt+iTuO3Ycyuz4/OJsEWEVcSVjQNT2rECzFAIi78lbqav+6cU8rf+/wdI0ofzw0liwrnWd1qC
	5+FUfygVuWrqrF8/VrRX+6p/MngJXiot+5E=
X-Received: by 2002:a05:6000:25c4:b0:454:35b9:803 with SMTP id ffacd0b85a97d-4603061fcfemr5612501f8f.30.1780662007855;
        Fri, 05 Jun 2026 05:20:07 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcb13sm24785883f8f.2.2026.06.05.05.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:20:07 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	domenico.acri@engicam.com,
	francesco.utel@engicam.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v4 02/14] arm64: dts: st: add SDMMC2 support on stm32mp25
Date: Fri,  5 Jun 2026 14:18:13 +0200
Message-ID: <20260605121957.78409-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605121957.78409-1-dario.binacchi@amarulasolutions.com>
References: <20260605121957.78409-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307383-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:linux-amarula@amarulasolutions.com,m:domenico.acri@engicam.com,m:francesco.utel@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4DA96481AE

The SDMMC2 controller supports SD cards, eMMC memories and SDIO devices.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v3)

Changes in v3:
- Add power-domains property. Suggested by Sashiko.

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 673fbc5632e6..faa1355948e8 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1667,6 +1667,22 @@ sdmmc1: mmc@48220000 {
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


