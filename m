Return-Path: <devicetree+bounces-317558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LWLYCZONQ2rQbQoAu9opvQ
	(envelope-from <devicetree+bounces-317558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:34:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E936E23A8
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:34:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=gc10ErB0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317558-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317558-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFA103041788
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5315A407579;
	Tue, 30 Jun 2026 09:26:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1B4404BF2
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:26:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811614; cv=none; b=Mtw+dLrvNcIpdU3RwOVVVSuYPwmUj3pLcnZgsRA7/h0zTfJZLwndvziMK6R0+aMBJajl1z1RlxmFYIf3BWMZZKrZP81ZG1AY/pmmNZZTxMRfWh2xokAS6k47c9SboaGSip8rS11tYaBm6YIbMVjQKVYdbQfWgEMXnw48qMGFdYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811614; c=relaxed/simple;
	bh=QGlJqg03ZdMuDaIsMrA23hhc5s89rjWq4ym3XRlGfDY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WCTRhk4fFy2qp/vSCf7bgSTgkehrl5DQdfAsketw6YfAQA5HuXTCvgoEeIj6/wrZocISbHhF8ZWrCOjJbQHYT5yrS0+bETDaw8elU/KIL3nqeaWb06mGGHgtyvLyEAyX1ucfAC90JrrZQiI71CwxhW7dFCIFbm4MMfJ7IRxMGOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gc10ErB0; arc=none smtp.client-ip=209.85.221.50
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-471eeac43bfso2704544f8f.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1782811611; x=1783416411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9eicy7qFkVmMZW611/qMDh6GaEBG59Bdrl7IT5yIvE=;
        b=gc10ErB0aKGwGRE9Gg3MYUreMAtF22q28TJ1neZIfPhCqzG8msLC5NnYMv4yeV0fco
         9tFuiBcA0Ey1CK6lUAKbJTftNYZ2Vq598MLscwapVn4UvW2HWYr+KyUdcv6ua4HkK5ZX
         AZw1yXJnNXKx6hYAMCzpQtQaAc6o9bpCKqROc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782811611; x=1783416411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y9eicy7qFkVmMZW611/qMDh6GaEBG59Bdrl7IT5yIvE=;
        b=F5LEkmA+2QVRQmFRzHHXpooid++mVlcUtpiyRYg3f8od83+l4bQYUL2vba90eWTieS
         y2Md/VPCV1zvwsHXNxNy2u8FYJWhF558KeRU58dpENLLzBe+FmPfjcdW/FxznqvRE1Ar
         bMsjdi8BCAsXjIqSqjaGPWLgPTRRlZF3sJVk6rU5AedsZn4DqzGyzen7hXCMcdjZr3yC
         lEikSBWgfWoiqeNYQoiANFLUhfWpuIg8AvsTJTDiWIm0XqyqCLRj42nsjLbChj/ulFUe
         iM08dU8z19TRBup49dJZTeuIVx8ZCySjWUIav87kbEdkEk8w4VAH6J2JsSmVTL6HT8hS
         aqwQ==
X-Forwarded-Encrypted: i=1; AHgh+RpgyhO2navI0tVSR2PD37VHkMHzOSVkNQFeIT+WeUeiuib69+bBNPSLUPp4r1J5upQhfKT0PpU8J6pX@vger.kernel.org
X-Gm-Message-State: AOJu0YyvC+FCm+73fk+avLDzVh2aM8Y91mhaEdM5BKeSWitWfJu13oj2
	0oXDxjy4L/J5qU1kkqCBM++NSPebD9+Ah/1bdeFj5gQlMDXxCwf5NlDU5pvi6xvEWS4=
X-Gm-Gg: AfdE7cmDWJk6CRzJuEgQOa3zpR963L3uoVPPfutpNsLdPzPFH8r8atITBlCwEbB7YFm
	eHqxh3XA7f/1h/CtIERldkUXCBj1aH/W0SY6juJRQSM66bANUvxwSn3qXBJd67FOog5kIcX6nCq
	GPkjDVJZjmtCmzH1H2KaqLyJ7rNG5P93FTPpvG+cHAA8ZF2GJpkL0OOHdetvxljXhPdSg3aIJ4S
	kaAM/OwKUjA/yPiHF+P2K0MGjbeM7+eNAvmARRzsnEFcafGvyBbAzvXgQYu2ILR9sN19CuQhiRM
	TJ3BoOq4NGm0rrs04CnE63bn4Sua3JhJ9m8BfMvtqXPU57b7YiWUV7x9FBYiFrm+q/re8Vm+D3C
	CEs9Ks2Kt8ttprt7aeK8i0YibomSZ2fbiWxHVPwmwhOzozjye7YINKgjQrLlSc1PSwjTpgrICQe
	2DFqEAQ2FH1R9vr68+Vqx6BjNijG9Y/ySrERAcABIVsuKKRXDAOk/zYd0Z9KljayrgOs+9VQdBs
	p/fO67ldjcnDuBgKS2MoHEKFfOAvQm779V/155gZ3TWzeN3IldI4Hh3UbJdAd0JpEM/f5RoHrSn
	uTmbPjoGgyAhig==
X-Received: by 2002:a5d:5d89:0:b0:46e:8226:96ba with SMTP id ffacd0b85a97d-475507de518mr3819022f8f.13.1782811610975;
        Tue, 30 Jun 2026 02:26:50 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47567a6f0ddsm5669083f8f.37.2026.06.30.02.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 02:26:50 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	francesco.utel@engicam.com,
	michael@amarulasolutions.com,
	domenico.acri@engicam.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v6 09/16] arm64: dts: st: add pwm2/pwm4 pins for stm32mp25
Date: Tue, 30 Jun 2026 11:24:38 +0200
Message-ID: <20260630092628.1695560-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630092628.1695560-1-dario.binacchi@amarulasolutions.com>
References: <20260630092628.1695560-1-dario.binacchi@amarulasolutions.com>
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
	TAGGED_FROM(0.00)[bounces-317558-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-amarula@amarulasolutions.com,m:francesco.utel@engicam.com,m:michael@amarulasolutions.com,m:domenico.acri@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 70E936E23A8

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


