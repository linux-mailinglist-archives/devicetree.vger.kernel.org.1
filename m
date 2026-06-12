Return-Path: <devicetree+bounces-310989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i3SlK44RLGpQKwQAu9opvQ
	(envelope-from <devicetree+bounces-310989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:02:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA0967A0B8
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:02:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.com header.s=google header.b=RTodqaUZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310989-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310989-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=suse.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04EFB3432260
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE293233E8;
	Fri, 12 Jun 2026 13:58:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C7C3321B1
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 13:58:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781272704; cv=none; b=n6Zb+BmFhfcd3+mQQ2FCXEZWAs8doXQNjyBHYGpCAu/c+19IX2bPzhn3kEta9cLXuYrCJHBtce3V2Rrqc4aHMWtdFg8hU4fKAjeAuzmo1zyNzazLemyTuK7n+LQ57tg4FjE5ARaBQ1L1NmANR8w5VM2ZyypZnzu/3lEVhwZw0rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781272704; c=relaxed/simple;
	bh=NyT3bvkYhBzVis/qc4NVpDUc0HxiHbXcgKHaKLAMasY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UU5HjJPt+jXCafBgjfG2q0TbRfsGN7QYcgFrehfWEumG2qk5UdRrWkxQCi4/cJ+qdjkUlRDosbqg9F6LgYAMkQZ5HdpTfaTGR6W6u3t3RtDD3kzEjNnmLVMjEYsiu+Z5RLAziZgWizYxHylglKwRTtJkHjjE03fl0gpQ9NAfj8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=RTodqaUZ; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-45eecb8bf67so759015f8f.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1781272698; x=1781877498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUWg5GWqhMeDrgGwJjMhc1B+7LHRy8TQo04xcORPTAE=;
        b=RTodqaUZNiMYibNCZy8UsWag2ogOPRE5UKowmAB2HNELbe2NAFSAKyV1lt2U6h9iiE
         eFOVk9VFpyC7yKHSYLtzj7tJOWjxOvLUmeVUS9tXVaG3lE3ZWe2MEpCK2M8DcTRa6tsi
         RJ9K7dMwoxCsmEcQxyo7qoCL1Kol54otoRGurCjrkkHRyp1ws/VvvHlvUnUe5qMuQ4tp
         vgSHuE8bU4mrYUJN4v0fqtq/5lFVbyj8bu7OeDezktSTeScCHDP7ASR5bWnGFptdAX8y
         6ZYS0w4vxgV00DCvxsuYT7meXNBSdAIuB1bzo6+ri7ZqfM4OnSY4anAdNly81nur73pF
         WdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781272698; x=1781877498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RUWg5GWqhMeDrgGwJjMhc1B+7LHRy8TQo04xcORPTAE=;
        b=V4CXPZ/6S/LIjsu+JqPew5boZeySuwIeuuU/2qKUf8u9bn/zS09ko2ZbyQwkeQe389
         P+eURsXIl2TxtPiagTZ0/8d3UyTkUwQ6p6WzZ6m0l1KV4hJUJvl2qFCbchSbuK1GzuPS
         n7OLnHFN0jNOMVWhyys9esVfqG78vfMWBCw9ntOmXFf9Az1oBr4EvDdMJop2PylqpK5Q
         Xm9r9Eayf7o34aqQ8qyKh+6Jfx18c8rnTfIfeJVBUDfSQWKbcaqqgPsOKwx9VXZhceKn
         GSCfR1IqtDFM5kOj307uLKnMYswxEvR3/b3zyVkys9cLwJljKotNSBZ2mQL1d4VkCUrS
         8EHg==
X-Forwarded-Encrypted: i=1; AFNElJ9TKDXhT1QWwH52yT/XJo8KSPA78AEMvEFE9YhhazYQIathwoLHok9tF3rJrB2MImqaoLYsbS/uCPyb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhs3y4Gnd79uDboB7prI8r1S0x9cZTKqWT8J0cVfB3CIGCIs+x
	Ytdyx1uAGAhtFjUq/emAPKAm/OJ5j9D+1q879KoDekTjEDNhXNzyX2+S53iufsRYwTw=
X-Gm-Gg: Acq92OEDJZIZMcOMhtEw5ALVmSy0Brwsp3oNv6we11aZDZDAz1mjAQCTl3L2R302qB2
	Xsh3WHFFSHuNZA87kwDEucT5qLBkOAxxnlJ+RQnkgPNI9RyAVRVrUlbt9b8Z7GfEhhhXw7w7sxc
	q5gNjCoGGLxn8YUFqAkGU/YCUdLL67DsaXp4oSL442xdWkxzclnXLlbrdutAoymSEIJpIOceTpj
	K3iQrNxzhx592WfZPs4ZDkTLEwCsvUI3O+/qBpZ96nDbMFehVHbdrcptqaqmywMfiVI2J0b0Yzw
	Dzc41HjPfbgfhZsRjGqZWu2/q8xRiibgcywyCupTRUSAwLyvP6IaRJRA5kfJcYjq9vbiqfQaU//
	D1j2YX2deTdZXu5ei6RSLXNNQzoeaMS8ZYYWT3jfkT8pVyzEFwUOB21Uow1YSebY2Fz0g17z5Hm
	+fvvgAf2z1hi+snZGf09Un
X-Received: by 2002:a05:6000:1886:b0:460:1a52:8a13 with SMTP id ffacd0b85a97d-4606da0f65emr4345439f8f.0.1781272698170;
        Fri, 12 Jun 2026 06:58:18 -0700 (PDT)
Received: from localhost ([195.94.146.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2c5266sm6363550f8f.29.2026.06.12.06.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 06:58:17 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	linux-pwm@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Naushir Patuck <naush@raspberrypi.com>,
	Stanimir Varbanov <svarbanov@suse.de>,
	mbrugger@suse.com
Subject: [PATCH v5 3/3] arm64: dts: broadcom: rpi-5: Add RP1 PWM node
Date: Fri, 12 Jun 2026 16:01:28 +0200
Message-ID: <b08d1a25e6f3cd81162805adca878865ad112858.1780670224.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1780670224.git.andrea.porta@suse.com>
References: <cover.1780670224.git.andrea.porta@suse.com>
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
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-310989-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:ukleinek@kernel.org,m:linux-pwm@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:andrea.porta@suse.com,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:naush@raspberrypi.com,m:svarbanov@suse.de,m:mbrugger@suse.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andrea.porta@suse.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrea.porta@suse.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,suse.com:dkim,suse.com:email,suse.com:mid,suse.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FA0967A0B8

From: Stanimir Varbanov <svarbanov@suse.de>

The RP1 chipset used on the Raspberry Pi 5 features an integrated
PWM controller to drive the cooling fan.

Add the corresponding DT node for this PWM controller.

Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
Co-developed-by: Andrea della Porta <andrea.porta@suse.com>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 12 ++++++++++++
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi     |  9 +++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 0fc57e72632ed..748be8f1ee9e2 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -64,6 +64,12 @@ phy1: ethernet-phy@1 {
 };
 
 &rp1_gpio {
+	fan_pwm_default_state: fan-pwm-default-state {
+		function = "pwm1";
+		pins = "gpio45";
+		bias-pull-down;
+	};
+
 	usb_vbus_default_state: usb-vbus-default-state {
 		function = "vbus1";
 		groups = "vbus1";
@@ -94,6 +100,12 @@ &rp1_i2c6 {
 	pinctrl-names = "default";
 };
 
+&rp1_pwm1 {
+	pinctrl-0 = <&fan_pwm_default_state>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &rp1_usb0 {
 	pinctrl-0 = <&usb_vbus_default_state>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
index 16f5359395835..df4c2d09c8d34 100644
--- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
+++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
@@ -99,7 +99,16 @@ rp1_i2c6: i2c@40088000 {
 		clocks = <&rp1_clocks RP1_CLK_SYS>;
 		i2c-scl-rising-time-ns = <65>;
 		i2c-scl-falling-time-ns = <100>;
+		status = "disabled";
+	};
 
+	rp1_pwm1: pwm@4009c000 {
+		compatible = "raspberrypi,rp1-pwm";
+		reg = <0x00 0x4009c000  0x0 0x100>;
+		clocks = <&rp1_clocks RP1_CLK_PWM1>;
+		assigned-clocks = <&rp1_clocks RP1_CLK_PWM1>;
+		assigned-clock-rates = <50000000>;
+		#pwm-cells = <3>;
 		status = "disabled";
 	};
 
-- 
2.35.3


