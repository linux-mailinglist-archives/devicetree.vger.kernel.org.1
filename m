Return-Path: <devicetree+bounces-307388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OfbVFuDAImrWdAEAu9opvQ
	(envelope-from <devicetree+bounces-307388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:28:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B143C648203
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:28:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=epIELs2J;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307388-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307388-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C0DB30BD847
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BF5638D019;
	Fri,  5 Jun 2026 12:20:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C70637EFEB
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:20:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662019; cv=none; b=Z4ZIGJQYJSzWQKDysJ/4TFVWeaiSktkTnzsCyHgJc8Q3oOSWcOmQ1WMGHPxIfzJIYdx1zuqm36mwGktJZy/KDNpXL5KuNEnCrdnHZbW+iy29ougB3EXCOmYhvfVke4ZWT+YJo2H+cfMiuKCMk49DopIJ0Uu1KDWvG31MyDV9f1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662019; c=relaxed/simple;
	bh=6zuYDkkbdS7/04DL+lA+SktZDCLWIJ6OBZecU/rAVa0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hSFaDAAtdGRqK9/kACNr9+siuNTOMBuK/GopHpefJwHRbEwt0PMVnoH/sCCq8gmqOsM+HwN+Lg3WgtcYmOmW6hIBAO1fbxHxRCPhiI6LKjLGiM25tY9RXWESjNzjTYPuXjPe4Xqq8GlTsWzAGROyL2SDpkp6Y1rpTuNteNAuOgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=epIELs2J; arc=none smtp.client-ip=209.85.221.49
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-45ef372c58aso1105808f8f.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780662016; x=1781266816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RQ9iUdpaW/UgRLg2/BpFwjAvwsUvVTg65Q7BjB387tg=;
        b=epIELs2JlXVlRuC/XAfc1Je/nwbjrlIlP3oyvVRkTeCCSMSXJResMf44AtlaS42ZVA
         AGk++SNn3X+2ckulsuSyKqjRTa3HVa02MGxfoplT53CKMVhgI2T8PKoRSaPMAVkcytSj
         FXKCifVxN9yhdomy0T8uANU2QXVdXTGUct8gY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662016; x=1781266816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RQ9iUdpaW/UgRLg2/BpFwjAvwsUvVTg65Q7BjB387tg=;
        b=WDk8FQUhPBru+/mxis17Z52KbJkFsBSamXkcEZPbDJcMiQ7exEFB3Oaj0BXvBQ7YOL
         5o25yiBPhe8a/iXRFJKDNDmwU0g7cEhYqigrCvgkLXUYhWaN5t3YvWjpeHNBafKyAXni
         kSNRnHf3ND18zylmlJ/8k7OmoeAKYOJ9rJ13V2CsNUUltzxOcd5YJfy+YKk77uVx75oY
         9vE0ln3TUGEjaju9h4nA7So39O/4lRb1uD0vNxC6sq4m4uquE7ZS64pr+bf302+iLLCY
         HFm+WPVZzYbTkKhYAVp1AxsWtfr6BQSm2LpiQ37a9DEaBAy0dsfNy+bJiiMscJJxOQiD
         vmMA==
X-Forwarded-Encrypted: i=1; AFNElJ9xP7J6Ft1cDGioKWim7NW7cZNpKrNy0sNo6O1/eRUb9FFYWpLhTeCj77S9y/Bbgk2RVMRZl/Z51s28@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5IaTL3r6sCU4vSDU50GS/0G7a09TlZymA0siKyK0KECYP1Sfb
	eAGXRN1onoTh7OZrSYVw1+tX9R3HMCpM+wT5TUrrd7ldZxwVvNHiGFJgc6ELTDN7MPM=
X-Gm-Gg: Acq92OFqMzrv+DcLnFXNfk4lINgPB2UdDSRQvlxwsul3HDe1TvgY8A6OWQIUzObIjjT
	JteuVkvYCy9VBhwyaV/LoxutjS8vpPjXRobnV2Ek9xLQTGKN9iJcEOWaFDB0CbVlp3zr6NaaPAm
	jnCZgMCS+07IwoUFlpeEQf9AQshWasLAf9H+99tN9IfYt5madnUMy15owUygBBwNEFFaoLuJoiX
	hbR27+tl8t3Nj39SPjNNABjZz3ulaT9ACP9h/hfFnElRAWBv2gD8HfxtbQnDkKjU9tIpmW7Bohy
	YA4/5vuwKT0i0M1+ywDzG0Cud4yKcbWmudCQ3rvbC9EwxVy+FwZVOeyplObwzVQ7njIcHi75qH6
	OEmI/eu9UKCbjMHYZOr5uo/t6Qpqqn0pQy1NmLDemUHtS8M1NNo7ByS75+baq7RJcTtSbTMoUAX
	J4wAFvNh+VLyy+u+Ow1DQwLC2Wui05e/O4NwMFwaqkFgdn3c2Nq3SQz9n7v+ap2lAZpJROMNZlZ
	HMYl/Cz7z+7zhjNkmvpqobN1fDULIVG+ketfVlEb8SmWqs3+4jaJEiIZleZTLs+W5Zh3dU22Bak
	LVeI8FNuDDG+aWnNN7f4GMkvRPlyvkxkVcw=
X-Received: by 2002:a05:600c:1d12:b0:490:afc5:f95d with SMTP id 5b1f17b1804b1-490c2602bdfmr52692865e9.29.1780662015953;
        Fri, 05 Jun 2026 05:20:15 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcb13sm24785883f8f.2.2026.06.05.05.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:20:15 -0700 (PDT)
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
Subject: [PATCH v4 07/14] arm64: dts: st: add pwm2/pwm4 pins for stm32mp25
Date: Fri,  5 Jun 2026 14:18:18 +0200
Message-ID: <20260605121957.78409-8-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307388-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B143C648203

Add the pwm2 and pwm4 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

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


