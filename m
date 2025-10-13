Return-Path: <devicetree+bounces-226010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C39EBD2EB1
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 129B434B93D
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F1C270542;
	Mon, 13 Oct 2025 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XtKU2jBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2F62701C4
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760357434; cv=none; b=CjkZ6BpkEbHbelIyRgQZHr0ppiwKJUNS1JpFvUyTvhpRphRWiq1ulu+cZxgrS2biApEBhEzmqf4kHH/Es60gQRiuKhSDgzVTjDA43H/odn1/yClcL048/WP2j0pwl7V8bc9ciCccxhWvtIK8zptNlRctDb3Sw+Z7jBYfRaPUpXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760357434; c=relaxed/simple;
	bh=sGDSBrzW0zgF5EQSKaXU8a9r9euCxs3JkLMBFsQHFa0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=beE11k7yk+kHe9j6DN/hULb21mg5YZg2SFngeYNP+jaRRpWp3hf3x5aJgQpGT5RKG8bx23eAsc9aVv43TxzPKEQJFp5tzMS8d6uia/iCFU2VwcBESf/oRBKAvso5JLdQBXoCT+AlghkLyO3RUaWbc3OKzWeOovvNhgTMHR0ffkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XtKU2jBC; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-77f343231fcso2493179b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760357432; x=1760962232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1hLPMhjPfSb7sTToqSESPvRBiXI0kbCHKCBEKr2X12A=;
        b=XtKU2jBCgR3BptFqL5hrIVla71PqIUjAFQi6l0k1WavM5k1amvw6SREGkkwhCPSkkR
         MBx6KiyU4Dfj2WNlPDtiR/qyeW5exOVzi0vPJiDbm0C4fUt4u151ucbrQe0isTERPBGB
         uBOvFjzvEgk5z5WiFEFxBUABuSxcSvkwcF3ZpxJfTi7RSYOyHkenjLLsQdr1/S8P/XqY
         CbsNQkvhH3hO/ePVsVt+oMYjn5iddkzYu+Hua2cvcC0NTnTspR2X7yosfY+TK7Q12OVM
         yQQw8p7PnUq1DN3vShSxG4+sVkX1h9uzwZMh8wof1MccyNaqHFKXlxiNdD9w2EcGnDX0
         JCyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760357432; x=1760962232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1hLPMhjPfSb7sTToqSESPvRBiXI0kbCHKCBEKr2X12A=;
        b=vQBYnzrXH4b8iU8iDziox9G5/xkv8VuA28WZ24H96bA2Nw7xPAgJLrGEX1j3ucIfZR
         oCpUEuGxU0QsebuvQUSSwBpesLU7Z8wkbonwBhPI6NIeUrkjz4xZXUpop9nFAq3fL1BF
         WJQWdiwENqEvbLrfA8uCfyu67HiRLnAPWMtcJij1KUQhmRjkBzlZl4nznlMvmtGnyGT0
         dZwGJFEsJcCPMWCavCMEMXPslz3SUOOuX7JJCcY1FIj026mGjvgio0No/Tfy22GqTebL
         y/JchzATT3sFiKDNiHucdLT3caF2z0hv6CeGbL6l3zMbZSY6HTDBg/wei34rKVslM5b4
         tz+Q==
X-Gm-Message-State: AOJu0YxeGsnnVjp/+B12shsYXt6un55YtRiFjsxlEA8GAQufRsqEJGNd
	Hg45tEumVe8sWm2VrCCAfWWhOzzOitFJn6u3E9Y4wXfrtiWApnpDnr/A
X-Gm-Gg: ASbGnctq/RS3qOV/BB/uaX7GgnDNfvftmrYLazP7lqXJV60J07M9LXdLb0rO8cPz9KA
	J1uDTk/ch2LKcWB3i6w2SDXjYXmktp/buJLZ3xAkszKkEcPzxKo5nHsH4JIxhli34YVJ3S9+19z
	3FqaihBenArFYmR3+ChwDWiv6wMwO1iItbxw5BMhn30pbC6SisfYTzVwuMk12FynJjMOItDSdwS
	tH8WZlzvkcOAmBl9HVw7jgvWS0a80cEy4mD+MSYbDVh8asS0v6cJv6/iUD2EPHxOFxaN46v+QsH
	RkLXWTnTtODaB41GplenV1h2k9/ZGZjxvpPdOlNOXBOaH5DunWhq+kD4A1rMH7e0UyhHLt58Ni2
	of9JAc7KdSdeyQsXo5hnuwLdMH2hzbmJjz+44w4jrwD8dgmGZUPCoFe7g+FBxF1g0D+o3+So=
X-Google-Smtp-Source: AGHT+IH9GduPzVmxfXpxE+Vv9IEFmCnMu8tf99lg2QF8G2VGK3RBdrnZwqLRjBpByIPy+yj5nhZfJg==
X-Received: by 2002:a05:6a20:a106:b0:249:3006:7567 with SMTP id adf61e73a8af0-32da83e39cemr28536785637.35.1760357431843;
        Mon, 13 Oct 2025 05:10:31 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.98.89])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df48a83sm9633354a12.31.2025.10.13.05.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:10:31 -0700 (PDT)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 2/4] ABI: sysfs-class-leds-virtualcolor: Document sysfs
Date: Tue, 14 Oct 2025 01:09:46 +1300
Message-ID: <20251013120955.227572-3-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251013120955.227572-1-professorjonny98@gmail.com>
References: <20251013120955.227572-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Add sysfs-class-leds-virtualcolor to document Virtual Color driver sysfs
entries

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../ABI/sysfs-class-leds-virtualcolor         | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/ABI/sysfs-class-leds-virtualcolor

diff --git a/Documentation/ABI/sysfs-class-leds-virtualcolor b/Documentation/ABI/sysfs-class-leds-virtualcolor
new file mode 100644
index 000000000000..eeebb65604a5
--- /dev/null
+++ b/Documentation/ABI/sysfs-class-leds-virtualcolor
@@ -0,0 +1,43 @@
+What:		/sys/class/leds/<led>/priority
+Date:		August 2025
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:	(RW) Priority level of the virtual LED group. Higher numbers
+        indicate higher priority. When multiple virtual LED groups are
+        active, only the highest priority group's state will be applied
+        to the physical LEDs.
+
+        Valid values: 0 to INT_MAX
+        Default: 0
+
+What:		/sys/class/leds/<led>/blink_delay_on
+Date:		August 2025
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:	(RW) The time in milliseconds that the LED should be on while
+        blinking. Setting both blink_delay_on and blink_delay_off to
+        zero disables blinking.
+
+        Valid values: 0 to ULONG_MAX
+        Default: 0
+
+What:		/sys/class/leds/<led>/blink_delay_off
+Date:		August 2025
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:	(RW) The time in milliseconds that the LED should be off while
+        blinking. Setting both blink_delay_on and blink_delay_off to
+        zero disables blinking.
+
+        Valid values: 0 to ULONG_MAX
+        Default: 0
+
+What:		/sys/class/leds/<led>/brightness
+Date:		August 2025
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:	(RW) Brightness value for the virtual LED group. This value is
+        applied to all monochromatic LEDs in the group if this group
+        has the highest priority among active groups.
+
+        When read-only mode is enabled via device tree, writes to this
+        attribute will return -EPERM.
+
+        Valid values: 0 to LED_FULL (usually 255)
+        Default: LED_OFF (0)
\ No newline at end of file
--
2.43.0

