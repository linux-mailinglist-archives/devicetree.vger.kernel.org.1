Return-Path: <devicetree+bounces-317563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t7FZIk6OQ2rKbgoAu9opvQ
	(envelope-from <devicetree+bounces-317563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:37:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D90C66E2457
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:37:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=j438SpL8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317563-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317563-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EECBA30BF140
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CDF640B387;
	Tue, 30 Jun 2026 09:27:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5F83B1EEE
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:27:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811622; cv=none; b=OTAixlEUqJYUUDhmBP3KKxKFTNDIZFxVrrOCMJGXwWdm7PTURJa3n3PVFgIpv24LExFQp+nUvnnOIZlBOrQTkWyoVmG0Cvt47NhMGfu8JuvyHeOWY2z/rCvwY61CKFWg++jaS9nz1vY3fC43+h+z5iCfCARzD7WxjpmgcugiGEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811622; c=relaxed/simple;
	bh=aj2uH9b/bfRzOkvrPYZ2176FA4QkmEK3VTNxofNEdQg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l+ASPqBQb9uh5GfOd++C4KNRWG8KpuBDYB+HJ0k4I00TfduRO+TsV6InYTveHvKr1eK5WTmweZcj+g/kHis54zynrpXAk/ZzjaxF6qllkS6TtCb0KE8FJma3dZhTsquL02rTLQTIdh+wJQvwkPESbzDLle7v3IvDFBF65VpHExA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=j438SpL8; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-47640541585so1594f8f.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1782811619; x=1783416419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W4P3RDq+QoFIrungFJ6qmguRlrjE9G4sn4ESNQyuys8=;
        b=j438SpL8tjzcx1JYhq3TO+z6NEd3s2sm//90ipaJl6P1RQHVUVvKCVtuX/hFQEXdFA
         BnrpRN4Ioy4PbF48Jt2QWFDciS3vfOkAhq1Zay+5kUdYBw+lQEbtwbjkDObCAOpDRsyR
         n3UhoalNPP3MP6D5v8n5ZlvgeTBRAqMfXn6NQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782811619; x=1783416419;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W4P3RDq+QoFIrungFJ6qmguRlrjE9G4sn4ESNQyuys8=;
        b=KlQeI2f/dAW9lOTCFfVrQLWv9e5Ka+o7V+wEKtJLYYxFKGVnJ8yMCQedHaptkP4yxj
         kxa41Na5TYYNwIwMNgJvDtGt16qBTTP1PnWL7uF14AMRsdWERja7A6+oFWAg96Uk0i0w
         UEeelwkb6djHpSP2ApKmAYXg3YMWiuBnrLNVGrYhKzM/qhEoKBxNVcS9QWvPiquUyRqj
         6o/OrNuHij8bIh65WyCOK8E7DIhe2eGFHQiAdHPWg51vDJ0cmqNnr2ifrYHqiDEi1AtY
         0Oyd1WE3GamZ3A8ufO5pnyZTUveeK+Ksq15TQ3NG08duLVdE4iW2Fc46Bd8RXrQT7adH
         vWBA==
X-Forwarded-Encrypted: i=1; AHgh+Rq0Xk3UL5TvWClAYWxmslaWF56aZD7U/DuXeAOvjkK1qCLMuMvl5Tf7Oc7UhkWazEWA7HZOTbBKRBrf@vger.kernel.org
X-Gm-Message-State: AOJu0YxkGGiSOZiIyITmGbNswrZFJFLKBe/f7bBdLDZ9FLG0BKEWbRdL
	k81VpAS7A/uJ1dahQmFo5quuV8K6eq8HGu1X3JBVyIQAoD74z8h3ymWxKBUyBP1Bj0c=
X-Gm-Gg: AfdE7clN/0LTYNvVea3v4IXb/R5rc7cO6Cehxih38obLOPQTswuG1XWvkc4BgXDa7h+
	A4yyQAZLL3hPJ9N+A441MEI890okk5GZI+9wLSNHg9N0p11pGQTe7tQiK5QwLCKwG8Sg0x54zxC
	WA5ra2z18mHTmSxUAakcQW0s2CUMbqRb7Z87B5NuA8jpM+6TlURZaNysrsBv63aSDudBnV8+fOz
	oGxJIG5eI+1NYWFcXvdOX1VUxpuWd0H8rEcRD7Gw9Rv9E3xmr4tcuXUdqMI6oGN/yWfsJmelh6C
	E0DD6Rg+iuj65jtMQcFQSeK1RIMA2cCtz8Z8riHvsiVowsnZd3EXS4x3zxTZjVSq1IxqsYgwFmX
	PrsFdb7JtJt0bZ+NXwtOatri7Vrz6ET4l+ohsmEHltHGGAcmOjx7xvGRXmIPcZTxXfz9nj6GRHw
	3QpPmwVV56XtuhkZfkkAh3c2Kin8HDEIfLQ59/mT3WfKDHIRKeOEDJg4vHxMiuztOEI7PXgAzXP
	VISM24m5b/xpMq+D4/VVx5rY0ucZ4diuVqrHxhpSg/5uPnEyMiZ4Q8yECzXnplX6Yd3iMwRKr4M
	HZLanktBIgWf/w==
X-Received: by 2002:adf:e195:0:b0:475:f0f0:9efc with SMTP id ffacd0b85a97d-475f0f0a10dmr1512953f8f.51.1782811619467;
        Tue, 30 Jun 2026 02:26:59 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47567a6f0ddsm5669083f8f.37.2026.06.30.02.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 02:26:59 -0700 (PDT)
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
Subject: [PATCH v6 13/16] arm64: dts: st: add usart1 pins for stm32mp25
Date: Tue, 30 Jun 2026 11:24:42 +0200
Message-ID: <20260630092628.1695560-14-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-317563-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D90C66E2457

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


