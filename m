Return-Path: <devicetree+bounces-228470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 043EDBEE237
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 11:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 734CD189FC74
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 09:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5F92E5B2E;
	Sun, 19 Oct 2025 09:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yhnf5gET"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F4F2E284B
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 09:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760865860; cv=none; b=QIT1CtVcKocod6k/1JaWQA8hXMxeeX0wFMDVv1LVpUFm5yBxA6/ouCE/oKjI0EsJB4U8ReM3taYwI2Boa3Z9eQLbq5W5WRa+wMsrMYYBDgVSvH1DdTRV+Wx6QFkroFACFQSzQXPsbJOLQe4mbx7VeeyrdmU2P3kRrukEloFS21M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760865860; c=relaxed/simple;
	bh=5k6B+2Gkv6ahAvoJ2QIVhv7UjXsFYpKGLwBlGkw92u8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N0uiY2tO5jW2jfcUAyemQAT0k3pADc2NknQ1djTEyKfVUXcLBFM0U9D4wGvjA+1G0devTeOv6d6FOLq0cF0wmjgGqLgtfpMxKgeZspyEPgulYaV5tvOK+xkCkWTRMBg07VU0gDtS8c0Z4PdLCzySj8qZmmRittavNDWGmUcw+Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yhnf5gET; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-290ab379d48so30636685ad.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 02:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760865858; x=1761470658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1IEEUUortRsKDif5/C6NaVIjHsLkDuCc9ssKtrhB8jE=;
        b=Yhnf5gETs9DeuLHi2yhsC41gGNJ+BJPqH5ZpyRkgkDqzFQ30pKf5UklVGaa/jZhpkw
         GygOuJxCLk59JrtWsPYWhi5FtyBiGWdoVhmGq3dWIlxJRObbmYyoEv0WR175Xj6/78X8
         FyNvgnVDx5BafRPr/9QVXhNy/K1QNZxvGpVlUS6JVmagSA5O1tmC6arvS6OLP3U00EtL
         RtpPYoozn2HG3knFDSZrE06otWqK54OHW/zHBcskBSRFTI9EZlGcjuCHHXFsaf41QCj5
         P2r0KROiWp3VatAtcIfaeC2kD2MvDNEfmgiq/iAJcKBjRajx7qSBK3UxrhlSy7WT7CxR
         ETPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760865858; x=1761470658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1IEEUUortRsKDif5/C6NaVIjHsLkDuCc9ssKtrhB8jE=;
        b=L5kUGWpbJj3A27Hj27O6Ti3J/QdDQQbe54ZUs6mKO5XRe3t1k5UNy53L3vVhJqZJCU
         e+8gVHacZgkYQ95kOOR11p+/PjPOi1Ey1MbW/41bLwG56uJ5OXwoCnKu6Ia8x6HBGXOA
         /5bbgZU3F49wppdV3vHVmj41LgRi1OLxb7hqeU4pmH25fG60lJsPF2zZCpskfcyqdQjo
         6ciytxSZX/oB3Yn/RqjWnkFURJvnOsqzvaBBkjYtIn1dpw2drhHkYzFk5RwA1m2QSEjj
         Ow3gowt1LyGA9HAe9fJlsUX0xhUoUzC1G1DItHcpWoVLSnNFHdKbVwPl18uuvBj8h6X+
         AI9A==
X-Gm-Message-State: AOJu0YwmBq/m4uOgnCYfP1V7DyduYixVEnpLSBignXGPFj8jzTO4x8gf
	tPA5wCoR2LfSYtX6xCIUMXzzmLlFQyKMsHPVgJAP5+K0FwUTddyVXk6U
X-Gm-Gg: ASbGncsh4GikZpb0W9YBvUUmcivE2/cZsd644nN8KWmO/AOG3mv+VRKGA1w4Amnj1PO
	8Ir0GRrrlBolgI5vVwRhRjBWw2VU74eqK11yYw25mZ4DXBwHh/9mOFvK+3gnsj6BrHP3UW3L14g
	YA8RgFCEQL1BmPeanE2hsK1uLptMlHN/iXrizCUuGPw0pjoiXG+pOub3bLSubZ3l8yZq2q9IfiP
	Cj12oql3G47s8NFN5uLT/aau9j/SzdEDzh+1qCsvRmC+1RILX6jvnTgu2gze4T6GXbdr8lMqKg5
	VPIJk2IjC8pKffsyyar3InIHJbuQd9Dn7hVNPf/VIs6krr8mJUufoQcycF8oPf4jC4ZuzJGXyVz
	xm+qBXUwyi3eD9I6f59bYJ3ry+NMtbxfmxOt3VYd4brwORiSUah++Y86zV8nLFv54Yz0Jn+aQ+F
	X6szXkFWJjYTN8TsCP4wA=
X-Google-Smtp-Source: AGHT+IF47Bmb/eccmGhShDF9o/qoPWSD6ziSHadaCR4ZNVXketjm3fHbjuIdKH6MpF4Y3hOhFbsTEg==
X-Received: by 2002:a17:903:b0d:b0:269:b65a:cbb2 with SMTP id d9443c01a7336-290cb27eebcmr117044395ad.47.1760865858109;
        Sun, 19 Oct 2025 02:24:18 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.99.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ebd215sm48313115ad.14.2025.10.19.02.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 02:24:17 -0700 (PDT)
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
Subject: [PATCH v3 3/4] ABI: Add sysfs documentation for leds-group-virtualcolor
Date: Sun, 19 Oct 2025 22:23:26 +1300
Message-ID: <20251019092331.49531-4-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251019092331.49531-1-professorjonny98@gmail.com>
References: <20251019092331.49531-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Document the sysfs ABI for the Virtual Color LED Group Driver,
including brightness control, priority levels, per-color PWM control,
and monochromatic LED diagnostic attributes.

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../ABI/testing/sysfs-class-leds-virtualcolor | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-class-leds-virtualcolor

diff --git a/Documentation/ABI/testing/sysfs-class-leds-virtualcolor b/Documentation/ABI/testing/sysfs-class-leds-virtualcolor
new file mode 100644
index 000000000000..f9b455ca34c8
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-class-leds-virtualcolor
@@ -0,0 +1,89 @@
+What:		/sys/class/leds/<led>/brightness
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Controls the overall brightness of the virtual LED. Setting to 0
+		deactivates the virtual LED and restores the next highest-priority
+		active LED. Setting to 1-255 activates the virtual LED and applies
+		brightness to all grouped LEDs (monochromatic and RGB).
+
+		Only the highest-priority active virtual LED is displayed at any
+		given time.
+
+		Range: 0-255 (or configured max-brightness)
+
+What:		/sys/class/leds/<led>/priority
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Sets the priority level for this virtual LED. Higher priority
+		values take precedence when multiple LEDs are active simultaneously.
+
+		When a higher-priority LED is activated:
+		- The current active LED (if lower priority) is turned off
+		- The higher-priority LED's state is applied
+		- When the higher-priority LED is deactivated, the previous LED
+		  is restored
+
+		Default: 0
+		Range: signed integer
+
+What:		/sys/class/leds/<led>/red_brightness
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Sets brightness of all red PWM LEDs in the virtual group. Only
+		affects LEDs configured under "pwm-leds-red" in device tree.
+
+		Range: 0-255
+
+What:		/sys/class/leds/<led>/green_brightness
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Sets brightness of all green PWM LEDs in the virtual group. Only
+		affects LEDs configured under "pwm-leds-green" in device tree.
+
+		Range: 0-255
+
+What:		/sys/class/leds/<led>/blue_brightness
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Sets brightness of all blue PWM LEDs in the virtual group. Only
+		affects LEDs configured under "pwm-leds-blue" in device tree.
+
+		Range: 0-255
+
+What:		/sys/class/leds/<led>/monochromatic_count
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Read-only. Shows the number of monochromatic LEDs in this virtual
+		LED group, as configured in device tree under the "leds" property.
+
+What:		/sys/class/leds/<led>/monochromatic_leds
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Read-only. Shows a comma-separated list of monochromatic LED device
+		names that are part of this virtual group. Returns "none" if no
+		monochromatic LEDs are configured.
+
+What:		/sys/class/leds/<led>/monochromatic_brightness
+Date:		October 2025
+KernelVersion:	6.13
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+Description:
+		Read-only. Shows the current brightness values of monochromatic LEDs
+		as a comma-separated list in the same order as monochromatic_leds.
+		Returns "none" if no monochromatic LEDs are configured.
+
+		Example output:
--
2.43.0

