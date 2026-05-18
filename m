Return-Path: <devicetree+bounces-299479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMoNObgkC2p5DwUAu9opvQ
	(envelope-from <devicetree+bounces-299479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:39:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9171F56F010
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 493983038C47
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB50B3F44EC;
	Mon, 18 May 2026 14:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="mL+YNTDW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB5C48A2DD
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 14:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779114737; cv=none; b=OzR5Jbucqqg6maU6B0fwpgt/57SY7H1t6xc9KJPMReFwozlDTuG6f9JMDPuJ1HOrGS8feEuUUTKplkHetMas2zB9XZkkh4FOuRoXDpabOfSYtVBnBtpg3cbqZe2II2Jh95gnbQbXLI+y2Ii0yICLDWrpezB7eGC+nI0hmKXQfpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779114737; c=relaxed/simple;
	bh=eoSZu9hicN6r2fV4NnbRPFz7lm3WIfCafs3akN9/B30=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EQDRSS5HmMB2+bJKgbxRGhOfFXkCsHnTmDM3uFkpOLgxzOua0HRF8LB/if/JOuG3w2a+DHqBNItoazmPs0kwPieHfxWE8pwaGIu3f8uB3C+QjMofW3wNrF8DfRS62iJN8+5nRKe0FH7GcTjCmkWHDwYl6GbCbSyw4oEcyDndu5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=mL+YNTDW; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-67e2498f3a7so5240406a12.2
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 07:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1779114730; x=1779719530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PrnO7x0GW4jDpO7hgVq4BogGg8ikec+SImnjIW54cFk=;
        b=mL+YNTDW8m3JE6fPcLDLFPBMKz+D5dbEqG/IEt+PqvlWxD5ds2HkuDmlZT5BS001h1
         DXnlZBk4HHUGT0v4zz61H3Tafap91Lus/6QYHsGYACM77sP6JRkbtnG/wrRdsyXcscy8
         zz9xT5RhVBLbJlm+35NlYGmf9rNrfHX1E5csI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779114730; x=1779719530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PrnO7x0GW4jDpO7hgVq4BogGg8ikec+SImnjIW54cFk=;
        b=A1zYCzZawN/aBHqRwkdqqh1ZH1rYjZ3VFXzwiEhhWeA+tGpI1Hzn/rGt0DF4eZG4uP
         FipRDpY1SRMtf6sOv1UMI66Zajp0C+ejZq5Lg48qO0UORiTYslWgxte5CwElp2VLaiiN
         fsj/DuC7Cd9DZAPSh9ePLLe3vxW0kK4KVenpTaOFYOtOBsUHhxe72UejTBJanYEMPIXi
         /Ag2Ija61q4p6HdsjfjJhhQJ3xIuQqQVDgou/dTcPQ5esWSK2mnMjhOqg+MoppRvXHtR
         J5snooYiffAsIsSuOZ6D2UkBvsN3AARl3ohQ+ldhy6LyJ5Vl9rCbMDCBWCN5i+Rs+w6z
         Y/tA==
X-Forwarded-Encrypted: i=1; AFNElJ8Yq6XAD+Y4x7j3NhQbpYjSuggupKY0ZZa3FkKcmFlo+juD6uk2SSKJl1x623gFzPS1sEZ+NG4AzxKx@vger.kernel.org
X-Gm-Message-State: AOJu0YySNYxJLybUjGqXz048T4dYaDti5vRMj2V5/vs0VdXr+FB2l+yG
	g+5IbuX3Q0tXzHQOCiEbNppiFFOyr1wYIeXLQeul2yn/7SyIpAY+nPhxet7D1JHeMIY=
X-Gm-Gg: Acq92OHzDbpFSQ+N4mbLqmbug8iCUWmNlg/9ip3w/Zlzq4WhnkVcbKoHAsBEncyXPMg
	bxdCOA6pS7ycCWz2Bm3ZDEMY+9kwuxQiB5IuSfKy03lZ3xdnxTJVxLvLgRe4wnA9coNTyq8ZdbI
	qnuBVzl0vw6jtG7UuKPzZemzIqGlpkOe/0BzaUr0+Wf+Sr+DocUuIa20Diw8tSKN/GzW3yTP/oi
	z3ucfVTz+NP665j2X7MuZumgQRvekDPryUYw64QTzNtlMxyfSzDbqfYK3AIzOebund8cXNRG6P9
	UojdMzFKOgfNs8mPzaHVtjPdyIX64D5uX6yl09A0txnUxcjLoJIMD3TS0Zn45n5Yu+SNpmmzO8J
	vmQDz1waMRpVHjfBQcDnJIRElxwinJWY25aOQZ8b8heTATXXDscZwG/KSp+ULcO8poTPu4UKuvI
	7ZRkyyTXBYqzTQFux7v6VIFdRxDOjhxBoDmaKZjmTgQBZ3XdgYOMMyCa0TDWFLeHLwceWef8K7j
	c9lhOEXpEgoXINO8imbZNii7zS8EtEKxW0j0v3a3FM58oOCEMvGsqU+4S8=
X-Received: by 2002:a17:907:d18:b0:bc5:1e2d:fc53 with SMTP id a640c23a62f3a-bd517961cdbmr792821966b.27.1779114730073;
        Mon, 18 May 2026 07:32:10 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.43.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a1aeafsm39564572f8f.23.2026.05.18.07.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 07:32:09 -0700 (PDT)
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
Subject: [PATCH 06/15] arm64: dts: st: add can1 pins for stm32mp25
Date: Mon, 18 May 2026 16:31:21 +0200
Message-ID: <20260518143150.3138712-7-dario.binacchi@amarulasolutions.com>
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
	TAGGED_FROM(0.00)[bounces-299479-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 9171F56F010
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the can1 pins used on MicroGEA-STM32MP257-RMM board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
index 05bd07a0a561..4be01a6574c7 100644
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


