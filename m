Return-Path: <devicetree+bounces-134453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F18E49FD7D7
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 22:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0305188496A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 21:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13AA51F8F05;
	Fri, 27 Dec 2024 21:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="E1ltNCNA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3581F8AD9;
	Fri, 27 Dec 2024 21:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735334744; cv=none; b=YatsQy58BYzH5QknRknZYYoZ3zWVms+iSfThjfxXGUwzVGTHZTPqgIMuTuMGSuYXJwnwetPQ/8yt5uL8BT/BJCnPLliRNkgA8P1iVPiUDvwk0Z041YfxZYLr8Ubjfcg0vz5VQdUJNhBKJkXDxGPGcKy2OagYXt/6uw/bhgElKS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735334744; c=relaxed/simple;
	bh=NLc+gBO0mXFiFL/JfYwhVh/crpuda1C5BaGVEZO54pI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fbngQP2g10pSg+Gm7DlycmjZfk/nSpTss5pk1IxDpaFSHg8v31825aAP3EglD+6Pj0jEfVpGjYWkKmkUZX5iGfHWrGnzEuN5q1/Yd6MzYY6+RtTfqipW6+dXwFfCpFbhXqlKmN7VK0eXc2A3+JS/D7twRlqt1gGIzPVln5z2H+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=E1ltNCNA; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d3e9f60bf4so12690504a12.3;
        Fri, 27 Dec 2024 13:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735334740; x=1735939540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuEfX3Ewgynh74qzGhwC9wGI75Nk7P15rmSnoDhYmYY=;
        b=E1ltNCNAdDHaGfxbYA9crVow+0Rw9ngr7B5bKQQeyDyRsWb5Lt1CecUFBrcMSaeEpB
         HmuyzLPatfya8nNIESsdMeop/aX2k+F1aNqj6X7PA0+/480BwcYQTD2EO4S1OeNNbNEd
         8GP3Px4l1+rrvDsjEWIX77T/VjasHmbFR4rG6jdrUfymbprg5dc5hxAPLwDh0IKK15TO
         KagMCI+6DqDyik5kD6EQLYbMkSm22E099Tt+IheQ2/hQogwsvw88Bd4UCWjXx4H4vISO
         H/wsnw1xTU0UZzUyesWWGFgPUCMv3zBNqSYwQHtxH/C0V1S7z/ipKVB3v2Qvh2urkh5h
         CEVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735334740; x=1735939540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XuEfX3Ewgynh74qzGhwC9wGI75Nk7P15rmSnoDhYmYY=;
        b=IMW2Gl8vaVFE9vY5i0jF9UgLXp2qLLmsqRI9Mg8JOOPnfLLtr8+vLWatwM9vPit3DR
         z1pLa1781Nn4lyFcpddzCB0Vdsc898rGaKRwVlxLuP8yvSzjYWJGGJ1fTtxUWQKQG9ay
         Rl18jsEwwf+PNP1lIdVn+PAnn7IVfgFmlFG8fFfvZn52NIJPdm4yte+3Vg8huRBF307/
         h/aXeshisXrNEZ8AMki8MmLhm994j1EGSEGnkVilxTwF30dtcq3PH1ByrI6Giq9Fvw6o
         otPHAhMTqwfttT0krv0qvbukKhAWFkYlhP+OtVOSuHqaDUc/U3sZNNFSbc6z8C7f0N85
         PwUA==
X-Forwarded-Encrypted: i=1; AJvYcCUay6jxYdb3VUphIPWiZjk00QpOPQa2qPMQaCoq7pRR7kxQrwI/H3+vSsJI/UFVqrHKEI32LW0miRQJSRea@vger.kernel.org, AJvYcCVjIWOtzwFRdfoHDzl8CkhD0ZN+fz8BMWln481otP/hn/mAwB/qdETebZJ4E3xWXIk9/BJev4Jj4aWN@vger.kernel.org
X-Gm-Message-State: AOJu0YxYV3BVNcjbZNqKSIJbMzm+a4n//QsU98ytwQ9TjXfY9wcNThJc
	4vM9dT7bkIXoNio19sg+vTIk0LZsuDi8/Ynq3SkLVlIl836IVmXk
X-Gm-Gg: ASbGnctB9uKTVUKLKAqSu3HvbMnBnnZ8F+6xJWBQkB5+/KAm3Ovg3WPpvWuFFS5c2qk
	6WgbNxR+zMyUtERLq1ZAYbgcOREmwY6rMwBJAynv2I2lAYBs7i/oaChd5x17g2Tm6QaNSrwwstL
	N6g7iDlOBFDME8kDfkpjZvqg9Pdrus7XiMEh8UKnC/llePIAN5vkC8H4ZH1b3s+YP5L2vKCeuiT
	zPk0T22/3tN9X7rWcB8HlRdpFl/co91+HFg6rJ0Ac867Sby2A2E0Pm9Sf9/PWrFPHLRjhULhKKm
	bhzZfjqpX8Tj8pnLqkfEeC3IPybEQhWjZagznSJLuM8GkgISaCC365eilCdPaZQOydnvZmPDjv2
	zVZgwLRwC5V1AlqDz8yRTGMosYg==
X-Google-Smtp-Source: AGHT+IGIRdqN3NMSeNKnzm+t5nflmyeCDYFa8M6A9qcMMvGFit5klKIhBrwkQezskzj/4W8YueNKig==
X-Received: by 2002:a05:6402:5109:b0:5d3:e766:6140 with SMTP id 4fb4d7f45d1cf-5d81de22cb7mr23864338a12.24.1735334740432;
        Fri, 27 Dec 2024 13:25:40 -0800 (PST)
Received: from localhost.localdomain (dynamic-2a02-3100-b2be-ba00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:b2be:ba00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedbc5sm11627950a12.60.2024.12.27.13.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 13:25:38 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	jbrunet@baylibre.com,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 1/5] ARM: dts: amlogic: meson8: switch to the new PWM controller binding
Date: Fri, 27 Dec 2024 22:25:10 +0100
Message-ID: <20241227212514.1376682-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
References: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the new PWM controller binding which now relies on passing all
clock inputs available on the SoC (instead of passing the "wanted"
clock input for a given board).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/amlogic/meson8.dtsi | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8.dtsi b/arch/arm/boot/dts/amlogic/meson8.dtsi
index 9ff142d9fe3f..847f7b1f1e96 100644
--- a/arch/arm/boot/dts/amlogic/meson8.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8.dtsi
@@ -449,7 +449,11 @@ analog_top: analog-top@81a8 {
 	};
 
 	pwm_ef: pwm@86c0 {
-		compatible = "amlogic,meson8-pwm", "amlogic,meson8b-pwm";
+		compatible = "amlogic,meson8-pwm-v2";
+		clocks = <&xtal>,
+			 <>, /* unknown/untested, the datasheet calls it "Video PLL" */
+			 <&clkc CLKID_FCLK_DIV4>,
+			 <&clkc CLKID_FCLK_DIV3>;
 		reg = <0x86c0 0x10>;
 		#pwm-cells = <3>;
 		status = "disabled";
@@ -699,11 +703,19 @@ timer@600 {
 };
 
 &pwm_ab {
-	compatible = "amlogic,meson8-pwm", "amlogic,meson8b-pwm";
+	compatible = "amlogic,meson8-pwm-v2";
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "Video PLL" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &pwm_cd {
-	compatible = "amlogic,meson8-pwm", "amlogic,meson8b-pwm";
+	compatible = "amlogic,meson8-pwm-v2";
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "Video PLL" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &rtc {
-- 
2.47.1


