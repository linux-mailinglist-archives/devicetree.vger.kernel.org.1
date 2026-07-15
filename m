Return-Path: <devicetree+bounces-326652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MYMJE6QnV2poGQEAu9opvQ
	(envelope-from <devicetree+bounces-326652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:24:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A14575B05C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:24:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=fWZCAdMT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326652-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326652-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A00AA3028B57
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD66F32E75A;
	Wed, 15 Jul 2026 06:22:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B0832B103
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:22:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784096543; cv=none; b=rhU4PxI6wPlxA7caX9m6gC5/oFMCObUs7Cny1QizHzXP0n1ueTe7ZYSUBVIAmCgeoJzEQ5l6jg14QLmTlNMLliHzXEC+c7/MufUfldWBFDYh3N/mNieYQY+W6HL3bG1Xx4OrMizhoPNO2yJrxzJxDp04EZrC52OS9Xbx9E8TymU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784096543; c=relaxed/simple;
	bh=9IgDtyv6yAMUkWsg7RNaWcItxtFHo8kakpm/KHcWfnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QmKMplRcQeJnB1JfzK+kyGDRwg1rpZUXNH0Cp7KwF5DM+BqwJ565PLa6CUaPGUEBCphgHAbwKJjvGg34IcSJqaeogcqooc96EA3LQN9XxPmUTuQMevsVmEhbf7UNNHYxkk8PXrTFKfw2yOkUwnnUe50rYTCUT20rJNIVoIuh4Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=fWZCAdMT; arc=none smtp.client-ip=209.85.218.48
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-c1600d040e4so275403966b.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 23:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1784096540; x=1784701340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fAmctwTyX9ptfNTsOcFrY+BzuI2WSByIHEJFFIRpN/Y=;
        b=fWZCAdMTqsgP86Xig/vy/2+qiTD0J8yDEJZPjnDKijqmDDiS5XWimcyw95d8OpJEMa
         zd5MqmZwAD0KLc0pJ9OuFR4wklWa2qY+rmhkLYLCocq3zWXBDnnIwhEveNgSdKdV5kPn
         2ixFxqQEeMqGnf1R4F5zmFGjLxxk4/zcBUsRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784096540; x=1784701340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=fAmctwTyX9ptfNTsOcFrY+BzuI2WSByIHEJFFIRpN/Y=;
        b=XlOZgNip40oxtRqaRE8z4a55rW1KURh3QCBvo/N+XdQWSE5DEDtOuF0TnDHy1w7SU4
         g7BtJm/AjGlVg1QhMYytUtmp7NX1DHWlk5Y+mDD3H+rTrfCU/0TvMpsIxtmMCRc03pMG
         DpFPANT0pxOrHbm1qDyN/P9w8diB8J6+4lhopDsBwZf2gtGyXENVBMJtGvdoRCPMcJhb
         HBotv4Lci5Mmw/3LyEzbeBkRz1xjUDf/nYNWcrV9MdLiyobkd5IplAvoK3/eIrrxnJs/
         S16WpYrWXgC6jx9D5Un7GUA0T1fEVEpoXDjiKrECNt/5cVcmv1yiZBz6AOYhfmWKrtR0
         LjCg==
X-Forwarded-Encrypted: i=1; AHgh+RpWja+9TV3NHS6kl0mVIzqb2yCaRDSiaVy2xxtX51ZV9Nw+P7VcA5WVaa5uax+QGsPha3WP/FZwL+WC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp3UVvju/yIp4WQDcf5KcbiO3bVyafC05fl9uxCB7A0nACqTW5
	KbzmPVYle/UBmg/4SZRpum1/jYJaNXaUem4AZO5VcMDKz8exudRx61zUS2GmAfIKfYA=
X-Gm-Gg: AfdE7clcZP3/UXdOZlelNlGx5Ki6toBIQe3IfMYjCmPDAqxtc3NAj512bJrJ1ZTDs20
	k1xpvxygeUpW3zC2oiGX01V3dDmn1GbHDVwzGMkt3mDlg82sLXyI3it6MRglCmAAJ/gctLAFxLD
	c154yNusXflzqPlRD+TiKHXsD6AmdcVYrFyMm2dJec36EqijpMQrpCDYRFUYiHIY9wfDgpRYuIJ
	T2pyPEAbNcDl8+KuhFTqwaCoG8sgaVFlTbzw1jmQTy8dk4DlWhMDUcMtaB8lKret5QJdECBrFHD
	kEgI2PalIPHlMgIMBQtYGzY8szOUNaSBNrxFPIlr1UyNsEnKE7Ypv7cHoH9B8in+gumT1y9AhuQ
	gon9C6M5TUXw7uyRNTOpllgOZJW+3MaAHgfeZqH21XJfa74j1OV6Tr8XNAy+TyLDXMhe/9TCpDB
	0E36DZ9Ag7mCkSUTgspXDn49iCZ63W5VO6UEW2E9AhP6q6l08tAqnD2Zw1uTZFHRY2JjiQXbJkw
	QURMkK58NXK
X-Received: by 2002:a17:907:3d49:b0:c16:7d95:9f48 with SMTP id a640c23a62f3a-c167da4e50fmr40843966b.14.1784096539997;
        Tue, 14 Jul 2026 23:22:19 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.41.101])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15d0c3cf1esm1028820366b.44.2026.07.14.23.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 23:22:19 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	francesco.utel@engicam.com,
	domenico.acri@engicam.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 04/16] arm64: dts: st: add SDMMC2 support on stm32mp25
Date: Wed, 15 Jul 2026 08:20:21 +0200
Message-ID: <20260715062201.3599458-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260715062201.3599458-1-dario.binacchi@amarulasolutions.com>
References: <20260715062201.3599458-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-326652-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:francesco.utel@engicam.com,m:domenico.acri@engicam.com,m:linux-amarula@amarulasolutions.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,amarulasolutions.com:from_mime,amarulasolutions.com:mid,amarulasolutions.com:email,amarulasolutions.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A14575B05C

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


