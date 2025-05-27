Return-Path: <devicetree+bounces-180910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D9AC59E9
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 20:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DCC61BA76C6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 18:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C1728002F;
	Tue, 27 May 2025 18:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KkjIvfmE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF86B7263B
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 18:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748369615; cv=none; b=U4yuNkElyCJpKNvBgvHpy7OZd0jIxb3acfv34koazTTW/XWGpzyU7lx9RbkIOYwRaWKryFlOzO5BbIRbaB35vqTwlaxZwp98sm3TzCaVAqMIH4cgII5XXUX0313Lpl5GzzxVMovcySxHXn81kdiu7JPx7X6VgP035extP++ocJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748369615; c=relaxed/simple;
	bh=+dNHJsRHE/JZChzL4jtoYzFUWpe+5i/Vh+Y/tynOtRQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jYPeRBEJi3VXhr9j5v2Dwe/wB7tg9dEVoEcneo38D7x1msGfWZv6PqnFq+1X8X9lVSc0D4Pm/96pVjorNkmaRb01wLnRcxoD2xNKKmMuWus7qCJaI2m72F5E1GDMlNKXfOEbrLkpTXKGrX9ltXRNu5/KacTAMD4yMwp5CzSdt/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KkjIvfmE; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a4d152cb44so3368263f8f.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748369610; x=1748974410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dpxuBRogWor3q4lMth7t3PBdJyoOLprduS4IK1yfNYE=;
        b=KkjIvfmEwEJtYEJtA/urhqgtYCyp2uVJJY8wEYEGwV423u58nqxuINyLhFUrlbuGSy
         LOkcPvZw3B8zp/6jX73h75qzCvO9A8T7lY6nvgqmtiw3HVUx/OrON3PC1oC1i9HXtVUG
         C8Z+TQRLCV5c6Rhm9UT739PVZRwemjCeZVHgvNK+8zCgKuNxnk1lSH4UXv0GuHbzMRCD
         d6jnj9aPXWyqKVtvc1dWVQY0ANgKLp1OFjjj+9owAvJZC/Ab4jAplAua2bCVG9XhxLj8
         tM+Hcsrf8cYMhhbr28F/qcg6VYLvGq2nV7FbTmtx6f6rtdJBlGVStds+b99+gPqPkyiW
         M1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748369610; x=1748974410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpxuBRogWor3q4lMth7t3PBdJyoOLprduS4IK1yfNYE=;
        b=TTWlsrpcwqchZBVdg6sGyREPBkzTOb8lTphXrIgGRnxe47Sb6AL5a0+kImxkp4sl62
         iVJT5nDgVPqCu5+g+3mrdqCLdW89VnrwLqPZ3WmY0fwn10MXU9OU4ddWLWfzfhxNp1Tg
         CxGfVrDXZGAIxCfbAHDlrMwgl+NJMbKkz238Ap4w8/nahUApK5Bo/NI1rbf4B88+Lmxj
         kevAAh83Bklj9Zfyutv8VFM7XBp7oWAn5zlUxp+8AFuyiC23BPblw1bAmve+qAqHrIzd
         M9QIBDWpnfvM9UdqqMwiiY5vW2sQsJ+iyURjD5vpa4w5gRJ+id0mgnNZQNN7eOVrSCXL
         evZA==
X-Forwarded-Encrypted: i=1; AJvYcCXfZ+fp/PTLYKW/UZkV2crczdBYOYctDpsrLmffB/J8twithiLWwRHjC+gqrZAHbqFw5e2S8TL7E17L@vger.kernel.org
X-Gm-Message-State: AOJu0YyoG7U6C8kY/d86YT+DOJV0mYIKZFtygq1wSXij7iZ7ccXvpjKx
	hopujbCZ+4yatSOISFpR/Hh7YWcXxG/g+xlMmgQhh+VNf3CGIYrNrHF8IjNPGK31L/w=
X-Gm-Gg: ASbGncsWvLduTRpe3g8vTSPlQFgz5z9j4nyjLMoWktEeZrJdTuO/O242CllNnb1PVdY
	k+dUZVDUv7baslWrRnFbsKYUDLPrFo6RcILKX5ODXY832pmpw+IgKhWq/NHFyvXJihmLF0d4x2q
	K2XFp/FCIwy8ZTmIdD3HZJCtjWQpyZrvymrKqImFxB7ASOljy12JtXvWtsMsk825Myo8zerxXzM
	qJc6AgYegmTNW/XTg6UWew5XFgshKcThHTfgNTXE5yjweAMaxEfDXkCntnCQwXdekNdvSheKNK4
	RMlZFygf771frz3rNhISDkaburKGzU6g8p9Rvy3fV6dWakg/mDIVcCiCNKX+zd15Syoff32eeeO
	93keNi6fE5PmEZznEXqfVpepiUzgj
X-Google-Smtp-Source: AGHT+IGyU3zHzfNm3yCtX8SfqxXihbtdFZqypQaZRfy+BYQa0ZaAr3pKhSRnVElWiW/7T7dSNF3VAQ==
X-Received: by 2002:a05:6000:288b:b0:3a4:e65d:b6d5 with SMTP id ffacd0b85a97d-3a4e65db6demr1273634f8f.1.1748369609987;
        Tue, 27 May 2025 11:13:29 -0700 (PDT)
Received: from localhost (p200300f65f13c80400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f13:c804::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a4e658f96bsm902113f8f.38.2025.05.27.11.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 11:13:29 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	=?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: bcm958625-meraki-mx6x: Use #pwm-cells = <3>
Date: Tue, 27 May 2025 20:13:18 +0200
Message-ID: <20250527181320.373572-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1668; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=+dNHJsRHE/JZChzL4jtoYzFUWpe+5i/Vh+Y/tynOtRQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBoNgDAW5dubIg6+TqZHBRIzyah2FApIaAYRtXTf pqGRfowoMaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaDYAwAAKCRCPgPtYfRL+ TkZGB/9L3cCZEK+NJYPysI9UUNFEL3UFLYkm0pC5Pc6rhtCooUd7UHPjpFwpnSERFbvwzqjhIir 8ok3PXRe5Vr9IZiZGJEA3jCFTl8fJnG9kaL9NJeFS1di59xHVkQpGJHNUdV3jDe80F/z175+Yi5 31wqH+aUr81mLJdgGkUfANvYr4jAlI6ieCUOKHIiTDUaRrx8sD962dl0NJbcZ1xgUFfExXwq2X0 NiNvFdTnxy2pzSe0g9dDSypBrpdxQgMc9ErQg31gHtRXJz1hdT6h6+E8U3/SAEjKiClfvJerdhC akYjIzxbITlzegy8qZBD4jL9EVhn8tZGs0XaN+nJfCFobCKy
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

bcm-nsp.dtsi has #pwm-cells = <3> as is specified in the binding. So to
also use that correct value for bcm958625-meraki-mx6x the property
overriding that value just has to be dropped. This fixes a few warnings
like:

	arch/arm/boot/dts/broadcom/bcm958625-meraki-mx65.dtb: pwm@31000: #pwm-cells: 3 was expected
		from schema $id: http://devicetree.org/schemas/pwm/brcm,iproc-pwm.yaml#

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 .../boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi    | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi b/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
index 71a8b77b46f4..7e71aecb7251 100644
--- a/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
@@ -17,21 +17,21 @@ pwm-leds {
 		led-1 {
 			function = LED_FUNCTION_INDICATOR;
 			color = <LED_COLOR_ID_RED>;
-			pwms = <&pwm 1 50000>;
+			pwms = <&pwm 1 50000 0>;
 			max-brightness = <255>;
 		};
 
 		led-2 {
 			function = LED_FUNCTION_POWER;
 			color = <LED_COLOR_ID_GREEN>;
-			pwms = <&pwm 2 50000>;
+			pwms = <&pwm 2 50000 0>;
 			max-brightness = <255>;
 		};
 
 		led-3 {
 			function = LED_FUNCTION_INDICATOR;
 			color = <LED_COLOR_ID_BLUE>;
-			pwms = <&pwm 3 50000>;
+			pwms = <&pwm 3 50000 0>;
 			max-brightness = <255>;
 		};
 	};
@@ -132,7 +132,6 @@ pwm_leds: pwm_leds {
 
 &pwm {
 	status = "okay";
-	#pwm-cells = <2>;
 };
 
 &uart0 {

base-commit: 0ff41df1cb268fc69e703a08a57ee14ae967d0ca
-- 
2.47.2


