Return-Path: <devicetree+bounces-326654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Wq7UAAsoV2p9GQEAu9opvQ
	(envelope-from <devicetree+bounces-326654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:26:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6848F75B09D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:26:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=DJXv5zrb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326654-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326654-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C141330BB0AC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7588A331EA3;
	Wed, 15 Jul 2026 06:22:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166F1331209
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:22:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784096547; cv=none; b=N9VFmULsVYt7tKnFZtpTFrHCM31hmrmck8SNZcdiWTaBQ+5eSJZ30zTwRkXvRgSiDTqANUuq6Qcv1n9wN0lQzAQ9v3fxzP0IKI4YPWcfam926DJA0F2r99GL7V8cIieIHm3ZyEmieXMJoi8CQuJpIv717BQVjdCIWXj4SK/Ctjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784096547; c=relaxed/simple;
	bh=97KY9yD7aJyeFaO9lx3/aKKgODbzwtq99a/1TuTW0pI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EXl11gYY62XxbMXnLtZmv+fqSLt+BtPH1TrEVJTfWYjijj5gTCfQbJvijKgXK6iPJXZNnC5Bn42TqINbyZV/1HCcutGWKFgwNEkEvRxyZPJDZRIGqM0KCVCkCG9VIdn63eBZyxHt/5jA+5WISVssFrZIMyC0TsWVtyPKvLD7ZR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=DJXv5zrb; arc=none smtp.client-ip=209.85.218.42
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c15cb6f5c12so863583366b.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 23:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1784096544; x=1784701344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p6RQlMNeIE75J/aKW5bH4o7BGOBdS+5uo3qC0b6eFZs=;
        b=DJXv5zrb/Fgzzmqc6hs0rW8cqzFwSlPO+j0IZIriJQ3sHEAncWPT0vj1MsZUrS9CUj
         7z2MqDGTAdjaRChRBMO3ajz0KshomUGTLbLHpOkMFfFD6N9t6Ei7qRWiAG/8ZUojHrBz
         /fFAElnS4uwB3VlOgqawH7ZW0pamXMDTdSBtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784096544; x=1784701344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=p6RQlMNeIE75J/aKW5bH4o7BGOBdS+5uo3qC0b6eFZs=;
        b=mvgbnNgR1fmttqBWMgsT27QA05Ypy5nFMGMkEHzpCAgOjfW/n9nslQoJ7Cq5xq0XMG
         Yuq8YKG0k3A0qCrkh8ox5OJ9FLpNRLxjA8QDdEnNQYQlJU36V82n4jFzKi/LFDRfhjXx
         Dy73SCPde+TzGcfCt03Jw8b6tjc+IA3DM/MIMyTKDh49pEKhDVgqohsyZlXllg6QUz7Y
         u8uDMplzSFTvdiyVHEIl+EC+PZNcqGYxr0MiTVxN0MiyGxPd8FYb07dmbv2ZXqL3TnIU
         6vovlcN+FvlFEJQ60DvKLNI0K619ygL/2B70tT8Qhfc10e9NhNrLnHNZAYCpf84giGAj
         0qyA==
X-Forwarded-Encrypted: i=1; AHgh+RoqCKNFEvINpCHv3ykP8ycuZT2uYayTdG71B2zGGkwKWJenPEF01dWSXtKegiWZt2e7KJJ0LC4cXIWQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyiPOZYTWJYgDUnj9X1VigUsXSnVngOmZF4/y0Usw83lpPtUS9F
	bLmkgMTmhsckP+oLLqUMeuVF7OdVyBg0Db9FjlQ8KCDEWPg0bf5WpfvJ/E7vsQ3VoqM=
X-Gm-Gg: AfdE7cnlWvXMFspGxJfpvwmpcHf/8bnYF6bXFGb7i1betp1A/tBEGlxaA0npgC2K8oq
	/SNzACIzEq/lkO4bOdNcBK9nbMiAq5ejpKFmItOIfBlmDY1OEX4+1uWplnH6aApjxq5pGKtlYsm
	mo80VEYZgxYzTTM36XqrLX7AMypSHLxKRIe0KRXc9JYNKBx910pjRfy40Dj5yeXvVjnRyAXY1xa
	KEajYyfTUagk2qiHial7BIynNejA+2BhmYOlwEgGKDeTedKh8c9eWq7ghpwtfArumrx+iVCBLE+
	EhNJYh+yGXShRFze5ZPSAEL4lgNjes0DKlLMpUgI09pBl1et1MdrbpO+wNXVPg2NwE8vQCYrjP6
	moEdKpscz0emrZZO1garDp+Rl3k50Zm9GBgnEKXdWnzcXB9SQ5zdLZkriDHgpSJ0Thtn74LHuFs
	Rr3xGXdJiqOcLLEVWKSWA1AUIa4DcFgbGrATeIuxi05R7CV3Sj3kgoAT32ZxUviUNfQmN9i6roo
	NonRE2lprTE
X-Received: by 2002:a17:907:7242:b0:c16:6e57:9444 with SMTP id a640c23a62f3a-c1679453361mr95304566b.39.1784096544317;
        Tue, 14 Jul 2026 23:22:24 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.41.101])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15d0c3cf1esm1028820366b.44.2026.07.14.23.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 23:22:23 -0700 (PDT)
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
Subject: [RESEND PATCH v7 06/16] arm64: dts: st: add i2c1 pins for stm32mp25
Date: Wed, 15 Jul 2026 08:20:23 +0200
Message-ID: <20260715062201.3599458-7-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-326654-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,amarulasolutions.com:from_mime,amarulasolutions.com:mid,amarulasolutions.com:email,amarulasolutions.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6848F75B09D

Add the i2c1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 456ece7f8ebc..db485b9ed904 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -203,6 +203,25 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	i2c1_pins_a: i2c1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 13, AF9)>, /* I2C1_SCL */
+				 <STM32_PINMUX('A', 2, AF10)>; /* I2C1_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	/omit-if-no-ref/
+	i2c1_sleep_pins_a: i2c1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* I2C1_SCL */
+				 <STM32_PINMUX('A', 2, ANALOG)>; /* I2C1_SDA */
+		};
+	};
+
 	/omit-if-no-ref/
 	i2c2_pins_a: i2c2-0 {
 		pins {
-- 
2.43.0


