Return-Path: <devicetree+bounces-238982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8033CC60503
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:27:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CA6DB34C4C7
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 12:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FBD2BE03B;
	Sat, 15 Nov 2025 12:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bToiOi1m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE85E29DB88
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 12:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763209630; cv=none; b=IK/4GBk5LQOXp59LoJfPgd7LuewSoagUsKcdubrf6KHnJGcZNla5/TyGHtBRYpLbP2BStgtSLnJ36hjIR3lo/QIphP/esFFV9IIDI8w+zIkWnoUSKpZ7N8zJQXY/dY7jgYj0HbKkIdF27UBa4ZpBYD2i6UZkZ5aNlWC/u3NTYeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763209630; c=relaxed/simple;
	bh=hMxhQgfaXcjxbygFGVQ0UQRlniXEiIqQUMTF9Y5i0W0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lAIGgAeNOMwETkU2CqRwmzyrdRqA/kgeED8oOtJadJ9GinmnXX4mX9F9APY+i7gn5rB0PfL/wR1xDs6GuKf6G5STX4b4+LFzowxd4/2Hj8wh81W4W1u6U2KCoWaksLxr1kckmRicYSFFYNS76sXa4CvCaC8p0VFj8snJNMRZ8KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bToiOi1m; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-641977dc00fso4250191a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 04:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763209627; x=1763814427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yKab9SNvJsCXNznHlhOt6I7to9eB9V57yTnbxT4ngYQ=;
        b=bToiOi1mzbLzaQ591Ik8VPd0geTcBZefygtNBbOcouJeMyT7aOWkDt+uk1DX7ODsnV
         el4IViU8rjth/Q3/L/ZD72tBec0IAXY/KbA6gem1uiIBjj2S/9xv7V0zoaeO5lkeYnb5
         n766w9W4pR9xuAnp0+3Y5menJQuUpCItN98h4BQNHnG2PDUokw6nV1aZQ0yJjqpqRkrC
         NfKOI9FIsZ9S47q0FIm1vQo/EZQmHaXc6lwZ9mSPJbdfbpuveLXVM4nf/tCae2eHLlL3
         jO/xu1phMkqTeG0L9bNPtpFB/F72CUexbBa81pZtTG8DMdUM+b8tBYIzC0AzBEKRO8zW
         LWHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763209627; x=1763814427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yKab9SNvJsCXNznHlhOt6I7to9eB9V57yTnbxT4ngYQ=;
        b=IgBVmDDB8PSzS0uxKfnLVcQ7sIiCGxc4L+YgwBge+ncMqZT6dBZhAMrt5IkrP//JK7
         W5XVmvof3C12CqxKCTtB3zMB0ioGy26nKYmLxqR+4AxPYrecFwkyDkrsGVxRjAt4bxGC
         MUHsdAx/P7ADBi9DGCYagaWt/3byfbZydhiZa2l5gZbEJtwfw3t00fFSd+ZkEvw55xvn
         oC419fUWBk9dGW2JuxbHACuQgELNirtExqbMfXPMsqHCtaqcJ+BT4pBuSYxAEOS+1LXC
         Wdf1wr9/CWfQkjgAyFKBtlvGAmZ5IKcELUee7rwrhp8Nt0Qpv+AtidMQ2ha3/Wcu/4ad
         kpjg==
X-Forwarded-Encrypted: i=1; AJvYcCU3lGOxivT1BEVqKZUkFTzw7zXNtq8LhilFOt0Kk5K2RUEVgK2zQ4bg8D6STwt/V2o2PvHTKMCAsju2@vger.kernel.org
X-Gm-Message-State: AOJu0YyIIjniU7jwMr8at6XlVRYf2G1LefD+cC7hXuB713V0EkCmpAD/
	TPuATU372sjol0vBuws8d9nCusDdjMYxh2za0jQpB0VRo7Bj5DRrdMOF
X-Gm-Gg: ASbGnct/ElEDA07uk7/6lv+23nXm6RNxp5tcFhjXbOzsj4ldnR1z8qRSvBrewZ53ClD
	3DKUbEj00CX2Xuu4YgCN1vYu3CkRGeIfTxKkGLK25b74lWVjJV0H9R/Fr84AmDWeGjQQBTFvAKM
	leO+it0V4sD3Uq38S/g6/XaWGVZD5zit8g7D5c+yLKSdyPIXkd1BBVPxA+hWZ3SVIoGf/TnnpUM
	RwG4UDs+aoGnAvyvwVR+1omZ5FbuQO3nMfSXudt2WaiS05otuQpo3ozIJ3xDR8oO2UtMabFuord
	pcFlg5tGJ3mgNLUn+/aoRkZobyKCm1Kudk73DrZzsVQ9bglrL7VmGsJsxyaIK4HsHRLaiVSlNsR
	565+MXqoTGvKWiAIzFgjx8GpraHQUATQwaT1xODJtYPKL3uCTPginmdyX7e+XwVuWBwm0snbGEI
	t4OY5d
X-Google-Smtp-Source: AGHT+IF2JwrT6FT2lVffcIHfGBSD7PWBcT95KtlFq0fWWx6rIvLpDEfQFdBcc0J++dKsEsB4yS6iyg==
X-Received: by 2002:a05:6402:5193:b0:641:8137:e1c8 with SMTP id 4fb4d7f45d1cf-64350eb8cd8mr6145912a12.34.1763209626880;
        Sat, 15 Nov 2025 04:27:06 -0800 (PST)
Received: from [192.168.0.188] ([88.223.153.72])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4b2155sm5627042a12.29.2025.11.15.04.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 04:27:06 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 15 Nov 2025 14:26:44 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: msm8939-asus-z00t: add hall sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251115-battery-hall-v1-2-1586283d17c7@gmail.com>
References: <20251115-battery-hall-v1-0-1586283d17c7@gmail.com>
In-Reply-To: <20251115-battery-hall-v1-0-1586283d17c7@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3

This device uses ANPEC APX9131 hall sensor. It is a basic GPIO hall
sensor for which a generic "gpio-keys" device tree node configuration
suffices.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
index b58f0a04abfd..60a714a62a2c 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
@@ -62,6 +62,15 @@ button-volume-down {
 			linux,code = <KEY_VOLUMEDOWN>;
 			debounce-interval = <15>;
 		};
+
+		event-hall-sensor {
+			label = "Hall Effect Sensor";
+			gpios = <&tlmm 108 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			linux,code = <SW_LID>;
+			linux,can-disable;
+			debounce-interval = <150>;
+		};
 	};
 
 	reg_sd_vmmc: regulator-sdcard-vmmc {
@@ -259,7 +268,7 @@ sd_vmmc_en_default: sd-vmmc-en-default-state {
 	};
 
 	gpio_keys_default: gpio-keys-default-state {
-		pins = "gpio107", "gpio117";
+		pins = "gpio107", "gpio108", "gpio117";
 		function = "gpio";
 		drive-strength = <2>;
 		bias-pull-up;

-- 
2.51.2


