Return-Path: <devicetree+bounces-103464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0465B97AEB2
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 12:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1C9A287798
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 10:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129A015FD16;
	Tue, 17 Sep 2024 10:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hHB/VKoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B71C15D5C5
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 10:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726568842; cv=none; b=L0ool+TIsJrpMLQ/qEJhUs1HMPC/GkMnIZzshgm8RhF9QFWRlKGHtM6ZNhC+lyLWg0aYsV52SNWnUBlMPbN8AoUEEQQ+SxXcQAX8SKUuolqmCFJkiNU0L3ciCjPUzeRj/M7eNlK+dIxT5dbvnwqCd8UMF/myPlLNo+num82KT8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726568842; c=relaxed/simple;
	bh=RQUyVCVGKvk955KD/oOhxw77fHG83o7vjf2LfrYMi3g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JBM+a2k5+va4v0i8vAFBC5dWvLSVVE9mbnV6q1V3gde17VwvKIpiPLl7S9ncWKGtaNQ1Xc10bMFKVND2nHRjCvO9gpqR5ZXYaxqV6JH6ZDNgKTmTQrsrWMcnClzyf+lYtWxtIfbmpu+NTw4OUeI5C7xmyfrKKljWupsmifztpbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hHB/VKoC; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42cbb08a1a5so53225845e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 03:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726568838; x=1727173638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O3BbujuHzO/RAMZvTpQiB1Pqjgm8cgnsqTGoSPy3nXg=;
        b=hHB/VKoCSJEgXT5RtxJduNcATFbNzOUn5Gx7nJJ3Wfs0w2Dr/Zhpz9ZxvaYAiSyNZY
         puYz1QrxSvUAp0bq3RkVKB3iSPbEsIL2/O5+6RgAG3o98rcpxNK0UqDY5T5JaKN3AGhu
         AvlmNrKadHbHN60gkAHi6xI0ttXW3o2zBIU97UlpQ3/EivqbRIVSf1RxI5HoVuFnNGVn
         kK4e+14nhbxZPL2d8xiMtF5fCGnLhEYtH/9nIiXCu9iz2GamSpdDQgQ9I9PLseywswO6
         FTdJUhXLJeifNqoXs3QcX8FyKP09OtmKktz1XK6cLNKEwWpNuEkLNGhfRmTAowfC0qR+
         /MJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726568838; x=1727173638;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3BbujuHzO/RAMZvTpQiB1Pqjgm8cgnsqTGoSPy3nXg=;
        b=q6ala8wf7yYsQJrVD9RO3n9l+b2iNzaTrYke8ArQO5ZvxylIxSZZ5a8dCBYcbNbTxk
         9km+C+OlHvz2+nnPPbyoprPlHwIZWhOA7Mh80KsYkmap2gzqvKWFYoi9QQiTWMOsHZXh
         qH4YEBpX7t3IOUByNtj1w6wpFyxc1eRrNMscMi9M1Tz+sCGwYjJIaopz8m+SbimjOdjs
         WDxKlTktH61+VDLqxhayY3IWmt7W7cy31GXBBNHLvac1+QCgn92PZr0ybqlfjJv7uQwD
         xhKcDtVccUPdTMfUB3aaR4VYnyxISPbJRSrr+7IJK0qcXIEf9TM3G6b0qHiGmlsCnrUd
         3Vug==
X-Forwarded-Encrypted: i=1; AJvYcCVt0BCzTT12g/EEdWB0bWMGffpMaKonNUF9QeT4rSMl5ldn6DqbQEkDcS8/Egm9JICEqC0citaOPSjm@vger.kernel.org
X-Gm-Message-State: AOJu0YzGQfPufj23ksImSnSn8YwrCsxYroflgLMjJ27qLR9SW6uWgwYi
	HfiakQYDEMZmB/SSZ76sv9G/mmFlNq8MVbh2QguocbnW6JXKvrk57laJtXDnO1E=
X-Google-Smtp-Source: AGHT+IHV5sT6le5zmGHifYAmMMnHu84747/30MSIE35w1b7lr7DQVM5IDV37QwsVD4o4IxyZXamNlA==
X-Received: by 2002:a5d:61c2:0:b0:371:a60e:a821 with SMTP id ffacd0b85a97d-378c2d4c9c6mr11217648f8f.38.1726568838503;
        Tue, 17 Sep 2024 03:27:18 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e780031esm9151096f8f.84.2024.09.17.03.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 03:27:18 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: andersson@kernel.org
Cc: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH] arm64: dts: qcom: x1e80100-t14s: add another trackpad support
Date: Tue, 17 Sep 2024 06:27:15 -0400
Message-Id: <20240917102715.4096-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Trackpad HID device on some of the T14s Product Models 21N2ZC5PUS is
at I2C address 0x2c add this to be able to get it working on these laptops.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts     | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index 941dfddd6713..8468f99d9bed 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -467,7 +467,19 @@ touchpad@15 {
 		wakeup-source;
 	};
 
-	/* TODO: second-sourced SYNA8022 or SYNA8024 touchpad @ 0x2c */
+	/* SYNA8022 or SYNA8024 touchpad @ 0x2c */
+	touchpad@15 {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-0 = <&tpad_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
 
 	/* ELAN06F1 or SYNA06F2 */
 	keyboard@3a {
-- 
2.39.2


