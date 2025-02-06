Return-Path: <devicetree+bounces-143589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3B0A2A819
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF5971885691
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A8322D4C0;
	Thu,  6 Feb 2025 12:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="E1QQTwrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BFF22B5AC
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 12:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738843611; cv=none; b=Tojbq97qQdiDVqmUs0KjWH+SHYV8RaEihKoDR70iE3zAb+r0gSAM4STMpCGbLwcGBGZ3jvMmVAv/+pyD839m7iyyvwoVWw15Rmg/Dp1qG07VNge414cPNfve1bhzZahzjfr0HAW7FV2RGNbC98T4Ro0UQOB4oJxwxWcxuQA5jsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738843611; c=relaxed/simple;
	bh=mzzlOW4s4XFlnUNQki2gOaCCsd4YELQmA5LEb/HxHuc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nW7yg7F7jV8u6LH4niC9sBxEr0zjJPnHDso46MLm9GAut2o0YRQTuEL6hKcQm2WeXGCy7fIR2N9pvxkbimrnJ+We5J4ROnlQiFrAhvA6+SqFC0G9KZRXpjs7YlodoLsu2rmQ6Hn52u8gAt1+rO7rv4YXzVyaA6ElTcXtzXr/5dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=E1QQTwrE; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5dce090bbe5so2006163a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 04:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738843608; x=1739448408; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JzeO14o/pXr8ezTGYZalXSXV/Bh7c/D19pERNYYPjQ8=;
        b=E1QQTwrEMTXWhd5BXsn8x1sJY7Utb6e2Y6WAwlMZsr0OUmLim7a7nD6nEjqtFswgBf
         +7trHeJ6zb85cSw/wdduvIsyNGQKA36Zg6y479cLZ8n4/BIW1eX+qR5dvt5ptcjtGXhW
         YbT/nfqFrNIkaYCxzFeRwPR1HeAU4LztiEin9t/s+NzgU8hvylpsTZUrnGLT3L5sv0zi
         SXRUfpgun3STnugM9Qxqjan13EMbCsPMfF9nfNlKZkf6J5+3hg8SkwtX82hnbrmsNSF6
         6VGbkbUwyOviej1ZIUbqRXm9UiWdpkziE7T/g2ZlxgRGMD086mCUwCZim5f5neEj2X9G
         +2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738843608; x=1739448408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JzeO14o/pXr8ezTGYZalXSXV/Bh7c/D19pERNYYPjQ8=;
        b=RiHutRJSq90/uXP5GGVnKoCTquFH1kyPaYJbL/ScmoVWxJWRVuS6Crlulj7Omxaxw5
         +SIre/bZyLmkeNw7oI/p2WxJ+n74w8fl+Ka6n11RUSphXGACsc0ObomD8ZHWTepuRh46
         fH08xnr4xdAuj/baUche3MpmjnRdUOchwyiV4SmBp8jY203iSsZqy1Jdj2DehST17jCI
         UmmtsB0UnuVus7W0BQT0SvXJtymrHPsmxQ6j7E2sosKUwpus/BuVOUDOZsXigcB5bMDZ
         qm/eRyO17e9MFC4LpgbmuwdHChQB7JDkCwdWqWVwggypVDXccNnnFbwIOK8ZY7FMG5KH
         odjA==
X-Forwarded-Encrypted: i=1; AJvYcCVkWumckQqB58y1L00z08VRDrCoFMrY/xFcyFEW3tkWc3zFZqlyfQa3bG8LPPH/UZ4GSlLiWAwEfAdW@vger.kernel.org
X-Gm-Message-State: AOJu0YypBNVwKroz9Y54pIGDS71lZ1eo0iNKfMwOafQ7Uuh5d7haGzhf
	BotTRFaj4JIY8fspC1/7YmVQ855au+tDZbYZH9VpscWQUjSMaDanSLGSVIb6ZVs=
X-Gm-Gg: ASbGnctytxNXgot9zXbRfVYuKBXMNyqEiBA7I+Tt9mIaXRf4PpV+/3BMESMiv25j7fz
	1XaDWpocXLSfQocq9HMypMzirc78PxYEx4PdgxgP/WAbMhNnikzv6P/g83FcPcHEa8row4eY/kE
	i+C7KamNhXPO+m13MrFo5lDLk1EmEeA4yRhFk3m11uZ4dzns2NDJcSFoB+rHVV8/lySHxXJl6En
	A7oKX/qg39hdRrAXqJ0aSQL4WmGki4sysXf4Kwh5SskEWjCODDK6HnN950VdtoBZmfUIC2nS4g8
	QIH9PSYiPBBHH5R7HZkKiNve8DFdDBnoAEWxoszvCnRMpjz139/mTfBPww==
X-Google-Smtp-Source: AGHT+IFI71F4BsOEuE5LOsmA6xvcL/sHCHHEInIj/bQ3b2TPDGHazfEmK+Cl66ACwGBnNwW8wYr3HA==
X-Received: by 2002:a17:906:6a11:b0:ab7:5b58:f467 with SMTP id a640c23a62f3a-ab75e345e29mr775388066b.40.1738843607801;
        Thu, 06 Feb 2025 04:06:47 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab772fdb84esm87896166b.80.2025.02.06.04.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 04:06:47 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/3] dt-bindings: pwm: marvell,pxa-pwm: Update to use #pwm-cells = <3>
Date: Thu,  6 Feb 2025 13:06:26 +0100
Message-ID:  <cb799d8a5bb284cd861785a691b8d5e329300d99.1738842938.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
References: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1472; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=mzzlOW4s4XFlnUNQki2gOaCCsd4YELQmA5LEb/HxHuc=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnpKXFkdfzIMqsUtFwSC7Ld/W0uHO72JRAcmq1S vHKqGCjSruJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6SlxQAKCRCPgPtYfRL+ TllnCACpIZYHCIIgQPnWJ7NTPt7U9cHpdvBcYDh7PLjBCpqtcQkZicOtQI7NV/JICkQU8Isjs19 CPCh/yYAFydLFCGOv/MN4EnlEkJlFwahKCN7rpXFy6pdkS03oXiTeIYqky8YGxIX14ZNCyXQeZb XKJaAZXe5awZ+y6mk9uPJObdxRIr7Z2zC8aXD2ZU6RE1U4KrvAi31L8royEpMX2S/AmySoP4Aij GOrngzrp9VRJMt8MRh7BFoP9UuTlSKOKluK7EM4m+3v7ilSS14oiyc5eLn90WvCII5GKsV8cPnF H/vGOgRL8LVRoUBdBrvojRriw6CopeMcUJc8xs4a5tOoZdeV
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The PXA PWM binding is the only one that doesn't pass the PWM line index
as first parameter of the parameter cells. However this can be upgraded
to the mandatory binding for all new PWM drivers without breaking
compatibility for old device trees using #pwm-cells = <1>.

So bump #pwm-cells to 3 with the (undocumented) promise to keep the old
behaviour for #pwm-cells = <1>.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Tested-by: Duje Mihanović <duje.mihanovic@skole.hr>
Reviewed-by: Daniel Mack <daniel@zonque.org>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
index 9ee1946dc2e1..74f2d5964742 100644
--- a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
@@ -25,8 +25,7 @@ properties:
     maxItems: 1
 
   "#pwm-cells":
-    # Used for specifying the period length in nanoseconds
-    const: 1
+    const: 3
 
   clocks:
     maxItems: 1
@@ -45,6 +44,6 @@ examples:
     pwm0: pwm@40b00000 {
       compatible = "marvell,pxa250-pwm";
       reg = <0x40b00000 0x10>;
-      #pwm-cells = <1>;
+      #pwm-cells = <3>;
       clocks = <&clks CLK_PWM0>;
     };
-- 
2.47.1


