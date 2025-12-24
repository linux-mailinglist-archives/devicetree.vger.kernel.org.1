Return-Path: <devicetree+bounces-249387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BF6CDB80C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 567153038319
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 326572ED873;
	Wed, 24 Dec 2025 06:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZRgIe4fb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34068304BBC
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766557702; cv=none; b=srgWPvIskMx/BIlwREeZ2pTx9oxFY5XyCKNhUX7OFaMJnoSl478R1O+aK6KoejFpBtvejjNihm8ZYLxiqQVQlXp81yc6wyKf6Sxvt/D/3g6+Vu9dy+q2LnCkO54Hks2ovLnOJp1sPt4/s6FhB/T2w3lEnsARrygB2Ww0titfPWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766557702; c=relaxed/simple;
	bh=26RMDx29DUf5kUACycbxQrfR/9oPNltu4HoYSs4eW50=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KkPLGtFDIZXrQ1V1n48g7uQP/XJsG3r/aLlVLC39mmrx6T5I/hg1+Yp62qUtXIVkGhE6y50dlVgCDqbgJpLwyWoqvJ8JKVvyWsIKfan9CxI3qwwZAkXnIobqdRBVVumtqNY+WM+YobhCBo7mHkpHvaHTj113WmrwpTTd1sdE43M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZRgIe4fb; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b7a6e56193cso935243866b.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766557698; x=1767162498; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F4dAiFKwTWptkfRy3Dd68537gC9f6NFHvDz9Jg6ijxs=;
        b=ZRgIe4fbcqa5SOGXBAg50+d9cSrG7Q+kPXK69dNTvWFpjrRq4IaBAGLKX3QIY4UjBA
         RMYtNPR0Asq0S+1AbkKUgJd/b0HHBYV4/twy6Iyvkq4jGCCp7lP0zVvDu9ptOsVEm33C
         wJHmudJ9ZOcFIDPvNK7sSMTAKchrn2DPSmpC2xvUSTyGimWOXxHZHN8aHhJ2TyljIJ+b
         Gf6Ciw52vSBjzRce3OOtDoSzDrbhUMdmu36dh9mlWJv6boJZVqvi9Av4laH4ncMVUuQL
         iRdUXcfI+TT5yMCW1qUgEDZ5J/fDvpShGHXkLMvoge4zj6km6rnhsBlOLD95WOMslBUj
         8tkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766557698; x=1767162498;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F4dAiFKwTWptkfRy3Dd68537gC9f6NFHvDz9Jg6ijxs=;
        b=vAgNiLSAs9PgZJb73LOxk465v77WkfkDdyssGIy/Un5P+CEERvohjJXKPukuQv8FAQ
         nqSUTW44bRCugbqTt3RF7W56PUKTR2GJwfk4vig81d6NbKGY7/rGuYTCPEEDH5ny4ldR
         zTHg9aNbuwUlfoJvXS9fDf9RYDGLG0lbfwBSIJq57Jw/s3dcKcgLyys2VBK/IrIfc2md
         6cMVG43UeZ2GQrgm1RmdxNlNQpB6T99q7XAA/l1AnVDaikl3kgpYbflXVWzp2Md4sIUi
         6y1AvEwbx9Se34ynQmrQdEXL/9Ae9khP8idFxRuNm9VQw6wyCOknjcSlvPpogRyzNqqj
         fv+w==
X-Forwarded-Encrypted: i=1; AJvYcCXOoAtTWR3KaH5IAHKZLdIhS7f3P1Mbtv8fEtvpUrnWxzJZfWXaapXk9WHKngIvJTcCgretEAoPl72E@vger.kernel.org
X-Gm-Message-State: AOJu0YwnG0GTDozoVLOASLOFBHHf2k4Q1X3bcm1Zh9ccmmL29SCX8EDs
	Os9iHhN4uX/SU/erU894uQjAH/0ua6QUWsWso/jf9S7h2gTN+ajRtwPP8k6d/owRxCU=
X-Gm-Gg: AY/fxX52cXB30Iqbz9f3326xBle2xk0SOdxi1lytEmcdIoYuIGleQLU+Sn3KAxCsiOp
	9KKd/v3gUlsY9ilt1gumHE9Rjw5/YENr1eSIP4TH8adqTzdGvMRWTx1+s1MRRG1P5RzlVcx0ePy
	F88IQOAEoXHNDwEcYYtTJ10iAn6SKi3LIJzHeDr9qyYGlX0M6KL18xz/gJETB+v2wXEteqmOJcg
	3xP+6K3zJeWP36AliizTNfmpZDjCK9ZeEMRkbNOtgA7DX3pRSISrE83nQkPwuzKpUL7UU2uGSDk
	SvQLlrFvDLBV8oEM7oTfBfX9ZZ8/2LB7n+BRz03CsOD8IPHxE/MwNW7UyJA9jr/QxRi6u4Ahew6
	9unh0LYv5mmrNliEu8/zByTVuCcNWGi+GoC+hWEHsKwUzTZq7DFRCOuhGRtdv97ba+zZv7sAaea
	r2i++P1VHFo0gW/fadODWGG2b175Zoh9ilRqO1QZq5O4k2tYfPho8bHDU4EEmGCicYAPpf25lse
	e7law==
X-Google-Smtp-Source: AGHT+IHpTGeqQrqbg/3iUSfWdW5r9wslLj0+p+voKM+vw9cuuETMRnt6TZg28rR3+DNHjPB2uu4z2A==
X-Received: by 2002:a17:907:75fa:b0:b80:3fff:5fe6 with SMTP id a640c23a62f3a-b803fff60f3mr909610366b.9.1766557698300;
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cc52sm1643366766b.52.2025.12.23.22.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:28:17 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/2] dt-bindings: phy: add power-domains to samsung UFS
 and USB phys
Date: Wed, 24 Dec 2025 06:28:16 +0000
Message-Id: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAACIS2kC/53NQQ6CMBCF4auQrh3TFoniynsYFpVOyyTSkg6gh
 HB3K97A5fcW718FYyJkcS1WkXAmphgy9KEQbWeCRyCbLbTUlZLyDEN8YQIbe0OBwY7woGApeIa
 hW4BNz1PwMLmfXYt1hRoNlheRP4eEjt57795kd8RjTMuen9V3/bc0K1Bga1lKq07GVfXtScGke
 IzJi2bbtg9HsAR36wAAAA==
X-Change-ID: 20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-fce95e2eae38
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

Hi,

The samsung UFS and USB phys can be part of a power domain, so we need
to allow the relevant property 'power-domains'.

This v2 is essentially just a resend as the patches still haven't been
queued.

Note that in v1 the patches were sent individually, while here I've
folded them into one series as they go via the same tree anyway.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- collect tags
- fold UFS and USB binding patches into same series
- Link to v1: https://lore.kernel.org/r/20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org
- Link to v1: https://lore.kernel.org/r/20251007-power-domains-phy-samsung-usb3-drd-phy-v1-1-3cb5f80a72ef@linaro.org

---
André Draszik (2):
      dt-bindings: phy: samsung,ufs-phy: add power-domains
      dt-bindings: phy: samsung,usb3-drd-phy: add power-domains

 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml      | 3 +++
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 3 +++
 2 files changed, 6 insertions(+)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-fce95e2eae38

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


