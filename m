Return-Path: <devicetree+bounces-245225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C151DCAD859
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 16:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21FDD3072865
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 14:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1D02E9EAD;
	Mon,  8 Dec 2025 14:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bDFUx2yU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7E2DF14C
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 14:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765205977; cv=none; b=YvTOr/1yDZynsmV2R1jb7+cPu3ujoikpmeKt1JtHU68exrXz0wdG6W6RwNhaBhvVwgffkAd3vefGhZ9FtpL4CME702AHFrA2MsJ2uwerEeH6m365cxZSrFOthdcR2cdFUwokmAsRb3k/B3N+GzQ9DDt8T3JxJCBiS2zg5nEzg1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765205977; c=relaxed/simple;
	bh=MlkWVUme++H5JcXF4dfTtEPbZdW9G8cP3Uen/uNsZkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bJkz5F8Z7gk8Lf7ccDsmifNRoAhw1NwOH6HMVdTl5hkXAN/nfq+s2CrU+XawZLDhBQ9McCUzeQ2EGmVqFmzHTUoafWmL0yya4er2zcdGQ9F/Mwe8JaQsFM2NbpkKD8bB9rVZOpH7GAkPzGeB9BsRfCAR830py0tCJUIu0Lcj7uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bDFUx2yU; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64149f78c0dso6609390a12.3
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 06:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765205974; x=1765810774; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I5XIZU6P9UPthLQXJjeViPkZ0VrzVg6Co8k8yF7SCIc=;
        b=bDFUx2yUcsDCufwZYLEwqghFLfJqDOucF9JIpGskeh9eXl5rRPSLplMRSiKdjcqzx+
         iGj0/L1axj/YQpRrpBxEEuuc5DDs5arFgzdCpBzoP/LR3jD2MXx9yLuqIAJu26kcc3q8
         mU1iFfebELA8PjHncMI+tbVFCtf7Okv4mVU83Bi8pl7DCDHRFIIZ/Hjm/1YzWqGGnhgr
         oUOpyNxebYhjlNkn4kVy/a8rJxyu6pcDuWZ4y14cphFp/yLpgfInbO1naMAuRNR86XdC
         GzTk6VBfu3CKYsSXY/52HQ+vi38xN8i6chL4b81sAVucJock8LAQlYf/HZk1mtpBn22U
         gvKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765205974; x=1765810774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I5XIZU6P9UPthLQXJjeViPkZ0VrzVg6Co8k8yF7SCIc=;
        b=Rz8nXa2S+0hh6CKBYU2NAE5Klgk/ayZfTVTm1fhrXdT2Fj3Pd5/U9UYC4a6FnjaroB
         +PXpSjK7yjPpIRkK2X+icWG2yM7RwKMmXPq0T/VmN/1pXSmsi9nqsKYuSyIQvlEKNMf6
         g6Rw57iHXBLb5JL9w8104VWieCqAAzO85l5z4ObeECKlE56tmKAXth1IaDioTdP2tXB8
         i0ZA12txwA7Kg2jZHh8I/li1hR5UJ+CKXVPcNZYI3RrvYXZvbuynC+o1RH7wupy2HeLw
         GkTsn2uUF1HL0WDoyWuw7+2XoKAO3fvxvJ825MLd2wV2bRBOm2vto7JktciQqYD7P0rS
         vt7A==
X-Forwarded-Encrypted: i=1; AJvYcCWcJFj2Fjn4bl3CA3vwhIzPRKnC0Z0Jddh7xC0nAWjuuRdQdJmDCPoHC7rK0pe21RUe9nHzX2iA83Je@vger.kernel.org
X-Gm-Message-State: AOJu0YyUcMCovzVADzI3tyMKi0R2i4pQH5oU4Q9wc8WW0OM8yGBJohaQ
	PQkBYb/9d9VJkGxqfeVgjQyr187XPvArHc9Y47UQ82t2LnSUJi69d+y5
X-Gm-Gg: ASbGncvnXwSMXFpCw3rgD68Hht3U4SyNApf8GHBG701MlabUab83UuHpkPQMHFnkKZp
	c8sy0AIlH5opOzvM45TO5/QEQX8C8lqUrUyGuHzWDjsErN5JNoT5K4AjystBe1ElvtK9SthXVVD
	Q6A52JaZVjH84lSf/TioQ7iBUimwzjWEIZY5TrV+knZ+TO4wlEJbi59sYje2TcVXwmAyrfd/d8v
	a2Jcyo3HUKYMusYzewh3dICjtsbxtol3yegMpOLgJWw8/tWvWoIOL6kuwQAARiiQLlvUDu2JROb
	mrNut2YhfnQEN49vKpi39KdX2e7h8HIs7d4EHqK0W1Qf/IUw4F9tQ9lXjJaA3NnELfGeQ553ozT
	AoLwuOR2SoVG3Hx7HAK+E5YXyKeAAnzFeWUZw+dcDBB5Gwg+RUlXC4P5clDmwrGIeOO0k3njUg7
	UvK71TVwtENSDDNQ==
X-Google-Smtp-Source: AGHT+IGczssAIpp9AksToXuOrtKAegtzYkcphYQq+Viwxf5QYrBRnJYVTuqq7Rj449rQXPSrsjhskw==
X-Received: by 2002:a05:6402:2392:b0:63c:1073:4a69 with SMTP id 4fb4d7f45d1cf-6491ae378fbmr4926950a12.34.1765205974372;
        Mon, 08 Dec 2025 06:59:34 -0800 (PST)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec300esm11365556a12.1.2025.12.08.06.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 06:59:33 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 08 Dec 2025 16:59:21 +0200
Subject: [PATCH v3 2/2] arm64: dts: qcom: msm8939-asus-z00t: add hall
 sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251208-b4-battery-hall-v3-2-84e2157705a4@gmail.com>
References: <20251208-b4-battery-hall-v3-0-84e2157705a4@gmail.com>
In-Reply-To: <20251208-b4-battery-hall-v3-0-84e2157705a4@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3

This device uses ANPEC APX9131 hall sensor. It is a basic GPIO hall
sensor for which a generic "gpio-keys" device tree node configuration
suffices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
index d0f0f80dd326..ea90b00a2c8a 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
@@ -82,7 +82,7 @@ chosen {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		pinctrl-0 = <&gpio_keys_default>;
+		pinctrl-0 = <&gpio_hall_sensor_default>, <&gpio_keys_default>;
 		pinctrl-names = "default";
 
 		button-volume-up {
@@ -98,6 +98,15 @@ button-volume-down {
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
@@ -301,6 +310,13 @@ gpio_keys_default: gpio-keys-default-state {
 		bias-pull-up;
 	};
 
+	gpio_hall_sensor_default: gpio-hall-sensor-default-state {
+		pins = "gpio108";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	usb_id_default: usb-id-default-state {
 		pins = "gpio110";
 		function = "gpio";

-- 
2.52.0


