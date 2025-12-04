Return-Path: <devicetree+bounces-244206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5393BCA2752
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A70030088D4
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C798D2FFFA3;
	Thu,  4 Dec 2025 06:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="laHnsnE9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E392FD1A4
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828418; cv=none; b=lkRvzAL7r2pPT5OvdGCoFchhHsk1KvdPp+tQC/aS1EPt4n4gRNj1UJFkxq9X/0kjzIbWEGXoOo2YPZWVNsZ0FfaUC9F3zh+YfHEK424ibHu9lQIO1JXR+DrVofeak1gmx/30/0IWhYfOKRM+39QMpj99e7qU0C8F50XkoYKPKio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828418; c=relaxed/simple;
	bh=o0ADLZP20Gf+RaCUCo73PsEebUZu5lyI6twUNiTxrps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e7RdSFWErSaJE/sYeLp6K4Rew4YSgYirswZXjf+JXtKgpCdw5gyRgoMHYl6/RsrZBki/ihAGjWUVNM+UcE6fe8b2tJVCVr6zHBkshZsDXaoHXcyWLS+/Nl26m6yH73Vwx8n+S4AqYivPPr5hbBHxQm2Cs7zVtDeLHG8YyfzoY7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=laHnsnE9; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-64166a57f3bso763430a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764828415; x=1765433215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=laHnsnE9MGGR08+KhpGcfuJjPiw2z8PX2yQLpY7HQtXtsWAVD3MNOvMcI18KApqnUD
         uTTD5Fs7m8pNYSYaG3UjcSMfyX+SuQddr/jhEej/m/NvtwqMoHN5ybVTP/mTCRbf9UpH
         BbqU8imI3EI0f2aoytzX+IXXC3WQIAzMbK0saKY5b1wRdUdPJuJqsfuyjADpK5FQgCSD
         Q82g7sznr0IjSiRuiXb0sBwXBQF+FJ+0KtncY6yko01uoAktAqHRVfSGZLRKzdCEn9rf
         oZPCc4NWxEsTeFr9wGlNk+Jrss0xoO1su7bI/3HhfQ/OR84wkGoMJRtooJSeHCPxXxOh
         prlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764828415; x=1765433215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=dVwUdWzx7sEl27OnvWfKn4OxiF5gVPsh8YeSBYcwRFQFzHk5W/S+2Ya5CQqY13DFi/
         ISv/O6sY6hZnBDZ4k/QPts5kWEUXJ76zXyjH/Z6bmCDvgFzaBsNMDDZgZ7OlMoTl5X9L
         A64dZiTufNCz5erYdDdC6f9dkFgaFzXCAmaAL/TGTmF0eTZRBmQIg0SebiG3wNsvNzRl
         Tp5on7fio+Ekp4oKWddbBAfYQl1zZm8S9DZqxeWszMQiz9CsCO9yAcxal2Tqwo8PGi1B
         0CUOnE2+33mDz8byoBtq0hB9j1P09fs8fRPtz6Tvg+JB5MvWaWl3PV/FhBZOJ2rrKnDd
         Zrkg==
X-Forwarded-Encrypted: i=1; AJvYcCVCV7R1KUYPU0RLFoi0SMv6y78eI+URH9HSt4W4mQViwFbKCPJkt5I5TFYPJHdjpTPokOK/qFnDD75E@vger.kernel.org
X-Gm-Message-State: AOJu0YyIOE3ROXORTr5xywBpbjZvRz5+bMtoQV4buClweKXXx2g75PCb
	J4y0NW2+jzTLg3fd0Id5bGMG2qqy8paP3JI1mwRKA7cSoNm+mheBqg7x
X-Gm-Gg: ASbGncszbjuYuXjWlt4AgpF2AqaEy01BOVoM44MS06cw33rgRlfBp3Wm+XMijroX8/H
	1UIBkoSYfQxN5ffjvKnYaaJd+Yj8Xr2naH/f9MYf+r+oOijsuak/K5lqrJBmeWKjTMa2JgMCWso
	zCn6mYN9sYI4eUvs/U/mlgyHipXxEqeGVCo1uivTduBKTWDwTsHh+9jfi6d0s4e+a6tm3oC+o1Z
	W4AmbZybq+qws/DcfK+iOf0ZO+k6fVsVThPSf5IJwu6hYdCLBCuExtN+p+YgUt2jCPa3oyktBbH
	V7919WNwC1JAGShP1C100NB5RBqtmO+DYl8MeNpNdrUtUEfuXhEHGAIxI+qLB5qOH9o0ueswoIV
	WWWCZqcmJpejGvWamxbsSO5Yoi14709Swu7v15HQ2UTYqWTmRReqg2M2IfPxTaCJIwyX2iMRzg2
	k=
X-Google-Smtp-Source: AGHT+IE+Fr6H1WVOFv89mmmcteyvoUreGk+YgPA8+X76Lo5K3YtT982xGzt2fTbBOqBAgi8GNeopNA==
X-Received: by 2002:a05:6402:274b:b0:640:b3c4:c22 with SMTP id 4fb4d7f45d1cf-647abdd3177mr1426616a12.18.1764828414907;
        Wed, 03 Dec 2025 22:06:54 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ef7798sm460296a12.15.2025.12.03.22.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:06:54 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v3 3/7 RESEND] ARM: tn7: adjust panel node
Date: Thu,  4 Dec 2025 08:06:19 +0200
Message-ID: <20251204060627.4727-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251204060627.4727-1-clamor95@gmail.com>
References: <20251204060627.4727-1-clamor95@gmail.com>
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


