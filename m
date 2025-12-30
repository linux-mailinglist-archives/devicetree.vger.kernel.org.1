Return-Path: <devicetree+bounces-250323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 623C7CE86B0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 01:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C56D93027D8C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 00:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 917C62DAFAA;
	Tue, 30 Dec 2025 00:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EIpUzR20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16A32D9EF9
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767054812; cv=none; b=T1mnzEjHA4ez/dQ5ZSXoUy/oGUG9XsHNy75fdHU8hp+vbTmNi4R5A0dOAVzuFGyhdBpQD7WP/VK3xIXGvCw0+7IpMDLkHz5fOduVecBcajUNF7irRBd/kym+SrcVcp9b7akLq1ZiJHiAm4JgTIWihTmmj52zcj1Q/CI1/udUU6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767054812; c=relaxed/simple;
	bh=39ba9wue30A1aWTeAfgL3s9LMi8ZQBWqzHOGtGyy7Nw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bqeOrt9g51EQK6JdbUd/gs2+YNZQPhsQWrriUzZJHI+zruWqt5xweiskviBjxlJ5Hg9kRDGOWgnlfYY/jChwlBGRXuJaXFW0U+TJ2P5Q7ZTk2wbsMgkkOC2vzXci21zQVZaNjN1kziTiQV1CS506rTe+ZzGNMtJq+Jkx44Rs7ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EIpUzR20; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-29f1bc40b35so163351235ad.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 16:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767054810; x=1767659610; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ugSCWrsJRygqnHc991VxzRvXCpP5GFtf/Wie/j+cCEo=;
        b=EIpUzR20Z/bJJgMwk6r8RM5cpCfX9hWXVcO4XDGlPjnZLJYMFiW7dA83yNhzYv+7Lt
         kWg6HIX29UqU596jGPTaQGbHic7SHocf6c7Apw8n4uFwcMCH3O+do2Aee4gdP0Ksdd7I
         zhy2eAorx/56cCx1XcrCK2l05T+DmPnMkxR3pvMeR6XdDfM90nJddTkMmITiJtqWnCUm
         6eWbZGNZ4qX6TLczmPG8dZJ9ykod+d8p0rG6X4gBjUuxBkz0MhNNl8tfP0HiUsPjAOk2
         Ybo5w11v5BqmAaYvDkuS7c5Ueegh081L8IbJ9MQ2bee0/WelKYAUT4QX3OwBeYahbVq8
         810A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767054810; x=1767659610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ugSCWrsJRygqnHc991VxzRvXCpP5GFtf/Wie/j+cCEo=;
        b=s3Pb/3HLmEgouoE6QfjroDwQFG9ZOmvlx9IrYNwJeQ4FYN7Ur87cfKLASKTNVS3dpT
         6LWdrULXewD9KQqZzGB4CeBjXsBYMwPE/+fulYydpFrzzKTrcYw2auI791LPmOUpH3YR
         doGmYCCcpSQ3OvctCLnoib5qkfJXTPFnb0iTYfLr4B22OFcYYEVGPUBHFpZTc1pDuNfV
         o02EoCa1PSmnrmbfkt6In3/nH3aM8aGZTfui1zEyG8Nhog9SoYVHdw+3svyCPjioGblk
         D4EHRJyebs+JS7bCT+5pLPGbzu+4RcG3kcS3PgQjivdmFpVKJVbZTTSSf54dX8qfy7hT
         v6xw==
X-Gm-Message-State: AOJu0YzcphCaV7pb32JDbdwepe6kozQPH8zt2mztELhYjfSVp9DSSubu
	OCo4bjFwrxCW8+8x7Lu5WKW9pTtMn4aRokDBT1x/JJYuqqSKM7smrDTD
X-Gm-Gg: AY/fxX6e9GAPwhl75zvQirAh6qqpLUkHPt7FX53ut8MxfrBDJCsB/MDED5ij9DdLqJl
	9LpX6q5i1PMY6tLT7GCgT3dB9dsFrG654O19fONp2SLPAEglkO+cWTWL1vsIGRtZQgihIRmGNx7
	2GPKpVlzUm4jfsocbrb3lQcYv9i5knR164ujrLekiL/v/F9hAntrjPivPet0lnYSAg6mplvgpLn
	X3zD7krcc7yM4h32OYzT1w1qJxUICPJM/TQFBB7mkoYVN+3WUzky6ZGD+Byktu+q8FQw90nb4ah
	uwRJHGD1mmaE3g7//9HPz2U+kbgAHJLDirfBvhudUR7s5zp97o5kBYuZF7/5kNu3UD9JQGamOGr
	mc7UBdMUGBvaqrdyEW7Cpii65KlJU60aa8eMdg/EDfnb6eaTaGwgjV4zWeq71i/QpnlJO2YI5oK
	1kpYOoo9rRa7d3O/NNkZymiZWw9ddFvCPI
X-Google-Smtp-Source: AGHT+IGr2nJFr0T7IhUA7WIZsjwAsp6TZX9YYkR4ycf2KPIvjWfeVIrCdbsDlrO+a6tFrYlEnslK9Q==
X-Received: by 2002:a17:903:b8b:b0:298:2cdf:56c8 with SMTP id d9443c01a7336-2a2f2a565e3mr246004765ad.60.1767054810027;
        Mon, 29 Dec 2025 16:33:30 -0800 (PST)
Received: from MRSPARKLE.localdomain ([150.228.155.85])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm30241562b3a.67.2025.12.29.16.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 16:33:29 -0800 (PST)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Andriy Shevencho <andriy.shevchenko@linux.intel.com>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v4 4/7] ABI: Add sysfs documentation for leds-group-virtualcolor
Date: Tue, 30 Dec 2025 13:32:41 +1300
Message-ID: <20251230003250.1197744-5-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251230003250.1197744-1-professorjonny98@gmail.com>
References: <20251230003250.1197744-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Document the sysfs ABI for the virtual LED group driver, including:

- mc/multi_intensity: Per-channel intensity control (0-255)
- mc/multi_index: Channel-to-color-ID mapping (read-only)
- mc/multi_multipliers: Per-channel scale factors (read-only)
- brightness: Master brightness control with arbitration trigger
- max_brightness: Maximum brightness value (mode-dependent)

Channel ordering is deterministic, sorted by ascending LED_COLOR_ID
value. For RGBW LEDs, white (ID=0) appears first, followed by RGB.

The multi_intensity attribute is rate-limited to 100 updates/second
per virtual LED by default, with counters visible in debugfs when
CONFIG_DEBUG_FS is enabled.

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../sysfs-class-led-driver-virtualcolor       | 168 ++++++++++++++++++
 1 file changed, 168 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-class-led-driver-virtualcolor

diff --git a/Documentation/ABI/testing/sysfs-class-led-driver-virtualcolor b/Documentation/ABI/testing/sysfs-class-led-driver-virtualcolor
new file mode 100644
index 000000000000..704f2e5f2af7
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-class-led-driver-virtualcolor
@@ -0,0 +1,168 @@
+What:		/sys/class/leds/<led>/mc/multi_intensity
+Date:		December 2024
+KernelVersion:	6.x
+Contact:	Jonathan Brophy <professor_jonny@hotmail.com>
+Description:
+		Control the intensity values for each color channel in a
+		virtual multicolor LED.
+
+		Reading returns space-separated intensity values (0-255) for
+		each configured color channel. Channel order is deterministic,
+		sorted by ascending LED_COLOR_ID value. Use multi_index to
+		determine which color corresponds to each position.
+
+		Writing accepts space-separated intensity values to set the
+		per-channel intensities. The number of values must match the
+		number of channels. Values must be ordered to match multi_index.
+
+		Channel ordering examples:
+		  RGB LED (no white):
+		    multi_index shows "1 2 3"
+		    Order is: red (ID 1), green (ID 2), blue (ID 3)
+
+		  RGBW LED (with white):
+		    multi_index shows "0 1 2 3"
+		    Order is: white (ID 0), red (ID 1), green (ID 2), blue (ID 3)
+		    Note: White comes FIRST because LED_COLOR_ID_WHITE = 0
+
+		Example (RGB LED with 3 channels):
+		  $ cat /sys/class/leds/myled/mc/multi_index
+		  1 2 3
+		  $ cat /sys/class/leds/myled/mc/multi_intensity
+		  255 128 0
+		  $ echo "128 64 200" > /sys/class/leds/myled/mc/multi_intensity
+
+		Note: In standard mode (led-mode = "standard"), intensity
+		changes are rejected with -EPERM and the color is fixed by the
+		channel multipliers defined in the device tree. In multicolor
+		mode (led-mode = "multicolor", default), intensity can be
+		freely modified.
+
+		This attribute is rate-limited to prevent system overload
+		(default: 100 updates/second per virtual LED). Excessive
+		updates will be silently dropped with incremented rate limit
+		counters (visible in debugfs when CONFIG_DEBUG_FS enabled).
+
+What:		/sys/class/leds/<led>/mc/multi_index
+Date:		December 2024
+KernelVersion:	6.x
+Contact:	Jonathan Brophy <professor_jonny@hotmail.com>
+Description:
+		Read-only attribute showing the LED color IDs for each channel
+		in the virtual LED.
+
+		Returns space-separated LED_COLOR_ID_* values (integers)
+		corresponding to each channel. Channels are ordered by
+		ascending color ID value (0, 1, 2, 3, ...).
+
+		See include/dt-bindings/leds/common.h for color ID definitions.
+
+		Common color ID values:
+		  - 0: LED_COLOR_ID_WHITE
+		  - 1: LED_COLOR_ID_RED
+		  - 2: LED_COLOR_ID_GREEN
+		  - 3: LED_COLOR_ID_BLUE
+		  - 4: LED_COLOR_ID_AMBER
+		  - 5: LED_COLOR_ID_VIOLET
+		  - 6: LED_COLOR_ID_YELLOW
+		  - 7: LED_COLOR_ID_IR
+		  - 8: LED_COLOR_ID_MULTI
+		  - 9: LED_COLOR_ID_RGB
+		  - 10: LED_COLOR_ID_UV
+
+		Example (RGB LED):
+		  $ cat /sys/class/leds/myled/mc/multi_index
+		  1 2 3
+		  (Shows: red=1, green=2, blue=3)
+
+		Example (RGBW LED):
+		  $ cat /sys/class/leds/myled/mc/multi_index
+		  0 1 2 3
+		  (Shows: white=0, red=1, green=2, blue=3)
+
+		This attribute is essential for correctly indexing the
+		multi_intensity and mc-channel-multipliers arrays, especially
+		when white LEDs are present (which come first due to ID=0).
+
+What:		/sys/class/leds/<led>/mc/multi_multipliers
+Date:		December 2024
+KernelVersion:	6.x
+Contact:	Jonathan Brophy <professor_jonny@hotmail.com>
+Description:
+		Read-only attribute showing the scale/multiplier values (0-255)
+		for each color channel.
+
+		Multipliers are defined in device tree via the
+		"mc-channel-multipliers" property and must be ordered to match
+		the channel order (sorted by LED_COLOR_ID).
+
+		In multicolor mode, these scale the intensity values:
+		  final = (intensity * multiplier / 255) * brightness / max_brightness
+
+		In standard mode, these define the fixed color mix:
+		  final = multiplier * brightness / max_brightness
+
+		Returns space-separated values (0-255), one per channel, in the
+		same order as multi_index.
+
+		Example (RGB LED):
+		  $ cat /sys/class/leds/myled/mc/multi_index
+		  1 2 3
+		  $ cat /sys/class/leds/myled/mc/multi_multipliers
+		  255 200 150
+		  (Shows: red=255, green=200, blue=150)
+
+		Example (RGBW warm white):
+		  $ cat /sys/class/leds/myled/mc/multi_index
+		  0 1 2 3
+		  $ cat /sys/class/leds/myled/mc/multi_multipliers
+		  180 255 200 100
+		  (Shows: white=180, red=255, green=200, blue=100)
+
+What:		/sys/class/leds/<led>/brightness
+Date:		December 2024
+KernelVersion:	6.x
+Contact:	Jonathan Brophy <professor_jonny@hotmail.com>
+Description:
+		Control the overall brightness of the virtual LED.
+
+		This is the standard LED class attribute. For virtual grouped
+		LEDs, this controls the master brightness that scales all
+		physical LEDs assigned to this virtual LED after per-channel
+		intensity and multipliers are applied.
+
+		Writing brightness triggers the winner-takes-all arbitration
+		engine which determines which virtual LED controls the hardware
+		based on:
+		  1. Priority (higher wins)
+		  2. Sequence number (most recent wins on tie)
+		  3. Only virtual LEDs with brightness > 0 participate
+
+		The winner controls ALL physical LEDs. Physical LEDs not used
+		by the winner are turned off.
+
+		Range: 0 to max_brightness (typically 0-255)
+
+		Reading returns the current brightness setting.
+
+		Example:
+		  $ echo 128 > /sys/class/leds/myled/brightness
+		  $ cat /sys/class/leds/myled/brightness
+		  128
+
+What:		/sys/class/leds/<led>/max_brightness
+Date:		December 2024
+KernelVersion:	6.x
+Contact:	Jonathan Brophy <professor_jonny@hotmail.com>
+Description:
+		Read-only attribute showing the maximum brightness value.
+
+		For multicolor mode virtual LEDs, this is always 255 to provide
+		full 8-bit resolution for color mixing.
+
+		For standard mode virtual LEDs, this is the minimum max_brightness
+		among all physical LEDs referenced by the virtual LED.
+
+		Example:
+		  $ cat /sys/class/leds/myled/max_brightness
+		  255
--
2.43.0

