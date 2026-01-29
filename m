Return-Path: <devicetree+bounces-260711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EbaJbXcemlE/AEAu9opvQ
	(envelope-from <devicetree+bounces-260711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:06:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE33AB9BD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:06:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28F22302DA3D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 04:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0830E26461F;
	Thu, 29 Jan 2026 04:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aRVvjuDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DD526E6F9
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769659545; cv=none; b=OAYAGXWLdPVzsOOm3ODkvBTTUUe8PX5CRGDvy6KS8Bs7ZokNE2+zMNmY5rcESVKbXECDsh6TBFcUteSIUhwp8fJVIPbwdC/JjulrLJXtqulWYXpcMphB6GDPguHoqiJGbuMbkoeUParwH9mwuSvqAVWlRX6FDnbETMlXyMsZfh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769659545; c=relaxed/simple;
	bh=wj4RosRxpeVyy3B37y+KwEEJeJ6jJ20W7R8CR4cuAmc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BWeHzFKcT6yUhNZnlhPLQ5IXPCsn2rA9nTKQ5YrIt7rUvQHH1hTbF8f6UPDaQzQg9aYMokUjHfIRWtcKq7ES1+JUlGdfFqzf35K2NLE0nmDjxBh7WCBGXDxfTimXpkDdPCbMhHKJvYyvLLQ/CMjcKeQpR+VT9TF/BufcWl24p1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aRVvjuDv; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-823081bb15fso269212b3a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 20:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769659544; x=1770264344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qs+TGYRSq+syNgtmamomzVV57rWTcldKeZsL7QkXhHc=;
        b=aRVvjuDvnQd2PgQ54H2yiFf6lplYibMKaPlqa05tq/imU0fo9yLoFuqHUeKNCl2To3
         dHCrdgwrTECUQotYUlhWWhMZ8etmKREIiVXcUIeMXe1wSFGAbjiQslfzcSd2xyhDlIkC
         w/Y+MhjvCDSBV+XLoRmgh9m6FONTcK0v+meRG0HWD35kdZaW7lcHHBZVVkBkU/nbkBsF
         3+WFaM85z99++n2kx1dIyoCJ7s9bhHVuoJ8uR8LxgNSAZ/zHF/m4xKK8gKsJmH2Yrofe
         3ACak2427g/AgC9k5rBtKKsBePN28pEfL4fRDh2dymAuFEkYdTKfB+FuOgTEnvG2L3iJ
         8n4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769659544; x=1770264344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qs+TGYRSq+syNgtmamomzVV57rWTcldKeZsL7QkXhHc=;
        b=mVprJjqoJmFVLpUMh2kWNdHWO9gJcvndt/Vh6PsnsRzkUVdc9G3WK0U3tUIhP5M6t1
         rD/I9c554Jo0Sm7IJv7cQ1Wje1ZEoxzx+v9fNnN1YcfPYSCvbfzY+U9FdnBNTpVbgcAM
         A0vCY5qF5Axm0Y2/ZvCq9hqHiIGMmP1LbZG14VqKa1pBIRGmjKWNQ9hbBEKioCLc757+
         Gb+OORBxzAxB3ymkr3oqMyIX/Zlj2RljjIJZsRN+pv4E4wrLKVIZGNnWaWUU47TM8+yY
         20zvklMNvyMrcDY7u24Qln0Hiopa1Z+dkBP3X2oaYfV4SwZk8VQp7DBTopJDiJzcQXST
         IohQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnSOJavUv88OkzqU45J6jjkd38WXwPuce5fBeaJUa6Dg5PiqolsIn3Zo1GoVR1STYWDrHWTO6WGxYF@vger.kernel.org
X-Gm-Message-State: AOJu0YzPkIM2ewpen5Sdc/zMT/lTtVeC3KKQIUTkkxJjLlRRM6BgN9qJ
	YVzqqq6TzMC6ApQqeHokrx+RHAgJ0jNT4yaeD6ZcIaAwuBJPeQ5TQplG
X-Gm-Gg: AZuq6aLSoMJJs8ORibwluwbRPFeboAC5Zaa5BpA7miLNqvoy2dsaM8r4IQxa8+EyhoT
	hB/Bq+cOaP2HkpmH9EkPkLScQWeCEcdu3Yrozpe1+DWUU6zJBYGSuHpF1CUxBG8FYQxbpdG9X8v
	XiAzmepVQbTUBIEZ0UqA9SrC8oTjNufOI4MDOqPPjP6J7LUyzDkD4t/RoKYTIzoDK1zXD8DjljJ
	RbjGtuDudNmBkaE6UCkq2AIv+v8USa/nkU/2oLVMXwvoh0UPcgaLrHKlqM/d/Aq6ZvB2+kB7kK5
	nBv27ddC/8FlZCJgFq6xWh6+dVioFaRAWUNqzHdAX5V8k3aq8zdsdPqu70Ivj0FTDhxSdOgr6nS
	ESOE7f0EhWAEqye1sNw1B+TmES6NCOm+6b3mbtrJUfLDE924K/DgB424JCNh+cW4FfkFJlYXLtY
	XSJrrvYxT/3RONIzMFWJAmCvkW8IZN6zpLnFIq69/SQYrwiBBEZLo3CfkClH8OTn7iq/sniewc
X-Received: by 2002:a05:6a00:14d3:b0:823:1cae:10bb with SMTP id d2e1a72fcca58-823692c322cmr7240139b3a.51.1769659543769;
        Wed, 28 Jan 2026 20:05:43 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c22672sm3857721b3a.51.2026.01.28.20.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 20:05:43 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	a0987203069@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: nuvoton: ma35d1: add display controller support
Date: Thu, 29 Jan 2026 12:05:31 +0800
Message-ID: <20260129040532.382693-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129040532.382693-1-a0987203069@gmail.com>
References: <20260129040532.382693-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nuvoton.com,gmail.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260711-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.102.81.160:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2.111.199.128:email]
X-Rspamd-Queue-Id: EFE33AB9BD
X-Rspamd-Action: no action

Enable the Display Control Unit (DCU) for the Nuvoton MA35D1 SoC.

This patch adds the DCU node to the SoC dtsi and enables it on
the MA35D1 SOM board.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 56 +++++++++++++++++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 14 +++++
 2 files changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
index f6f20a17e501..e596bb452cc9 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -98,6 +98,42 @@ pinctrl_uart16: uart16-pins {
 			power-source = <1>;
 		};
 	};
+
+	dcu {
+		pinctrl_display: display-pins {
+			nuvoton,pins =
+					   <6 8 6>,  /* VSYNC */
+					   <6 9 6>,  /* HSYNC */
+					   <6 10 6>, /* CLK */
+					   <10 4 6>, /* DE */
+					   <8 8 6>,  /* D0 - D23 */
+					   <8 9 6>,
+					   <8 10 6>,
+					   <8 11 6>,
+					   <8 12 6>,
+					   <8 13 6>,
+					   <8 14 6>,
+					   <8 15 6>,
+					   <7 0 6>,
+					   <7 1 6>,
+					   <7 2 6>,
+					   <7 3 6>,
+					   <7 4 6>,
+					   <7 5 6>,
+					   <7 6 6>,
+					   <7 7 6>,
+					   <2 12 6>,
+					   <2 13 6>,
+					   <2 14 6>,
+					   <2 15 6>,
+					   <7 12 6>,
+					   <7 13 6>,
+					   <7 14 6>,
+					   <7 15 6>;
+			bias-disable;
+			power-source = <1>;
+		};
+	};
 };
 
 &uart0 {
@@ -129,3 +165,23 @@ &uart16 {
 	pinctrl-0 = <&pinctrl_uart16>;
 	status = "okay";
 };
+
+&panel {
+	port {
+		panel_in: endpoint@0 {
+			remote-endpoint = <&dpi_out>;
+		};
+	};
+};
+
+&display {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_display>;
+	status = "okay";
+
+	port {
+		dpi_out: endpoint@0 {
+			remote-endpoint = <&panel_in>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
index e51b98f5bdce..7d9d077f12b2 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -379,5 +379,19 @@ uart16: serial@40880000 {
 			clocks = <&clk UART16_GATE>;
 			status = "disabled";
 		};
+
+		panel: panel {
+			compatible = "panel-dpi";
+		};
+
+		display: display@40260000 {
+			compatible = "nuvoton,ma35d1-dcu";
+			reg = <0x0 0x40260000 0x0 0x2000>;
+			interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk DCU_GATE>, <&clk DCUP_DIV>;
+			clock-names = "dcu_gate", "dcup_div";
+			resets = <&sys MA35D1_RESET_DISP>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.43.0


