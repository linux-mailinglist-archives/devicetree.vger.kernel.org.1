Return-Path: <devicetree+bounces-67350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ECA8C7A8A
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 18:42:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72B07B21468
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 16:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C4363BF;
	Thu, 16 May 2024 16:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="WVMJ3I+/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8641DFE1
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 16:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715877739; cv=none; b=l+sMIrlC3z84g9DbSWPc23+UD/cwsqVaPdB7zSxC/R7dxDdQA7Ch1DObWLl5XrwVzFaxj4pc5IR1qqfRuestU+PzuW4KoV2mCEtjAt7qi6iPM0r8t2xESByztk6zWin+hCzp+z99VvfFwZ6k4X32YVuTZOahrTJKYCB3IrFj14I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715877739; c=relaxed/simple;
	bh=j04eimfjyUgU2H082lOSUcXZZ9IlONK3OkpU84cro0M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Lto63n/IFCUubW3MZhz6KRn06f3MovOcugiP6OIY80v3d5nQ9Bz/ejtV4eO4GOL7RSdW5Rt6Tzbu5nqxxEi9OuvocCaY948QwpoC2LxZN/H7DIs0UiNki8XFeTNRkipdjbyYXLvP0w2UKkEJuarx/N3cWwQqgMRKR1MBWXEL14o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com; spf=pass smtp.mailfrom=melexis.com; dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b=WVMJ3I+/; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=melexis.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a599a298990so382981966b.2
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1715877736; x=1716482536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BXTYAMw4Ajg6uSzD9GLExqk/KcGPmBaTriWW0Oj6lRg=;
        b=WVMJ3I+/13wztsWUl/QUjePs5vIwtiVI84O3VibCdQ2kb31RUriCT4XLOji3Otqj2Z
         5/zeGIgEze7pQjDqaahaY4OFon+WxreD+S8bpuhBVSmcnFEeZQ2YEI0T0xIMdKQcF8iu
         SutK9Q9tuM1GF1Mvm72wBp5fdNBjTOb/l1pybZyubhHcWEFPidXYXG4L13Msc93kgd6x
         PMzagJ7djEtcdN1m1xacJ7s8m5Jw3I9ng2YyrqEsm9Usu1awIJq528wvHlZZZiha4yja
         toSaIsHBMcMTtQLN8nlW0mVw3j/WNGE4GUVHMwL2vJw9MS/0MaOm7V6RHgTg25otkIvW
         Y7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715877736; x=1716482536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BXTYAMw4Ajg6uSzD9GLExqk/KcGPmBaTriWW0Oj6lRg=;
        b=DshSOZqnReoWIS0RtejOozUaydXkB3BQW2J05PWhZnwHucjI7n15neBQZd7O8+UBvQ
         F93MVKLlR0+C1597UmL6XJtD/7oNj4RTmScpiQsxFFZEyT8VoELB8vpQVu2NL1EScU+K
         XCkCZB6P+RMz7V4/w/ZGIwcA4YbS/E+tFC8nrSwtvHozVynZW/yH2L0Rx3SCSMt0fdOF
         IGb+desG6Hlvddu8CQXPeMcT8t1v5o9Nz0F4Pep/SnLMYd+4p1CXXFm9hA/QCGqi8vTZ
         vg3aShBBagWC79ng+J/hwDOuZn0RD+jF7pikl+C7GjytRBOa6MSfQbXL++kPix0J5bpp
         oS7w==
X-Forwarded-Encrypted: i=1; AJvYcCUccqqSLY1gFCidvLGoxYFNJer9NmYIZvZa0UDDvTRBU5FUHCb7FtKXLWQgzn8gghMI0/8fjmhuaM3DzxkK1zOu0yRuLu6ALjOTDQ==
X-Gm-Message-State: AOJu0YyLv6DaoI05iIrdKCNmVKotw0+ClI9zGQLvNf3RbH4FPUOp7bTF
	SQ6Glccu7Et3kMTJ7GPbZVydQp3835jy4fBVPM88MDXPwgCEiAn/o/ipYZYiQg==
X-Google-Smtp-Source: AGHT+IHnGdB75nuvKaKJ3eLN8yhVPH5jsKWtZ2nuM+gj65Hc9dZ3akCfwRxJwyB56JtMGr4Qa6gEMw==
X-Received: by 2002:a17:906:40c:b0:a59:dd90:baeb with SMTP id a640c23a62f3a-a5a2d641583mr1389923666b.48.1715877736241;
        Thu, 16 May 2024 09:42:16 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781cf60sm1011443666b.14.2024.05.16.09.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 09:42:16 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v6 05/10] media: Documentation: v4l: Add TOF class controls
Date: Thu, 16 May 2024 19:41:50 +0300
Message-Id: <6b0e58f60cbfe55a2c0fc14135d6453b53721f19.1715871189.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1715871189.git.vkh@melexis.com>
References: <cover.1715871189.git.vkh@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description about V4L2_CID_TOF_PHASE_SEQ, V4L2_CID_TOF_FMOD
and V4L2_CID_TOF_TINT.
Also updated MAINTAINERS with new ext-ctrls-tof file.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
Acked-by: Benjamin Mugnier <benjamin.mugnier@foss.st.com>
---
 .../userspace-api/media/v4l/common.rst        |  1 +
 .../userspace-api/media/v4l/ext-ctrls-tof.rst | 56 +++++++++++++++++++
 MAINTAINERS                                   |  7 +++
 3 files changed, 64 insertions(+)
 create mode 100644 Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst

diff --git a/Documentation/userspace-api/media/v4l/common.rst b/Documentation/userspace-api/media/v4l/common.rst
index ea0435182e44..1ea79e453066 100644
--- a/Documentation/userspace-api/media/v4l/common.rst
+++ b/Documentation/userspace-api/media/v4l/common.rst
@@ -52,6 +52,7 @@ applicable to all devices.
     ext-ctrls-fm-rx
     ext-ctrls-detect
     ext-ctrls-colorimetry
+    ext-ctrls-tof
     fourcc
     format
     planar-apis
diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
new file mode 100644
index 000000000000..fd8969d3d354
--- /dev/null
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
@@ -0,0 +1,56 @@
+.. SPDX-License-Identifier: GFDL-1.1-no-invariants-or-later
+
+.. _tof-controls:
+
+***************************************
+Time of Flight Camera Control Reference
+***************************************
+
+The Time of Flight class includes controls for digital features
+of the TOF sensor.
+
+TOF sensor is a receiver chip. Each pixel in the sensor measures the travel time
+of light to that pixel and hence the distance to the object seen by that pixel.
+There are different types of TOF sensors. Direct TOF sensors (also known
+as Lidars) send a single pulse and measure direct time of flight.
+Another type of TOF is indirect TOF sensors, which emit continuous wave
+(could be radio or infrared) and then measure phase shift of reflected light.
+The sensor modulates outgoing light and then collects reflected photons
+as an electric charge with modulated pattern. Knowing the frequency of
+the pattern you can calculate the real distance.
+
+For more information about TOF sensors see
+`TOF <https://en.wikipedia.org/wiki/Time-of-flight_camera>`__ from Wikipedia.
+Also, there are other nice explanations from vendors about indirect TOF:
+`Microsoft <https://devblogs.microsoft.com/azure-depth-platform/understanding-indirect-tof-depth-sensing/>`__,
+`Melexis <https://media.melexis.com/-/media/files/documents/application-notes/time-of-flight-basics-application-note-melexis.pdf>`__,
+`TI <https://www.ti.com/lit/wp/sloa190b/sloa190b.pdf?ts=1657842732275&ref_url=https%253A%252F%252Fwww.google.com%252F>`__.
+
+.. _tof-control-id:
+
+Time of Flight Camera Control IDs
+=================================
+
+``V4L2_CID_TOF_CLASS (class)``
+    The TOF class descriptor. Calling :ref:`VIDIOC_QUERYCTRL` for
+    this control will return a description of this control class.
+
+``V4L2_CID_TOF_PHASE_SEQ (dynamic array u16)``
+    Change the shift between illumination and sampling for each phase
+    in degrees. The distance / amplitude (confidence) pictures are obtained
+    by merging 3..8 captures of the same scene using different phase shifts
+    (some TOF sensors use different frequency modulations).
+
+    The size of dynamic array specify the number of captures.
+    Also driver may decide whether V4L2_CID_TOF_FREQ_MOD and
+    V4L2_CID_TOF_TIME_INTEGRATION should change the number
+    of captures or rely on V4L2_CID_TOF_PHASE_SEQ control.
+    The maximum size of the array is driver specific.
+
+``V4L2_CID_TOF_FREQ_MOD (dynamic array u32)``
+    The control sets the modulation frequency (in Hz) for each phase.
+    The maximum array size is driver specific.
+
+``V4L2_CID_TOF_TIME_INTEGRATION (dynamic array u16)``
+    The control sets the integration time (in us) for each phase.
+    The maximum array size is driver specific.
diff --git a/MAINTAINERS b/MAINTAINERS
index ef6be9d95143..de46c28bb3f2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14012,6 +14012,13 @@ S:	Supported
 W:	http://www.melexis.com
 F:	drivers/iio/temperature/mlx90635.c
 
+MELEXIS MLX7502X DRIVER
+M:	Volodymyr Kharuk <vkh@melexis.com>
+L:	linux-media@vger.kernel.org
+S:	Supported
+W:	http://www.melexis.com
+F:	Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
+
 MELFAS MIP4 TOUCHSCREEN DRIVER
 M:	Sangwon Jee <jeesw@melfas.com>
 S:	Supported
-- 
BR,
Volodymyr Kharuk


