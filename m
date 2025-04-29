Return-Path: <devicetree+bounces-172013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC7CAA0F9A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 075138478FE
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C865021ADB4;
	Tue, 29 Apr 2025 14:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="VUG6LLqT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A684E219E99
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745938215; cv=none; b=KrupEs9W93Mwkfbemi1BDGLP/1eZYF5sh7Cf6QWciI8E7smnUo7kcVkUBC0bsUDbyhRGGcGNiYQPZQgAtbvxpMkxNdpQ1NwNi3rmmTosldiTr54IU3Vw7qjHMtA5dBWP8GZ6y/DNAJ5G4dqm4qWtBbKdmnDVfdx7Rkdhz+Q2Rd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745938215; c=relaxed/simple;
	bh=krTaRF67fPNsLB+dqfMsYJ7ZzFpkv8kbuSh7hjXyKGQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G3WpfTMFUyGMcOu+IOuW6ycvwfyDdFVSs7KzHM4wqLj0OIPhf7djKE8iSPmt3wU/EPAF9xdZJ7cmUC96+1ki5eLg0J/NLrOp0fq/lCvNqIPn+8kcScPKbR8kiz+LSR1IawQ9A7e1NjIXa02pn4W9xxVRSf5c2AZpxzN1+jl7dig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=VUG6LLqT; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 425393FE3D
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1745938206;
	bh=7zoJNAv7neP8pZ54k9HnfCrdAuXD65pSkqMbfySDhgE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=VUG6LLqTbP0vBPD/vNeoYnQ2+t3r7FJIlGxvf59BTS+YOl309kvmNT1572yQaM6G/
	 spsX4HSeNIHhio8pIzfiHrcndAxpwpRKyDntp+yzkXSG54CYIPAvIGg3uk5ixWK+wz
	 6ND0cgmM4jcO0jkkcju/Tho26bL7FKDHmRh/A03KZKiPI0poZ6qrf/WbQHhujYZrXe
	 iwvE8aV/MGr2Lup0w3ermf2mSyLxXHnyKNDdU6QoBqIgFocExPKzSJLH9U2lPdy4LE
	 M9psTxnSrNIDXQjjW7tmWd5TC62rObZWbw83D+gq9VcQmyP2Lct5JtNUeWaueFysKv
	 fgr/Es8gI83pw==
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43947a0919aso42692055e9.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:50:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745938204; x=1746543004;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zoJNAv7neP8pZ54k9HnfCrdAuXD65pSkqMbfySDhgE=;
        b=vvDLFoQvd7LnFpIqKoOnOhtVlm1ecsCVrj34jXQF6X5BmmmlueXQxGBl+sebK52Piu
         ADIvbbeQgRPgkGZtMgXUXVDCRxi87pP8rIZ9tp4qqspzNL+s3kawIug5cdznF5PBpW4K
         7PB3W1dOmoVzWMwLaSxVtFIFTN4uB6U8HXTq9mnYpT6PysOmehNodgeKlRpT0i+6UPa+
         tuFBTzaNp8ENKg0f20taBXWFs8gP97vdzy0f51K0UdB5TzdeREuFLuTkHrnHPhVeYuOt
         /jBdn87UktMvnleHNVz6Dkw4qU2OscBRhaLrw03VwiUtdweKS8zcZqB+rCNa8/92HDdN
         GQxg==
X-Forwarded-Encrypted: i=1; AJvYcCWIyEhVM2zTH7FxGPmUQpYwYuETKW+uNebXGKkRfsRoPXgoKwTXrdVlnTSrbQ18qW+yxx/BbSkgin8z@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp5aHSZDws1oREeMFylZJCFt74Yi7Wc+S36yXKWjZWgMhC9h1K
	Oi8wZWnquNWbAObsZC/mWTplmxNfCcQxW1tB91hW+I6CEbGZCTbOwN++z/faYekjBHGXjRuZPk0
	twPiFjfvqehsxYlWY4HYkhSuGhqUXf2z/whKiA4PBXSQLsBTCWSePpA2GVORis8XD+HEaTQCI2I
	8=
X-Gm-Gg: ASbGncvHpEhmD5tcNtIUmTzu1pbrMkzabV/Ubv3Abcavr/7G85qJJeE7oRewFJ75N/j
	+d4vvoVbYAd0Fq1q2vrlClYDRLCvzfqTeuDFGmXeK/6nsf0j5EynpjX/QTc929jtN8AVmMNnFO2
	t2Gt1DX0HGibHQDTPzanFP9cQ66lHSMJ34NidXRTqowtWs6YlDsSwkvtlUVsgBj7LuWxhx7C3Zv
	pbLfNP5Tmc4CQKjrgQWI8h6GcBpWRfM6LmIsXqTtZKTTvFenW3rf0CQ2ZRhFnm7JbodhMrJK83a
	NwHmPssIeyHqXTlRGmdT2RxxprmVVNOjAE/iJWizU7Ayt2PL1TDtbonz
X-Received: by 2002:a05:600c:c14:b0:43c:ea36:9840 with SMTP id 5b1f17b1804b1-440ab846a52mr106209575e9.22.1745938204438;
        Tue, 29 Apr 2025 07:50:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFNDbbGCcksRyCuvtj7AZi9NRp+RqmwiuGFNbYjNx1+LdUjm8j11MjOpdX2/aQqHlEkGBb5g==
X-Received: by 2002:a05:600c:c14:b0:43c:ea36:9840 with SMTP id 5b1f17b1804b1-440ab846a52mr106209275e9.22.1745938204102;
        Tue, 29 Apr 2025 07:50:04 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2d8842sm190654525e9.31.2025.04.29.07.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 07:50:03 -0700 (PDT)
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
Subject: [PATCH v4 3/4] arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook Ultra G1q
Date: Tue, 29 Apr 2025 16:49:56 +0200
Message-ID: <20250429144957.2088284-4-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250429144957.2088284-1-juerg.haefliger@canonical.com>
References: <20250416094236.312079-1-juerg.haefliger@canonical.com>
 <20250429144957.2088284-1-juerg.haefliger@canonical.com>
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
 2 files changed, 31 insertions(+)
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
-- 
2.43.0


