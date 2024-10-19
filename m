Return-Path: <devicetree+bounces-113283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A16FF9A50C1
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63B292846F0
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0368C1922DB;
	Sat, 19 Oct 2024 20:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eXJ6W58i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCFA191F98
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370387; cv=none; b=JPUZNP4xQ8SPFTfL2MCCzG1lw0KZ090MatEaHTDwX7a41tlRqOyEtZ4KE4Jl/5ktQabgnNifo56lYTaz+DbdOBIbJ9wKWmZocR9FGOfs/eTiUPqPUfcK4MJp70lvbd7AVCK7gXIBitPIWthdW70a7joKFZqvkJ0Fhnv80k0d/fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370387; c=relaxed/simple;
	bh=Mj0Md9I4fSeyKwvAtuvSLDQzprkv3qQPZbes+ROMVbQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ohp45XzZc6/VZmM98NzxOy6e7nz9cLMdVkDiZzeffQKCj2kSd0zk+8yRrPVUP0j2Bn0zTpxCEORWhCCSSJ0/4mUqiJM7JNM2obsl5A/fb6l0D/l7ICdE57je3nwJgZ393BDtKkOXD+y1zqD1OE+UWpF4z+TEYo9OCf1uTPPihTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eXJ6W58i; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539e3f35268so1195394e87.3
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370384; x=1729975184; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hFgpgpsGiP4+DQBthLLgLzgemSHp+0cBH1ixssAB0HI=;
        b=eXJ6W58iAgg5QtgWo+PFZnnZwX0U0Y5B/QZHvcMUhm/0yIIM5C3GU7ovKedRkWB6m4
         eGavnsazzJXnTnRo8Uxe4BIvAVPQ837OJVmH6QR6oPwCUrYqaVnj9ILzQNzqNLVtbOHw
         qE1JM7JqEuFXwm9vmJYgMgstwt8qoUhTqdSXixY+29yepTmBmm5/7lHxT+D6LEQQQdE3
         +DQRWvXJsta4mFN6zQT3wED2BnVdNr5NJphQG28CG4Y4CZV+DtT0T+0HNRtB8f8HvUdy
         +dA0QfTCulxpLC/GnPsMYic7iZbHoaE5IKsKfks3alQ6kK9bTz92o281pXpVzOVl9aFp
         HIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370384; x=1729975184;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFgpgpsGiP4+DQBthLLgLzgemSHp+0cBH1ixssAB0HI=;
        b=Hit5yTJ0e8BTNdTogeauiHlNtfV28gOP0qWGtTrdT9QYrc7B8ztbQ8pAvwj1tMChnG
         NC4SXh2ZCPZgLzTqP+NmsZBq3z+vqL5VIg2zoquLkptNOpIYTKLbm64/V6Hytc4tt5LX
         BPkNQPbPUR6PosKggPouxrEkUlfszbUOqhJWxQBegbWe9PcXQRwhQtlLN3zfkf2Sw0+r
         9W9eUUOi+RueMjBoi+XAJsUVQZGu+2bhp51skY3Co/6xQWiyZhEMPbzdtks5yvpOk9mx
         p2i+kJDo9JUj0Ho68nbp1PQ/u9uZbHFaWnkOK7feNPak6cQJ6SbAbpnJkURQneh+/WCd
         P+nA==
X-Gm-Message-State: AOJu0YxrWT+MEirYLOwFhIXn2ZNQXCZq9c5snWRIuITwkDf3KhBSY/jN
	Jav1cP8M5beGQ1kA5avCpgezjwyaU+QlHYlZPl97KQ7KhwBldmBoSmoFrKjOYXE=
X-Google-Smtp-Source: AGHT+IEE3/vstVep3opEXWJshJOkch9o/khCX9gDHJs37v6aGz0dQUwzLr6qqu2eqi94kHl37XAuIw==
X-Received: by 2002:a05:6512:b08:b0:536:796b:4d94 with SMTP id 2adb3069b0e04-53a154494fcmr3516043e87.41.1729370383903;
        Sat, 19 Oct 2024 13:39:43 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:42 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:36 +0200
Subject: [PATCH v3 7/9] dt-bindings: vendor-prefixes: Add Genexis
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-7-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

Genexis is Swedish/Dutch company producing broadband access
equipment.

Link: https://genexis.eu/
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b320a39de7fe..43d936361fdd 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -567,6 +567,8 @@ patternProperties:
     description: Gemtek Technology Co., Ltd.
   "^genesys,.*":
     description: Genesys Logic, Inc.
+  "^genexis,.*":
+    description: Genexis BV/AB
   "^geniatech,.*":
     description: Geniatech, Inc.
   "^giantec,.*":

-- 
2.46.2


