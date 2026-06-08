Return-Path: <devicetree+bounces-308362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 61+8A/HSJmqZlAIAu9opvQ
	(envelope-from <devicetree+bounces-308362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:34:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5518C6573D2
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:34:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=hJCsHlGL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308362-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308362-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D7BA30E2983
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0FC3DA5BF;
	Mon,  8 Jun 2026 14:22:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA42D3D331A
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:22:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928561; cv=none; b=Znvwc1MvVpWdyIMTdJ/ia5N9i1SCdirfeecV4m4LxF4APq1y8GfejzKq75MvfLfcChLw13ynKDbOX3iG9OdURG635uEE1nJXVtLzCCx5Xrdd7BMUcN45aZ5BuYZnDiRVDH58qUdBqSzF7DWtgDU/ReS4PtCpPn9AQGOGgi8+CvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928561; c=relaxed/simple;
	bh=97KY9yD7aJyeFaO9lx3/aKKgODbzwtq99a/1TuTW0pI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fkhdEEUwFvqGzzTiMAYEW5NuwcEjNI6nz59RlgcHU3NW04Ewd6l8rDiDp+yZVBrwEEkf8zOsDRdSDP2iB2DXz1EC5jYfwDB5NmxruoHaEUBINwD5h/X5gBo2xB1wd/WLm0BRMQ+oloAsF4lpemG9jd8uK+6Dt23843YcmRONkq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hJCsHlGL; arc=none smtp.client-ip=209.85.218.46
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-bf84a2b2077so62682266b.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780928557; x=1781533357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p6RQlMNeIE75J/aKW5bH4o7BGOBdS+5uo3qC0b6eFZs=;
        b=hJCsHlGLxme4EknY3VI4z5d9gZEvz8sDcY/HhaUVbzGLrudxUszFYo9UcEDk9RlnWL
         aBfyvnr4c2Y67so20Y5YMYAJlJEmB/BDCjzThus6Oin3Zsrn6OTdb5JfWRJw2dng37e1
         B26k84+b5y5UP/i7Tjf46QoBO2pD2mMg0RPq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780928557; x=1781533357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p6RQlMNeIE75J/aKW5bH4o7BGOBdS+5uo3qC0b6eFZs=;
        b=BnRKGb8MbD3r4AVCFHa4oMdK6T7mYI2Mvt9jhXVo+fGMIgJyXz3AblGU6aZjpjFnkT
         zHPDMtHGI1bcedKL+0hxlsfifgU1tJnI5zdPryPIFhAmvBXrDM2aGpYhvpz8xwCCjZLF
         PfqqlbTL5H4R/0bwDs3T89ODII8u+FNsWVcKFyN8xm2qPNJBGYyPPNALvcVmmwDZZDli
         SQ++1yaTRIPLsBVXJgOBX9VRAja757v7hI/hmt9HOZ38oC6wbrx+zCtjV8kDiR/t813g
         jUQ6TzdDvT/JauzDakWsrVW4nC36Go0mL9enJvkxPIYZqYkt3Rc9XOqnA90O2K3MGgkH
         lkcw==
X-Forwarded-Encrypted: i=1; AFNElJ/LNJukdYyumOx11bFzTckAJnW7G0UWS+F1hTqbF5zZkAMegC/5q3fRn6+xSkBEmy3tAjNDAnoky9UM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1BsbXwQUmsswHyHWpGgK0NLmDcy7pDKIaGiPvHggofiwkav4W
	bL6y5jPXTf5rX+FP2c4A1u07SLxM8bFBscE65vitkgFWqeF4LwR5ZGlpuPkZsE5B7FM=
X-Gm-Gg: Acq92OEEvtXX8VaMVR/4xDzeciZmqAvCCynseEAcPxi4Uy3GsM5bUs1mkEXvfxB7xr0
	ZvcQ3x9XrvDabK2oFLznUeEqoXceAJMCyIrWV8ByzjQlMx7VSjnFpGlgENlDPhPUNexVY38q2MY
	XtQT9rB8fu1e/+LWr2pg5XzISkllLADBdDFYWJnEIn31DptEHg98BCS9wWXPxuR/Ay7fi2BCtFB
	OZAgix7kprhJucBrV/1/SMmCfsCd2KuRPHB40KN30h32Cgyy+/z60cuOM7RL17FhgxNTQvVAxJc
	1fkblHSHg5KeZ+c0qIQLAr84AuP666ff7Tve8QDqoXgMoXqsJjhcrGJDfRyuSQeby8Bt0BSpN07
	brvYSqU4f6vJCpLOk07n0zk0jUGkR45SDV4P6TSGT47m4MAfR7RYglHL5zOZX+EF/pSUrkWxJyP
	vz7Z4HhojVQcwTWIjJ53tA/AX9wmwNzWxRBvY4btvt2KDoxM9NIB/CV2bkGqZMXGQBWZxSLyKJz
	BBG6YP5GPgnKMw6pPre0TO3LkHXs/6Zqyjdu3zZSsS+GmbXazm4zLXn7Q1L8Tr29nTJmg==
X-Received: by 2002:a17:907:8693:b0:bed:5a4f:9fd9 with SMTP id a640c23a62f3a-bf370e6325cmr667273666b.6.1780928557174;
        Mon, 08 Jun 2026 07:22:37 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.42.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055307a35sm881847066b.52.2026.06.08.07.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:22:36 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	domenico.acri@engicam.com,
	michael@amarulasolutions.com,
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
Subject: [PATCH v5 06/16] arm64: dts: st: add i2c1 pins for stm32mp25
Date: Mon,  8 Jun 2026 16:20:23 +0200
Message-ID: <20260608142221.952245-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608142221.952245-1-dario.binacchi@amarulasolutions.com>
References: <20260608142221.952245-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-308362-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-amarula@amarulasolutions.com,m:domenico.acri@engicam.com,m:michael@amarulasolutions.com,m:francesco.utel@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5518C6573D2

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


