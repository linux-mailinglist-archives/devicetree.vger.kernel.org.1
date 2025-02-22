Return-Path: <devicetree+bounces-149878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 975CAA40AB2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 18:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94BB07A791E
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1A90207A2D;
	Sat, 22 Feb 2025 17:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d9GMhIeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D44F207DE5
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 17:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245338; cv=none; b=VnmOdZERZYOBuKaqBhSms7Ypo8xBWwECfgzQhjhnoUru43kDP7fWougb++IE59+EnNytmTAkXQNBRrI/ojLSnFaAb1ytE4q8kuNTdkzGxVDqcZqBkX0j7H3A3hh0GqZhrvKF3YiACQm0PzgyNFV0Yez7bldxYE6Crb6azDVRSgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245338; c=relaxed/simple;
	bh=7GBjDaS8GrYOussQw8MH8M2ln4+/F0OeByw+abvCfMU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DGo6+6jlceHQ6LCG3LjLhjJcorTMR3Gq6ihyTV2GrYHFmjshG4MrgscWvqQC/y62s4GVPLVwE6MQpksfyo0/wyxkKVSSfttfWtbx0nC5lP7I/TbYHMa95fzsqd4BbWFQYOztvLP4A9xNrKaPPdrHQilRHnKq/lr3B8cZZpscUO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d9GMhIeq; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2bc607b3190so1501375fac.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740245336; x=1740850136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lFGNBl+6tIuC19XOOXE9HXgAfugs/lzg8pmMhzdxFLQ=;
        b=d9GMhIeqVub8BuAR+ef5szzu4XvdNBZbXRkLAStVbjfIxAvzcg+c9MgIvs2xe7gUUU
         a+jKSpG7+1mpKG3k+GQIYnRYLMtsa/mVtszMXTfb3MkZQ8g6h4xKVi58Mc36L1qcCGBw
         pJChZ7RwDak0KGHRv1O6enJuDXnRYTrsdNlP5r7RZ9vt5/RLTbotYD6i0NOWBoyILFGo
         gN/hp25c0gBlj6xlTUnqfvZRHochDbPgIxIvvdbCGJRW/o6UT9OSoA0yhmdiFqz9LFdM
         4iWIlxJR7DM3/cO61dPx61kpd0W2F7TxTeVF1s7HvPJb2pvLY8RoqXm5ay0Bji02DLME
         QtlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740245336; x=1740850136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lFGNBl+6tIuC19XOOXE9HXgAfugs/lzg8pmMhzdxFLQ=;
        b=wByMtk7DIMJwrG0SrA59gPWJpA488fqB/qCItBMPMj7WyIAsfJuxjWALBM5yn3UvAv
         NejADtgHgiJ1roueLd7zw3ERaeV+SePjDvlUydcM6boT0+/omxSPOpm4UQ+/BRn/8mEG
         ac+HeNELW4O/FHpDAhCXk76ZStMCS2B7KnkKP8VclRivdmLy3m2WG1J+wTDw7wmsUh4q
         f3kutdaQBT4/yyHy3hP0aCtq7LXFLkA9gjcB9astYJwzWWuGowytlk9u4Y1gMoVpfS2e
         PJpO8AIIZjPiXg/qu27+hIBkwJ2/q8eWtoin2fZ0wOBc4mNSpLBPhqIXoQWBanbTC9hx
         KF9A==
X-Forwarded-Encrypted: i=1; AJvYcCUN3Z9hF70UwuavBSbW4GtnJTuXq2ey92BNOx17+yYNXflzHXunokYVbaueLQHZ/t5ccSFzqAmi4MaW@vger.kernel.org
X-Gm-Message-State: AOJu0YyVzpYaRtbGBxNKLQrT2Ro/h6+TZAq4x7xMGkZooFv2hyJCr012
	q3rOPQSf4FoCzrove2zSm9k+F3/DtKIX+Z7MBjepuaWjatejBHSg
X-Gm-Gg: ASbGncuRlznG9NFjXbHicaQ85vuiPUNqHxzD7NpIn2J6mlBgfSoQ/2SHyg0wyxgrBNM
	b19Cg4zR6p1UXK6puP0Wl5r1a425LnohlyJutCnX7ySs6pfGKOV6jtuG45ANfw/XxotGSYuhQVe
	6bD+k4ljydHbRi538VPbRAdTsUjUtUEYFg2+AdOPPOzPvBzFPcJKg1UgeK/4uUDTDah3cG74NTe
	sl++hdqGLhfIwHbKAm/GXcPAjCa+OoZ+KptTBmOioXKIp/QJWdzouaV7b8v3yUqbFkVSi/5i9Qf
	7IXoVxJYRI88z8Dh6KTjiNqeVseU7Ep2n08=
X-Google-Smtp-Source: AGHT+IHAL/70G3mr2+6i2VTtbssd2wFWP2Fex0W1obJqJ8FQylmT4Wnsflve4vih8jrLfvYpj38+2A==
X-Received: by 2002:a05:6871:a115:b0:29e:5152:dab1 with SMTP id 586e51a60fabf-2bd50393dc4mr5638207fac.13.1740245336148;
        Sat, 22 Feb 2025 09:28:56 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:996a:132b:43a2:f7b0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b963a0ac4bsm7244238fac.47.2025.02.22.09.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 09:28:55 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v6 5/5] arm64: dts: rockchip: Enable HDMI1 audio output for Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 11:27:52 -0600
Message-ID: <20250222172752.6254-6-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222172752.6254-1-honyuenkwun@gmail.com>
References: <20250222172752.6254-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI audio is available on the Orange Pi 5 Ultra HDMI1 TX port.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
index 571a7f61bfd5..de11d45eedfa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -42,10 +42,18 @@ hdmi1_out_con: endpoint {
 	};
 };
 
+&hdmi1_sound {
+	status = "okay";
+};
+
 &hdptxphy1 {
 	status = "okay";
 };
 
+&i2s6_8ch {
+	status = "okay";
+};
+
 &led_blue_pwm {
 	pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
 };
-- 
2.48.1


