Return-Path: <devicetree+bounces-217819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A50B594A9
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3956C3AC33E
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5A92D0C9A;
	Tue, 16 Sep 2025 11:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E2ZLNIF6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690C22D0638
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020565; cv=none; b=mRS0C6SSHcmhJQ3CsgNmmknUwipk+IzZ8n0s+vg/KSAVZCFU4U94PRS6KZngw+Bt7WU+Risg0Ns4+X14mwwMxgsa2NPhxtVbemm2flSYiol5yql3D3nOJseZKixHqHxpuL8nLKzGgTeAHi+UpBLUnqFlMVJhYUXv+ZiDuDg0BSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020565; c=relaxed/simple;
	bh=4ugWzdLxwH7TW3xz+VsZ74Nu20vH+O8v7BzSqvng7pc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j2F63I6bOoo18U0e4Yabfyx/v6cV7JILHccLBVSobt3flom/xGB1MN+EwxXXB0DlIutNdDCwl1J2PTN52RRrCj0Izh5Nhfp+tyLgoT9GRGGmbfUNvd+chSAn8H+I10IrzlouWw1sO1aeOKzcAW+kK8YcS4eyAztActdDFHOX1/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E2ZLNIF6; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b4d1e7d5036so3451473a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758020563; x=1758625363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nlc7jsJk6p6gKdRTeiAfm5hIuEV2gvb0B1/cOcqj4g8=;
        b=E2ZLNIF6Pvy13OBvsngXIj+rt+60xM/gjUW3PSD7bMpMxql6FBvQAIfjGiOCNy6arS
         /vWNqwsfOA1hzA7CSRhwv2HAbFt25CZMoonSbhEva7c4FtA/Tgtyd26AjSG3+gV7X1uH
         hnc0aei1+ZBJYslcVY3V1tcY/4OfUfFpMDI4/wIZ/4BDWsYr7WWVqgFFxGK5kvoibb/H
         H9OA2mDW1UCn53wppOf7U/epp0Uxe2y8eUIThHkeM7A6Kb5nkMJp6Clzt9GpbfG5Wf25
         Av785BNNoppLNv1QJreT5ta9Xde73m2ZRRtEmUXy1CfaXrTeYrj3bNGFM0CWtnDqzLDz
         ib3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020563; x=1758625363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nlc7jsJk6p6gKdRTeiAfm5hIuEV2gvb0B1/cOcqj4g8=;
        b=I/iDIakNtqpgROsCpTWimjDFydBO3nrFA7n7gHe+pDkq9df9Wq3PU46YC8yMpxy7Sy
         HgoIF0SNFTD4yvkeYUT6OPrB1BuQtxyOA6VuGFGMBwy2Jmi2x0KkSTrV1rpw9xt8TLvE
         e3lQXzJh/LA5C4NavFFyErW+p51UMHOT8l9T2OEZLjgP96esTmqz/wPzZbmBvTlzqjVV
         RYPEWXylEebu+oggr/542Z/Jt846iEttiaWa455zVn/C0qe8oqmCoIo73LxDTClqyv4A
         /+hslWZOrl6shoRb1al7hN/YraawKp93oFxCLOBt7aiVh005aqKaMQTWSQ9VhWxbGQZR
         Ao0g==
X-Gm-Message-State: AOJu0YwX7TM8F/X/a5Z09rtc3X5J2fKtOfurvGvML0K5E+tqnDCKOWUH
	Fy12tP7yAICCeuG4C8Z4egVEOGiZ0fYGwDADKALqmFWofI2r5550DMK/
X-Gm-Gg: ASbGncvztmM/x5VgUtxwHsA9MVa3fTY7YDnd2z9jEILcqa1+Ctu1R1UhJsEgqzpWT+H
	J/2+t7RDwFTegRt8XRhJ6xs/uxOBcF/jDGwzIGOoNghV5Dy6sfvUooijxUOkxdjABcdrbr6dfCC
	KZsc1F6uDZVs7jozc5SPtMRbot6JWfrWehyPqnAxDP1eVcahl8KH2GuQp8J3IWpRJNWzZPZnDcu
	GaUAX91s/Yy0c0mSdXfSRtz9sDqGkDHudqmqFBN5u8cxsCPPP+BISvJIMzRAL0eGy0b/pBIDhFR
	fqKRHBaAGUpxTUGzM5O+dbwfUnu5K985KFQm6bkNBB30cH7/Qnj04aCZeDGAJDvRCTCXsZuhT48
	rbNDVHm2MmwPCCqt5UkDXMFQgnxYetimf5VBzXWdHFjP+
X-Google-Smtp-Source: AGHT+IH64sLUcDgQBMHjtimcEQQJfjOUS+/VsmBxNDcrcn0Ck9ACmp62pRLDSs+pn4IEA+FDfafriA==
X-Received: by 2002:a17:902:f546:b0:267:bdcf:9346 with SMTP id d9443c01a7336-267bdcf99ddmr39744695ad.27.1758020562681;
        Tue, 16 Sep 2025 04:02:42 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.103.177])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3b304ce8sm158761725ad.128.2025.09.16.04.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:02:42 -0700 (PDT)
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
Subject: [PATCH 4/5] ABI: sysfs-class-leds-virtualcolor: Document sysfs entries for Virtual Color LEDs
Date: Tue, 16 Sep 2025 23:02:16 +1200
Message-ID: <20250916110217.45894-4-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916110217.45894-1-professorjonny98@gmail.com>
References: <20250916110217.45894-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Add sysfs-class-leds-virtualcolor to document Virtual Color drover sysfs
entries

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../ABI/sysfs-class-leds-virtualcolor         | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/ABI/sysfs-class-leds-virtualcolor

diff --git a/Documentation/ABI/sysfs-class-leds-virtualcolor b/Documentation/ABI/sysfs-class-leds-virtualcolor
new file mode 100644
index 000000000..60b878791
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


