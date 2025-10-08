Return-Path: <devicetree+bounces-224577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D216EBC56A6
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 16:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B26B3A6979
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 14:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265EC29A31C;
	Wed,  8 Oct 2025 14:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cEmKfN8u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF73298CC0
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 14:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759933078; cv=none; b=icRDwLzoGkMD0lfnks1zbmcKcknxy5uG0l3aQnTcLpXjoLPJa1nDTehz2+O1e65h9fUXiIj5nRKXuUuUih2FGPkQpzHJ3XMxqyKBQCVZ3JxrDxSAzOZGaZgF+OgwH0sMB7OyrK36thzhyNWse9RpC/63/ZyrnlcPDaXBkS3CGu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759933078; c=relaxed/simple;
	bh=8b4Tcv567R/kaA9VnSrKtjEgbT3r1bB5GN0b0RJGt3U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=IO3Evii42JqTbLrA0T5P7Ca83jiuxeqxxqJcuZ3uQ1EtW9nr27LZK1fFwtUqDDz6H/xH3BCrkfufQiBotb9H3Su+tRM4Z3H7/0Ag+jXUZgopBHwL6/xgYMVgxrYy/9Zgm7DdQnxKTQ4iwVl7peDUJqojT8JadREHJpMlWv1KbJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cEmKfN8u; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-637e9f9f9fbso12353479a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 07:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759933074; x=1760537874; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l0Mgl8edq5RLxNSk2dSPCx05BkpJ5f+Ni5BOyoikFEM=;
        b=cEmKfN8u3h8Di2rKsa6FW2JDyYS+808R8+KEIk31k25m/lFiq+pWB7vICJaGrkrI0J
         KQ3ww/4I5Gt5Pl5jjvIpqH5KoxQBja4cK2pbuoU53L93XipTY/z8dWM1llKm2wfH9FaK
         FTl3qdMVD7CLZy5Vl2ttdLajEX5yfvOik3964gDqPivGlDvF1l6MnOwpMdcTjWi/lq04
         GFLKV7fIyqzFlei6qeTpdprqpro6W1vf0ywoFrt0hq0jlMA4neGN4WR9iFoSuPOqFrS9
         3QBQSjDfZ/BSdKGcZrCSY9euh3AEQzmYMcd0hJ1w7CEDA6SZZXXI+NrqUNjOwGYe0hbx
         qHwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759933074; x=1760537874;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l0Mgl8edq5RLxNSk2dSPCx05BkpJ5f+Ni5BOyoikFEM=;
        b=S0yTKGwPsb9vmsuHvmzPwTWgp3P13GMZ21PaljG47VEDUH1U376fOwfzMWPCDLnMkn
         P2TFP3kKPSWoP554HCnznrZrAxzOMvYuyTAsWi+LseqVbPu38iClqATdr5G6I7upZaEg
         ED6sY3SI2dMYu3beBUJCqI+3E2zT0JFaxs83p9jXvJctbNthsXjPhh4Stk/kxnMTF2Ze
         KYnyZgqfl2DuCFuxoMSwiTKRyVQjcrdliQ04JsCm3fwEzQS5+Q6OGsxQfRxq4/DI2Pie
         PNA5Yg/R2dEQM0SQIgmq5Al4o4MkSKJUlEH//X2520a6nR/U2uxKBWt/ht6084pME/oV
         42bw==
X-Forwarded-Encrypted: i=1; AJvYcCXeQlMPp5HbrSE10xl/ZmYwsuosCTz/8dnx3bFs15UYbozeG432SeMb1nYT4zDT7PWnk+ehB2/2nhnF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg/D6Mwg3t/+45jvnzZagCesJp4PJA9yk6DfA9AIde5HIKn7y9
	Q098hp66C3YUybWsYFZ+8RQclDZpsI74668FLIFFswQoZVY7tL82RsGsUGq2cbcOUXs=
X-Gm-Gg: ASbGncuiekkjRbI09HvBYxwTyHTNQC+Y+W/UjkZLltnq06ti6g81uWijJE8XBfCHsA1
	a9Uw9R2zFEg8RlGlj32yR0koP0LQenKdSWcoe2i5vl2oV6Tg+SE/GzYJGv0R+Ub6RK6o4biEnmI
	lJuhKMAiFlgJYKjKB6B4i6ePkxSSKdHq61KTyJLg70n+HfPvMLuRQfN0UqPayq+k1NjWvCYuE1L
	9p+0S56T0lpPFrWEwVRmiE3yQ/DnXGDL6Li6rwrg/pgIUSoyQ1mLhhEOadtVa65Az/XWXbcG0uv
	WKw1BiESGwruqG6CYLZTqCrqRDhHe7gVpP3yj8VWKGLNNN33abJBcXv5GESbcGadh7N8T0/5JOT
	XkqEYbsLLC5WsHMoDGA5QqSGgJSi7C8IYGR+vn9o/LvW+5aXA8qshoO+tVXhcHKUTqVD+55BZa6
	OBWQZUQKfIbrEQZca/dvUkfL8flxGChW6hwmVEKaYp
X-Google-Smtp-Source: AGHT+IEC+Khx6oHHPzc66dMG7HFLPgpbH+NvJ4gD7eI0FKThBdRGPlHYqDkbnKuylc90hYn877bNzQ==
X-Received: by 2002:a17:906:794f:b0:b3a:a16e:3db8 with SMTP id a640c23a62f3a-b50aa38733cmr389753666b.20.1759933074280;
        Wed, 08 Oct 2025 07:17:54 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9ea1sm1656287366b.16.2025.10.08.07.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 07:17:53 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 08 Oct 2025 15:17:53 +0100
Subject: [PATCH] dt-bindings: soc: samsung: exynos-sysreg: add
 power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251008-power-domains-dt-bindings-soc-samsung-exynos-sysreg-v1-1-ab41c517dec6@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJBy5mgC/x2NMQ7CMAwAv1J5xlISqFD5CmJIYxM81KliCq2q/
 p2I8W6428G4Chvcuh0qf8SkaAN/6iC9omZGocYQXOi9c1ecy5crUpmiqCG9cRQl0WxoJaHFyRb
 NyOumpanNKmfsic6XYfBhdAlaea78lPV/vT+O4wcZQ5+DhQAAAA==
X-Change-ID: 20251007-power-domains-dt-bindings-soc-samsung-exynos-sysreg-5dd349912b0c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Sysreg can be part of a power domain, so we need to allow the relevant
property 'power-domains'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml         | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index d8b302f975474a87e4886006cf0b21cf758e4479..c27d9f33d5a0501018aa3a52962a59257b723fa7 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -73,6 +73,9 @@ properties:
   clocks:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg

---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20251007-power-domains-dt-bindings-soc-samsung-exynos-sysreg-5dd349912b0c

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


