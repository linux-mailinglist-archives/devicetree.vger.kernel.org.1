Return-Path: <devicetree+bounces-216904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD3FB56803
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:45:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 668033AEF58
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 11:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A322620E4;
	Sun, 14 Sep 2025 11:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eMX26hlL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D4D2580F2
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 11:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757850307; cv=none; b=Yg7aphW6jRQXnYn5KddCheiernVOEP1kilyFZ5w+d5HlXb0/U+0qY5qhrEQ1rJbnAE1upYlhp7KENlzXZLGe638O7KeB9wWLjjMgyDmpzx+30sn737pbgZOUUplvnDLDUgjSaz/Av3XDuncVvKKxjotL2wpXFnxnASdo0Kb4d8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757850307; c=relaxed/simple;
	bh=ogSWVbPDpjLlo4b+vc5rGJJ9Kt1VHCymn7/dpTScrdk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PB8oMWf0oPBi1lbS98zG7G/shr1UPtbFC2yLLWLLE2P1TcKab/E3lWPheEoA9r9rC0fgRpE3B7ycDg1zj7Oxwl4p7beL6eENjfgBSPOxhWUcbtDi1sXBYtl1on7REpiovlGA+J7PkI30aZBXqk5lE6Z8NJV5iFhgS2n4gAoC0hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eMX26hlL; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3ea3e223ba2so247509f8f.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 04:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757850304; x=1758455104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXrnMo8AcgyeVtAkkZty6h5coZF1I0BtRGtERaxF9cY=;
        b=eMX26hlLeMJQUl+9JAc8GKmh9N274eqJ0STTZv/Rcn4W0aoyZxkXwkUYVJ/fnDiPF0
         GHtBxSbog6J7RYYqfUe0i/mHu1fxAAC0LOEmkT2mb+Xt+4yWTRhtX/n1WeON4fDLMCgO
         4NbEaEmy7y3QGXsPVf8lAaHaGDInfVOqUXSPObMJKZSha4R00p2pt0f24ZEAngjurKjd
         6V/R0ZpZ6kqe8KBLb/MIEhytbn2kck02y3qjZfUk94pRCBHloCT2VyF8Q/NyaoRzyIjQ
         CoIhb109g4Zm07nvv6JRJoOt/cSFzXq20kIkkeOLYJYKDlL8536sdbeugzEjD6ozSV5L
         RvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757850304; x=1758455104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cXrnMo8AcgyeVtAkkZty6h5coZF1I0BtRGtERaxF9cY=;
        b=kTUUmPjcj7EhlLMWHlXeeibuaI/fTaBjdtTBEka6by4k5c2q3bAAaNqMgv8Oambgml
         mmqXXwWJmtpYTOvq8XGDC8Fe+K8g8f3/jVSyDJG7qojVZIYNWz2QNxeRpXpbHVQXcPLc
         0OqDw8hPSCy/QQIGXghMC2qx0s5xXrf4NYeGYYN+G35YUgoa0AoICXKWmPSJI02UOdrN
         FLWjFRPR4l6bziR1KwR+xwiAHpZFryqMcF4Wem8CReNXYYC45PNoHKccqHuPvUk3IUYV
         tW2DpiBsq9h0GcBD5B33bB158mzUniXzXePdCUOgA16QaZbDSE18qbpo33eKEwS0FId2
         ueLw==
X-Forwarded-Encrypted: i=1; AJvYcCVclEmP4tmPsjGXxXWGmDMenyDCuyhnVhu3ztWXuaz/OZ7uZqEve1pHjol8QRF1IlSHIhirq2guGH3n@vger.kernel.org
X-Gm-Message-State: AOJu0YzUOkE63RQlnFTdfZhn+oV72VUm+Kw8iCAVp4entKj60lDAttNQ
	HXPWBEdvHd+uFTMJBnu708y8jv42sLGxpz3r/V1BnV8cgzYl7Gzjtw+14DQy4A==
X-Gm-Gg: ASbGncvH0YREnL31R3vy8QjIPiAemfuYi/AbgZzpF21/w4KRw5OHUkBf7ot1ScOEwRi
	VY6P7ooAT2HLoLze/a5UdDrhdjNORqgHxfst3j+Ga2dAKGA+zjJj7n72qR59vmE+44Td6yNRYMs
	0ccXVyuN+sYFD9jU3kngJoIz0WZ/FHVDkTCIfLCW3b4Dwbj9/viWodr7AldviRbcynp79hk9tzT
	WbFgKdm1IoWHhHxVoC6iVY5WnEnCJo2oJrhN76sYeodSFDdLARCyxC9qd9uPGQJiu5XtVRYcJfd
	ndb9D7HBGGbJPC+1sBgNPGHyG7clVR067t1+0hhqnwUtvTEjN9R05BfiYAy/WukzDH5lkpUl1f5
	XT0WpSdkQemXPZ9I2A6iSy9I+hcytQs7z6YIevSF212zuBmyA8FLvVD1TkhbVbplqQQDhYiLOAi
	fR6EdVr18p
X-Google-Smtp-Source: AGHT+IESZdZImuHvupg31XiagY9dmwJfZhjEPnB8mK2o9JeW0P+8+vI82HCX5Qrgtqz633EQ0Ul55Q==
X-Received: by 2002:a05:6000:2284:b0:3e7:47c7:9d5 with SMTP id ffacd0b85a97d-3e76579652amr9007686f8f.21.1757850304075;
        Sun, 14 Sep 2025 04:45:04 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ea21a6e4basm1503252f8f.11.2025.09.14.04.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 04:45:03 -0700 (PDT)
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
Subject: [PATCH v1 2/3] dt-bindings: pinctrl: samsung: add exynos8890-wakeup-eint compatible
Date: Sun, 14 Sep 2025 14:44:56 +0300
Message-ID: <20250914114457.2610013-3-ivo.ivanov.ivanov1@gmail.com>
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

Add a dedicated compatible for exynos8890.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 0da6d69f5..dcd96104c 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -43,6 +43,7 @@ properties:
               - samsung,exynos7870-wakeup-eint
               - samsung,exynos7885-wakeup-eint
               - samsung,exynos850-wakeup-eint
+              - samsung,exynos8890-wakeup-eint
               - samsung,exynos8895-wakeup-eint
           - const: samsung,exynos7-wakeup-eint
       - items:
-- 
2.43.0


