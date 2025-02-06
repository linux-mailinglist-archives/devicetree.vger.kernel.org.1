Return-Path: <devicetree+bounces-143701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 746B6A2AFB5
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 19:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F8AB3AB0E7
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA651A071C;
	Thu,  6 Feb 2025 18:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="o1Vz8BQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF619D890
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 18:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738865017; cv=none; b=dlHoeDd6g+I2E+z7wBpxwWBs0+XvVUgj6ymUG/TPFeWiEC8giLNNtWJJmdQ791FXERW93T9OczI6QV75H8Jiis5nP3g6THpr37W3oiv/lYhMYhhMIpqADXKHyhmFApV4TAgnQ1MRKTVArDWZGGONmA447spcv0hiU98OXH2yMBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738865017; c=relaxed/simple;
	bh=JLtzbBvAzoLgpMCSxDT8+5G2iQll42daXycMfI5Pw00=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W6DIck2YvgDy/LWeOEKt8iGQJAReDqqujHkc+zngUDYm7/G78M0xD///mL7I2awuTPfCJRmzYmEjhSwXa80JDmJUFtRvdGk41EoPLdttQaiIUpKBxkFJpjmWAOHAK91i3Ue2bE+VHhKmTs6qN3roKmIFJPyy753sL6hybC5xpSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=o1Vz8BQd; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-436202dd730so8687675e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 10:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1738865012; x=1739469812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9j/Oa5YYyXRr2YC4IwFerwor4UG4DCkLhlqZUyCWpwA=;
        b=o1Vz8BQdGyG6r70phXs0DmGJvo9HJHfnfjA5cqvFSMOVpvKtz1sLhUfn2RCxZudyAQ
         B70JRVgbH6Vcs3YcTx3Df/KBeYBaCJuHzI27kYvwPWjigZhzE+7C/XCCzCy+Tg9U4Q13
         2s9aRpZ8ZfjTPGTBtbtUw129xE/4/z9OyeNU8H85zVAlnil2RlBcdoreQO3B3V15H1Ef
         lyLY8UgqKWJ0eepeY6d3rlTYp+u0EBKU5A9IJJyGkBf8409ZhCePPz8myZYunlzt6rtL
         jz6+sCIFwkX/PUg8pJ/z4iwharMlBCF8Wlte6PqualktIK17Cs4Ss9GK+sIC/N9lIqQR
         ncBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738865012; x=1739469812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9j/Oa5YYyXRr2YC4IwFerwor4UG4DCkLhlqZUyCWpwA=;
        b=mzrRF8sF6TgLX0YmbLuE0wPzHPpEyHlptvOR6dBt0VkcXur1uVoEU7ql9s1hLjygJk
         vY2Bh2QTfAkDR04xrGMbesRz/IDcou1Yw3sSbOsLAiJ1g6xbdj/RML/fQ84T22kC69ve
         oVX0N9viwk03g5Ck1kcK5pA1LuJAdwjcrthKfGL4RPx95ZBfApG0bzBeMKBAAQPifxcM
         4eeC/PnG/luEHer0X4KUSsrF8Qr5NxiDxGpvdUaN+8N9DWJdOaxgAfaEgb0IbaT731/D
         +Ws0qDekWsqZiVT9frGoFLb5q4EZV2nSKgOvQQE3OUNTxv6DirGmpTkyg3gc3fLc6bp9
         llDQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6tSlPzmfv9flzvRJEjwwA0iWgOH1MtTO+aAMi03cgk9YXBCrrQoXsb+SxNXF9472UCnoLHQph6FtO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn0Out9xBBytR5rjTTxq6A+FuzrMElFsLnVuz/DWwOFLRGdJWl
	/XrGb+ivoLfER1evZQldDf5BhNsfbK7mDSVg9KR0mocAyFewwnElQGwqti3ePjo+YS26ox3YiT+
	o
X-Gm-Gg: ASbGnctCaaqIj6DUrLX4hS8zSaHpfNNoCVJX+iHSALbhkxS2jO+QzmuWL9yQb8MEycX
	NrzBViEByl4wz3cFXVIGsDi3RCE9a45VaUCCowBSBK2y2AiV/HYWpKnJFgCdvSrQw3M2JBvwM12
	fFVKAn6MATx69aiKMHqZmCkVOmzGUbVDfk7Izx3VLN9wMVBE+zVuX/UTJbxlQp13vFKB4DmESQ3
	MOpys+/xYILJSKqWv1MmPVw1SnvHbgT6ElvTDCyc2ebwK6OwA51kpHpBamXJNzCsRU6GFSXK5Vv
	YTPy7mA=
X-Google-Smtp-Source: AGHT+IEGNVXFcPPbaAsAkKUz6RKFMzgdm3ieZv/CxcB2k8KxB6gUfL4TU2Ef/Sfmqg6Pd5YA7HWYzQ==
X-Received: by 2002:a05:600c:46cb:b0:433:c76d:d57e with SMTP id 5b1f17b1804b1-43924972d1amr3677925e9.5.1738865012189;
        Thu, 06 Feb 2025 10:03:32 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38dbdd3856fsm2278858f8f.28.2025.02.06.10.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 10:03:31 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 06 Feb 2025 18:02:38 +0000
Subject: [PATCH v2 5/5] arm: dts: bcm2711-rpi: Add HEVC decoder node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250206-media-rpi-hevc-dec-v2-5-69353c8805b2@raspberrypi.com>
References: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
In-Reply-To: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
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
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Add the configuration information for the HEVC decoder.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi | 4 ++++
 arch/arm/boot/dts/broadcom/bcm2711.dtsi     | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
index 6bf4241fe3b7..56c633005941 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
@@ -105,3 +105,7 @@ &vchiq {
 &xhci {
 	power-domains = <&power RPI_POWER_DOMAIN_USB>;
 };
+
+&hevc_dec {
+	clocks = <&firmware_clocks 11>;
+};
diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
index e4e42af21ef3..2931d93ba184 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -628,6 +628,15 @@ v3d: gpu@7ec00000 {
 			resets = <&pm BCM2835_RESET_V3D>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		hevc_dec: codec@7eb10000 {
+			compatible = "raspberrypi,hevc-dec";
+			reg = <0x0 0x7eb00000  0x10000>, /* HEVC */
+			      <0x0 0x7eb10000  0x1000>;  /* INTC */
+			reg-names = "hevc",
+				    "intc";
+			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
 

-- 
2.34.1


