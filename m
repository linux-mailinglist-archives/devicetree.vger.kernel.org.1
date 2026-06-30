Return-Path: <devicetree+bounces-317550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jAdZONOOQ2o8bwoAu9opvQ
	(envelope-from <devicetree+bounces-317550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:39:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB0E6E24BE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:39:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=iJaX3JC4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317550-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317550-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0936E30B3009
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF0453EE1C7;
	Tue, 30 Jun 2026 09:26:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFC53EE1E2
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:26:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811606; cv=none; b=l31jzA0oKf5//OQvVjfRzZIUidPqWhR9/pc/cNn2GwUxyhOdVIP+hv5Ewfq6xTyx6/k+ji3EBCySiVjOWbMJYaMn2N1BrdSWMqFqm83uB7Gs4NA2YugSUEHiF6UJWe7A4GkQPxxE7/5p6qcFFmuSl1iZKILXLiP5MgOBRZ4hJr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811606; c=relaxed/simple;
	bh=9IgDtyv6yAMUkWsg7RNaWcItxtFHo8kakpm/KHcWfnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PEmY7tTj2fTn7E6Px55m0Eywxu0YmGLZNBnq/XAClcN9COa1hgpaDvCyE4/4C2xCwvAvIycHDdoS3AxGx/r7CwaGsmh7IQ/a7hobJ3AiXDdb99QEiduPCScUqvYKRA1ne8OSEUoGTds5TBJ1cd7KQHXJ9NBmIxHUsaSS1LzMjuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=iJaX3JC4; arc=none smtp.client-ip=209.85.128.53
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-493bab44440so1788635e9.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1782811603; x=1783416403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fAmctwTyX9ptfNTsOcFrY+BzuI2WSByIHEJFFIRpN/Y=;
        b=iJaX3JC4LJutm/00HHSu26tTXigd0r95IFHzwS4LgUcziG/91IDpMTv7PExbwjyDKe
         sMh2JcZSHrabwCom3Adv6z3EE/Z+adeOaDiUtyqU+flmTio/FTglorgvAvO05+O6tjPu
         QQwlN4DgqVJCVz/3GRFKjLJQ0nhJx+cs/DEjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782811603; x=1783416403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fAmctwTyX9ptfNTsOcFrY+BzuI2WSByIHEJFFIRpN/Y=;
        b=GNGkcByeSQBDsvlsIsdzL84Clj7s/spx8oZvy2HF/kOrzes+oaabWVpAJZG4OeIZAR
         K9WTr3OYywef3gQ+gKY3t0NN+7Jg9xzhXW8QsEWITIfEZ5uAcPJacIniaK4N0eslfCwV
         7TDqeWW+KKtETAW48xZNJ0x9DLSdGGssnwMXw5JP1iLmoHN7mmrcXrjT2a/1XjdyRjTh
         Tf5E8mojn1J2J3rM4vaoCFdit9eRT4yJWvOuPpXRO7UUsO5hhoyfc8cdY4pxK9fVtAJU
         yNjpuM64f34zbeDyI9m6zGunrXwHinOyFKf4ouUPOXyLSprkQFmLTf54Hzv3ynrdkT6n
         ylYA==
X-Forwarded-Encrypted: i=1; AFNElJ/s3vUcKXJ2xv64crtDz59avN6fPXzQ2IvK79+1ESToYDRzLjBYnGRbE0TgOqmZWuhqB+lohx0yGj+F@vger.kernel.org
X-Gm-Message-State: AOJu0YzNZ9zPscqHQRtjVJIT4qm5+1bKocG8WW1k4G4r75yIoaeT6XuI
	4lisZAu03cjlApN6KBnvQQkCtvTbnXM7oj9ggztK80uaK9buNBijosLIqg4Iv0dXmTA=
X-Gm-Gg: AfdE7ck1kN83J0x/v9xHOr79yiQt8WF9C5QQH9agTrmlWPyfJGrHH+glQFOsF5Ka27f
	WJL9qFMrdBcfiKqKLdYFSGxTb92iwREhy6ooAOpSR6eL7hVkUWDeDxXRvIWJpGquXuJH/aOn6iM
	Kjw60yHijejB+hp7nx6emz8xLzArjTwrxOho9/OyoUgqwIFgXsIpOpHAYjqzO2ZCWfaZXaWcFb8
	YY9tKiqBmYXSD/pXi4+cQLvw9JMacUSeLG4wiUpDLAA/FTFpxDzB43an433LvxWxhHyKbiNLwfz
	2oHohGji8MO201jWhb67//NdVpLmOlp5t4I+qhRbhXqwPxJE051iqvokDQ2ip72stpw7UaxWsXC
	225mRNx1lmHXdippA2Fc36nOBaGgxzBwdfyXjF3Uu2XMKDwek5ZI12sbmRmeDW79p55FTt0DukS
	Sv5l+drRnCjwrBcxcmQS+BlMtdO49zkpHFf+kSKoFa3rQjDNwYa99NII48pKJrTDvItBpDCDd1J
	8rcA7JkNCGy3qb9SEQXheBGzxJ66tcNXwVknnr3BtPwjv4D0/F2alB07zR50TWHVjpKqRpM9mU6
	C62AmnHWb4rVLA==
X-Received: by 2002:a05:600c:6088:b0:48a:5f32:62c6 with SMTP id 5b1f17b1804b1-493bc24896cmr14463075e9.11.1782811603595;
        Tue, 30 Jun 2026 02:26:43 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47567a6f0ddsm5669083f8f.37.2026.06.30.02.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 02:26:43 -0700 (PDT)
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
Subject: [PATCH v6 04/16] arm64: dts: st: add SDMMC2 support on stm32mp25
Date: Tue, 30 Jun 2026 11:24:33 +0200
Message-ID: <20260630092628.1695560-5-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-317550-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CB0E6E24BE

The SDMMC2 controller supports SD cards, eMMC memories and SDIO devices.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v3)

Changes in v3:
- Add power-domains property. Suggested by Sashiko.

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index ae36d703532c..44938c036e30 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1668,6 +1668,22 @@ sdmmc1: mmc@48220000 {
 				status = "disabled";
 			};
 
+			sdmmc2: mmc@48230000 {
+				compatible = "st,stm32mp25-sdmmc2", "arm,pl18x", "arm,primecell";
+				arm,primecell-periphid = <0x00353180>;
+				reg = <0x48230000 0x400>, <0x44230800 0x8>;
+				interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SDMMC2>;
+				clock-names = "apb_pclk";
+				resets = <&rcc SDMMC2_R>;
+				cap-sd-highspeed;
+				cap-mmc-highspeed;
+				max-frequency = <120000000>;
+				access-controllers = <&rifsc 77>;
+				power-domains = <&CLUSTER_PD>;
+				status = "disabled";
+			};
+
 			ethernet1: ethernet@482c0000 {
 				compatible = "st,stm32mp25-dwmac", "snps,dwmac-5.20";
 				reg = <0x482c0000 0x4000>;
-- 
2.43.0


