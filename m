Return-Path: <devicetree+bounces-308365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZC8BFwTVJmqDlQIAu9opvQ
	(envelope-from <devicetree+bounces-308365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:43:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE94E6576F2
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:43:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=Sa1F6z7S;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308365-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308365-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB42E307609F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088253DC861;
	Mon,  8 Jun 2026 14:22:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1FCB3DC4A9
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:22:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928565; cv=none; b=pSt05omptUoEyjL/Q0sQMv9EIJ29gjtxFBt/tQa8/lujxv1gjCeeJL2egrbewf9YEGmUu3fPKxxqpTcGh4WLJifU31iKfViwKI7Teqq/9/yHoM9H/cbhSk+F3WdTb1zVbxptJncj4BlIpN9vsTkJoJVavuElfZ/ha14SfTde5E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928565; c=relaxed/simple;
	bh=QGlJqg03ZdMuDaIsMrA23hhc5s89rjWq4ym3XRlGfDY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BCGH/jOxYeNMESAuPRFKROGZrlzQbR1EaRoSR+TBNPOURH35Ja6e22KC2F7FN1C58n33uNwtz4f2S2UohL0Y50irhqLm5kDXS+p4BCQf7M5LNi2yF72KzYfwrYCMPRxFYMXYU/DzHZTzRjW7iZqqI0aWcLZLh+eHEGUOT3pyylU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Sa1F6z7S; arc=none smtp.client-ip=209.85.208.51
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-68bfcf11050so7925288a12.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780928563; x=1781533363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9eicy7qFkVmMZW611/qMDh6GaEBG59Bdrl7IT5yIvE=;
        b=Sa1F6z7S4tt6gbh4q9RhfgGfPI/Rl3QpEKnzX4teZJI11vDBxp70XbmLWkO8Xiv7gJ
         b4wi/LjLrFQSvlWz4xEfz+tGIm3kDK8DIhrqwSLQMp1duL2d5E562odozHaYrlDgjbtB
         qA+T79X+NE5iqcEi2wJvSiNk4kStTpTSXgeqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780928563; x=1781533363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y9eicy7qFkVmMZW611/qMDh6GaEBG59Bdrl7IT5yIvE=;
        b=QVl8w0bVDlOT3E9+0nXMyOvwM3dKu8jpyAWyJW2Rh23S9hEGxrk5zqs4D9QbwB6rwz
         a5n+hTLnni77hnDkRwv+kFg0shc8IoriFOSmUIdfnTGg7yLEhrVAe25iL5O4A2LtsjZR
         IJZpisNx0ImrBjRrarwzOHJG/LL6BP4eZ14Aj6TQQ4vBY4/ziJ06k+1u1pfhp+Qxyfe6
         t5NZ8J+li4DbWkEGTSoUjvNo5UtVIt2mbA2ISSn6EZf1FamlH5c24tXcAI3w3LEMunPF
         7dUWWh1KQSBytL2ScjGex6vVUyXqQTs7cA7Hg8oTGD3lxUTBbD67ax2AUBNkd0c8lkhv
         dCXQ==
X-Forwarded-Encrypted: i=1; AFNElJ9YPtZ19OBuyJ1ZaoCQVAvHj4K4MH4BHkcS/Q6Tkqw0rGrCDCuNiZb9IDAPBSMPX5eb5+wiXwzCXrqh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/3VxZw9U3W9eYCSMNpe6k08Ukt9J16DDMtz5yZNX/kCesASMM
	RvzS+nAgfGSMpGefiv7MDQesdG5C3tWDRbHP5IdL0Yd3sNPoG6go3uyk7AfHyqAmKOE=
X-Gm-Gg: Acq92OE34Zv7MEh9TLiWvOSTTq52LlSEUvG8ex9Z92cpelEWcxtqw6aCLTG7gIt1fF4
	YusyXiUB46iroOA7gPRLxLF4B7tvolPYyxjRniQGxrEPJmbKtMcBPBblAYHckkojEwMjWnlnlo7
	JB66ytCEZ6STB9Q5u0g1or802gO+SYi+i+fXiNiBOXq5lt7JSetuotz3736ZwDeXMA/QSI0Fkml
	VI1wwMLjAQkNgGETB7pubrXjshPHQqOGRS/Fi3MOOPk1hFEMSQ8JsOJ8j0ZjKY/rqv33NHaa0LI
	rfZaq4EyI+Z9sBdWfT2mjWrBAuPdtr1RndMLh3kD9t+7W4RhUmhV/hwOs/77RYQiLFzGOE1rZFb
	iztPGyIQSCouL5NH5MPgIOGYfYvkkCBxQfrtg1xR5AQ5gBxYh/vHqjqgEndNQjHM5MFGGBYnYpa
	1+3fgOc+K9MkLsfNLdPq7LQCypM4QNWMeM33MA373QDeiGyduhdUNEAjojUHsnb+M0rZvspxCda
	Wsg3NYIJ//b4EQAvl/OVO1NrDvdhC9pyNfPUFFdv7zgBYETxCKAwbNU/RSRwHX+UHgr0Q==
X-Received: by 2002:a17:907:6d0d:b0:baa:1d9:66ff with SMTP id a640c23a62f3a-bf370a681e8mr754666366b.20.1780928563028;
        Mon, 08 Jun 2026 07:22:43 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.42.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055307a35sm881847066b.52.2026.06.08.07.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:22:42 -0700 (PDT)
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
Subject: [PATCH v5 09/16] arm64: dts: st: add pwm2/pwm4 pins for stm32mp25
Date: Mon,  8 Jun 2026 16:20:26 +0200
Message-ID: <20260608142221.952245-10-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-308365-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE94E6576F2

Add the pwm2 and pwm4 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 6482dd47e977..695c9d771853 100644
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


