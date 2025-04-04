Return-Path: <devicetree+bounces-163126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCBDA7B983
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 11:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF221189ED3E
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 09:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6FFC1B4F3D;
	Fri,  4 Apr 2025 09:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="KN55b3Cf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9F21B043E
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 09:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743757290; cv=none; b=UeANS/XY4cam0cBPiI8RJPGYFi6TmdNtUeL3qrc4+2MTpTkn1xlCL+e1rAp8QtndA9x0BDNFw8ZApxTIMieTaw34yhYoIgxVp2i4qsMdCCu/KniZlwyLmdLKNK1gAchy/d0GsHE/y4KzrDKyrOORqvsFb7POz4I1+9DqvnqURM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743757290; c=relaxed/simple;
	bh=Py3IjWzUP5+zKoHFRdbmgLnOmgLdEHUcnt3FElvF8UU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tBrVEgHbPp/SIaKXxobrcx89+776jHrX7+reRPgWc0kdOtUuE9MrLLHaLtMDfUBdIdD7xEmmT3hWzlmAwXKXI+6WI98rRnJuVv1cKD2Vwm/c+hShwOO/u9+VttrlR8JMaD4fkdwYjZeo6Ib/qfa5jEG4nU8Rf9TqTTNI779rkBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=KN55b3Cf; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C76923FE34
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 09:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1743757282;
	bh=taLKnjcRWFAOhCgBuTXiZh92hjHs2t1+eilwt6zToeA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=KN55b3Cfu++UBoRyfrL99DjAH2ltOxwvzfNcMkhGgEwAShG8kdDYDTN0xFX9bTJai
	 hoGjUYEmDnQxJ/4Kp34Lf3RBOLmt820K4or3rhPolYRNjmRx6vEbsEAhUV/LFDLcTg
	 HcrTc1inTFwZPiB5/oVQhCiwSnf8iy8+mKR3bYIvpj5mndRoP5BwX7b461MHwwq4sz
	 ctzq8qCBOsXKQQW14YNAYMJRFb4u5WgwFS7xxEiOjsk37yEOSCHNOkzI8QbHPT3WJz
	 KPyb2nu1aBfLVhD2835dG+sDFwdW414uxPlS9xYGulMJPcZURqo1UNF2KIAV7uWYS6
	 UfgdLxyP2XnTQ==
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-43ceb011ea5so12160245e9.2
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 02:01:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743757273; x=1744362073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=taLKnjcRWFAOhCgBuTXiZh92hjHs2t1+eilwt6zToeA=;
        b=L7gSITocH+4me+MIVHLW/vPilnNXgBT9WzNnwQHgey5ZH4y4VFz2i09/Wn2a5sIvFD
         D9vdJGD/Go/7d8pzKuJd6GVquiTa7hThCR+Xh0wr6NUuDgnZZNpDy/wd6bblpjTpakjJ
         6V85Xv2b5/cb1NOnDeRjpOAh8tbdwegLSfYJ1GoYXADuLaimuA2omP6li8Pe03Y+NznS
         yIJKHLcvcfq/bpCarrcupVw6x+PCIibjg34wcAn6AyMpw3cfbNHX/WYUBpejQqrqpaMh
         00abhFeZdsIEY2gpABcGvA/rLk8duVgH+mpwyZCjBLAhpMQhlVCb/3yszZRoSJZUkEHH
         IIBg==
X-Forwarded-Encrypted: i=1; AJvYcCXRYri/C0zNGVFmwAfibk+SBJ5Gy5XHVVJNbh58KHBBNcqvpHg1uDiHbsAITRJb4xHdnFpA9M1M17rg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2jPPl95x6EjyYGUMqyLKTXsSH2mnF+t87ZJasTeHzwAfbfP23
	GOqkvx0qL9J0jum+aa+awmNuNsVRhxvN16ka9wTcoKwwMoMiWu94UP1eEGYK9l22WJO+ECAyYkB
	M4r1+EuIzMlxWRm08i1p/ASbai8LOkcSC51WZqTsygBQbiqCVm3wHqXbJ64omMfLPc64dsdVFjd
	8=
X-Gm-Gg: ASbGncut+iM/XUrsVKC6IV+k5mHXiHP7w92pNsCvbTgRYbD4xnv0Lii98IlK3e3OXx7
	IGjyTMk9Viw/Af2p7cKyMdfPmIgNO8V1eaPlbfKKUad4BL6nNc1nuQfxeo8GRKFUisSyhjyxJ52
	l/fMQzOr771PVs2bckUKrnlOvEEPJuwKqytjXV1rjb/lLNCy5b1Uy5K2oTjhXPqGAK5F82LtK6w
	7nBD45jdqsi/+NwtOutoct+y+jR6Zyx5NyQSBdC6ETCElsL4PGk32quxw/rXd5V3rkF6T4pGqH3
	eJF1BYYi/Zdapj+vNoDrr7+kykyh5TWUw0Ks2doooqu5Tzc0qrh7N6Nl04ih
X-Received: by 2002:a05:600c:a0a:b0:43c:f689:dd with SMTP id 5b1f17b1804b1-43ecf8d0a37mr14950645e9.19.1743757273208;
        Fri, 04 Apr 2025 02:01:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWbk4uEoYAB/4LlThUDVA2+k1ALwsbhVFnRClxycINFocI4ojY5djxH3yqzrqFUpYfXJPnWw==
X-Received: by 2002:a05:600c:a0a:b0:43c:f689:dd with SMTP id 5b1f17b1804b1-43ecf8d0a37mr14950405e9.19.1743757272794;
        Fri, 04 Apr 2025 02:01:12 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec3174cf0sm41974215e9.0.2025.04.04.02.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 02:01:12 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook Ultra G1q
Date: Fri,  4 Apr 2025 11:01:07 +0200
Message-ID: <20250404090108.3333211-3-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
References: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
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
 .../qcom/x1e80100-hp-elitebook-ultra-g1q.dts  | 36 +++++++++++++++++++
 drivers/firmware/qcom/qcom_scm.c              |  1 +
 3 files changed, 38 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 710879d94c00..3d98bb95e8b1 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -294,6 +294,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= x1e78100-lenovo-thinkpad-t14s-oled.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-asus-vivobook-s15.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-crd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-dell-xps13-9345.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-hp-elitebook-ultra-g1q.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-hp-omnibook-x14.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-lenovo-yoga-slim7x.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-microsoft-romulus13.dtb
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts
new file mode 100644
index 000000000000..7f069a2e9a46
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: BSD-3-Clause
+
+/dts-v1/;
+
+#include "x1e80100-hp-omnibook-x14.dtsi"
+
+/ {
+	model = "HP EliteBook Ultra G1q";
+	compatible = "hp,elitebook-ultra-g1q", "qcom,x1e80100";
+
+	sound {
+		model = "X1E80100-HP-ELITEBOOK-ULTRA-G1Q";
+	};
+};
+
+&gpu {
+	status = "okay";
+
+	zap-shader {
+		firmware-name = "qcom/x1e80100/hp/elitebook-ultra-g1q/qcdxkmsuc8380.mbn";
+	};
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/x1e80100/hp/elitebook-ultra-g1q/qcadsp8380.mbn",
+			"qcom/x1e80100/hp/elitebook-ultra-g1q/adsp_dtbs.elf";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/x1e80100/hp/elitebook-ultra-g1q/qccdsp8380.mbn",
+			"qcom/x1e80100/hp/elitebook-ultra-g1q/cdsp_dtbs.elf";
+
+	status = "okay";
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


