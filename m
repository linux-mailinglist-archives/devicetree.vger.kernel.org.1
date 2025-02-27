Return-Path: <devicetree+bounces-152355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 987A4A48CFE
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:57:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EEFF18909C6
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A64722CBD9;
	Thu, 27 Feb 2025 23:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dvOdKdTy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4471AA1E4
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740700628; cv=none; b=tXkkYq+Ah9IMsw+jzs7qPP4JM/NA84isO/042rqtNtAyPbd8cJN4zEwV3Gh6hKfeTanjH+aLX7jDsbRftOOeumXXlFaiVu2IGv2LEMajH5N0XomUPLH7GCGHGHko2jnzl9IE3Qw1HYA7v8BnBKhgQov7F0BzWBW2LiAxuekLG9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740700628; c=relaxed/simple;
	bh=GjHs2FjnNOMKOX8rcPrNDgA56SIP0MXbRcLohucvWh4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a1+qPHY0PVDLGabG8XCWVH1yQY/7tjLay+DEjEk+vIX1ydGD99Nrwx5V0zjVL0mPwYSTcKDQSaFWea6VftcfqWmVzqOyWTRHDTK/oXJAcSxCuaNZXdo2QRt18A22U1hoixSWVjwIq/+fjaZIbDyo0+Mi+9NxUwyCAxoDJxqWKzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dvOdKdTy; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2a01bcd0143so1397520fac.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740700625; x=1741305425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlDk5N2GB9mCp3K6OJvLJ8k4vH/W+90nGfvSZBoofS0=;
        b=dvOdKdTy8ooAiJZLrvr948z0ycw7AQ6Bl4p4jFdQ5RzKXmUpqUKOqtfe/n6JXFobkV
         C0EKIsVqT6l3n9rcwLXvU52cDlq3FHUyBRx0/qtqnQ99CVRRWWOMvJcYwdJgKZiOcH03
         R0Gj5uWWsESRMjEebVB69C1nzFJsxE9pBMez3ys8SgfQFwrOJvKI60EnXjD14gE7Q5wb
         zuQUojzs5q39rtqDq6ot2OWpjqZ9UZyHzYaKql0SOSVl+BhfQMckljJ4zw9OIk1zzPJl
         dexkda/aG4pgp2ivbQw2p8Hw1DKTVCPGWnJ9IX8YBC5/Js4EncXvgvfSyqO5VhUD8u0z
         82ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740700625; x=1741305425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZlDk5N2GB9mCp3K6OJvLJ8k4vH/W+90nGfvSZBoofS0=;
        b=gMmZ88g6oaQoVXswvJ4HiWZLd0A+XWpA+1QhWkVYyQX1dbaB9txx5NC0mxnD0c2Diy
         IUGodwcbrerRvSzdsXfWRf7H6zNrOe4m588MWbEhvN94OBaxO6zuQqxUvDMrveLLMaqC
         OVWeVQU6YDqUEgOSGCulIsCvM128M/IY4vwpYCVFjJBG8C/EHn4+Mwh931LVOpqn0bbm
         WSS4sWAzxIoAITeJVmIdQilZqoow5oCz7hr38VIMlky2y/PI74YfZfTaV+3ZiUsSTqus
         KrTH8nzlWc/IfcUCpghdWcaZkLxb1vuTq3O5naOMmdq9AwAwbvoFIHyWy8NigVYovPrI
         ituw==
X-Forwarded-Encrypted: i=1; AJvYcCWn1ftxNSVihC2UnqCFeILY8XP85aY1Lh/SJWsUHh6TMwYmT4gWHwbLhh9OPyKNSmESrTI1BfMu7Ujg@vger.kernel.org
X-Gm-Message-State: AOJu0YyoWLoMDqfBf1jQ1Qd0NniGDguDjkaukzCE2E9o4I6HZkrEOsnV
	HBVlpRSiFtM7kdRm6B+hsmR48DpPL+RA0e/TuEb1pfELDK5PYj1x9izZCgfU
X-Gm-Gg: ASbGncvMFTk5CzdEM2fxFhPiVJ33rQaw87jzPx608+mRvDiOCjy7tnOw9QIHwO1FLhL
	JreSu+RZSET/e0VNVIzMp1FHML3y+LgkO4bFLEjlbw1HcPsipdxSnR1xopHIK4wOCEFaNRUv4rC
	aTZT2FOGV5Y6YMeRUBvkvB6s65dceQbae5/tDMN7eRWvFivO3jkiXoSkBod1u14jJvEEP+h6xrs
	lapDxi31qw3xsTrdeM/LviIlyrjmQaj5bEVIm8exnHR5lSM333A6eHshQAHqRh/n62sjMqADf09
	HGganQp7Xm5fHq+082sMAZTE7xjUTeTc5e8=
X-Google-Smtp-Source: AGHT+IF3zsxZysqy4mQrajdDPKqBlf67QpxzEWnybkW16XIkXogKUJuTCIaYSQ0OXdfMVpVrnx9FEQ==
X-Received: by 2002:a05:6870:a686:b0:288:18a0:e169 with SMTP id 586e51a60fabf-2c178437544mr717463fac.19.1740700625041;
        Thu, 27 Feb 2025 15:57:05 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:87c8:8ae4:f338:6188])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd7694fsm443893a34.50.2025.02.27.15.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 15:57:04 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Florian Klink <flokli@flokli.de>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Ondrej Jirman <megi@xff.cz>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED 4/4] arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Plus
Date: Thu, 27 Feb 2025 17:56:23 -0600
Message-ID: <20250227235623.1624-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250227235623.1624-1-honyuenkwun@gmail.com>
References: <20250227235623.1624-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI audio is available on the Orange Pi 5 Plus HDMI TX ports.
Enable it for both ports.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 53797f633d3a..121e4d1c3fa5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -124,6 +124,10 @@ &hdmi0 {
 	status = "okay";
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdmi0_in {
 	hdmi0_in_vp0: endpoint {
 		remote-endpoint = <&vp0_out_hdmi0>;
@@ -152,6 +156,10 @@ hdmi1_out_con: endpoint {
 	};
 };
 
+&hdmi1_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -220,6 +228,14 @@ usbc0_sbu: endpoint {
 	};
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
+&i2s6_8ch {
+	status = "okay";
+};
+
 &led_blue_gpio {
 	gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_HIGH>;
 	status = "okay";
-- 
2.48.1


