Return-Path: <devicetree+bounces-319825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sLjPFwtdR2oXXAAAu9opvQ
	(envelope-from <devicetree+bounces-319825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:56:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBA76FF472
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:56:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=NYWtMhYd;
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319825-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319825-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E06830CF1C3
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9073932D9;
	Fri,  3 Jul 2026 06:51:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59508391845
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:51:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061511; cv=none; b=krMpiie+ZCaIqzs2hE5pDF+OeoufcsUe2Y46JKwMmSSucI+6VNQC3z34pqcAogUbSd4OWclUSGw/DV35Yrdlg5zZx6WChz8XuhqLEDnpBo04j900WjJV+/MTuvLjaqFNl63OblLka8lQd9ArKSGMSRa1+kSOX0E7bxY913keZuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061511; c=relaxed/simple;
	bh=H2YwgLpeEoUgwkXMc0nAyFKniAzF3scYINRPengKJHA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jPm0DHJPIifDyYY3O1oyhVe3Nm1Gqtx9bOGfAHPWDtZnQdJ96aK1kxggopf0h4IqtP282lLKxDmtEbxoeF54PC6Anf1JV98g2qqsPl/noiWzQqcizETgJsU/4hKlXi+NJhnKAP727DIy8u6Is01VboyRb2LBrPHZGyEFRHwz3xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=NYWtMhYd; arc=none smtp.client-ip=209.85.208.52
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6986287534eso484969a12.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 23:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1783061509; x=1783666309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mf08+e18iQyaBCmXia6is7dzqtiU26q8LvKBSudwg7A=;
        b=NYWtMhYdmUyn57sdsv30U4A3WgrFvMfIpX3TF4qzCbzaQ3EsNt+A6gEGaEMgyuwP6a
         kqKgc8YFxlsoBpUy09JOTl2NShS2ky4Jtksytj7WrBe14XwUAfQGSOOLTfw+njQAxcaQ
         Jt6MTv+aM2Yp2PK/9DHqCm2GGnUzNSIryqcfw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783061509; x=1783666309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mf08+e18iQyaBCmXia6is7dzqtiU26q8LvKBSudwg7A=;
        b=RczmwL3+XUpkgrjKpk8mUj9ohCZRQ0LVy4nwGIEOd+GXjyJH1TT0UjjjG5k0gOY++v
         o7J+ugJmQLuYXPlx9I9ssA1/cxz0PUIk53dHBbK2ZyEsT54w2Dez6UVYgw3vMAqeBGfm
         hRwMhCGchKSD+lGi/mOFkAWK6QdCJonTg5mMh3xQONZteRX0MQpNWw1lg2ik/mq+EKGa
         SQSozpyepWgj1ryx7bgn+NPkwhhVI455bYDV00tIP9HpQ5ygw/YCDiBnJGqKuk8lC6Tb
         ygArCHPUz3Jm8fqqMWLaM/RsvmbwHS5+uS57vYKMbn6hpSRkAT0vyW8Fk7IhEKUdhJM7
         cswQ==
X-Forwarded-Encrypted: i=1; AHgh+RpPgKoRWZFl6cJhsN0EyGXj13+myKcQNTzGFzsHPvvdOGrUySZz3jVQUkyaRC++6ZUfPQ5glwTB7KHP@vger.kernel.org
X-Gm-Message-State: AOJu0YxpfLHkYBOOJKp/YUSABMZEpdT33aAQKHWHDgAYSq5M6OhAa1bK
	XysS9CZsfUznyNgkbb9xoCDnlH7994/nQv0DwFnlgafTPr0vCZn/EwxC7j6x8EmVYGcY+P6kGCn
	gQOuWrhA=
X-Gm-Gg: AfdE7ckn+gqLlSysUwH7rhccNgYHV1vF5L9LxMt+Nczj94hDJwN0GToIbTWLH0Wbdr9
	EmhmxCHhwUyfQe4k7R+iZHKqy7pPc6v0cVZ3k6NiDAXmRMUWAn2CZ3RV/ETZ38BVPmWJeb3n15W
	apPO3d0NnG4ioidwPt8UgIw9u+m5juddKK/JU5RQyr7Wx56jVkWcIIxWxUSy65mdrHXwkxgIqQK
	wyv71I6QUWcs1nOHtrFa9huOg7zqoTgmBKWDz/Z6+8GOqjwY+ex18ymhd5Wo2jKNc7mnQx+qctu
	EqctWUcJ0Gy/b8lMVJwPaVDmxBXh1LK5HLk5IAQ/eJCN38H46SXdPtiq6XyT7KGnb9aefXp4AhJ
	MgUj7G1SdgpTSWpUq1Z+Ivrwr1w4Goskln58eeySBw1A7kFDR9AGui+WQrODZmdPdqI1Bzozz5b
	bwtFXV6RebjoohsVkh03pzJ+Rp4s84tn6VxOFLBxtygMsvSnxS1ror95ppXoWBtsoqPuqp5Yscl
	HMMC6E2b5SjlKYR1xN0vA==
X-Received: by 2002:a17:906:f5a2:b0:c12:b563:ed5c with SMTP id a640c23a62f3a-c12b5640b5cmr258111166b.1.1783061508737;
        Thu, 02 Jul 2026 23:51:48 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.43.95])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62c4695sm235462866b.44.2026.07.02.23.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 23:51:48 -0700 (PDT)
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
Subject: [PATCH v7 08/16] arm64: dts: st: add can1 pins for stm32mp25
Date: Fri,  3 Jul 2026 08:48:58 +0200
Message-ID: <20260703065110.1433283-9-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-319825-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,amarulasolutions.com:from_mime,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCBA76FF472

Add the can1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 50f454630cf2..6482dd47e977 100644
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


