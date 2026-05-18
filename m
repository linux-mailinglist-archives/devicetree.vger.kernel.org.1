Return-Path: <devicetree+bounces-299483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLCaObYmC2qHEAUAu9opvQ
	(envelope-from <devicetree+bounces-299483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:48:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5656F36E
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CD06305F15C
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61E7492511;
	Mon, 18 May 2026 14:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="N/TKikdS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDEB492182
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 14:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779114744; cv=none; b=E/Rf7CrSDbHNIhqsiUXI0UlUetMpuPUscdRceiE9d3NXq57SdZhtqs8J+1wE8Krz5qjDnmD3zvMpHP1T8SVVtAMGyW/ewKsZZQefCueCvZRunfm0y/07eC10QymIuKgw5TqUQwQbyQm0zDXtEAWx9Bc+ldOYFfVDbNINXFZGsxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779114744; c=relaxed/simple;
	bh=1qh2j3VIqbd5dUovmqhVSor7MsL7rBmikmvfWyE7vgY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pb9HAbdcodhAGjq79qwuCEgD0v+XTLPYbpFSydiqAlLNUEqLDKWoIR/uUZUi2obhGCUgY6s0hxn59yexOF1uj5EHOQ0PqXKqvF8SWbWAlrA0sPF93m1A21bYuyGohTIZv1ie/DtFEfsGn9fDDSZ6KDNBn7LEq4ONpv/ETaU+YhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=N/TKikdS; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-44a5174670eso1271023f8f.1
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 07:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1779114738; x=1779719538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M+2fG1k6iz5J9vZ3VHDwkeyqO1iLOvyLGZ3RtktWg+M=;
        b=N/TKikdS+FaSGMDFQsXfPpnst5ucDsci4ZaWq5WPLoBt6HD2ff2sCNwqRHIrwroQpE
         q7bHGechnYcVbv6jIcnBac8jjxW558Z0Tgegqks02NjpPnRzEFwWe+pCn7wMKWadkqmX
         5oT7cFdhq0C0zDc0ZTV07v1WWCldO6dg1ukWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779114738; x=1779719538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M+2fG1k6iz5J9vZ3VHDwkeyqO1iLOvyLGZ3RtktWg+M=;
        b=PbWYhd775jet8qxoU2FvrGl8kC5pN/KTthUXH6xX2Q44u9BDkLrX8qX7iHqOJm0Y1Y
         U4eAJM0y0qR+2ehndGTsQ+Aj7o2y4fw4D8D5a6B7VUxIXqejko9T3fL0V2ScH4wrqFdz
         lEJXpESU04sN9m408EsyzsYf54KqbjH0QR1E53KsEmIjzly0VPgPvBhTBPL8alsyu7WZ
         kYMTT1Vw5i93qMSLEVfU7K7nggbHxWcYk6QF0LFXSuTY5zXSFqe+2N7sOLjLvaMscciN
         2pwDFw46Szpr+BPfyHKoE/NZTfUEqXB2ZCQdbp+eCfGSw8Gu3pjCEZNCd3QkDQ/Qw+hN
         c3bQ==
X-Forwarded-Encrypted: i=1; AFNElJ8hAmlISdtdrA0mr6MnUruDwadW7zk7mRKwWuWS35BQI36IVjeOy7RxfFFNodpqQ2jeTfsqTZc2inZH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6R3gLexIgMSgmrWb+bnCcB6ptMhMWFBbo1XQ16KCGj3uJY34t
	jmH3A5jla/GjE2XQhGXkgE80jiooUN6bxejVb8pgRloAOZLLJRA01s73dxI2HuAMQ0c=
X-Gm-Gg: Acq92OHheDOH1fiLf3b6HpNz2yXl2TxHW7pmakQnffzmKARNkDcP8Qfsg+tGCiesWS7
	bR2yu+RPpzLbsd9M7DWVlTDnN5HpQl/L/u1xHlSNSV+oQ4lNtdetuj5kNOqE/x1rccaQL/Dv0Hw
	oDN8nDb//0/6jUK88xB8lnnEVtB8a+/a1Mzt7xVxHf1PajOg+/GeiRqQbQqbS7QMkfamX5Z4R0s
	NFzgsn6lEE+m5Y58Q11cbft8JkeCUXwOsQ2I5uU50xZNcFZ5FH1ua1ibMKg7HUmy+HejKWX28MP
	BAwL8u2yib6AGLRuPAia+Yd10SNdDG7mt265W8AEdQug42ssT6HqMOxylxuW7jRPe0mNe/fUT3W
	T59dAynQWqKN1LNOsrD+4LV+FP8M01Kv/1zwWh9c+nTxquywxIbKEkQXkTN2eaIq3ZI3+dbrliI
	uHew5W1JS8LdTUoehxMoTcw9UkxzdPb8C14eqdInp51zSOQt0pM/KHld5mN42FCdoXWYscaNOzU
	wHwJsu8aoFIZdkxFefFNaaXrB3MtlZfpVyAEHyn9pt0gqma
X-Received: by 2002:a05:6000:2902:b0:43e:a81d:c475 with SMTP id ffacd0b85a97d-45e5c58fbf9mr24055470f8f.6.1779114738301;
        Mon, 18 May 2026 07:32:18 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.43.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a1aeafsm39564572f8f.23.2026.05.18.07.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 07:32:17 -0700 (PDT)
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
Subject: [PATCH 10/15] arm64: dts: st: add spi1 pins for stm32mp25
Date: Mon, 18 May 2026 16:31:25 +0200
Message-ID: <20260518143150.3138712-11-dario.binacchi@amarulasolutions.com>
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
	TAGGED_FROM(0.00)[bounces-299483-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 64C5656F36E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the spi1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 62f898a55d45..46c5197dcd63 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -702,6 +702,30 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	spi1_pins_a: spi1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 6, AF3)>, /* SPI1_SCK */
+				 <STM32_PINMUX('I', 5, AF3)>; /* SPI1_MOSI */
+			drive-push-pull;
+			bias-disable;
+			slew-rate = <1>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('F', 12, AF3)>; /* SPI1_MISO */
+			bias-disable;
+		};
+	};
+
+	/omit-if-no-ref/
+	spi1_sleep_pins_a: spi1-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 6, ANALOG)>, /* SPI1_SCK */
+				 <STM32_PINMUX('I', 5, ANALOG)>, /* SPI1_MOSI */
+				 <STM32_PINMUX('F', 12, ANALOG)>; /* SPI1_MISO */
+		};
+	};
+
 	/omit-if-no-ref/
 	spi3_pins_a: spi3-0 {
 		pins1 {
-- 
2.43.0


