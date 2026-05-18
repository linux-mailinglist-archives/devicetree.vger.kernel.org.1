Return-Path: <devicetree+bounces-299480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGTqCZkmC2pAEAUAu9opvQ
	(envelope-from <devicetree+bounces-299480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:47:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0A156F328
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D341530BB2C1
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CE848C8DA;
	Mon, 18 May 2026 14:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BN8LnyP/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923C83EFFA8
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 14:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779114739; cv=none; b=Mf6gvPwFJciJY8TB8k31kO0wNoe884KEz2wRy4DIIc2kQb83dr24uSciVdELFbrga2cn+a+h32oTeBw2keZJTu8QqwddCwPUYPCu5lzWLpr0DRx681BBRrltydl7SI0hOi03uj5IQ0zGxEDDWxQZcDlSe9s6jj+ndxaHsJXbsBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779114739; c=relaxed/simple;
	bh=4OqB0xgG4iD1OOImyLLjnZ+ifGxsTvw32hqC5I2s224=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QDWVfQkmtv8UhVm5Ynnicb0SBSjWmfJwCla/ioIOfvbjnDNtF2HCCtuLaKOQJva4k70xo4jSygAolosMOvR7LiJTKOwyEUPi5dhDglZU8wp/7Lvh6A6UELlOM8c1s+dDw+7qPEXMDuYsMUwlW9p91ydAGXj1Ms+qXtx/bA/oXJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BN8LnyP/; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-44e5624c053so1368530f8f.2
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 07:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1779114732; x=1779719532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0slYHxwHAzBwt+7yChfYMvMF5XK5noAXmNpRW6A4alI=;
        b=BN8LnyP/iLSt83lAp41nOmcUZQHh1w023pks33Fd07LOqydiazRHMFGO9VMzdOKuS8
         KL1YPaqUSJPLlWVSv5UMUOJaeQOXeUkIRjUD9Pb54N80sClZN6hPniwZpfxJAaO+G1Vn
         tx+RE+CVFlp/8nq9R+puEt6aakohGCLwUXlos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779114732; x=1779719532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0slYHxwHAzBwt+7yChfYMvMF5XK5noAXmNpRW6A4alI=;
        b=Sat3IR4zgtfBhAjwk9bwPryla7alMyJpdxmERaVZK8IFOjy+AbdpHrRqitzavYQDVp
         tpco8ppc61q2s8gv7qJ0L+O5je2fYortK/1Pf/6vi47I3ldgHiU6UHCEjYQa9k8OoZwC
         Fp1sq3hWZOCxgoVPsmeFtagqKmRt9inN9kZUs4KjLGVGFdacnNz1HC9rrMab3II9P+P3
         RkUdYm22fmh3ae8JRltWmEu6opm8LfwtKmty1PFAofchjH53WPkiLQctAxG9qT66AwbN
         IU7cxcWS63TzY1Wg1xV76DuAiCaIOM6fd9KwpFAJLjXtpmJOYaauqiiRwxd2r3olzcNh
         WppQ==
X-Forwarded-Encrypted: i=1; AFNElJ+FBvYxpMI+83T+qAlPE/3Pt2vPY+BAn8XM+J1Yfq7rvvPeqOWFfWw55vkm9+xTzO8AP7W6TEVMAktV@vger.kernel.org
X-Gm-Message-State: AOJu0YwDhPCGiybn2pC1caIikb7eRChYJR6c7s71UoSbMb3KtqYZz8an
	vPGbc+8ED24ZMCQbiFrKFZCdLId8a9V0wV3Pv4C1GyvOwP8KUPCO/27VyUpgMSqe6mU=
X-Gm-Gg: Acq92OGVLDXoeXqTQ8dT/Fy7NGSSq4qF5cyu0iQB36t1T9rDDb9PL75gAksSq02otfF
	is5JypRupGU87kbC2GX49x23TjiZkj8l4ZWC7+Ov4NpaxK1eDP3wUDuaA0Rmld25AcQqi+r3lSd
	tgHHyK+eZp2uBMtTBYaM93+aqraKt+uvpPhLRwEuzS9zWcyuVhFpl8pGgBj6Fkz60cVY7KwHYvM
	Uptn7ASEe2rGv0k2ZIgO6RwId4MNpR2k+8BETOBdflZhu31fsDbyO2NYJLyWkqIV2fP1e6VBVJE
	M1V9kAy0+DQw3QSelSOc0SdqdN7I87WzHycIg8B4/v+r4JOK72/NFQ/YvcrafsSaN/icgkzQDdq
	CEcR/FxC+3Bp3o/tn87HhA/3XVOutp6a0ELLHZysnBb5KwctscL+GGBpMWEMtDzhQP9ghuQ0OUf
	meGzpYVYHtAtCyB/5WIpwyVxaKqhJq+QZQy2D+ICSDhPoY7HbLBcQFvlGniDS9Aev2EbOKP/AXy
	8O07rXr71IGk1fDQkAH8dSfOxJjtMIUgNYltikLivkHzsBj
X-Received: by 2002:a05:6000:24c9:b0:43c:ffee:ee94 with SMTP id ffacd0b85a97d-45e5c5a0198mr25817515f8f.11.1779114732101;
        Mon, 18 May 2026 07:32:12 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.43.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a1aeafsm39564572f8f.23.2026.05.18.07.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 07:32:11 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
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
Subject: [PATCH 07/15] arm64: dts: st: add pwm2/pwm4 pins for stm32mp25
Date: Mon, 18 May 2026 16:31:22 +0200
Message-ID: <20260518143150.3138712-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260518143150.3138712-1-dario.binacchi@amarulasolutions.com>
References: <20260518143150.3138712-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299480-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:dkim]
X-Rspamd-Queue-Id: AA0A156F328
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the pwm2 and pwm4 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 4be01a6574c7..eab8ebe71660 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -433,6 +433,23 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	pwm2_pins_a: pwm2-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 7, AF7)>; /* TIM2_CH1 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	/omit-if-no-ref/
+	pwm2_sleep_pins_a: pwm2-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 7, ANALOG)>; /* TIM2_CH1 */
+		};
+	};
+
 	/omit-if-no-ref/
 	pwm3_pins_a: pwm3-0 {
 		pins {
@@ -450,6 +467,23 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	pwm4_pins_a: pwm4-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 12, AF7)>; /* TIM4_CH1 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	/omit-if-no-ref/
+	pwm4_sleep_pins_a: pwm4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 12, ANALOG)>; /* TIM4_CH1 */
+		};
+	};
+
 	/omit-if-no-ref/
 	pwm8_pins_a: pwm8-0 {
 		pins {
-- 
2.43.0


