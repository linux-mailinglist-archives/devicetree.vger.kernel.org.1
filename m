Return-Path: <devicetree+bounces-234233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAF9C2A7B5
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 09:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0FBB64EE1A6
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 08:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B01DB2D7DC0;
	Mon,  3 Nov 2025 08:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d2tUll6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FA92C0F93
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 08:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762156999; cv=none; b=od9KmS50CGS/86oylL1WZqYFuPHffZLu5znk7DDg1EMWYZsro/yqis9THhnuY+e7tjWmMNWNjyC7GgQX2asMGH/HApqBKdHqnKwAHLmCs08k0mIBIMroYTR+b+BqSUzD2FLmub25R0M831gK89s6zod/g1dEauElu2y25ksDGlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762156999; c=relaxed/simple;
	bh=0hmkBcwNi/15Hg41v/9tEZRSOuxBPIYSMFT8w80PEDE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dVKc75Qo9prABX8vgkQKzNmVWVBq8Pj0NusT64oYfgXZxiyHn0AiOuwC+K2Kd2xRNir0c2FYHKNTeBW3DeRkf4YCFOgJQmjYAcZPWPhCezTvNR2Gpzqzk2aTMU8qaLkDFScGI8eCet7W1DP3ycfiLgehjHalTOWbRETWrKToHmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d2tUll6Q; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47114a40161so48403165e9.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 00:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762156996; x=1762761796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UIjsDBL7JuwSES1NzAI+XGn3v3VOxvwOWZrbhNp0OgA=;
        b=d2tUll6QszivAmkUL2SHCAQIZT0Gr76sh0lxdbRFLgeRpCOCILWsYAq3QT6nv/GEg0
         0vAsflTtnHy+p0Q/apnyXSes+nmVkrkEnyu2EDG0RKN1l4aareTk7W7FO9iX0RqFsBWo
         xmMxMxikVJWHyIxUIRGtBqJy1EqZ94+z33YM9D9IUCV8MLDLQIbU3vtddsVjBtrs8fxu
         gMJ7Cd/zV5hTTqLh2K3DWns4yNuWKeyMG+1EjWauJThw5meKKxxW58F7KmHA3oiCb3G+
         B1Qe4sIjNvmuMXUEmlppl3vQHFb++ndFpBog5EE6g7noUL1GbYgqcQ2jl/GwRr4lPhdu
         fjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762156996; x=1762761796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UIjsDBL7JuwSES1NzAI+XGn3v3VOxvwOWZrbhNp0OgA=;
        b=UsCFLrDcJubv7ZD/KwY/kcpZ2yrF72P5CTmshuYxsdFEGEWLshrHOCuYVgYV3uotcu
         8sTCbQZwCvl5vH9gdkrhJZt+oiUdkIZIAHIZIFNgB2rQE7YhrXddgzsmYzFKY31M+AMu
         ae8cIvW3nf0G1vc56Y3Qx2NFxlzuFjCrtCSECr9/lnKnRDMyR3fkS5l8mbxrjZum+WeW
         HeJn5cK5+44pDbYmSZrE4mM5JGiAs70zn0cEUku5erW8cQ8aIdufA9DcvxwgWFMSV5r5
         tfi0sG5UIa8H0eVAEnXliSq9aV+TZom5WAfDCM7+Bn96ul8Y9dcDmTDknXKzd7WTK7Pm
         H5xA==
X-Forwarded-Encrypted: i=1; AJvYcCWWAcnoEonUYcP7DnMdaIJvMWBDtAVk1U/BT2SqcGo4S7t3rKKlQmMleexsPNYRk9c9bl9NsS+FOe0U@vger.kernel.org
X-Gm-Message-State: AOJu0YxEnSMGX5+Y95Hl9o97eB0+XW19FkhPL7/RYOwP3UaVRx3NAPy7
	0udWnfnu3QgMtGNu8nLmTnkZV5w15gkCMekP5sLKU8gIdIohVXA1Duz0bOwW0Mf5Arw=
X-Gm-Gg: ASbGncucry1vKGLrf9dtWJK3CueIQawnDAxqvBw38cDgtR3mNnFtC2NN5goV9Hvi4bS
	WM9bUxgPeVmCpRT4Oy01fSAMDTRKR/ETO9/cPbraaNG1LsWLzgC2bW4asqHl/3MEhexf3ks/Ty0
	9vQ93B9eu5ZXgBzjnIM9YhiJWw0O6y9SAUSOiIJkLYc83YQWXOeJ9LnJV8XUoGSibnBYVUBloiE
	2SRAwrEOiMdPT3iPS+Nkv0GusHx0SDJwoAIc95Fp6gDca9PlPlz3uhgZYuAerVBzsRgtJVRYWsE
	t/9OSZr7tl/xk2xZL1McCnxDNBG2pp8bKih4rGbdEmsXB4SvjJIWYB4TAsF6JwZmLyyMhy+Hfea
	qmZGeaYD0u1NkPqOl2VZ7Su18wrVUsa30YVkgZYMtDlQtoDsO2dpKgEwxf2NZncdxAftA98S94c
	uJugbmzAM6rSeufudoeramwPomZVfjjaGAxk53O96yOw==
X-Google-Smtp-Source: AGHT+IFBlY4u+ylxa1NMbQq9AwRhhCZn287qUFC/y/Dpy2fHSIi/d11buCiKW+zA4wCy87Zp0t7RxA==
X-Received: by 2002:a05:600c:19d4:b0:475:dd59:d8da with SMTP id 5b1f17b1804b1-477308c8e97mr105117325e9.40.1762156996201;
        Mon, 03 Nov 2025 00:03:16 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c4ac5d6sm142336215e9.8.2025.11.03.00.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 00:03:15 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 03 Nov 2025 08:03:10 +0000
Subject: [PATCH 1/2] dt-bindings: soc: samsung: exynos-pmu: remove syscon
 for google,gs101-pmu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-remove-pmu-syscon-compat-v1-1-f2cb7f9ade6f@linaro.org>
References: <20251103-remove-pmu-syscon-compat-v1-0-f2cb7f9ade6f@linaro.org>
In-Reply-To: <20251103-remove-pmu-syscon-compat-v1-0-f2cb7f9ade6f@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dan.carpenter@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 dan.carpenter@linaro.org, arnd@arndb.de, robh@kernel.org, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1319;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=0hmkBcwNi/15Hg41v/9tEZRSOuxBPIYSMFT8w80PEDE=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpCGHAMuubZFKeP+YxESCfaJLCuZ7D8o+Eo/F4L
 pwst4jEZ0+JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaQhhwAAKCRDO6LjWAjRy
 uhoDD/94q/HSFeBMa4TMs0/aCpk+xFrvu4g/2QXL8QS8v2ZMGq7YC1ME6g6+tXQSMP87ztouMke
 PgxoQsUiJnpdFZM4skWp3URtpnWw+gBXhecAPHLHBSVNcdlP8I5rp3aBgj0hg8bkXFbYzJuApyJ
 xzReuVHfHxmG439toyIxW3hFEeFL9jfp27Sw7rxjsjmeXlDJpYzFpq1x2hU35tJDUN/iKmZcbNg
 UKs2tIEWRCLHdRh3qKupwgJ/Na0VWuykESGVmi7KZp8xgl/HR5+4zazpKCTIJZhFtFcq8ng7VyA
 0CCgD1lvOCZkNJ6eH5USMT4y3c1g+GK5o1rmr1LV7Bxc9MFijfpU0DWA2JOGeYvUjqpgGn7cyTs
 qO8McQ1j5xcHHSX2CPbyM1YQQqdXgo1t+/of+3A04GmR9Yhev+PqIrO7faAx0VxDsEz6PHdaIzE
 pkpBxC2XMEpQduylJlQSBylhManiiOMf6X1aKD6+/iVST92YboV7AxV4+etL934GSyVRkOlgxU+
 mI+2JXOkDBR+iUU4MHqLd/M49nNtibv3GdVOG8j9OsH91SAv6wdNZrQCsLksQ+WV9sx8sbCPP4m
 RIOFEvkpq1+IGK8HvRHKp2SaklEbxA2iLWEe/AO+65uLHuiOaWYAQx5JwofB5n7aBfZOrb12dbP
 Ozg1X2C/dJkz9Yg==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Since commit ba5095ebbc7a ("mfd: syscon: Allow syscon nodes without a
"syscon" compatible") it is possible to register a regmap without the
syscon compatible in the node.

Update the bindings for google,gs101-pmu so that the syscon compatible is
no longer required. As it isn't really correct to claim we are compatible with
syscon (as a mmio regmap created by syscon will not work on gs101).

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index be1441193feeea1c12d0d5370168e9316c8dcf76..c5dd132a2b6948f8eda93e4a32ddd1b57a83fcc0 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -34,9 +34,10 @@ select:
 properties:
   compatible:
     oneOf:
+      - items:
+          - const: google,gs101-pmu
       - items:
           - enum:
-              - google,gs101-pmu
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
               - samsung,exynos4212-pmu

-- 
2.51.1.930.gacf6e81ea2-goog


