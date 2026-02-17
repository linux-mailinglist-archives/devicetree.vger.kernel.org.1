Return-Path: <devicetree+bounces-265948-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IIjO9axk2kY7wEAu9opvQ
	(envelope-from <devicetree+bounces-265948-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF601483DE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95842301DAE0
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7384F1E5718;
	Tue, 17 Feb 2026 00:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d+6ETe99"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1831D88AC
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771286983; cv=none; b=C7RDxaHSTXib8zMowShEAd8cFLn9xWeVDyMEShAU8KH4PKcj6g4UUrRFgwyLi8W0AJ8g9m3Cdl3v02mfMZ+MGebg94I9tfdHuC87XxWOtrXwWpTMg8fRt5IYfpoJAF8j7qnLea2bEHALmSiBJC0Fz4zfNoAES50xwdfbBoF6g/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771286983; c=relaxed/simple;
	bh=zzNxe9u3lf2lSadLbWYR6AZjhGM3dAkiT6CQiyOQ15U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QJ9JN7YeKQ6vodjZL2z6w0MjuTiMz8pzzlIGa47Mbxa4pLlDnAfSpsZzjjKhOiDvEtUknYBNyb/yVOXACw+o91Bz6rrQOOpm/Zvqm1siAAyNFrVM7vE9edyLVI0r7ZFb9zJ7xZfE6uWcdI1xDEqsqxdWa/RWoWJVktaoos8wu5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d+6ETe99; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8cb48234b08so327838285a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771286980; x=1771891780; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oa4VVnq/PmbRXPOCA0iMVFkR6b/DwoIi4kzwka75JGM=;
        b=d+6ETe9975wpBKqttsPcETh9OGXywODNkqhryDhB45YmS0MAzgFwMIiii4QFse3gXs
         FvPKbmcknKh8rBsFrVFdss4ikfkh5XXruQozveGIJ1IdNgzgsy2sFWZ7Kexx44/uZ0SK
         gcXtxbtxuGiLs5qrncAUJvgWiVtsSKsmC2WWGJJp4QsfbLKkBTJT7IvxbXMJxG/Qh7z+
         JY/ouVQWbZmV3pfOwe5ALVc5yDyLmcMvgv6I4FiiMPZiZciLjFKVE5VUMwNosFpVXrNh
         seOluSEyxqJ8gxS2lFUavWrSidaFg4LOQFjGrRQJcSWaD1XRrQzJuoLClm9H+rX6ur+U
         6QRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771286980; x=1771891780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Oa4VVnq/PmbRXPOCA0iMVFkR6b/DwoIi4kzwka75JGM=;
        b=bmz/sc7dS6R/3dB7r/6k5bX7kiQiqh8Y9UaVRIWkVNZuLXn2BjD3wBeQ/A+sAKiIy8
         ZzF7mHLLVBRVH1BJXD9auH74TyPjfSm0j+kGEqK0dB6A2DNOYMgzQK4iyazVK+ZPhv2j
         8PLRhIJDays9azC//yQKsNyKwy6YdX2alvnQ2nPtXT6xbgM6uX3ttRWcS+Y/qAX0YpKw
         Tg0dPb/JrWnRrUiRmIdPY5Eje3hi5WPwnDHq2QoYu9e4jjE2LNfMEWWhFOaIBtIoSLXB
         q1T/y9kiLdMid8glLFmznYAsxDzMNG/M2Tkz0myYRBuq20z9G9LfKRWDSoe3JXH1PvW9
         iOrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFa07R5NOMqk7iJPmONadg3+d3huSvxTJp8XJjiPSXrmfXTCSI9XsqVw8ui8FVMsKkH9ygX+AOuqPo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6cq+N+zSkDhI++jzyAJ2F2jzfyOeVhHvI7L7Nhktj/J4QYx7V
	WYFUjCPELhnI8BgAJE2kqWGeCRQGRxjxTlUK9WbT30y0LEabAB0e86uX
X-Gm-Gg: AZuq6aKf5mQA651xXikFi1QX8o8I3OBSvubA3YiNN2DqPLHUju91U/5pyzzJsC31I7D
	LOfZwiaMCEVllJl20wZsfb5KscqayfIibXFoHOCbQn0L3Jxjb1u/dMPRZ8oFb5pVdp1AghIkxv4
	5I+QXWdjWre+8N9ffEOwkcOLVmWgHjvj7FoXldxDXRjOmq1hqwLRLuydiTTqo4rppaZGkua9rE8
	U1LcIj2aodWJEcQukEDhnoTmU5VpU5ZQgvpIfi3q2n+EvRFqZ+KZic0Iu7a7e9E1eTpUUZewXLh
	pQ9wasiSjeEDwh5nZAypNxImAogvlk+i/h+2d7rrJcO1Ye0ti/iW3ybPeuijybFjG6af01VK8JC
	I4GLLuV7cVuLHolUZDdwi8q6eQKm13pQm4MMHQSr0ufy6pYQE7y7NxVssdm4LlCwx7eDhuuL5D1
	D/SRobH30bULr6IKW1dlhaSUUXO3zrtA==
X-Received: by 2002:a05:620a:2952:b0:8cb:4289:6c1a with SMTP id af79cd13be357-8cb4c01e31amr1045501585a.75.1771286979891;
        Mon, 16 Feb 2026 16:09:39 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cdc554fsm150087946d6.48.2026.02.16.16.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:09:39 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 6/6] arm64: dts: qcom: add support for pixel 3a xl with the tianma panel
Date: Mon, 16 Feb 2026 19:08:54 -0500
Message-ID: <20260217000854.131242-7-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217000854.131242-1-mailingradian@gmail.com>
References: <20260217000854.131242-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265948-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8FF601483DE
X-Rspamd-Action: no action

The Pixel 3a XL has variants with either a Samsung Display Controller (SDC)
panel or a Tianma panel. Add the device tree for the variant with the
Tianma panel.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../dts/qcom/sdm670-google-bonito-tianma.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..6237aeb0e36d 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -245,6 +245,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm632-motorola-ocean.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm636-sony-xperia-ganges-mermaid.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm660-xiaomi-lavender.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm670-google-sargo.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sdm670-google-bonito-tianma.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
 
 sdm845-db845c-navigation-mezzanine-dtbs	:= sdm845-db845c.dtb sdm845-db845c-navigation-mezzanine.dtbo
diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts b/arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts
new file mode 100644
index 000000000000..da309434b511
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Device tree for Google Pixel 3a XL with the panel connected to the Samsung
+ * Display Controller.
+ *
+ * Copyright (c) 2023-2024, Richard Acayan. All rights reserved.
+ */
+
+/dts-v1/;
+
+#include "sdm670-google-common.dtsi"
+
+/ {
+	model = "Google Pixel 3a XL (with Tianma panel)";
+	compatible = "google,bonito-tianma", "google,bonito", "qcom,sdm670";
+};
+
+&battery {
+	charge-full-design-microamp-hours = <3700000>;
+};
+
+&framebuffer {
+	reg = <0 0x9c000000 0 (1080 * 2160 * 4)>;
+	width = <1080>;
+	height = <2160>;
+	stride = <(1080 * 4)>;
+	status = "okay";
+};
+
+&panel {
+	compatible = "novatek,nt37700f";
+	status = "okay";
+};
+
+&rmi4_f12 {
+	touchscreen-x-mm = <69>;
+	touchscreen-y-mm = <137>;
+};
-- 
2.53.0


