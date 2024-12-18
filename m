Return-Path: <devicetree+bounces-132385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2DF9F6D68
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64CF6188AC6B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 18:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25CF71FBE8B;
	Wed, 18 Dec 2024 18:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="dAPkBYvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1481FBCA6
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 18:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734546853; cv=none; b=rRfUsmKbIWKP/DH9D14VFnNClNa9p0mcZirLrBrYiRyE/vs7Kq194ts5gplEsLcNZ6C3nsm09Po75roVHfDc4E8aOK3y//7c38gQ8MakoEwEkN9c0Oa15GYEa0Zo0fbrhGZPagjDeaqWGYTbWrvgU+ZaPMfP9+2fjfBpXLZEtnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734546853; c=relaxed/simple;
	bh=U8PM7OFW1gKiR8tXuTfMQZQozHR9qO5pl1a1dCYeUcQ=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=soqWzai+yS6eSQIg09tZyUzB5XrrNox9XDFycknJ1RT3wzwrBT6M6/xz5KJnloQ/GrWp1jf9SyPAiWx3maQwhpsaAGFa0QYhCRrMiuLIcxl9LT3/55Lgv/9J1qu/vM7RSeTrkNDdmnmRoXjosyGW477T0j3l6QvEIvzv2fTQaf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=dAPkBYvf; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa69077b93fso1023302666b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 10:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1734546849; x=1735151649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FpTyr3pOeqBd4fVeHV4awepAm1kO5/z7MbR3xj/v4EU=;
        b=dAPkBYvfM52gDlSCOSrRTowFOZOa8EYFtX6oh5U8kZlrNNrA0c9A5MlN9kuEnlggt4
         rD1AqIyldC+gl6J+jMRyH5taWFtAUOZg2jvtyOPTdt9xDRCgM2SP4Cqj/bgXl5eySIoZ
         ADQXoWC+B1vD79I21wShJYom7Hs7OxU4P+VPWJExwWjdYHNSui5ciLkHJpaY2p/a9Ypt
         /aDh6VOxqC5b5uj+oYbITaGAdqQWEOg2Fz/tcdQ4Wale/pLQiGw5q44P4dJMRDyTlVjm
         IouaMxsrZ1GIQjkYnpg4nISl7QrsTFXP61LC4Sg3niA5F27yOoMkxgzamQin7gSgQOvg
         7Mog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734546849; x=1735151649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FpTyr3pOeqBd4fVeHV4awepAm1kO5/z7MbR3xj/v4EU=;
        b=sgq3HYHvrRAipu392wHqnYPI9tjbkuqESbXXMsVypkSrmxzHvSOvrP7eolF14IL77t
         xpk3uYYgi//M55oDt/cmBY7Y15vLkrlSqAmYdW8karQLIgT95UWm8kIZj8Fu2BllXlSn
         iMVSfTaHymn1Y6HNIVi4w6WwI4xc7a4Zfhtdy2S7+SLGQO8XJdgIxlY1ofhiNbAZfXhO
         aGqLVF2APGAF4KBdWiEUeCV5In0BPzUmQNpBM5j4YpZ2if35V2qNIkcBcWE4n7n0kywE
         iiUOt7Vi7tfivBdjEt2ZDlmkvL6/XQaDNAPDYmTZCP0ehzhktM5XsB9cwEoNgErkItjL
         N4ng==
X-Forwarded-Encrypted: i=1; AJvYcCWITqR1Lcd2DMUrPBATN931LDbE6BmEeCOSHrj1+2IV/TMxRLDTcj1J+jF+QT2FJsHUa1XXZyzWAwXR@vger.kernel.org
X-Gm-Message-State: AOJu0YwunTWLfzhFo1onAPrJjIkwnTZCyLJCVSnFca8nON7BGEoT96In
	S/W9qztKeQJSFmRQcrI3cKU77f9u81xS4YB6jVOIntEgZCzGRpfhuYjgcJcT23WnbNxbDu6bNi6
	x/rlvdFv+wXd0vI/bwfSpoXjVexfPjCbzerKHf3xXYjRSvYMGPhIYRBfU3Q+R1m9qu6XTKPdyNm
	9Kky4Ufdh9g/qtajxhRbLQbhNR
X-Gm-Gg: ASbGncsZ+PyLGpFvD61/n2A23pJMlAnd3RhnZXermAt8S5I8FRhHwXlBrEJ8OUbwUrO
	JaDdtBjvWEGXln1p5whOjMKcMm78opZOdeWZIyn6hdj+fdOlRPBqY3+PdTP2BllFWbnsynU/5HN
	JAkwpqtC3+3SNQZaQbXrFQ3CKjftjc3uxTBKlJCOKPotl5USh6tpcQ/cUXFH243sPD9kVP3Kxw8
	HixhvA2QAMYaYW1nnUx/gYFkqpFELQ+aDO3eRm67P4lD79B8t/tM6IUXe4CnhP+m3WPeVuCvtf3
	DulNk4Mr98fR9g/k3K3wJEQHpy1uk4IZVEtMDa+HOBN27vAQIebMx+OtV0wrl1HR3CGpKMSwslI
	D
X-Google-Smtp-Source: AGHT+IH2PWkcdNyGTKokJaUWWhT0r1CKLpFl11CxYkcaFXYiJrP3t69tY7W2UAINnz6wjr2BPUp2mA==
X-Received: by 2002:a17:907:7817:b0:aa6:6885:e2f0 with SMTP id a640c23a62f3a-aabf48f7236mr333656066b.46.1734546848513;
        Wed, 18 Dec 2024 10:34:08 -0800 (PST)
Received: from localhost.localdomain (ipb21b247d.dynamic.kabel-deutschland.de. [178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9638ec53sm583873366b.156.2024.12.18.10.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 10:34:08 -0800 (PST)
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH v11 1/3] Documentation:leds: Add leds-st1202.rst
Date: Wed, 18 Dec 2024 18:33:57 +0000
Message-Id: <20241218183401.41687-2-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241218183401.41687-1-vicentiu.galanopulo@remote-tech.co.uk>
References: <20241218183401.41687-1-vicentiu.galanopulo@remote-tech.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add usage for sysfs hw_pattern entry for leds-st1202

Signed-off-by: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
---
    - Changes in v4: Update format (line wrapping) for leds-st1202.rst
    - Changes in v3: Add leds-st1202 to index.rst
    - Changes in v2: Implement review comments

 Documentation/leds/index.rst       |  1 +
 Documentation/leds/leds-st1202.rst | 34 ++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 Documentation/leds/leds-st1202.rst

diff --git a/Documentation/leds/index.rst b/Documentation/leds/index.rst
index 3ade16c18328..0ab0a2128a11 100644
--- a/Documentation/leds/index.rst
+++ b/Documentation/leds/index.rst
@@ -28,4 +28,5 @@ LEDs
    leds-mlxcpld
    leds-mt6370-rgb
    leds-sc27xx
+   leds-st1202.rst
    leds-qcom-lpg
diff --git a/Documentation/leds/leds-st1202.rst b/Documentation/leds/leds-st1202.rst
new file mode 100644
index 000000000000..1a09fbfcedcf
--- /dev/null
+++ b/Documentation/leds/leds-st1202.rst
@@ -0,0 +1,34 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+============================================
+Kernel driver for STMicroelectronics LED1202
+============================================
+
+/sys/class/leds/<led>/hw_pattern
+--------------------------------
+
+Specify a hardware pattern for the ST1202 LED. The LED controller
+implements 12 low-side current generators with independent dimming
+control. Internal volatile memory allows the user to store up to 8
+different patterns. Each pattern is a particular output configuration
+in terms of PWM duty-cycle and duration (ms).
+
+To be compatible with the hardware pattern format, maximum 8 tuples of
+brightness (PWM) and duration must be written to hw_pattern.
+
+- Min pattern duration: 22 ms
+- Max pattern duration: 5660 ms
+
+The format of the hardware pattern values should be:
+"brightness duration brightness duration ..."
+
+/sys/class/leds/<led>/repeat
+----------------------------
+
+Specify a pattern repeat number, which is common for all channels.
+Default is 1; negative numbers and 0 are invalid.
+
+This file will always return the originally written repeat number.
+
+When the 255 value is written to it, all patterns will repeat
+indefinitely.
-- 
2.39.3 (Apple Git-145)


