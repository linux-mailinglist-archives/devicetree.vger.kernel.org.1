Return-Path: <devicetree+bounces-307394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BjSSLhvBImrhdAEAu9opvQ
	(envelope-from <devicetree+bounces-307394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:29:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB8D648228
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:29:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=noL1YHEQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307394-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307394-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9655330D341F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952F03D4126;
	Fri,  5 Jun 2026 12:20:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0D73C343F
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:20:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662025; cv=none; b=ipSrDtmkjmRJBU6DFlqfmsHVfGoQn54xlu2K4iz9P4aLsJzyHxTbfJfk0mV9dG3q/KuPoKx7YGfJkb+73gRgPcQ/jpd6iSNY7z92gV+gPllB37m4uvp4s8YrCvquwx4+rB9VmEGjK85nxFPf1wP8njAVm0SYweQhtHc5fRE1H5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662025; c=relaxed/simple;
	bh=H4l2qG+pGEJgFcb/52U52UrJQhd3/X4OF9BCeqi+O+w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LQc7Uu9S2CpvXV+9jEqStuyzDjROqy18f2NvkgJTdpu9vdQq8KC9cF8TuQrj4fHrykNpHTa6sdTT+UbOzh4c/zqR5qq7+h57V5skFwd8lapz1XqeRsaK4sHdek4wmAl4UxKQxe7jz702spq1+MqAGzhSxshAEeU9vOpAWZ96S88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=noL1YHEQ; arc=none smtp.client-ip=209.85.221.49
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-45ee5cdbd28so1846184f8f.1
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780662022; x=1781266822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Cmtnz5uL0NhcEWKME+3YqiQ1Tn3C+OdDm6ovZMriaw=;
        b=noL1YHEQyGh1uZQQyo2CmtOtum2qbN38YDYHYlb/b7kr3u9uUCsWGw1RWwjio0ZF2W
         Qc+5uAAejPbUqo8xBR6dJjosDnYMJoT6CWjHfksyHSb0wbkgvJlqcOSGgknl6IY7fFXT
         4Us7X0/t5aViiEBCYJ7veK5qp0Gxsyh43TFfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662022; x=1781266822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Cmtnz5uL0NhcEWKME+3YqiQ1Tn3C+OdDm6ovZMriaw=;
        b=QmgXLJRx0aPkQDsrTinLaRO3hUPc5EB8lYp2rENyqpyw7QMYKt7UrkweQRsTQtl9pz
         PouWrFx9Cg1EPoNaJGxqXh+ZldNzLzZbFPp25hLAdECB0L/Ltsij+fL7Zxuzho7dnvgW
         +G4nPTsWb6T4J/nVGlCTkuqne7iL5lMaeTFMf7+UYz2LzGbJkAwC6zMr1Xz5p8tFhKwE
         W2M9bTW7mbUInfBFTk5XbCY10U446RRIAgmbvy17pwIsgoQGPKorMbhQcWzRzR+8ZlM5
         XiTO06WC/pAgVaX+RI6hN2P0WXCE8bl/N6oZGlUvwNynKFxxIdOawrnu5xIKrVK/QB7A
         4tbA==
X-Forwarded-Encrypted: i=1; AFNElJ9P9b9kJbLTDrZHJ+SuoClCqqMZSLQ45rEJcTS8zVmI1nGc0Q75TVTBvsbEnGAd+Cvm7hXYVpFlzg6J@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8HVLv0MSBHM2H9o0OA2a6h9ZKVk8kU2sa7TyS32k2QntmMNlL
	A/dScxvRJZeDCybzVE/ev0iWbZGO8hr7SxN/I1Klyt2hj2oGhZFekTzKlJIXReuDrec=
X-Gm-Gg: Acq92OE17FWkOwx/QlgeNMSvg0WeaiTEnZBLtBRV+DdIxQq94QtaAnSqefqOlghn8u0
	sLNFCx+u7NZqlG50jnCoRf1B11veMJuNLXiogaGPDr0M8TAVzU5O4fjMjow5g416Fl8o1pekhep
	hB88l11YMsUdnQYKhhm+dj11l22Vm302LG3kZ641JBJA/sQdpVutotpFKQ+hld+s55W1Ff5uLwl
	KrR2Emi7DKqq6tICjc09a0j/JmD7AoYyNQTfw4M4tkD/FZKpP47mHBrINJ6kdDMvzFjIgCsV/EA
	vus/vXpnn5ccCWYWE4TZBWlr2IiT8BxS14SwEDLzxxwTVEy+AEaEjK6hUxEZRdZnRq95Aq+fTav
	CaUL+6NKY9+akCIHT7dkZ3rib4jYzei2H3fcTud82F42/PmyD4YhyyuH8szDMn87zIEDU7lAe9F
	cY+CeSVL0oCvZxinVvVOrLnDvphPDim5xsSx3JvMjpRxFy1g5PjLVorCArRrqsUjDzmdG8CeBve
	ItORAuZaR9DU0XqhKfPpufWgIVFeLNULvh8i7OAEQUori3ZOdAx1cEOAf3XVoNHHPq5AFKLjoB/
	t8vPyGmU7CisHKh5eBBH1qbg/gMnNRkwNxs=
X-Received: by 2002:a05:6000:240e:b0:45e:e936:5e30 with SMTP id ffacd0b85a97d-46032b71108mr3975460f8f.6.1780662022224;
        Fri, 05 Jun 2026 05:20:22 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcb13sm24785883f8f.2.2026.06.05.05.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:20:21 -0700 (PDT)
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
Subject: [PATCH v4 11/14] arm64: dts: st: add usart1 pins for stm32mp25
Date: Fri,  5 Jun 2026 14:18:22 +0200
Message-ID: <20260605121957.78409-12-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307394-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5BB8D648228

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


