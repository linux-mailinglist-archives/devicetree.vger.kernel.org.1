Return-Path: <devicetree+bounces-122604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0BD9D13C9
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 15:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D9286B2B45D
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 14:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E5AE1B3921;
	Mon, 18 Nov 2024 14:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="nJ0hICrP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847B31AF0A3
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 14:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731941702; cv=none; b=UItkLzaekN3+ByyoNbZIDq6SMorLbcat/jSgoAHb/oPQYeKGnYJXkwbj0g5TWtVecmg/N12QimysosbWqpgS+fIBfZJ1vO3/IkFN5n7R+YchNmtYj5SaD7jeikkRuELRs4lEkSBUpuExqE/E7PlhGHEkKdJtS9WRtQCYHTLh2dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731941702; c=relaxed/simple;
	bh=BjUHWeRL5XhFoFRQbACC2LDGQOEjVIksyw691+eLQ00=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=utkWZohGL6b3GYWSbwITeCbNLsj1gs/kyoPBHXBfDG6+IFJcc9j12ffnMgpuimKEXB5rtj2CCKGWJwCAXXJ5jWIh8Fqi33Vo5n32DhtX1yvIyJroxSGaDrnQLsVsQYwgdU/armXaT0RQcMsLaycgY1k2TsQT1NfaW9aKR4sYEkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=nJ0hICrP; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5ced377447bso6335396a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 06:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1731941699; x=1732546499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rb5KhQmw4LslJ+rFvwG7oSd7/IR0vOX8Cf3hoYX7Tng=;
        b=nJ0hICrPufB4tMHHl0kCWKaL2Hv09jGWCXnSYjZMOi5CtWSi7qkAc9GHA2sQLB/l3U
         00sO3s5UWOJzesBqKTl76BN+95t5OWhiBxFTcwP3UganxQ0+uwjIdjZgnjFc9VeX8eDu
         Vhg2gwzKN4izAbRAKxIcOcEv2LVR1TU4XPdVrq7w7cPKZx/kZPumAhqIvHJhvCuDQdws
         XR7FLItvYyc5a6wuamkvjYdv4LTwrCFPEBLUR4pjtenJzeB/AUa3n7V7EvnMPFYvncXi
         vFeOuXQvE11XtM1+KG50IEjrobfLceFyxui6gRkX3lfnb0IyvngsfpaVh6Sf7G1T7MDU
         C/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731941699; x=1732546499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rb5KhQmw4LslJ+rFvwG7oSd7/IR0vOX8Cf3hoYX7Tng=;
        b=qYbNMlDEdIx5jDShPt4jFChSgVIlxCGCitbn538RAkUXMi7yBZ8t+Q5c1fzog3oSgg
         Y3/6Mc+nG8au0HKAPwmXxvjueJ66VRAEthdjhYa8TxwaEHTEpg6Vno0OG/v9N1gt5ikA
         JtfHBQbml+I0+o1SiflI6O9JtikGuiLWU1zOZbwpkIKZ9GqZ7Q0BvZsseqWHyyLP1pE+
         lzEQzQLA2KgnuAzelzCrOlBlvRuhoawjwZWmMAwnOEZRYihMScFkPQIfjQBe1tCPcyQy
         x/6967gRve/SwDxoNRX2N7RFUcipqdsWq10Y38pmAiIUvZVSeTMXgfvU5lWV6GbGfLC1
         vIcw==
X-Forwarded-Encrypted: i=1; AJvYcCW7X4YMAG2i6lKLSCuskFL9kvPveSTVruKH4N4eoduIy2IQoZYzTUp0w5fszctzGmBXaMsiMDwk8y1E@vger.kernel.org
X-Gm-Message-State: AOJu0YzjZrDymyGzjireDyl115tw3FhQNn/z9nJkiYxJduES5kQR8/nH
	0k3aD4UTCrpH48WGL6v5VApRY2IBulFd56OQC7gH+TVbLpj02slmms2Iq1iK6Pnd+5XrL5pcTcY
	llkhX1NjUvA5KOGITbVW+zMlWbPzkGFw9NFFTEhMntDEb8LzHFzmd5cNp5tXsyLIcP0yyII1bVk
	cGih2z0Wern/w1E+bgCNePMW3U
X-Google-Smtp-Source: AGHT+IGakfYoRwIFD+fAHqlh39MXBNvGeTyqIDQ/4FiU/c+03NRrIZyHHule8AgQu9QGgBrK3+YxFg==
X-Received: by 2002:a17:907:3d86:b0:a9e:c446:c284 with SMTP id a640c23a62f3a-aa48354f048mr1218450766b.55.1731941698849;
        Mon, 18 Nov 2024 06:54:58 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df1b642sm546125666b.40.2024.11.18.06.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 06:54:58 -0800 (PST)
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
Subject: [PATCH v7 1/3] Documentation:leds: Add leds-st1202.rst
Date: Mon, 18 Nov 2024 14:54:43 +0000
Message-Id: <20241118145449.7370-2-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241118145449.7370-1-vicentiu.galanopulo@remote-tech.co.uk>
References: <20241118145449.7370-1-vicentiu.galanopulo@remote-tech.co.uk>
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
 Documentation/leds/index.rst       |  1 +
 Documentation/leds/leds-st1202.rst | 36 ++++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+)
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
index 000000000000..e647966e496c
--- /dev/null
+++ b/Documentation/leds/leds-st1202.rst
@@ -0,0 +1,36 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+============================================
+Kernel driver for STMicroelectronics LED1202
+============================================
+
+/sys/class/leds/<led>/hw_pattern
+--------------------------------
+
+Specify a hardware pattern for the ST1202 LED. The LED
+controller implements 12 low-side current generators
+with independent dimming control. Internal volatile memory
+allows the user to store up to 8 different patterns.
+Each pattern is a particular output configuration in terms
+of PWM duty-cycle and duration (ms).
+
+To be compatible with the hardware pattern
+format, maximum 8 tuples of brightness (PWM) and duration must
+be written to hw_pattern.
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


