Return-Path: <devicetree+bounces-266758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PXkG3ORl2mR0gIAu9opvQ
	(envelope-from <devicetree+bounces-266758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:40:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAC81634E7
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E988C302F695
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681D932D0CF;
	Thu, 19 Feb 2026 22:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fuldnE3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED92732571A
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771540809; cv=none; b=fiTev3Ra9kcbAwnrq4C2KMrhO/hG4i64dUcW0UoOXjW6UlxNXSayZahxBObTY5XTaokFe0V+czKxdkc/yG6d0q9oKIK8B6gN6MBNXs9qXrJdqvPOJemGCpwzQbz0t8EHFLrpSoR4OOwDDkuYYT/dx6UqkFLDOIyvtjGVcj0Hgz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771540809; c=relaxed/simple;
	bh=KAvlbY0yYL9PaaTueRuO9yIwL2QGgENhM1iet7MXCjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R06kxcAcQ/itQyQALnsNYjzULM7daY0WtNfCBz3wd6jK4309KHJbZh1s4dHwWSLV3CANfgur+wiC4ByFOZdyaRL41GhSjacJ8DFKeohpQgafmUK7jDZbNwFp1EGlXuBbagbi8/zEEqg1kZ6Pbj/f2SOv8d4qLi6UvIhTwWGarvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fuldnE3O; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c7199e7f79so180910685a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771540807; x=1772145607; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=fuldnE3OG4NmfyYLLaWoGGAwjdUn9d97BD2QIrE+6UA37Z/8avFVlb5Nll5KNXWqds
         QlHvvftvUOxGSBhdVO+/MvMrDQPMsJBeHbZMZz8I5jTgGxHBZWkQqE4Y725jtKsvY5gZ
         os7vCyF5K3a/zGkBO0x1qZTb0Id+yewSd55CSs9Vs8WzLI6yxp1VDpkJqdsRjo3amqFs
         XJUTPdeAyA3aWwFFvUMH6lWvdSfLouJ7IIgkGmJ6L+rVFguOw3OGBCy3xyhB+3S0Thhi
         81yaXj/1ppqomvL4aOt2g3wlft++TWFs2n26IzZNxcqQuaGacO2AMZRNk7nEFfpkgRDD
         Kiow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771540807; x=1772145607;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=Rt/psD7TcheKSFXJmaEoA7DUvye0+X/5cd6ERt5ItkecHv3DGC8HS7Hhw/KWw+YW3L
         cm2phKRL5VX2BR6hCPzKusm8XBIhHtzHaHNdgmJ56e3VTmHKckxaFmiJ+9Imn+Cgzxs/
         Dk9hJpAqObTdDvYA5hLkMnj/1C9uoFodxA/1MibJt2VyLXt9wTso2EMN7nKL1nOy2cyV
         IrrLF15qWfo+ZgS3wOleI05G+LPdDAuIFV0cOGZ9JKZg7XzACCs0VbAIHzLNI7TflinT
         uQS2K4amRyBeFt1RM4DgHnCbAJiD4qizIMq6TnIHxRPi1D2bjp/nxlOVN/ptt9EQc8qU
         IKNw==
X-Gm-Message-State: AOJu0YxH1F/cupGBp8ip+jX57hKYVwZYDYcmDghlTlIAoFHN2SqzMDPt
	SMR4vvTliEk2g31zjJZJkhSffzlUpgpWnOJPBQo1SAaOQ4frY/znkRkfFpKdD7gm
X-Gm-Gg: AZuq6aJTnqF4qMZRijfmZi01WD7Hz/G8lbCL/x1UPtLgSpYUqKbY+uu2uvMwfBoWh+p
	cFKnNbhUD/oSURlhj4htc5Xht+zdIm6bEu03jZZBesJ8/rcotI0icvr44YTkU96U6FcCKkdaNYZ
	tj+A/gs85le6vpRhAeJGXM+97Q2MA7CCE9vCi/KtjcYAn2N9cOmg4iMdFT3OBoBQfzSi9KFQOo7
	zLZCVJ+QU6NjW/Gh2i6wtasOga/oUwRqH43bq4SZeJiflovU2D6sQlLf+X2U9H96l5sCuxUJX1g
	lZKUwYOWRbUeUt1u6H/7G+rs/WLm64RDICilLIY2XCqL3b34B0ON0Y7EjKQ9U9rkBxTki4WEsC0
	lLOCx+hi608mbARbbDG0dVJIIAxAH8ABDXAjbVBQ/tdiIC7T9EmFSUwq14edeQjXHh2avngZV9z
	L+XqSP62i/XwnYL9N52UCMQdLfLSnjxtYnCu5mWbQOfvnfr1wUA2WAf1lYT6962ozc2OOCIzcv+
	y4WZ8/V1ew=
X-Received: by 2002:a05:622a:613:b0:4f1:d85c:d7c3 with SMTP id d75a77b69052e-506b4020b97mr249828281cf.66.1771535059258;
        Thu, 19 Feb 2026 13:04:19 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506b275d59fsm153971511cf.32.2026.02.19.13.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:04:18 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v6 1/8] ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
Date: Thu, 19 Feb 2026 16:04:00 -0500
Message-ID: <20260219210408.5451-2-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219210408.5451-1-bavishimithil@gmail.com>
References: <20260219210408.5451-1-bavishimithil@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266758-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.48:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:url]
X-Rspamd-Queue-Id: DBAC81634E7
X-Rspamd-Action: no action

Add a dedicated DTS file for the TWL6032 PMIC (Phoenix Lite). Already
has driver support with TWL6030 (Phoenix) since both of them are so
similar, some nodes can be reused from TWL6030 as well

This can be included in the board files like twl6030
Example:
...
&i2c1 {
    twl: twl@48 {
        reg = <0x48>;
        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
        interrupt-controller;
        interrupt-parent = <&gic>;
    };
};

/include/ "twl6032.dtsi"
...

Used in devices like samsung-espresso, amazon-jem, epson-embt2ws etc

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 arch/arm/boot/dts/ti/omap/twl6032.dtsi | 77 ++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi

diff --git a/arch/arm/boot/dts/ti/omap/twl6032.dtsi b/arch/arm/boot/dts/ti/omap/twl6032.dtsi
new file mode 100644
index 000000000..d599a2ca6
--- /dev/null
+++ b/arch/arm/boot/dts/ti/omap/twl6032.dtsi
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Integrated Power Management Chip
+ * https://www.ti.com/lit/ds/symlink/twl6032.pdf
+ */
+
+&twl {
+	compatible = "ti,twl6032";
+	interrupt-controller;
+	#interrupt-cells = <1>;
+
+	rtc {
+		compatible = "ti,twl4030-rtc";
+		interrupts = <11>;
+	};
+
+	vio: regulator-vio {
+		compatible = "ti,twl6032-vio";
+	};
+
+	ldo1: regulator-ldo1 {
+		compatible = "ti,twl6032-ldo1";
+	};
+
+	ldo2: regulator-ldo2 {
+		compatible = "ti,twl6032-ldo2";
+	};
+
+	ldo3: regulator-ldo3 {
+		compatible = "ti,twl6032-ldo3";
+	};
+
+	ldo4: regulator-ldo4 {
+		compatible = "ti,twl6032-ldo4";
+	};
+
+	ldo5: regulator-ldo5 {
+		compatible = "ti,twl6032-ldo5";
+	};
+
+	ldo6: regulator-ldo6 {
+		compatible = "ti,twl6032-ldo6";
+	};
+
+	ldoln: regulator-ldoln {
+		compatible = "ti,twl6032-ldoln";
+	};
+
+	ldousb: regulator-ldousb {
+		compatible = "ti,twl6032-ldousb";
+	};
+
+	smps4: regulator-smps4 {
+		compatible = "ti,twl6032-smps4";
+	};
+
+	gpadc: gpadc {
+		compatible = "ti,twl6032-gpadc";
+		interrupts = <3>;
+		#io-channel-cells = <1>;
+	};
+
+	twl_usb_comparator: usb-comparator {
+		compatible = "ti,twl6030-usb";
+		interrupts = <4>, <10>;
+	};
+
+	twl_pwm: pwm {
+		compatible = "ti,twl6030-pwm";
+		#pwm-cells = <2>;
+	};
+
+	twl_pwmled: pwmled {
+		compatible = "ti,twl6030-pwmled";
+		#pwm-cells = <2>;
+	};
+};
-- 
2.43.0


