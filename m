Return-Path: <devicetree+bounces-164416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E14A80F05
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:57:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52C5519E1C73
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C606228375;
	Tue,  8 Apr 2025 14:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="vmzryB++"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24DB222595
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744123991; cv=none; b=lezisPqc49Du/uRCbZ9NIRNIDP9HOAem7P6Cs2+UYJuyiDrHr+ioxVNhxQ95mBOM/jKu4gjnNeHkssJe/c78iheR2n17DUXpRUd3arOrHD5oZkcZTCPP8Wc/HCjrvysBJZFicTSw0dqSl8fki4byCfcGmAc+S0lvaguwscKzzFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744123991; c=relaxed/simple;
	bh=YAMbJeglLd+m3LPt1Abx+lmJTW0tnjp0s49KyTviaVY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HtjdbTdWHDebQCcl7z6F36aJvqtoGHek/UngBGJlsXduDO0TgJWUcUV4yKZcNrhDyEGbN7s6taP/J7hdZHhb3CqaJ4w7Jd/VsU+n6dLxyMj1g3fvxLtSIjuQAMJ51RHrl2LnxZ0AX8r5M7MbSiGyif/LUSrOUsvvWg3d1lPAewo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=vmzryB++; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 051793FB70
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744123983;
	bh=t7RLGdhnmdv0HU+cNYiwuyYsfJnpe4cA3+J5cf+iCGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=vmzryB++c5W8W6q2FgpA7HftIrmUz8E8671ryxlomzlmMXlFGgeGJupix2OJ8RiUt
	 V33Ztv6cLbfDkvrh76ZXzRPWsA0iPYGpGGszZ/JoZPPm/6if9+9LJRNmiY0G9NyyJk
	 xh9Ma3L/c11wcUwdm+h+7nHrCNwc+6SrNr8qY6ZiaJ+pYloqw+6oE27fsZsSVFk2ag
	 lELXw57LdKZOBVLJfq6OY7kArYLBAeZbdPkAgKVD3lqqVpEISijePIKgyGR31Vvawi
	 P3XJwbj33mmOxKQF4+W6GGN8CLuvZXl8oH8fmZdu4Xz5dMEiFFqJGCkd+Qv78s/cRv
	 0tjRrnkArqO+A==
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-ab68fbe53a4so806339566b.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 07:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744123978; x=1744728778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t7RLGdhnmdv0HU+cNYiwuyYsfJnpe4cA3+J5cf+iCGg=;
        b=Fwbab60l6XfqU/1NaUaWOHQUy4VY67FxSNSQy9DWY01646E2fS8lUGnDn9dy80HFG6
         KdZagrvegdAY3XvXt1ilL8za5RdU5p6sa7HbyXTqmr8ArAU5QczStwhC05XV7x+FHQIn
         VRpkIQlxsJ7rmYeaTHCfGpQamyHXtRIfzwmm6bXEVHmdYJayThCDi0tlU28WYl9c0nWW
         9Pl6eAk8TVW+7CNReCQwQrcD9Ku6x45lKet/x444kn37iUnO+JchLk2br+NO7fWLntBU
         75aeB3s+6n1jQMjYo62IAWg3YLQkxZ4s9l99eUE8D1S/gRjeVVCdDchlxqgmPeZ1qi/e
         ZdyA==
X-Forwarded-Encrypted: i=1; AJvYcCWne+0Ff6h2gQ1H0Hd1PLgjl5CAa9nZqT+Y+pc45DES4Tcrs+3NDEjxJmwkDbCmTysAanfCXGU5a6ta@vger.kernel.org
X-Gm-Message-State: AOJu0YwC4oSt2eojTSNmNMuRcIs5PMJTChE1WDIWqBB2Z0swBkurMleH
	e8QE2VZtSyCo57vCShnZIpwdQ8bWQmJE5bZD/Of3AKm6Uoiexo/GscOJgBS31t4f22B67WMbsY8
	JsGL6d+SMlq5O/x8xkis8I+eP0vQkHZu5nz2/zQrY4khHt05t0ZM2TeJ5Kk5lZu5VcULkhcO8u5
	e48nrdVQA=
X-Gm-Gg: ASbGncv0O4bZhDex1Th/GOvNGBcd/UsG4kZToCRie3AQu4N0VP6qrPbPtq4lcyRFe7a
	PxkxlErdhSJ+u3GuPjBYK+V56wU1cIVdECoyIGo+Uouq4TEKD8dhPe8v5Mf7xGnWAWkG9O4b7+W
	f3pPFl/NB2M3JGlq19usdJbLOgdCHeEo483e5G5hpxQmno9D9o9UeJGp1lb3ppfMScYOEjp3PMC
	kQv5gP8WS5XdwqjXmEF0ee2hK1vQOUtm4fAV33TdNU4MW+Sib4je3N0iGjYGx32T3T8bjatSc4G
	nYI3OHrh7xOK89P1bB4Hh0+JSeBUkWGVmHaIi1HjIETyof9fUNfJ49tkM7Et
X-Received: by 2002:a17:906:6a16:b0:ac7:391a:e157 with SMTP id a640c23a62f3a-ac7d1c69fedmr1405014066b.58.1744123978231;
        Tue, 08 Apr 2025 07:52:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsPIcgqIePEdNeGq4e0HZauzcWwGdWE6nTtAT2uBsc2gtQUXoDUsu029Z3/BlD7NbthzrCDQ==
X-Received: by 2002:a17:906:6a16:b0:ac7:391a:e157 with SMTP id a640c23a62f3a-ac7d1c69fedmr1405011366b.58.1744123977814;
        Tue, 08 Apr 2025 07:52:57 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c01c2ce0sm935136066b.178.2025.04.08.07.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 07:52:57 -0700 (PDT)
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
Subject: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook Ultra G1q
Date: Tue,  8 Apr 2025 16:52:51 +0200
Message-ID: <20250408145252.581060-4-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250408145252.581060-1-juerg.haefliger@canonical.com>
References: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
 <20250408145252.581060-1-juerg.haefliger@canonical.com>
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
index 000000000000..9f3aac1a83fd
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts
@@ -0,0 +1,36 @@
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


