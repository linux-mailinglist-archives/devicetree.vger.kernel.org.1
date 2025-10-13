Return-Path: <devicetree+bounces-225851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49169BD18BE
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:56:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D95B93B656A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B504F2E173E;
	Mon, 13 Oct 2025 05:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kBsroXvx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5C92DEA75
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334979; cv=none; b=n1xxZl4sx5FFI7DLUqdhzedFfbDSimV8+R8xjEQesmtUeF5UwUbsUb0UQMVfZtbENH4TGWqIFLE2AfdWf53NW5J/yCLexv8wdIovx5wNLg4vlWwPsAZh3/5i499pqMvRlN8MZxrnOoeSpG2VHh8PBc4sWTFDeltuE2HTBEXfFxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334979; c=relaxed/simple;
	bh=o0ADLZP20Gf+RaCUCo73PsEebUZu5lyI6twUNiTxrps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G5HOgSfSiiK9uEeSyj18o+4YCamU790JO/8Z7nsINsAx6SqoJxWXt65LN3iKWYhKcfCw1PgvUrenqEKDsXhR9Rxw/sloAPEpqhYc85kAsMZ5p3QPxJmpueFGw9cLqzABJ0LMrq54nJVBxr/aTQOu5Sts9akTeUkMMz2Pnn05Gpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kBsroXvx; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-62fa062a1abso7094325a12.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760334976; x=1760939776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=kBsroXvxeCmdzntD7FOSdYUKwLtc0m2wex3t9tnGX+nGl/4FZiIRlN452Npm+g/cWk
         kUDny9ndTQvlFBO662h7W1gjtjEO3XMDB7XqilQ/tyen/6Z6RldJE6W4A5sjNjYb0hOY
         tJivoGLYGStUT0k1asjE1dWa5KjlorPkvNDd2eoIytgSW6e4R6qAekPKeJHZWrlwCv9F
         b4I+8k/5un1iUYwp0xSxR2DWhKIyVj/u2BYCpqZYI1wvwUDwLFfEY/0Vs6Lhq92idySA
         QzT6JDqNDYadawa7Iru4l077Mwz6m4cHPtRyN8x3Stm6zgUIcKGkOPVDWCTQB4yu4CUG
         gCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334976; x=1760939776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=Os3FYUdxGlePIhXKpcUV1sqDJPz66MkvTH/6i05a52/YTE54N8EUSRZEJ7VAFjhmGc
         VJ2fvUByWW8qb+0ApoXJwH/O+Er6mDF4zpKE7eJ6U926sHVD/GVQCRfrBXKLTs94ThEf
         uyRgIXmxUCuLKty8FYSOj21TUOhicHl4Mbxdb+r4tfVU/dNf92/u+CP/8GHE377TYzNr
         fx7hqOgbJ2XDA/qOtJx2u8zCWTwXxNq10JQ44yKpnGUqD1KQJcJaa9fXWYMFsa0oH7yE
         kONcHY9XhvQxgOYpVBHsZI9kQ+AhtuNc4/8UDhCyxsXsc2tQHxVUB1RacR7ZRgWG7n5N
         CPKg==
X-Forwarded-Encrypted: i=1; AJvYcCUSIxW5dFezcW9OvrlPOJUgfMV+aD/5fWmhJZlMkTP0g8oj+sI80jNlAkzht4PJeruG9thi0kLYL7nX@vger.kernel.org
X-Gm-Message-State: AOJu0YxDKzXTn/aO94UI54wS04KEwG2tA1UaT/qmPN95puISUN6RjVRU
	BGGxCmmNbI2m8Ya7BXMz9M608j8sAVQt/8u6GCvXGngYe3Rw0OAKyGjp
X-Gm-Gg: ASbGnctxN8xhT/U3H3vk7nABYcrUWXIQit/jHwxPQQioTkS0D8h7sXPiQ8+57T4InGm
	66Zf+JY4n63jZ9+8OMOtDHqUIbv8yxPDqhznj2W5TkOvuEOfCtVSH1vbWmFNOtguUwxoz6sCmS3
	1+HosQMdpuZ95TH4e5vLuPpW+CuADZEGe3hP7vEe4WVryhjywbr0Qj2H6pKpPxrjShMiUXYPESj
	dlEZP1FAb9MPm938m4xxnr7/7IwhfqQU7fH/2v2aZh449cQuKZxItrEEUTfwIvZudDXxnIkObbS
	4a7ri3y5XwcKFEutn0LnjtZU9eyh6PZY11WRbz8n4MMHpOfBhpXiBP022UWnUW6bLJZg97kijBp
	PTElNOiBuO9vtQlNz960Ll7yvvHu/+5XZ3Qtx53Q0zno=
X-Google-Smtp-Source: AGHT+IFXa8F9X+NAFTriZ5+fmvjgs8tTGl0KStDHQpx5xiYIKYYvA73do/5d5TYquynvGTa1Mbv2pg==
X-Received: by 2002:a17:906:7313:b0:b40:8deb:9cbe with SMTP id a640c23a62f3a-b50aa793004mr2095378166b.2.1760334976145;
        Sun, 12 Oct 2025 22:56:16 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d63c9a3csm860912566b.23.2025.10.12.22.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:56:15 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: [PATCH v3 3/7] ARM: tn7: adjust panel node
Date: Mon, 13 Oct 2025 08:55:38 +0300
Message-ID: <20251013055543.43185-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013055543.43185-1-clamor95@gmail.com>
References: <20251013055543.43185-1-clamor95@gmail.com>
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


