Return-Path: <devicetree+bounces-35513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A8C83D9C1
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B6451C21A7C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 282B71B7E4;
	Fri, 26 Jan 2024 11:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hE9Hr/J+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7DD1B285
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706270124; cv=none; b=MdZPiG+NmMGALIBy2AXx6sTZcwVmm6bdLZi6r4YBRlxM/vM40mxsv4g0Mm0El+JtL0Njafpp0lLiPZrwdPCGdi0+Ttp65zmcHM0BbQTUAZCUX+BO3KT7mhcXhBIuyP/Fe8S4ZKhdp+WV/VeXCH2VD+xgOON6sDMN2MrC4j7CNcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706270124; c=relaxed/simple;
	bh=I/9mTHxKvGWghOHYLclQa0oc5GKISfw1i/DDYKevCQ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nxAaRf1k810sCwAgxFUb1XLYgdb0doKYTFbvJ/PaIcbDCvvftMnlVumrp4u+ucqS2vH9DOpWCWuAGCRCcya4y5QOh5c40E7oRMAraxo9hynUf3EggwsITcr0EQ9YKv04TeIWcCjFnGdgOGuifzogTODyj8FbUfAdf7DO0NQkSYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hE9Hr/J+; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55cdaa96f34so3300461a12.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 03:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706270120; x=1706874920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eIuCTwTLbGr/sa80Mm+YqyHqPAFlQl7O/IQZBEhqjyg=;
        b=hE9Hr/J+bB4vLCDPVc/HVIOTUxECWT0ykRxgai7lNSxlYA4P2GYPKMFPQwcCwgbvZ5
         QEuMqnKkZ8FPVThrksGyb1nDSpsi1JC5IRHbT7CEikompw0ipd4REa22VSg2OGz/q6Sk
         viqJcbZg5PFYS1wtHnANMJd8z+/AmQfyEXta+/iPi8h39kYxYYjrgz+VrMUTRlVPrtaE
         662KEXZrEWRMOABwv5Jhl7Yjpj+vGBH4CG8jBYlf/H6XwXFmsaX5q5qJLASPh0BhnI5m
         00H/a3UPX5O1XRkY2YEUGq2cnnEGixmhDXXbqxpdZuPtxWlo1bOLTMfxbUWhDATKmQfL
         2wKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706270120; x=1706874920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eIuCTwTLbGr/sa80Mm+YqyHqPAFlQl7O/IQZBEhqjyg=;
        b=gVYWlf02hS7r2lkk53mTnIB84IIPK5KbKkAfX3ZM90JnfnoLPsgjTtE6hsnpWY7tqH
         Qbz5t+VO55itfUjaG4mkW7uHSt/hwLYe8LXfxO2X8MzebEBKGUDV9+U/jC3mja6JSz2Q
         /iiB4E7PkDZtnof8SOUg39comFVuquYoa2ZKwSIs9XhY9TZCnEQdpcr6mrw9+4Sa7P4v
         RF+1y6ENg1ixeJlZ4UbWjvuYQnSzw8DchugLnZohRgOtoHRJC46dL3dJ93nL3BRUm0f5
         DjTgOu6n/rgQGsYQcehIFShKEiy79pZU+JQZuD+HsaUSZazGFnDs0PcaBTdpprfpB/SL
         bZYQ==
X-Gm-Message-State: AOJu0YxxzmWvbnCZ45N2nTaMdLihw2icgAMHf4exoQxfbmJi2FL7QFdB
	B/ZNQ2nXhLjf5T0BBLdUUbDJuOn1xL6dZFYrizzwglbNxo8h6mqjVJVI2xx/Ioo=
X-Google-Smtp-Source: AGHT+IGDiKyqss5tTSw5kAnUTZ97L1cX9iwuUjPJTm5l+WPsElIJI3hvhalz52wZGxzb03WFVgmbUg==
X-Received: by 2002:a17:906:6442:b0:a31:8c73:f42d with SMTP id l2-20020a170906644200b00a318c73f42dmr1057849ejn.28.1706270120405;
        Fri, 26 Jan 2024 03:55:20 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id hw18-20020a170907a0d200b00a2d7f63dd71sm551280ejc.29.2024.01.26.03.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 03:55:20 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	peter.griffin@linaro.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: exynos: gs101: sysreg_peric0 needs a clock
Date: Fri, 26 Jan 2024 11:55:17 +0000
Message-ID: <20240126115517.1751971-2-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240126115517.1751971-1-andre.draszik@linaro.org>
References: <20240126115517.1751971-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Without the clock running, we can not access its registers, and now
that we have it, we should add it here so that it gets enabled as
and when needed.

Update the DTSI accordingly.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3: no changes, resend as a complete series
v2: fix subject line
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 412d2866dca7..aaac04df5e65 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -364,6 +364,7 @@ cmu_peric0: clock-controller@10800000 {
 		sysreg_peric0: syscon@10820000 {
 			compatible = "google,gs101-peric0-sysreg", "syscon";
 			reg = <0x10820000 0x10000>;
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK>;
 		};
 
 		pinctrl_peric0: pinctrl@10840000 {
-- 
2.43.0.429.g432eaa2c6b-goog


