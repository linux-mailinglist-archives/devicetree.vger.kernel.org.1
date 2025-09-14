Return-Path: <devicetree+bounces-216903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F43B567FD
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:45:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D08B168568
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 11:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A08F3258EF3;
	Sun, 14 Sep 2025 11:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DMmpQjw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C013825783C
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 11:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757850306; cv=none; b=JHGf36Teborh0pgmqTPQYYEEALo/UeMg+VQQq8qXPMyxq9QQpyFk0Hk0R0qlLvXOxrO83I9EbTCXxkut3lenuCl6pjR9di3k0j9svwKj6WgXuTwpQEdHn57tDWu9WblrnSEcDuGwFZT477k7gWzelUheLM+9UTt0TUo8r2TqDVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757850306; c=relaxed/simple;
	bh=nnxWlv+OJi30txzuvQA8yOIXIEYLUlnbIbZsAeav1ZU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZPsQUhOqM590mYqRJDnul0rp1Umxzf2h3/XJ1jfxsur7/XfUDgOIzsKjGjAAmnzdQC+OV0Xx63OqsvQkGXaZdXFRl4ZGcXA1JJkbMk1v8fdra1WJtX82Nwkd8OI581in+p58eslEXFNoh5f23nzLyanag2dCIRaz7ftWLI55WkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DMmpQjw5; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3e8ea11a325so1071724f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 04:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757850303; x=1758455103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1jxxIyK9Ih5zhWAbEfQ/SUSMwO68aineNys1TdCPOI=;
        b=DMmpQjw5WkJ/wPCKXgTmLTpmIyFSS2UnR/CPcQ7BqP9O7YSaT7fwfsAhWnKp6vVurF
         5xYg5QD7ObwVcrMVXzr+Jost8bI5drLBnISACaYGXvMyISOwJ5DXfO6zdolmbLhHsj4x
         2nz68HO3UNunq3ZSsiGFbhzxQ9jDNRlg/jsshfhsfute9UQhGuFa3HzJQh5Hgk240Cg+
         q1/Mtai3iXDc8UGgWpQq9BdxIYZ7bv8u1wcSVu0DCSIRM8CdImErvcrZC//GmdVhMZ60
         l8McpjVNp6/ymyn5AXmfVYONdMGezd8pDXNJx4JNYkEEb14BAujlg4NHKNgPJ3N719x3
         crzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757850303; x=1758455103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f1jxxIyK9Ih5zhWAbEfQ/SUSMwO68aineNys1TdCPOI=;
        b=vt+0nNM8hson1KUhwiief7bcb+3AN/wEeULq5WBUPUrVeGe47A6zE4B5Y8rFRnZ45m
         qMnis+fz6wH2SDPHizi31TXx1Z8E7Ua376iO2mUrW9TEp5h4WGqj1mbhsaIaYGa+bSN9
         AENOFIWGW1zok9t5Ip4AUtotcLHi7KOUmn+YLBWSKoOqCc92TuxjwqiCtdFcd8fLSuyp
         6v811/nm+4SjiGetsVWG4p21isheJbPaLwns08syR0YOQVoShObvMyMGJoAEEKeTlb9z
         Hi6JcrSQ2/o4/S6Yfra3/wCKoc0icOkznf5zWEuJZqMB3RnXN98H2IgKiLuxn3RbhMfW
         XlHw==
X-Forwarded-Encrypted: i=1; AJvYcCVDx2ncDyhAFRvdyNb5wfln0OrFo3rVR189meqMAnc4fF0XVdJsXljAHDpo+jjGBL5pU8X+Ycj4BbCF@vger.kernel.org
X-Gm-Message-State: AOJu0YxTXs4lmkuyqA/HJveeRK+K6GMcxIfbgU4pNF/zhL455lCtARbl
	lcxepKRUeLseBZUMnv+MK+oT898RsxbtNnLOsISJHhUX9OU2T+rdint1I4Fc+Q==
X-Gm-Gg: ASbGncvHecZt5YMbBd776v2v2ShbrqiO2bPQL+Hca4Jdxhk1Sp+iv6VTj+eL1MlBn2D
	FMQsjp9uWIwdCBB5AYfaERlA5fylJaEVMbjWmfcQclZfitDGp3ct1iJ5ZqgMw7l/pCCrfMnJUQ3
	K8Ay4+JwKZ9fWiyKr+Inc55PN3lAWWC+mUaU0fq0k61YzcgHt2bHfkgUnc6SJg0VZSjbIJpmzDb
	A1i0lFSqMmfemXvDJz7Z2Mg/P/wizhvF8kFNITUI7aY625L8AnnGSiuDoA7BNhte5jwKKl1dP1o
	dRY/N1Qou0GHDQsztn9NHKTORcClHW7+lNP8udivS3qQGQIVHO8+A+q9zu/JwqcokKf9lMw9l3B
	IV6bPXYb/hNH27MUJJLrxiFQOrpIsZzk8GRCCQiWMWyxKdJhM10IY/GbXcOA9aG7rhOq6X07S03
	RFRyRw68Wm
X-Google-Smtp-Source: AGHT+IE1BqJhX9iGCNG9Rwq5f7XlNdOwfaGHziUaIwwwVkNizVz8cQGq1fatGEsUFHWt7rHYFPM5cw==
X-Received: by 2002:a05:6000:2281:b0:3e7:1f63:6e7d with SMTP id ffacd0b85a97d-3e7659ee4e1mr10069982f8f.45.1757850302860;
        Sun, 14 Sep 2025 04:45:02 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ea21a6e4basm1503252f8f.11.2025.09.14.04.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 04:45:02 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: pinctrl: samsung: add exynos8890 compatible
Date: Sun, 14 Sep 2025 14:44:55 +0300
Message-ID: <20250914114457.2610013-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914114457.2610013-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914114457.2610013-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the pinctrl compatible for the exynos8890 SoC. Let the
driver handle our clocks for pinctrl as well.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../devicetree/bindings/pinctrl/samsung,pinctrl.yaml         | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index de8460856..ffd3e2dd2 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -55,6 +55,7 @@ properties:
       - samsung,exynos7870-pinctrl
       - samsung,exynos7885-pinctrl
       - samsung,exynos850-pinctrl
+      - samsung,exynos8890-pinctrl
       - samsung,exynos8895-pinctrl
       - samsung,exynos9810-pinctrl
       - samsung,exynos990-pinctrl
@@ -136,7 +137,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: google,gs101-pinctrl
+            enum:
+              - google,gs101-pinctrl
+              - samsung,exynos8890-pinctrl
     then:
       required:
         - clocks
-- 
2.43.0


