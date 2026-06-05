Return-Path: <devicetree+bounces-307208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9ZjWJr1uImqZXAEAu9opvQ
	(envelope-from <devicetree+bounces-307208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:37:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E83645901
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:37:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b="HQgQN/TI";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307208-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307208-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47AAE30B29F2
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 06:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3B8440C5C5;
	Fri,  5 Jun 2026 06:29:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA86640B6E2
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 06:29:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640969; cv=none; b=IqXCxKUAHiSP/bjGldt0Vc9T5q3iKRYeOwCzNSMc3bT3Du3zyX2vxL64mL0582rnmDZF8Ttwp1oouDveaLmZCiD55TGoO1qt9TNQxrAOrRnLqLXf0tnABK1moCakuwudcSgIMkweGOa52U75TupAkvowJyzKpLB5hhIS860r/R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640969; c=relaxed/simple;
	bh=H4l2qG+pGEJgFcb/52U52UrJQhd3/X4OF9BCeqi+O+w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mq2LXB3a5yK7xHmFbfv/nOryFmMemF0x8c1CXQBm0Ikr/0JUwas0p+vofe8urajfeVVh0M7m7Amau8hWnLcOssxswDFFTP3puKES5MlACcBba0ue7sZ7LtWeemN5r1SiGVDNN9WL/tBa81EapnCe4+JVC2SDSsuyYQnZ0cGe4NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=HQgQN/TI; arc=none smtp.client-ip=209.85.221.45
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4602e2a0372so818099f8f.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 23:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780640967; x=1781245767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Cmtnz5uL0NhcEWKME+3YqiQ1Tn3C+OdDm6ovZMriaw=;
        b=HQgQN/TIMgauEisgWAXtDihlL6Pukib8DFyYOwCPO0CDCtGRYX3OJEyLIOujUZykwX
         FgLdljI7fVIv8BQ8tqUZVsZ0klmfDB1bHtU/Uz5YQ8uq/zQqXiZpm1wsoQe5HjDI2lc0
         tvDF+yPnby5RC6/nv5FT0ZTadFsd+xBKZU/ZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780640967; x=1781245767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Cmtnz5uL0NhcEWKME+3YqiQ1Tn3C+OdDm6ovZMriaw=;
        b=Wkv4VcpZ06/qudvTLETGc8+ODVMYAkuRNrb5vdh50Me6i0BqVpYtWSmobjhJmbf7aI
         9b9jkoKyM8c2vNlNsgYtMBJkSj1ipVubI4GfdKLldwUZlaajuzXOfzJZ/DU+BZgW3qwG
         55UqnqNrNP18s4IaFsTJiCtVFQDLzAlbc8XnKx6IKK9RS6vsnIdGU/mtZLLIHeItBgs6
         h1q8FE6s+ApYMlgIjTq5yxSlSPNC9QYU/PoJrZveA77kS8P5g0LeWO8GYovIqlx6Otwh
         /6+7N9QOrlnlQHck7F+qgrKVbvjGatzu5fJ3YwTkzgTAaRWc9bgngl7KocRxIIzfIkkk
         HKHg==
X-Forwarded-Encrypted: i=1; AFNElJ8DaQEAjAhQnOQp4S50aag3tLK8xbrWRcaRb5eTab1OBsgVJpUNX1kXEMbdS8WSKlCS1Ff3WJNPjh1d@vger.kernel.org
X-Gm-Message-State: AOJu0YzX+yh7uqRjFLrQRYl7T9AeRaC0VBkTs3Ay+IJpKRO4QeloFQKS
	zD5USyiiSsGnJj1opcSFz/sbDOla4vfNfivNYvkiDsufiASntx8oZq5J3YFU70oQX5U=
X-Gm-Gg: Acq92OGWCYjRzqMnqvIDJiE+aX7WiztzN+4dQE4JmuPlmbcAOzegq8EIsL6KgRpylQV
	bLi0R2rV5M5zmMCUuCwzjoyu9IakXGH6Gj62IqJtBR0g7lYrOz1giIrQwZiym+RZpkg4dJ5/55l
	asm9e7NhHmARMLuxpjEcy7GIkaPQ5AUGUyztICeZShqZ6ptjhGExwYW63X6F2uZY0MZjqWuBpbC
	1u3wR20W/oINJU9YfgxYbN7WvCQIxXqHs9nan/JN0xMl8keufcgD7kH+XU1gd6iU7hLGwlSntu8
	gWUCtnyFwgBOq2Qc3XILFBfx3BjQbQPUw0t4p4/IziRiTA1HeMR24f6zYOi+0iCWRJSzl8QYi+w
	I35aGhJZBBMBz9W6T7EOrZdKs+o9eL5bBrV77FysRXgZEjCo/LzYRr+S6x3+g4FcaPiaTFknvKM
	0oRYSjQpsrLw2XQrnlGaKLygYdEMEBsJJ27xzAaBNXAmI5GOS1asljcTIPX9b+8+C43QCqK7V2V
	CB/zkGGoQ9V8A/MeOvm5HNk4AJRNDU+/4E1ZPkdtcOPe398DMsodJdQSJ2qVvsQGJKbSQdtSDio
	3ZdXSSvuJNSgGAKH7HdeDsvS4WZLCuXDsb2uUXOjD7Yp8w==
X-Received: by 2002:a05:600c:818c:b0:490:b0e1:2161 with SMTP id 5b1f17b1804b1-490c25b39fdmr31776185e9.2.1780640967237;
        Thu, 04 Jun 2026 23:29:27 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f344148sm23022648f8f.19.2026.06.04.23.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 23:29:26 -0700 (PDT)
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
Subject: [PATCH v3 11/14] arm64: dts: st: add usart1 pins for stm32mp25
Date: Fri,  5 Jun 2026 08:27:39 +0200
Message-ID: <20260605062900.368376-12-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[engicam.com,amarulasolutions.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307208-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05E83645901

Add the usart1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 46c5197dcd63..a72c458b2c6e 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -766,6 +766,39 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	usart1_pins_b: usart1-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 8, AF6)>; /* USART1_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 10, AF6)>; /* USART1_RX */
+			bias-disable;
+		};
+	};
+
+	/omit-if-no-ref/
+	usart1_idle_pins_b: usart1-idle-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 8, ANALOG)>; /* USART1_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 10, AF6)>; /* USART1_RX */
+			bias-disable;
+		};
+	};
+
+	/omit-if-no-ref/
+	usart1_sleep_pins_b: usart1-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 8, ANALOG)>, /* USART1_TX */
+				 <STM32_PINMUX('B', 10, ANALOG)>; /* USART1_RX */
+		};
+	};
+
 	/omit-if-no-ref/
 	usart2_pins_a: usart2-0 {
 		pins1 {
-- 
2.43.0


