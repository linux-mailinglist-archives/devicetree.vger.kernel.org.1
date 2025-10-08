Return-Path: <devicetree+bounces-224440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA6EBC3D58
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:29:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4885C188A6D9
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6DC72F5328;
	Wed,  8 Oct 2025 08:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QAbTbYXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABF52F39A4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912124; cv=none; b=bWogM5ntuFGbnGe9qul3WuhAhs+SaPEM0Z0trLPePsWgTRrGN9KxvZanNp9/al55owf9mdMIqUJi69gwDp31P5FvIHmjKClqbFXRTr5JvZhp8n6knQBKzdR9yXxZdhWAO8HEfH7DzgohbUgVRIWJoYOGzotF8/Hu0Ec6x6WY2jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912124; c=relaxed/simple;
	bh=o0ADLZP20Gf+RaCUCo73PsEebUZu5lyI6twUNiTxrps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CdFe4QQ9b1yC06PsQl65c4EyVQaW1E2QCvFkt73f5fT9Id7WT1fLeFl26Ljoew9cj9/MLsVstqTJsPya5vim2ZnAPaWyZQ+ECs+YDLfrY4bUw8EWCri49Px5vwZo3ygQuAUElp/a/hKfvrTQA5LYQWF9uemYupWld/QxBrFIuCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QAbTbYXx; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57d8ff3944dso8845327e87.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759912121; x=1760516921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=QAbTbYXx+KiIYB/ZvMixKYuuPKCqRdXmyyxStMPglMMLGcAkd0bZH7y+9Yr4XLlQFU
         WD0B44OiADsmxjVX+W+2mDSqe162BmEJNDC6bMUXPuqhlKVaWLEfVQ2eM2o/LA8OexMS
         j5VtyYdoevLrXfDq+HMH2jEfOSKOosgo7+Xlqhc2+XHOLRDyq5etoPASKFEuiNYyudnN
         pXkSZUxXFVVP35PT6aePS7JkZW+g4+1+OkTJ6Q6Jr64NmqJ/WyE0qR8H4SebCdZdpkvi
         cFaMS/uc253ayCxN/gSfqkvXMEoInv3LFIGbg0m7jlyGOutbDdmcIaYcd3VbmyT0LpZG
         w2cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912121; x=1760516921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=ncviKczISYdiIUqez4ULqS7CKqVQQbtl9zrLaZ4WITalo8Xjffy6/G8rGwTE8dav4u
         oTO7CRVALh/OZ8Cbwl1OMosZJdjcO6P4uUh8R7B6r9a7y+zQ09U1K62pmhzGP+7Z2F/q
         tis0dUcj9t2UFncPNPywh4UCZYTbbhWvo1GhaGotc5l8A/sTuVdfqahHZC6SWXO5BzH+
         L8spGsRrLT8y1NktPV4SMb0Tj13Rdr3WEMUApcjxUr7TEuyToPSJNzUmclMvOGonJeYf
         L7t5bU0AWpnw2YQiPhhiYXXyd1z4RADBovTvbjZ+mja9cGG6Mh4xyL2fOfsAUoVNDO7p
         wDSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXe4GA6Ok46UffDtLFfp5R1q12Xsj+GH7t0Gc+/GObFRwmnk8LgC5OJ2G++daa8MDyq4rmXHXECnHz3@vger.kernel.org
X-Gm-Message-State: AOJu0YzipFm93RxRmALkJDWCxRzjRomFjo2c5aASaDkdlg6q7e1Wh9fM
	Kl1UthNQn89HiMei9m4fE8HmQyK4waxjvTTDGhPL5AR7DBXU8vEbc0al
X-Gm-Gg: ASbGncsz3oqQcWso1ZetuMMa6LSPTH/+Ik2Li3I4h9b1LSw5St/X+1B2W7/2jgq9pzB
	vcRWBLe3qmGZbeuNO6caDE2AJAYNcogyYGRnRlJ0CGguw/ejP09zRLd3tSfXIL5/7NA5bZnpmQV
	Rahvvwfw7Ie8XymSnMYLPfrtj7ErWXJEenoa7mCKT2cLcV2PpJHWOx3qb3OB3a4lHnJzd8tzn9O
	h88h24iB+YsVucrlMpSQIAY/8tcLrS35lbQWxhI0Em1J1O8HCdn2K5tw060OusUfFV0/UykiQEK
	KKmiEBxkFlizVb2cis53o3yn17ezKVjSlBOiu3m9juBz/+FaW7xEr8zRc2+oJSE/9FCte8VUJal
	Uelf/5Uy2fzR3DlbxwI0WNGT/ZLtzimXs+kss5g==
X-Google-Smtp-Source: AGHT+IFV9hCDPQx6NSx5ECD7DNlbhKuCcj5wIMJQj0wyuQZ2L9bgoGkjVG4izGN54TiKv8m27OKE3A==
X-Received: by 2002:a05:6512:3b26:b0:58b:a:d043 with SMTP id 2adb3069b0e04-5906d88b312mr813137e87.17.1759912120855;
        Wed, 08 Oct 2025 01:28:40 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124649sm6968733e87.15.2025.10.08.01.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:28:40 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v2 3/7] ARM: tn7: adjust panel node
Date: Wed,  8 Oct 2025 11:27:55 +0300
Message-ID: <20251008082800.67718-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251008082800.67718-1-clamor95@gmail.com>
References: <20251008082800.67718-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adjust panel node in Tegra Note 7 according to the updated schema.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra114-tn7.dts | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra114-tn7.dts b/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
index bfbdb345575a..75fbafb4a872 100644
--- a/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
+++ b/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
@@ -43,7 +43,9 @@ panel@0 {
 				compatible = "lg,ld070wx3-sl01";
 				reg = <0>;
 
-				power-supply = <&vdd_lcd>;
+				vdd-supply = <&avdd_lcd>;
+				vcc-supply = <&dvdd_lcd>;
+
 				backlight = <&backlight>;
 			};
 		};
@@ -101,11 +103,10 @@ smps45 {
 						regulator-boot-on;
 					};
 
-					smps6 {
+					avdd_lcd: smps6 {
 						regulator-name = "va-lcd-hv";
-						regulator-min-microvolt = <3000000>;
-						regulator-max-microvolt = <3000000>;
-						regulator-always-on;
+						regulator-min-microvolt = <3160000>;
+						regulator-max-microvolt = <3160000>;
 						regulator-boot-on;
 					};
 
@@ -325,7 +326,7 @@ lcd_bl_en: regulator-lcden {
 		regulator-boot-on;
 	};
 
-	vdd_lcd: regulator-lcd {
+	dvdd_lcd: regulator-lcd {
 		compatible = "regulator-fixed";
 		regulator-name = "VD_LCD_1V8";
 		regulator-min-microvolt = <1800000>;
-- 
2.48.1


