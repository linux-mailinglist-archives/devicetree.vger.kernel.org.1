Return-Path: <devicetree+bounces-319821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kgqIGspcR2oJXAAAu9opvQ
	(envelope-from <devicetree+bounces-319821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:55:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2176FF445
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:55:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=a5W0Xm7F;
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319821-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319821-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 678AE302C155
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3731638D3E3;
	Fri,  3 Jul 2026 06:51:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA43346A10
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:51:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061505; cv=none; b=RieoV2kyc7SP5Teoi3ghqU+jjF76XPf2VJmYy3sNRqxu6wPmYEzlB4m4nlcj79gQ4erKNSJp+huSoXmUC/A6G2WyicFG0Nl3uS4F2F5crm0xzzJ8DgoFEx6HR7hu3GnR8da3IMqe/ANWXMq/zJd8DmyXN9FhKbAs6B/i5yLqVv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061505; c=relaxed/simple;
	bh=u9m2WwsAUh5Coh/I3NjhlkfL1KrpsMcmoa+vDwMzK1s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=goOheKUYtMlS25so49JFuJ+waR/QG+9g1/FOmW3iEBtg5boPmpHapA/0l9ZK5sK/7n+iNnVqo3CLGlWRNp49fCrqj9F0X8L+Rqj0ZXbRMKU51NKfQWQCrZSeN9KRhdsyKb2s4aIuLsAXe4zu9T0gXKB2V88hs0GN6I7yrTlS1pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=a5W0Xm7F; arc=none smtp.client-ip=209.85.218.42
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c1214350188so19853066b.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 23:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1783061501; x=1783666301; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O50jeHT7n6IfAQOe8+U4Hub9w56VMIy6Werwz+99kvc=;
        b=a5W0Xm7Fg6HvMz0a7AiUkTBmSMjmNkXsQzcogmx7/ATAGDrUZhwE2rFCEfO3RedC0I
         tiILC+EVzabfCKy8AenwEDJmbn7RBQ027/ITotNPthwVOVhN6l/Jfo5Ib8NMm+ZFn6LN
         AmJI7qFgcw4PhWRbugZAApEonKr1WIEK3ybXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783061501; x=1783666301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=O50jeHT7n6IfAQOe8+U4Hub9w56VMIy6Werwz+99kvc=;
        b=ZqLQi6oyHrPYo2JtbEQF1cZAV9I+4wl42++brT7lvwv1IOEyyEUUSev7l/nJ6nSBCL
         e93JgRCDQKyyOHMc7w5RCMXXtzFTQh4YtculyWDtbhHQaISoNdFEaxqd/peatyIX9UYN
         QK3oUR2leYpZ/HN+UklON7xta83LGB7Kx95wLD+IpzSi/j/Kg9SOIjCakwd1QFnSLW8l
         ILje5Ckzd/0ZN/64fJp7PGrNFeCD87BwiEJIJo0E/jKe0olEhGCos8OZ7OjAJJL/zlKY
         V7TvS7EZOiajzoezWNHlgaPWj2/Z6V8SpWmrGjfzwnE5Fjlq7YMxejUUI/0fvQToFgPQ
         Nw0w==
X-Forwarded-Encrypted: i=1; AHgh+Ro/4sY8I/sri7XMvy89+NzubHvNYUrQvXNHaXTSrTU1/nZQjHFMtsV6rHlhtu9uQvBwjC+D5ml4ulQD@vger.kernel.org
X-Gm-Message-State: AOJu0YyzC+1sbaJE4qH1ukMlvFdfSO6gOfoWOuElIvydU3iqyCGT0Fj8
	CWgcwsTlrIhG0YAqqLg/H2iGGDcr4OCe4jdZAt6bFfrNrV4DjIKNdQOrCy9QgtZoORo=
X-Gm-Gg: AfdE7cnCsqproX3r4WvfT1DRSHooWWfZEuz2aOEv6POVHeuTzrgnCDT9qbTvD6CZ2lp
	QhHSFCl2KTYAzIYdGCKZxDUytpVriH4vpzX8IOk8v4f0VbIhH6O6/gHkrMG02ZOVwY1+JZ8VHis
	0Qjvx7QMWzWsUg7L9Tb2nmpPTCMnmWxBswAk17i9jNyHYhvGxWgPhEPv8rvjQRRGk39fh7vJf9K
	hvZTXzaxf/NiEsi2dXhbTL/nCIHcDhps/ngxmHdOCvFtmnYIpMIYXbu/5wtoz/+upwgGGYzDHFX
	gwDc26VBNyK/I+gm7Kz395lb+wlmg+47Vbcf+KoGIE+XHdR+0DrAcBQ5ZF5caXOLVzKPY+of3UN
	f7JLupVWqVn8s0pzQjyBYSPZYfRyy1g13hqjs0kAvm/h6Hjif90tSr52TipnDlp99k5WDHOVale
	X+8EipR7rAu9mRtWSDJxgBpsaSBGO0FLR6S6lL6bYENu83UG2R/jCq3ZiASE7dhiK7D4hw749cd
	Dpx4Ux/uQil7oQzSNV+yw==
X-Received: by 2002:a17:907:7ba3:b0:c12:7512:18de with SMTP id a640c23a62f3a-c12ae8d6a61mr417433766b.57.1783061501637;
        Thu, 02 Jul 2026 23:51:41 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.43.95])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62c4695sm235462866b.44.2026.07.02.23.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 23:51:40 -0700 (PDT)
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
Subject: [PATCH v7 05/16] arm64: dts: st: add CAN1 support on stm32mp25
Date: Fri,  3 Jul 2026 08:48:55 +0200
Message-ID: <20260703065110.1433283-6-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-319821-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,amarulasolutions.com:from_mime,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E2176FF445

The controller is compliant with ISO 11898-1: 2015 (CAN protocol
specification version 2.0 part A, B) and CAN FD protocol specification
version 1.0.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v2)

Changes in v2:
- Add resets property to dts CAN node. Suggested by Sashiko.

 arch/arm64/boot/dts/st/stm32mp253.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp253.dtsi b/arch/arm64/boot/dts/st/stm32mp253.dtsi
index eeceb086252b..7e82f01fdc10 100644
--- a/arch/arm64/boot/dts/st/stm32mp253.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp253.dtsi
@@ -43,6 +43,22 @@ &optee {
 };
 
 &rifsc {
+	m_can1: can@402d0000 {
+		compatible = "bosch,m_can";
+		reg = <0x402d0000 0x400>, <0x40310000 0xd50>;
+		reg-names = "m_can", "message_ram";
+		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		clocks = <&rcc CK_BUS_FDCAN>, <&rcc CK_KER_FDCAN>;
+		clock-names = "hclk", "cclk";
+		resets = <&rcc FDCAN_R>;
+		bosch,mram-cfg = <0x0 0 0 32 0 0 2 2>;
+		access-controllers = <&rifsc 56>;
+		power-domains = <&CLUSTER_PD>;
+		status = "disabled";
+	};
+
 	ethernet2: ethernet@482d0000 {
 		compatible = "st,stm32mp25-dwmac", "snps,dwmac-5.20";
 		reg = <0x482d0000 0x4000>;
-- 
2.43.0


