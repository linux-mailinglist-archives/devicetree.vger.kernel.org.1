Return-Path: <devicetree+bounces-326658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ex1gLQQoV2p8GQEAu9opvQ
	(envelope-from <devicetree+bounces-326658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:26:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0E275B09A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:26:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=NiPRI2m+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326658-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326658-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 916093037AEA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63CF933893D;
	Wed, 15 Jul 2026 06:22:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CF531B130
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:22:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784096556; cv=none; b=BwwlVu0evumPDFzo6Cx0QcFznEfqhHDIf+Hi5CYgNaprfsBQ9+5rUpuNPGJ1FJA1MIBlKFsP3pri8o252eewGTs2czWsn72uef491OwTDbhLAJD5cTkgRwmpr+Q7kZ4fcQjIJiy/QwH9eYFWkzq4OO4z691o/4VVRJJyFD1v/iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784096556; c=relaxed/simple;
	bh=rnWLEFiDlBBvcqgAYzjKZ4XFL5fis/NEoP1Gp9rYwhI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pQRXYqXzUUkvvPnXFWFURuPvNKHXnUIbhKSNKplTWMH1PQz9MF7abi/JQfx0Bmby5UpH0drgWmcmon6WbDJAXnO8uc2AJBzY4tfZ04AsxUCFehBVOVBsKJFwctWiZZ2T4xhcqhuuWPyi87Apg5aqqO0UCAy+WBGnvCdukUY05aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=NiPRI2m+; arc=none smtp.client-ip=209.85.208.49
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-69c7ab350e9so5080195a12.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 23:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1784096553; x=1784701353; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FfOZA6iVrDUHFVdgseSiT/wEZUNJjAsJQt2ibv2Z8NQ=;
        b=NiPRI2m+L7jZtH+kKY5CMTTcNJfrA8G3nhzhHwL8h53sbVbQmjqraW0/jj07rr5ytM
         JUg6QoP7+xmHzAjYMwi1fOIUyogI60AXjyxiDAi8rd33NbTxTpuqsUWXspupaixPZ+vR
         dCe0N6d8Ll7qrQ8oxhkkBgub+TRVQHiry3390=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784096553; x=1784701353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FfOZA6iVrDUHFVdgseSiT/wEZUNJjAsJQt2ibv2Z8NQ=;
        b=fYhxPbhfxda3puBVZybmxoXmJDdb0qGYq9RsuEcib8+SytcqkfXuRgMHZn5Y2/vRKl
         VtJrHn1FniSjysfWfByU+voiE8Iu2iBWcJAoAbQzsbEOdP3l9IYHmI4EfqCFNQbo7Ith
         04Jt6Li958f2SzSwTY9SPQVLCLBGzVqDy4EXM1Glg7Hq9PAQNlgIupxu4kJI9Ji13tJs
         zpID6B4BekrvaBy2hCF8FFRJhhDXPjkbEz7jvUVSWzb3E5DkQHwqvzG/GTG9eoBZ+7mL
         fwG/mSmA7Dks1tnqTvawB3MQWeXzUWUEsNaPsa82BOlthisoJCyjbx5kQLEIrF4cxNE1
         gVGQ==
X-Forwarded-Encrypted: i=1; AHgh+RrJq+oDO8LpYXaRHGtl5tucBtPzr6bV5PUxvMVZZSWcar976GAxrLQY79wSxpHLFijMuJZjch4nT5jX@vger.kernel.org
X-Gm-Message-State: AOJu0YxdO6pBM4kkQWRqg8fX+tmmXAn3HDI1D+KaDfEfGQhNGOpI70kW
	qGQSo20jhpDZutHLsp20RyIY81ixBkEY2BAaSwnnpz1fNhKhGQoH2YUjA8lmxHeCR10=
X-Gm-Gg: AfdE7ckYGlQwAidtfex4pab1TLZAlYvgDWyv26WC2RYivQf81qjBCwKpEs6Nnx9jtQy
	JxqyDkVyTTLv4gMt16vHb4wauAFoT0HfzgJaItWppWdfAZzIA9oyoVdmh4Vw3V04QlA9BWFNiRo
	uLMcLeFsApB3zCTLhQflX8mVIhfvd3tO4+KiaTLrhYTWscPChQ30kcP3EpQEGFZFeFlPauZpST4
	VB0Ir4sTR75O9DNi2EEhcjqK2fMHUHdeTamDfShs446EExTG4Is/xSUs2MwJBr4D3cPuFbc9EZe
	F8R8+zqRxkI3BEL+7Z75UDs5Yb++cNnaCQXdvvIbX3xeuhhonltxuvoSteUiVFKDYL9XEYR7vlk
	22PUWH5cRmtthQb2hB+2hfp3aui0hi79DkFOa2AjKy1z8dwObEXRid69kf9CcE8czrm0xM8XukH
	gpGz5G2k8xYKafcYN5EsoteLEEXYlCt0Oid7/B5fpDeRxoBwezwYQ1n0f41X2hML2s65xvFkI78
	eHqh726nhsU
X-Received: by 2002:a17:907:3e9f:b0:c12:86a3:5425 with SMTP id a640c23a62f3a-c16794d6874mr98915166b.62.1784096552988;
        Tue, 14 Jul 2026 23:22:32 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.41.101])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15d0c3cf1esm1028820366b.44.2026.07.14.23.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 23:22:32 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	francesco.utel@engicam.com,
	domenico.acri@engicam.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Olivier Moysan <olivier.moysan@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 10/16] arm64: dts: st: add sai1 pins for stm32mp25
Date: Wed, 15 Jul 2026 08:20:27 +0200
Message-ID: <20260715062201.3599458-11-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-326658-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:francesco.utel@engicam.com,m:domenico.acri@engicam.com,m:linux-amarula@amarulasolutions.com,m:dario.binacchi@amarulasolutions.com,m:olivier.moysan@foss.st.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,amarulasolutions.com:from_mime,amarulasolutions.com:mid,amarulasolutions.com:email,amarulasolutions.com:dkim,st.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD0E275B09A

Add the sai1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Olivier Moysan <olivier.moysan@foss.st.com>

---

Changes in v7:
- Add Reviewed-by tag of Olivier Moysan

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 695c9d771853..002fbc724b9d 100644
--- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
@@ -520,6 +520,51 @@ pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	sai1a_pins_a: sai1a-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('D', 9, AF3)>, /* SAI1_SD_A */
+				 <STM32_PINMUX('D', 8, AF3)>, /* SAI1_FS_A */
+				 <STM32_PINMUX('D', 10, AF3)>; /* SAI1_SCK_A */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <1>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('D', 11, AF3)>; /* SAI1_MCLK_A */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+	};
+
+	/omit-if-no-ref/
+	sai1a_sleep_pins_a: sai1a-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 9, ANALOG)>, /* SAI1_SD_A */
+				 <STM32_PINMUX('D', 8, ANALOG)>, /* SAI1_FS_A */
+				 <STM32_PINMUX('D', 10, ANALOG)>, /* SAI1_SCK_A */
+				 <STM32_PINMUX('D', 11, ANALOG)>; /* SAI1_MCLK_A */
+		};
+	};
+
+	/omit-if-no-ref/
+	sai1b_pins_a: sai1b-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 4, AF4)>; /* SAI1_SD_B */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	/omit-if-no-ref/
+	sai1b_sleep_pins_a: sai1b-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 4, ANALOG)>; /* SAI1_SD_B */
+		};
+	};
+
 	/omit-if-no-ref/
 	sdmmc1_b4_pins_a: sdmmc1-b4-0 {
 		pins1 {
-- 
2.43.0


