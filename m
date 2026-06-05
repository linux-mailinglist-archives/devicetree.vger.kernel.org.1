Return-Path: <devicetree+bounces-307203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vgweI/1sImorXAEAu9opvQ
	(envelope-from <devicetree+bounces-307203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:30:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF6A645834
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:30:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=OSPh5iLs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307203-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307203-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 33CD7302AD0A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 06:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9B9407CE5;
	Fri,  5 Jun 2026 06:29:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B793407CD6
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 06:29:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640960; cv=none; b=g9Cz6zbiawpjgVYWX1H5CNFxIu8jNuthym5ijTEc2972A1AgPjFpXnLfuRpKCwT91V32Aet/hPZ9lNjX3ELuAcyrbf/niYSeJubh34NO3OwWj07dk+aWhtuaGYJw5ARNiBESOaMZYs0YddQY9GDgjdStCqtMW4SZkriLB+N+d2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640960; c=relaxed/simple;
	bh=J844s6CJDpVgbP/YQJjGJqkHKNJYIZ5Jgwd9Gtevtr8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mYP7Rd9HhdwFTdjZBK98Qh/bfGknyT+ukH4Bs8bCHij8UdRNA5BZNRxkJsrATKQP6+z1JHTFAZlun0X0s9rXf1HE8vBJdqPtxFZlDvSsfg/vEBSd4nSFyyzvVeUSTvTzcUPF48vIf9RxUNy16ezHl4EeTK6bSX6nWtVFhxeNHgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=OSPh5iLs; arc=none smtp.client-ip=209.85.128.53
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-490be03d47bso12051975e9.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 23:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780640958; x=1781245758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0e8wESPhIuGnKBPbF3YDifoYbOSIP99q8OpeirAYTs=;
        b=OSPh5iLsWhD5/rQBJc9N+lDXpUk4eqH6Pqe3QPF7/ourfFFnd5XHjLZ3b5NUnsYgnZ
         Jpzu0F89Jl3Ziwcr2tPEhJbf3M9pUG/mlIH10H2Ji3cecJiglXpV75vfC5U+gsn6dx7h
         2QnGhq+3da2uYm3hKP9gi9PjCWQGAM+RqPVV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780640958; x=1781245758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S0e8wESPhIuGnKBPbF3YDifoYbOSIP99q8OpeirAYTs=;
        b=hsj0UHXQuKJ9mDWMrVVkOHLt6XXPfNhbFX7sHpq64yVuJg3QI2StehuEYYcHRuedgU
         Ml311tXwrF2Y3TlkyUTrZ5dB/eun51FtNMywI14mTUmeGcRHceoLRNBhzoMxXktchP24
         pCbhga2cRTK/Qifon8rBv4Cf6SMg1WnU0ifmKL8NqqxbrqL97YEQPRTLusdbublxfrvn
         kN/X9cY/jerzXNQSZ1WJz2wvjAAAoZIynnz5hZbusjKD3rcDCfW/+Ae/2AbL0MKaKh3t
         jOlGsY/77UdWZhrkzfuRDbOF/qjewIhgN6Tapl0dbW37ajJYtGuA3KXy2DAhnQhA7XU4
         hk0A==
X-Forwarded-Encrypted: i=1; AFNElJ+lC7Bip16llSUk2OhXApkwe8muHKtqSmBkOM5o+NzbZz/1GLfhFJQwmiuAvLZ8a6o6Pg8IQAo7UPiF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw69UWS69Z08HAcYrMfl6lDOf04eFyBgUuneNqePKfycWB4TtWe
	8mhKHZQcvjdXV5Hpmc9+/IkCDmKwkzUd3z8fgZ9RxlvJq/h5YxRDH6j78+Tls2l/+lc=
X-Gm-Gg: Acq92OHOBswIvwwSVJjVd7ZLyOHGB9yStUeTSul9qEa5vVnbzvN2oLUmIF0BcB6TKz4
	I9kJLeWGhN4jN3jstAGN/c2Ja1p7bNtaM3eZ+gvchUBnYpl0YnEOFre/5dpyL6rT9FZQVEpjBRi
	GSd4XXtN/EiP2MjG8G4G9AfqaoJB12sR4RF8RELTsShEnT+FOWbgPGNexu+hXYEHETkIn2Wtz04
	utzk8yQA6ZXYHmVHKRqUAPMbe2GKsXdTViAzjkEzpBoeDQhsCde4Q2tBnOggojYzPd+1Arx96M+
	5vzX5xTZ3wAPzf3BKeSQx4kSCCp5HUZpyEd2UweDIqPOE2aBDhVKHo1Rmt9hDBi3to6I3sY9N3t
	sl/sUq0l7ELyrJInaxCsY4UXDMTl5pjWKYhgqXqmowgZOgY0J8gzWZOmB+ELOJafPTRL0oXl5Oh
	hgwIbF3zze54tLa4iOR2DOt8t6Jg4t99ti5vHi3wKyNS96qKhcE+rnIvgxbXETeCEHT5y9IJG/1
	+aA7Rv1wVsamDpDAi+8DyoiIKtie4oi3fmWah6CttFR7xe7yYGBK9UzMDQUzAMzi+ZAuyFKiRaa
	g5eTMuVhCkhGLNA2l9B6SuuVXw2GdYDku7Q=
X-Received: by 2002:a05:600c:a088:b0:48e:5fb8:f80f with SMTP id 5b1f17b1804b1-490c25f9100mr28298805e9.24.1780640957790;
        Thu, 04 Jun 2026 23:29:17 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f344148sm23022648f8f.19.2026.06.04.23.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 23:29:17 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: domenico.acri@engicam.com,
	francesco.utel@engicam.com,
	michael@amarulasolutions.com,
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
Subject: [PATCH v3 06/14] arm64: dts: st: add can1 pins for stm32mp25
Date: Fri,  5 Jun 2026 08:27:34 +0200
Message-ID: <20260605062900.368376-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605062900.368376-1-dario.binacchi@amarulasolutions.com>
References: <20260605062900.368376-1-dario.binacchi@amarulasolutions.com>
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
	FREEMAIL_CC(0.00)[engicam.com,amarulasolutions.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307203-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:domenico.acri@engicam.com,m:francesco.utel@engicam.com,m:michael@amarulasolutions.com,m:linux-amarula@amarulasolutions.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DEF6A645834

Add the can1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 05bd07a0a561..4be01a6574c7 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -331,6 +331,28 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	m_can1_pins_a: m-can1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 9, AF7)>; /* CAN1_TX */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 11, AF7)>; /* CAN1_RX */
+			bias-disable;
+		};
+	};
+
+	/omit-if-no-ref/
+	m_can1_sleep_pins_a: m-can1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 9, ANALOG)>, /* CAN1_TX */
+				 <STM32_PINMUX('B', 11, ANALOG)>; /* CAN1_RX */
+		};
+	};
+
 	/omit-if-no-ref/
 	ospi_port1_clk_pins_a: ospi-port1-clk-0 {
 		pins {
-- 
2.43.0


