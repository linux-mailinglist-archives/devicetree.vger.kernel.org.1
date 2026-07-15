Return-Path: <devicetree+bounces-326662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ixKNI2ooV2qMGQEAu9opvQ
	(envelope-from <devicetree+bounces-326662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:27:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 867E875B0C8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:27:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=d8ZaabIk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326662-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326662-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 226F83045AC8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47B63438BB;
	Wed, 15 Jul 2026 06:22:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211FB340410
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:22:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784096564; cv=none; b=p1/BzSJsm6GfBjYI1kR2oQLBGVFCKrWT841CQvCmDTW9RKXDQXUoneLP00lwejmJHQVGW70ck27TwGN9xHznqWSJ8/WEqmjMEjeqia3X5LnonnaUHDny6rAKMV3NIyg342F127DbFLQOjxMvmch+FfMJEYuqNYY/F1UAyj0NR3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784096564; c=relaxed/simple;
	bh=R7p0EC1MJExELMNko6n8EU7bwP08zWcgCr3KfDmFr5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nb4geC0alP+nPpVNTmwF2kqKr9ceqMzwp6n7IoVzadvCRS1VbQHFGRsvC1R3Z5Mj6Et6oHOqtVfzANAXmJvUPIu3B/kuiTnjJfnvOnvtfW2EEbbfp8n2l8RHDdtjcKjqUdsTtE+f6651nWWP6mUMafs9oVvR/IhWg++n7g3U0fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=d8ZaabIk; arc=none smtp.client-ip=209.85.208.53
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-69ccd6483acso2521154a12.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 23:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1784096561; x=1784701361; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ehG0wNhXC7EZrYAkm3RwKsx8ZO4vZ8QiozKkc4jo0Cw=;
        b=d8ZaabIkjxZhsbcGOcapUrY7YlVVgT0iycZXxGt1uf00mUsTbSoCDVVGpwUM3j2/eJ
         SPPlem2UOj7scqBcc8W8g5VtL2RA0+ali8ZoVhM/4GRQFEF8TznYe5NcNPvxWR+s78zk
         wGurRkjKdO3G8iokmy/o5x9tQQ7A6SSbA15Uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784096561; x=1784701361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ehG0wNhXC7EZrYAkm3RwKsx8ZO4vZ8QiozKkc4jo0Cw=;
        b=K1qRK2xGmQk+x0FbdCokvwT1VZHgs2iqY8ow0wsKaE0WURa6OJySjuT+MzLpHlw7Kq
         uOqfpJZp0jdxvpbulz9Rx/mjQdZUiJWf2NYRdOo1M+eCRrV+SP5AVZAtsEBipGdMHBDq
         i+BWwYss4x4MjRuaGf7NayIDl3RQZAGCyT/aL0usgzS8NsnvqQCmexxUK6Nap1doNUrD
         j9eA1yXB4pvdENAXpCSZbykhg/iWIS+OLhxjHNaVgTNs3vrjpiTQxCGnskm2PvEwFTfS
         HTWSp8HFBa4ErjpQlVp6rOhBzRfMwXpUffAsdQQlfY0tjzvx+YV3JiOYBWkygDtLOqpd
         q+Pg==
X-Forwarded-Encrypted: i=1; AHgh+RrN5hPOencrCp1H+fBPCYExhZheEvGO1y48XwVnRNV6g63X3YvC5KEuHwLiiCXVOqCYVREiXXDVzjQC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7ZRv41Ui/Z0YvHJGcHBFIe6i/hxq727uCAb1CU9PwCk0L71S8
	ThLLufn2brll0jgdQDTQM1Cu1iVNyqogDOk9mt1oDV9ppbvaWpX3agw6U4Ft2TL6ys4=
X-Gm-Gg: AfdE7cnyAKpIWXQxavl6Dxgvv0VxZKDDB2W4gx3EkDJ7MfLrbMlBOmBMQtKrf1HHPKc
	zdeXk6wXajm9HVywMjFR8/RKejfmF8SVWIU4QRi5NgczL43K6mbifITzUVIUV8I701kHuYR3LjX
	JQx3RMQnWzRH8MdVGt7+CaB0Rx96W6JItxN+LryL2ZzGsgOkr49pmSW7w3ICuQBRXQNz6G6u1tW
	rfsW7XOwBzJ95uDQ9aQ24UyGKVnbI1RH6o92hBvaHltcr0gBhBW+vDRuuXY2paLDHUBwZHp4jw6
	GWRwvIUpEIKr77h2m/08Tu5+DLn3D9Nil2nsJpXwwG2IUDq2UXr7k+rXXKNpKWdgiE8Ne5W8zp5
	OzSXswJTuqzmdCa+NtRhI9LylHGXffj4zPgr+o2OP5nTvlD4I0XGJiYfLSdPDllJ5xJhlEh0G4f
	2s+CAd3oF6mIbZYhFKxIFpvm/6yhSxy5WDXns+X6enzFGC42VNQc6G9maIhHIxa14NnRVH+lvmv
	JJVRCBevWK0LSublYj7mFw=
X-Received: by 2002:a17:907:3fa0:b0:c12:34f0:49b6 with SMTP id a640c23a62f3a-c1667b9fc15mr331888666b.57.1784096561463;
        Tue, 14 Jul 2026 23:22:41 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.41.101])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15d0c3cf1esm1028820366b.44.2026.07.14.23.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 23:22:41 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	francesco.utel@engicam.com,
	domenico.acri@engicam.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 14/16] arm64: dts: st: support Engicam MicroGEA-STM32MP257 SoM
Date: Wed, 15 Jul 2026 08:20:31 +0200
Message-ID: <20260715062201.3599458-15-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-326662-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:francesco.utel@engicam.com,m:domenico.acri@engicam.com,m:linux-amarula@amarulasolutions.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,amarulasolutions.com:from_mime,amarulasolutions.com:mid,amarulasolutions.com:email,amarulasolutions.com:dkim,st.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 867E875B0C8

Support Engicam MicroGEA-STM32MP257 SoM with:

 - 8 GB eMMC Flash
 - 2 GB LPDDR4 DRAM

The SoM also provides an Ethernet MAC, but Ethernet support is not
enabled at this stage due to a known silicon limitation documented in
[1].

This corresponds to section 2.21.2 ("ETH1 RMII mode could have CRC
errors"), where CRC errors may occur in ETH1 RMII direct mode when
directly connected to I/Os.

The workaround requires use of the Ethernet switch (ETHSW), which
introduces additional DT bindings and topology complexity. This is
intended to be addressed in a separate patch series.

[1] https://www.st.com/resource/en/errata_sheet/es0598-stm32mp23xx25xx-device-errata-stmicroelectronics.pdf
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- Drop inclusion of stm32mp25xf.dtsi, we are using stm32mp257d.

Changes in v3:
- Fix a typo in the URL

 .../dts/st/stm32mp257-engicam-microgea.dtsi   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 arch/arm64/boot/dts/st/stm32mp257-engicam-microgea.dtsi

diff --git a/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea.dtsi b/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea.dtsi
new file mode 100644
index 000000000000..5b4287e86def
--- /dev/null
+++ b/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea.dtsi
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2026 Amarula Solutions, Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ * Copyright (C) 2026 Engicam srl
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/regulator/st,stm32mp25-regulator.h>
+#include "stm32mp257.dtsi"
+#include "stm32mp25-pinctrl.dtsi"
+#include "stm32mp25xxai-pinctrl.dtsi"
+
+/ {
+	model = "Engicam MicroGEA STM32MP257 SoM";
+	compatible = "engicam,microgea-stm32mp257", "st,stm32mp257";
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0x0 0x80000000>;
+	};
+};
+
+&scmi_regu {
+	scmi_vddio1: regulator@0 {
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+	scmi_vddcore: regulator@b {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK2>;
+		regulator-name = "vddcore";
+	};
+	scmi_v1v8: regulator@e {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK5>;
+		regulator-name = "v1v8";
+	};
+	scmi_v3v3: regulator@10 {
+		reg = <VOLTD_SCMI_STPMIC2_BUCK7>;
+		regulator-name = "v3v3";
+	};
+	scmi_vdd3v3_usb: regulator@14 {
+		reg = <VOLTD_SCMI_STPMIC2_LDO4>;
+		regulator-name = "vdd3v3_usb";
+	};
+};
+
+/* eMMC */
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&scmi_v3v3>;
+	vqmmc-supply = <&scmi_vddio2>;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	status = "okay";
+};
-- 
2.43.0


