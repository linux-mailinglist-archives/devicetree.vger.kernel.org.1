Return-Path: <devicetree+bounces-271073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHLzGZQ/qGl6rQAAu9opvQ
	(envelope-from <devicetree+bounces-271073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:20:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC7B20138F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C70ED305C2EE
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594753C1998;
	Wed,  4 Mar 2026 14:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="gaOWW30m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C93BED30
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633129; cv=none; b=ho4t8Oy8Cd6Tur6WGHeZWu73PI6G8LSBvLkdf79emFUXDRqYDuvoo6AsatU4ITFzxLc+FXbjwW00plC8utltfBi6ZgWqX6kl20cYOb7g4vy2qej0JSWVt0KPdmp+5FPBzFmyf2Q2qG4mGnp0R9leFvN2vOVitFDErTbWnZFUkZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633129; c=relaxed/simple;
	bh=GcWcCkh/S2QN6rJM8DB8/+xpSep1ONSspIJ5ZvkbTxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oO0q14AW2yCqrQniqVqcmL74IKyr8YwIUQVXol+opuBYvREgkbHzAK4PCc3uK7wB/jcX2HN4E/28uDSh6EndK3zaE2fJFyvNnHq0jhCTpovsCNQo0OxYTc+HpVompDeEOiIfZUMZwSgty/iyn/Yonn55mkKj1mTaotbmw3kFzp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=gaOWW30m; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4806bf39419so57713955e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 06:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772633125; x=1773237925; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzYqP/o/j5AHYZ8QSUfI4d0IlFeXxdlgP7OAfF3TxxQ=;
        b=gaOWW30mF+epNza+e3J8wmiUzPT5ZiVkaxKMsgD9dXRn6WrbqvLCv9OgVwTJYFX+jP
         yaIvjKaxg0WuSAzkgKGi+kxkaAQ72LzjzYA9HkUc+kH3utTc8QRLu8klBL1FDmujLfXr
         XmFaHeDjow1Ozx78ZSoU2uqHOuyxHmdq/18HtpA0k3KkQOrdsBE+93Wj/hTjPSr5eZGz
         ILbeRf7EvBWi9ibEJ9SJF0ada1/v1q86fMfcQykJ8Q79IrXqaykP4o8CZw/2Rg72MUqs
         pvXxEl3DV7nS8o/Qs+Ssq2ddVcdcdkznJzx0YlaZ/oLLyySQoNNGe3H1JZFnXlXZ7AFL
         Fetg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772633125; x=1773237925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QzYqP/o/j5AHYZ8QSUfI4d0IlFeXxdlgP7OAfF3TxxQ=;
        b=ZSI82YKteAynJPavz6w/p0oX53TzAN28vv63WPYA9C2WurAxbwG7R2VGe0u6tcWG26
         1mAcToU6eEpC248zq2Uq5Yqu+g8XdePeRO9tkvljKe4PEHmiQ4Xm9zViP5Dm0d+XW3Zo
         C2NFVz44wTPv/olQnu9Z9Jb7pHvQhcu0kkqXIqi1fOMX7EO8Tfrmwm8OFLlj9nkYfb/S
         86mBtc3aI2uaWp8MFAEXdcY29zQZWGsnWDOEirRVRYE55EjhQpAi5cuJXvaJ3NAqZVp1
         gunygJRMhHIF+HCcRFeOAbU4f2LETRgR+EMW/te3ClJXcr1yNDI1hODKIESLqIMfnh44
         rS9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVtPik8EHEZpnwUu4Beyh7bls2Wx7AtmaZJCa2kkdWrBwT6c97tsR1Hf/2NofnAf0JBPC8tqCdWBXHd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9FplWSwggEK4kQpYWABSgn0+uLD8m+ouNkgbR1mv12Mks7sWg
	7/NW/1Qz0dXcSWPA/attm3OnvNndY/Uo5tuJsKMU1gWuTCyM3xB874+JxcsY8M78qO8=
X-Gm-Gg: ATEYQzzrKdpuM9g7SImPEBAtx4OPS6eqlu8oAZYFFH3XlndU+yygVoqggnEHeQI8nmH
	F5g98f27znKRjCkJrxrCRTe35+DiMpv6fz4pV38azaQidzQEMSFppeP9FFmJUfQC+FVr/W/nRp6
	5v6jPr3kUMir07hiRmlAJl/MVCJyxt/d84NG8tD5vHaHbCY34rRN6uQB2TRwYc2olCz9pq9Usj2
	sOozNM9jG/S1+JIYjbRk/uxxqT3wqHbcztJRDN7oan68hZdm0ipj4r0w8bNVfOcDHcw0rikifTk
	KaMnb52GG879J+KY9RMb0FUK1yoyTP/fnNSN60GnFCy81Uv+b/TR5k8icjxwCrow2iz1b0E7QLR
	HFPsYtZByDF9hDnA4k31UCAszgqxFkItnrGOQmJvISY9kZ1nBtKCNUx/3kD8JCYj0VEXBD94NcV
	eyOEy1btrNcpcmAmBpXaIZi/ua
X-Received: by 2002:a05:600c:529b:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-485198843e3mr31062255e9.8.1772633125462;
        Wed, 04 Mar 2026 06:05:25 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-485187b6ffbsm59296165e9.2.2026.03.04.06.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 06:05:24 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 04 Mar 2026 14:05:19 +0000
Subject: [PATCH v6 6/6] arm: dts: bcm2711-rpi: Add HEVC decoder node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-media-rpi-hevc-dec-v6-6-93868ae6dff8@raspberrypi.com>
References: <20260304-media-rpi-hevc-dec-v6-0-93868ae6dff8@raspberrypi.com>
In-Reply-To: <20260304-media-rpi-hevc-dec-v6-0-93868ae6dff8@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 John Cox <jc@kynesim.co.uk>, Stefan Wahren <wahrenst@gmx.net>, 
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1
X-Rspamd-Queue-Id: 6AC7B20138F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com];
	TAGGED_FROM(0.00)[bounces-271073-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,7eb00000:email,raspberrypi.com:dkim,raspberrypi.com:email,raspberrypi.com:mid,7ec00000:email,7e9c0000:email]
X-Rspamd-Action: no action

Add the configuration information for the HEVC decoder.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi | 4 ++++
 arch/arm/boot/dts/broadcom/bcm2711.dtsi     | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
index 1eb6406449d1..aef5ff7b2a53 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
@@ -68,6 +68,10 @@ &hdmi1 {
 	wifi-2.4ghz-coexistence;
 };
 
+&hevc_dec {
+	clocks = <&firmware_clocks 11>;
+};
+
 &hvs {
 	clocks = <&firmware_clocks 4>;
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
index 5e3b4bb39396..7b2081ef0413 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -617,6 +617,15 @@ xhci: usb@7e9c0000 {
 			status = "disabled";
 		};
 
+		hevc_dec: codec@7eb00000 {
+			compatible = "brcm,bcm2711-hevc-dec";
+			reg = <0x0 0x7eb00000  0x10000>,
+			      <0x0 0x7eb10000  0x1000>;
+			reg-names = "hevc",
+				    "intc";
+			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		v3d: gpu@7ec00000 {
 			compatible = "brcm,2711-v3d";
 			reg = <0x0 0x7ec00000 0x4000>,

-- 
2.34.1


