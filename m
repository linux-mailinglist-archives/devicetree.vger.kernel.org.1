Return-Path: <devicetree+bounces-319831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u962InpcR2rzWwAAu9opvQ
	(envelope-from <devicetree+bounces-319831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:53:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 525236FF412
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:53:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=YX0BNBtE;
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319831-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319831-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8FEC3303F1C8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF8D3914E1;
	Fri,  3 Jul 2026 06:52:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660803876CF
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:52:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061540; cv=none; b=i6ALNH2zRh+h334OFlTQV2mD4FJ0aNEpDhcucGEbJnYxhjnfuK9nNCnvPdMPTS0CD0v+Uf4wsw9JvAlMtBEXPacUnY9wlipYqApGhjMWVUsQ/QhKNfsWIb2EQ4PMjko5nDAgow+c7sRlB0/sco4exI632GviAP0JACbErvyoLoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061540; c=relaxed/simple;
	bh=aj2uH9b/bfRzOkvrPYZ2176FA4QkmEK3VTNxofNEdQg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bP2o9qqTAoe1MP0cjljkaP4bokBT22QHvg8ttLy/yT7uCBIGjyJVArUcfWac/9/vnz7eSj0cCCvUtFmnXR9CP53sn42gxTgH/cAjFBdOziD7hZykM3kfHd5Amk3+wVyzkc9yLjdxWKX8XyxAKP+p4zt5ptIY9UDwvqklHwcMvms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YX0BNBtE; arc=none smtp.client-ip=209.85.218.46
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-c12c22d0f86so30892866b.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 23:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1783061538; x=1783666338; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W4P3RDq+QoFIrungFJ6qmguRlrjE9G4sn4ESNQyuys8=;
        b=YX0BNBtEtR75Qdcj954cCjkwmvG4dQlSlr1BDyaW8xf4Ypu5vjDX0BVfpL1ClfD+Xd
         axW16Do20avB8BrLY8gePvNFqdoQozsP4mfe6Y/F3AklGqiFUzXCVgU3zMoT+hKwQe1a
         uaWkAn/HsXkMV1uL/YBwd0v2BLKLOFUc6tMxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783061538; x=1783666338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W4P3RDq+QoFIrungFJ6qmguRlrjE9G4sn4ESNQyuys8=;
        b=XJwDkc8WnfusEyOKOYDSW5QZvtiHoW+3ONIKIo2foPfFpjLkOJ56vSX78khfdeSP0R
         A8H7JSinVSOlZl1gxLUCikGg7SNjsKXabp8WgRNmm6x+AatLluxtZMS2zeOzPu4jDwfg
         ZS7ywYKDIjGP6bFLTC0NspLaCmWyVXa0nlz3x6NzIOEc3tDxnT6sEazsJ1WQhHqzKVIP
         Q/DFM+jIHoiZJrDGcHiZz60qbQs+ADnvR5JCdq0M/g82ggwHeutrEpLbYFWTR0ffQu5+
         3nK2L82YwH8oYsIf8t3gAfkYSUgvQBLLKJz79iq3HShITlgpZyq/UyOi/feQHkaQajdP
         9xSA==
X-Forwarded-Encrypted: i=1; AHgh+RqwmWmJH3dB1gqJhU/OHAmMV0nwTv5Ty/W+2CanTnrG8XLb1glj9/R7cxX6Ze2MTk6tFqK4teXEThlx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo30J2P/rJ/7NGhTCcquNZlF9SWIfIdvYuY1vdg/BlDSpyk5SX
	kCpBgsngr46w0qm0icMYg/+jEgztg4VzVhi/ZIAQi89Kh97dpS6hM+LDP0yM94dUqgIMhry1wWR
	H1N4/duo=
X-Gm-Gg: AfdE7cls90EAAVZTtaXYjMRzBcJGH+7OyIrWHIRkC6F/S12XcyrWPL+ohmi6cqtRHxR
	UdO5CtCidDzTz0IRmlM9MvsacSLYmMIYT6gxh6RZ/FCjP3FmZGRHF8k6ZiXWLaszkM4lrAtOMcF
	LGssRVRYN7a1UezRS9FjXJMqHhp6dw44Fc1gIvVEHbvhc4QLvb5xqNjsiRgCq1r39oFKE8rc1rq
	OiUa2alPxvEFQ4wDpKK5sqhgwKffkQ0wKWydLL7SF4pRCR8MWVNpY01M9CrjHU8/BH/OoD5UyY6
	pnpOlaEIBk+As9R5WeoXQHyfXiscGIpXvJpOxOMp1dZsQlCyOzROWjBgIV/6TjiQN24CK+hCGJ6
	Dqwhyd2PKPzZM9YtSZuqWoKIbngT13FPiWJ7nFIz2fFlA2cZL7IbviuyNC8rhTRCyNsoSPDje6w
	lrrxcnys1Eb11PwiJMWuq5EgbYOt4NmZu6ks2KiSoBYqrBU2R/QEhptslGpomdPdzuks4pRAzoR
	1fi5no1isBQ3RFLufTUOw==
X-Received: by 2002:a17:907:808:b0:c12:9bee:3b86 with SMTP id a640c23a62f3a-c12c9de19cfmr147004466b.4.1783061537641;
        Thu, 02 Jul 2026 23:52:17 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.43.95])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62c4695sm235462866b.44.2026.07.02.23.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 23:52:16 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	francesco.utel@engicam.com,
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
Subject: [PATCH v7 13/16] arm64: dts: st: add usart1 pins for stm32mp25
Date: Fri,  3 Jul 2026 08:49:03 +0200
Message-ID: <20260703065110.1433283-14-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260703065110.1433283-1-dario.binacchi@amarulasolutions.com>
References: <20260703065110.1433283-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-319831-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:linux-amarula@amarulasolutions.com,m:francesco.utel@engicam.com,m:domenico.acri@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,amarulasolutions.com:from_mime,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 525236FF412

Add the usart1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 4e570e2e5157..d515e44832d7 100644
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


