Return-Path: <devicetree+bounces-111810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9369A018D
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAFEB1C233C9
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C885619069B;
	Wed, 16 Oct 2024 06:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EQo3ytFw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2599541C69
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060871; cv=none; b=cNDrxYWfdRM28I66wNwpDKeUM0DiGgoZ5cbNifiqFFKQNu9VX6yq5xIcPU5qOLH1IFmkroX9L30n8VongdLT0mpdDbvPOQdHBzySrN4uUCaKAGzIFpUgkm3zhH6Frlh0FROSHZ0KwdeftZHrtJ+TK133WPIs+EKZXYsh284c1as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060871; c=relaxed/simple;
	bh=Fp3s2B9Ke0PwCMYzhqqqilMUc8skEHfVgnxn/bnpI5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C6aISXbRb2RaUel5Pa+BpEmaRXfx6nOw0iJkrMza2nv9T0qvUT0Lj+UmchU9q+IEGgaVpwL74jwJKwdlYFFMYi4phmwQr/CoE3Xzx96mVvOvqT4XlrdmzqSnVWDgPfsOKat7JAKVtR8JvYrDYu4ePClrwCuFc9VUlj7funsi57Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EQo3ytFw; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f72c8fc1so3170823e87.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060868; x=1729665668; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N2IIwOb0WS5MjzwX7Ar4Tf0ByMMbQC+8VyK5ncs/WZ4=;
        b=EQo3ytFw8HSc+0lJ3Gmb6BllKmU0W8WZ577Wy61hKqLN6BaAI5SlLbGHZQQaZUYkCy
         1Gz+8OKdpB8lCrgiigLD8NDnnDCs1M/1zlrdfkKfhw0KCnU2GsH4X7WPzpTQDs2bAtco
         VFBdSzHNFMUE657Ecv3S6iVeyZSRTX2/56sI09DDf2S5FnBwR23ckVKVYrSO6OiqpW7Y
         F7WCPOokPFttLCetwrNzjxWHA2EC6pgzzD11UnQVjyB/dbaYin12ByBkTfie18dUFdzu
         TGAHApEJ/5MQpZG6KBmcSoHIwc2tyHCFKy8cH876vv1210SdQ/ikFO3KEJvAPIxqH9aM
         Nciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060868; x=1729665668;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2IIwOb0WS5MjzwX7Ar4Tf0ByMMbQC+8VyK5ncs/WZ4=;
        b=o3mlIhYaVH0ao+lYxA7aOqzvAMasCSmTA2u+XZYnuIKyhBvyijvuhT6I4egQeh25GT
         uA6yzNfDl3aqG/TTQRdJ5YSz+ZkXSScqtWkEY2UHD7N0jfOtxvZQGBE5pecWnfZ8B1Sj
         2XT75kHol26hWYTApd2ThnFpS2JQoTy9RaYOwuRc+ls+n3ivSjgmoDxc63aXpD4k13if
         0qCOlOUcAnHNfDs+wNZKv1m1n9t+YLvwUKgQp5HpdLJ5e0lIKrgtdOorh0SCenbDaff5
         6dI7xfo+FvezPX+kFfE3YVJoczzruJxdMLQNBcXdmxzWpz7S/vWXQhscTPk7ugAdbfhN
         j7Dw==
X-Gm-Message-State: AOJu0YzDqvY+RF+jgENPgTtYBcAT0fniiq+PA21cwdMuxDz+m3mEA4o5
	v3Gnm8uVm20KgWfaFuPC8qul1pPZ5yTNhvrXit8nkNuKuGoVPuiOygMlXhmSGprbTierj6y/UFX
	2
X-Google-Smtp-Source: AGHT+IEyJSzqwOmJiHJUO1mg0IhBSoUc/nP+W+adze1nbq2bFFYSyTGvrqT2cd/CKg9iVMO+1xnR6Q==
X-Received: by 2002:a05:6512:128a:b0:539:f922:bd4e with SMTP id 2adb3069b0e04-539f922c02fmr4883418e87.23.1729060867914;
        Tue, 15 Oct 2024 23:41:07 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:06 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:02 +0200
Subject: [PATCH v2 2/9] ARM: dts: bcm6846: Enable watchdog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-2-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The BCM6846 has a BCM7038-compatible watchdog timer, just
add it to the device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index c2a8deef150a..f4f1f3a06eac 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -99,6 +99,11 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0 0xff800000 0x800000>;
 
+		watchdog@480 {
+			compatible = "brcm,bcm6345-wdt";
+			reg = <0x480 0x10>;
+		};
+
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x640 0x1b>;

-- 
2.46.2


