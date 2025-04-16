Return-Path: <devicetree+bounces-167688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BF0A8B5CD
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 11:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4703A1905A2E
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D34238154;
	Wed, 16 Apr 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="OnoDSnvw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B7A236A6A
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744796573; cv=none; b=pgSYzAYWae4tzgXtzXCjkYoWheYYCKqDS5/+mBQwbbvMyciOroVZHdMkWc3S6QM6djzXx3vvltg/j7vWUYdOHY+v7V/hHlmzv6vE/yvYSPJH8pA5NpYMdHetoDV4YuNCIuDOfz1mGcouqxfBEKbZ96xqiiCrFMnvcJaFLNw2d9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744796573; c=relaxed/simple;
	bh=Y/63oD9RI//ak+XqGfVjs2x5KwGCgZGcZzunh8VrI3I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AjB6A+nZ5elKgo8fZswxCRL8PTZ0a3lfG12/gFtjf2ZpKROLqN6v3LEKwZmbtnhqHuoTQbKVtmxPir1dQvVIYdbv8jvrivzPmaFpIGmwUN4xZVgzKEYNttHwnQiEv4gHuciUuRfgkUMLfQeKbeLnu4iWGPS2RVRg3j0k0wyCDGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=OnoDSnvw; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 47CAC3FB73
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744796563;
	bh=/pR+D+ZciThBX6kN0q5NCT4lAw6xO2mUWDxTsJcToCY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=OnoDSnvwOjgIAHbtFwN1l/m1LwqWeCl3rpnItkoz6JrZiUPrbM3cPCpaSh2Iu2jlC
	 rz2ZMjVa+yHuhlkFd9wZj2Aj7zQvKUQvecj5YHukicrAExFeQHCELj2z7cSKxRXtaZ
	 BCGa7j6PH9IPXd1R5oKY4KVvneoHu1KhtROlrekZLZnkizfyUKTzQqNb1j5nXpQa+z
	 tERsC1JWZcvnS/VjX0b3Uhv+EWslsNK/V2Vxnnu9gapa/ogF0DK0WkQOsKJyLmFDWb
	 Hgw969vMDMmFEgM7KvgywTiHgMxMWGeeqTjLD9NxtNRm2AdyyMliTIz1jdQ0m4zlGh
	 KwNE8JimZ1nrg==
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-ac2a113c5d8so489556766b.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 02:42:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744796563; x=1745401363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/pR+D+ZciThBX6kN0q5NCT4lAw6xO2mUWDxTsJcToCY=;
        b=hIJNxa/pUrqLBr4wp/OKXl1XKWK+ZwdujIrZpsdkrB3r6bqrQxAUfABGLYRfP27Alt
         nLqB587docOk80GXI+7fw+hYRSJqZXOk+kSpuasHrO5iS6NtqL7xxEYWUqCzhbDEsnt9
         WFEFNfAcSgrNzRHTdg3XN73+JTdS2UGTDC1US1xDQ/shX6/p6n6I+KmUlbERJcfuagKB
         G1xwLY7eyRyKcv8Il1kmbRTxwv1Lu/hf7u7BaeGM1PBS1lWo05g2iX5gmAn+qjdYCFK6
         kzsfFuf+5rYLbGWKe+IPGKDsp3hL9pobFoYiYkpS6O5HsDrMWpNTSxTleQkgWxR+5maK
         ECZQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1cppl1/HVIpviVjSS1fyVdSRyPzehzeV5fjrOgrib/+NpZjOvIKgvpnl3crxE1BCCVJGHxtge5TOV@vger.kernel.org
X-Gm-Message-State: AOJu0YyVEQN7kJNRK56GQpVypAW+tqK6P9JGdhrV97YVzl3LkBnH1kdc
	fRteia9ZkGw2y/XVSmQ5uwnN/4drbnpY3vSioYPrG1EZsbInvr4lHw+VtiC3n+RxSxz7r2LgdLv
	BGl2f7xzQrbVEOdrHeSEJ7U/65kVnC9IvAbcPLWlkMkzPI0fQEbjK60epz57I/ZXGqpplBsTcYy
	8=
X-Gm-Gg: ASbGncta6WXzw4Rk9bWlBdtcz6VU3k0xVs5yMPc2rg9E59Mptb3PEI8fcr9ylMX5VBc
	qem4YPD9Y5Prd3oPD+DVJPTmah+N65zD54cj6H5YW2cJg+4B49yxXn7WhwvQkfbgFB7VTCTvxIh
	JUtqAq473xVgWR0dboXhaEfXjbsm0egsa6EJGDX3FO56a93WNTPnRqQhUpV+h1qQkQ6TW7DrOb/
	krXhQHPypT1ZR9QrTLH1dkjIui3wWsIGvHaGIEaqErOMlVa8ujdk6A3FT5bLr2qyqWIAaJhpGxQ
	NbwGGf/So56UoJSxGkd89CN5hH8SymT2LuWFpLIeDEjBfw7B82xQ7riJ
X-Received: by 2002:a17:906:dc89:b0:acb:35df:33f5 with SMTP id a640c23a62f3a-acb42c70dc4mr71495566b.56.1744796562776;
        Wed, 16 Apr 2025 02:42:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUqQCtj9crV5BKx8AV3M8HEmBsOGh6MEg/JZVCLQ4NCSqTitz1Va2qJpro6z63mL8E1u0WEg==
X-Received: by 2002:a17:906:dc89:b0:acb:35df:33f5 with SMTP id a640c23a62f3a-acb42c70dc4mr71494066b.56.1744796562370;
        Wed, 16 Apr 2025 02:42:42 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cdf4684sm95842966b.68.2025.04.16.02.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 02:42:42 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v3 3/3] arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook Ultra G1q
Date: Wed, 16 Apr 2025 11:42:36 +0200
Message-ID: <20250416094236.312079-4-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416094236.312079-1-juerg.haefliger@canonical.com>
References: <20250408145252.581060-1-juerg.haefliger@canonical.com>
 <20250416094236.312079-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce a device tree for the HP EliteBook Ultra G1q 14" AI laptop. It
seems to be using the same baseboard as the HP OmniBook X 14 so just use
that for now.

Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../qcom/x1e80100-hp-elitebook-ultra-g1q.dts  | 30 +++++++++++++++++++
 drivers/firmware/qcom/qcom_scm.c              |  1 +
 3 files changed, 32 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 140b0b2abfb5..732cc3f6a220 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -293,6 +293,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= x1e78100-lenovo-thinkpad-t14s.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-asus-vivobook-s15.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-crd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-dell-xps13-9345.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-hp-elitebook-ultra-g1q.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-hp-omnibook-x14.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-lenovo-yoga-slim7x.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-microsoft-romulus13.dtb
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts
new file mode 100644
index 000000000000..4ea00d823693
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: BSD-3-Clause
+
+/dts-v1/;
+
+#include "x1e80100-hp-omnibook-x14.dts"
+
+/ {
+	model = "HP EliteBook Ultra G1q";
+	compatible = "hp,elitebook-ultra-g1q", "qcom,x1e80100";
+};
+
+&gpu {
+	zap-shader {
+		firmware-name = "qcom/x1e80100/hp/elitebook-ultra-g1q/qcdxkmsuc8380.mbn";
+	};
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/x1e80100/hp/elitebook-ultra-g1q/qcadsp8380.mbn",
+			"qcom/x1e80100/hp/elitebook-ultra-g1q/adsp_dtbs.elf";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/x1e80100/hp/elitebook-ultra-g1q/qccdsp8380.mbn",
+			"qcom/x1e80100/hp/elitebook-ultra-g1q/cdsp_dtbs.elf";
+};
+
+&sound {
+	model = "X1E80100-HP-ELITEBOOK-ULTRA-G1Q";
+};
diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index fc4d67e4c4a6..e7262ad11509 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -1987,6 +1987,7 @@ EXPORT_SYMBOL_GPL(qcom_scm_qseecom_app_send);
 static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "asus,vivobook-s15" },
 	{ .compatible = "dell,xps13-9345" },
+	{ .compatible = "hp,elitebook-ultra-g1q" },
 	{ .compatible = "hp,omnibook-x14" },
 	{ .compatible = "huawei,gaokun3" },
 	{ .compatible = "lenovo,flex-5g" },
-- 
2.43.0


