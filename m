Return-Path: <devicetree+bounces-250320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10347CE868C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 01:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C49D4300E447
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 00:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873D52D9EF3;
	Tue, 30 Dec 2025 00:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GeXINmzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107CB2D97A2
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767054796; cv=none; b=elX67mr7oZODkAIGn7S7P8YKpU7aL7w8G3gXW3lGH3N6hxWOsW9BXbkxF+atfSIhdFSKvANd/PFOrIKbUn4XtYAYUhCMr86MVn5Onfgg/k/jvRT78mxRYv7RlKUYcVhsOqNVzVUV2rJ7nVEkbzvY+uC8ienC56Wr7i9Z+x4rbEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767054796; c=relaxed/simple;
	bh=fGf2+7rah7o8VIl3XrKMGN/1rQuHOlVs273H9WmWF5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OgscmGRhpvGNEiAetd2GI30ZLNgNcmrueolg3l3NuAKFBYpVK9pWCzKRAaSbEs2j5A/9oNiFDWjVLxMLHKH/gAMYwodHwEi5FhmpyCm9JiQCC/0xOCqWR6lXIuYvxYROr5NZdrjTwApuUqtB/wPC569mBYsHEZ94cQpkS1cSLY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GeXINmzL; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso11170153b3a.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 16:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767054794; x=1767659594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+aoWuGKUE3COGr8tLv4S8keRb3mm8yhErb3FfXmO/0=;
        b=GeXINmzLp9TxEbGCIVCbWtKichssigVNQJ//3qKTs+G+WNim29vWQyKkL2sddgLVeV
         PFfyDGXM+SKiNLSiQ+uZk/Wk+wle+TmvS+FudlsSERhBOVPShCTbpvsKw6ysHtZTmHu3
         4xerCfznqPPwQz0h9Y4XjTs2UHE84c1YrP39ALt5WZe1iGHtRed0l1gQ9FAcV3m+X6xi
         DVlp0wF3dOGAAbvoon6C4JH/z5m/MrDYTgDRK5ldTwwnGqhVh3awaITtcXUF/Jdev3iF
         Q4DghJnK8woQtLtCduaRobTgCi3CzogbK89DTFOIIa8y5abtksSTV1kcdtyGNi4knyFl
         6j4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767054794; x=1767659594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w+aoWuGKUE3COGr8tLv4S8keRb3mm8yhErb3FfXmO/0=;
        b=evDD4nt+/KCyieTn9/xee9XrB1Ojs7LCw5Ozu5V6wyrK7zh0PGoUMlYI7RfowKO+M8
         Xd5HXfZdULcYpvmxsOFkaJ83riZOasr1IyHS06ZgjViAkSYv8tSen0x2C4R9AZT0Q526
         OvY1yWM9S1hMyR18um0DhEcNCDc0PlNE2+e6yUnhoASm7CB7S0rQkZke7e2eXSUwj1/w
         9yKl76pfAVKGaQVwyOw0uze+Nr/TpvH3iLbEq7fggNQzbw31Sg4Gbyay0KRGj9ZN72Nl
         DB6jEvA1NBZSKkPjcSvVTbyFfoZmUKUDtM8I6DZr/Oktypr0Sr1wZ0qa2MB5R0k5aH4O
         J5Gg==
X-Gm-Message-State: AOJu0YwXHFm7uIPeTfpZ1GPow5aDNZVTBSK+ApwazxbtND6XKR+UnKKS
	MmdiQp6XAnQz2prUDVbTZHpnY7D9+sC0YLqHbncp0Ro6dsVrS9pH31gA
X-Gm-Gg: AY/fxX7egDp+jVUJQBC4z1mGDOudL5OqlNL9gFzVHy2QcAMGitEC7uExpptK9J1ghpz
	R9AZgvFz4hpdzTL8m9xgYk6blIAIqiXzvdyhbje4z9cSeqJVmM/EOjPZ7VaqlchMsBOz5lAui1A
	dwnyHvmF36Eq8Aaz1sL1KJR84WcJ/Pcz/iBpBoNhl8nzGOMHjjsif4IcLVejv8ViJLybGUnbyAx
	fDVlWGBernXCifgFK1a8Ig7dJTNEbCRQ39GjbA1HQDUSUNPu1FrsGOc1FjEW3Dine17lSh5QQqn
	K8lZfAnUk3j8nkweev0XoDRa2oRJLyQyiJZ959DYjmecoEuaUDgD2DuSTWinwKPoyow7Vc8UYvl
	vkduAaOQK9guvNcykBlmUWZb/iiW2NsIr5+JO+fCBh3s60zoco5dku2sdvE8VAkQpbuRWH3I/Az
	nZsiPkMiwhBcsAd/FEHpuUCPHgRi6+U6xh
X-Google-Smtp-Source: AGHT+IFbH+4hMlX8jR68jhxeA2GuQCXZA/rHynA6Og3i4DEdsBCk1t6PdYvdmO1Pt+LUzGmugFGZwQ==
X-Received: by 2002:a05:6a00:e11:b0:7b8:8d43:fcd1 with SMTP id d2e1a72fcca58-7ff64215183mr25337015b3a.9.1767054794267;
        Mon, 29 Dec 2025 16:33:14 -0800 (PST)
Received: from MRSPARKLE.localdomain ([150.228.155.85])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm30241562b3a.67.2025.12.29.16.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 16:33:14 -0800 (PST)
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
Subject: [PATCH 1/7] dt-bindings: leds: add function virtual_status to led common properties
Date: Tue, 30 Dec 2025 13:32:38 +1300
Message-ID: <20251230003250.1197744-2-professorjonny98@gmail.com>
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

LED-FUNCTION-VIRTUAL-STATUS ID to the FUNCTION ID list for device tree
bindings to suit virtual led drivers.

Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 include/dt-bindings/leds/common.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 4f017bea0123..f03214ba28d5 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -63,6 +63,9 @@
      "lp5523:{r,g,b}" (Nokia N900) */
 #define LED_FUNCTION_STATUS "status"

+/* Used for virtual LED groups, multifunction RGB indicators or status LEDs */
+#define LED_FUNCTION_VIRTUAL_STATUS "virtual-status"
+
 #define LED_FUNCTION_MICMUTE "micmute"
 #define LED_FUNCTION_MUTE "mute"

--
2.43.0

