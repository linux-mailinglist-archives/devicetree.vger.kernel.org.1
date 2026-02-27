Return-Path: <devicetree+bounces-269373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCjPMgfUoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:27:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C39F11BB740
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:27:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E98F31C6131
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A0CE44CF3D;
	Fri, 27 Feb 2026 17:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="fYQIOaz0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131F44B68C
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772212855; cv=none; b=qpZXG6UyxLcEj29cCyngfA+t5ZXGaQI3lMtnMr3pVCkEA+35OcxxC90cEwP1AZwClo2GHGT32NM/w9PTRnUrfngIVKwiV0zHfR20c4oGYP+/Qb+69xhv18KfEitYpZ+4DwQqhbWL1I4mybtpTu/HUpblosD5Zd1Rp3OKOrKiXCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772212855; c=relaxed/simple;
	bh=GcWcCkh/S2QN6rJM8DB8/+xpSep1ONSspIJ5ZvkbTxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OMLp4syt0Zs/m5BtSN9qi3DMUTMF5b0gKO/LznSNzA8GKSXsv5xyRFg3M6h5NDFFN6KO6HqUlu2vH1JVLQO5ezebKGsypTMBXMsXLMt87Brs8jnPM8AjvvbjCyg8juDOSJzW/2+ACAisXEx0K/q2RvT2+tUZ0csQV2vIE96ojz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=fYQIOaz0; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48379a42f76so17674855e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772212849; x=1772817649; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzYqP/o/j5AHYZ8QSUfI4d0IlFeXxdlgP7OAfF3TxxQ=;
        b=fYQIOaz0uwEA4TFpIzwcDVEqzW+0swB5X2bYv2FahQBYoCCS7uS0y/i5M4/I8/6f89
         G4MMgi7k7JB0t9N5OYaP3VRnHUXBMFX5Vpi6miWbYdlQ/CLRmjmmTk1HQqdbHW+cPIKY
         Cw0xTv+SdtLLQ9drf3L6AXnlQR4X243NpKibpV4DkJ6G9DxL5S89J3ljeTgl4Li1svwS
         of7zpHdpZNXJlOdTsplnfvK1eOhQ+1bkGC/umorZF658Vrb3fkZa6jd/N6C8BMCZ4mlm
         Q9r79jcfwezOci2g8U/XmoCaH2F87rqMsFZtAjY6brrAsuY/PdUWLFsTgN9Bh09W5yo9
         EqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772212849; x=1772817649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QzYqP/o/j5AHYZ8QSUfI4d0IlFeXxdlgP7OAfF3TxxQ=;
        b=nHwggQbY/egq+7EfDpd1Ess6RVJOHiUk14MDWYT07A2c5ZEjOnSswdZxDq3U6mLywb
         syHIwk7yh61Uhh/Xy3ueTdLup6OeJ7DizG/cB1Y8RnGwAq8+366s6XNWKavv9KKiigIt
         7UejuCJoAEuy+41fcsL476D5/ogEba2mjj/3xr5VjOorzJdBhKcpvABnVslBjtQ+wGR/
         /B0gN/l2zU16+3Ib5+6C790/Ks3/L5h0AVu7+pbIaagOusAcpn0TIm8cBeWL4RCoQvkY
         AWN87gdl8Vjle7zOPXp2FiCNVW7rSD8dFUN4p1uytMF05uSojt6V2C0ZanCow+5/dEW0
         oOtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsz+uv17XeKoNyyhXnrsHpbBIOW3QOWgDEVVQFCsu9IEbqrH4mE7uKxDOowldPaRkjueHZsUCeDURy@vger.kernel.org
X-Gm-Message-State: AOJu0YwWrAO+gHg38CO0C5K3/93WV7DrAnrD97uIhqXCwAbsv816oUgP
	frSsPoGxLwK0J4H484AikfSgOAgKbz28R2Oqrgukm+LAB6rY2FO0C4w5qWYyxsbaRuo=
X-Gm-Gg: ATEYQzzys3FEAkvbU6+YkOrU68BlBoHX9etQC0vlowxqFvXow+vuy8su0c4E4yhb+kY
	Ul0s9EPrZOgkZSbVuA9Ho0oThhfwdhPVBUKsY5rEsbORVh2iJfVbJJcevNcxShNU7uBRa9s/Yk5
	XjDLqsbnUdprMv21VvXjxDEwGnQt0Gj+1WkEkjoyrasR81UzHj+Y7kPpSHJR7EkXP3JV/Mz5Oy6
	ezocsW5JyfI8ArXAyPc9XO3c6+iMJhR6Bm5aEZfNcVVxqzCHqjjepcIc8KIIyrXUm1mcvRMlACx
	EuD2oDxV6zEFBC4jw8OYRaiy21dJorQApMScfY7rwheG+P2gBJEGa3SU8g4Ns0hz8abhiR7X4vE
	Li4qbLoX3Y9RaiLvpgQrgsHCflZN8s5sNAHb8ElNf+x+6LVZJvKhPzkhAecNBg9rQ54gt3C00yg
	YJjwBXVLKZxX4tPQ==
X-Received: by 2002:a05:600c:a16:b0:46e:4a13:e6c6 with SMTP id 5b1f17b1804b1-483c9bfb2f2mr54324715e9.19.1772212849364;
        Fri, 27 Feb 2026 09:20:49 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfeb932bsm60828075e9.28.2026.02.27.09.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:20:48 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 27 Feb 2026 17:19:11 +0000
Subject: [PATCH v5 6/6] arm: dts: bcm2711-rpi: Add HEVC decoder node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-media-rpi-hevc-dec-v5-6-9bb3fc1816de@raspberrypi.com>
References: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
In-Reply-To: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com];
	TAGGED_FROM(0.00)[bounces-269373-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,raspberrypi.com:mid,raspberrypi.com:dkim,raspberrypi.com:email,7eb00000:email,7ec00000:email]
X-Rspamd-Queue-Id: C39F11BB740
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


