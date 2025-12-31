Return-Path: <devicetree+bounces-250822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E0CEC170
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 15:35:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F911300A3E6
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 14:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A228F26F47D;
	Wed, 31 Dec 2025 14:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="V4u3+2af"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28B4266576
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 14:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767191745; cv=none; b=shs6GXLpRuZl11BsMB55KLJHWjSoS7FsnvWO0ohH18zqH1ijYFoU1HSXG69w2l90i9YiejPUY3RkhxpJZzZ/oHE3HCi1eTgK0Acu+MNMJYUZQABb5RQC+PlOtd2bF+9iOwursgmH5U8w1q0sATYzkdAZ+G9/R9tCo+rgn7He+28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767191745; c=relaxed/simple;
	bh=AhVg3Ya4t8+09xhLV2MFKHi58VKUWxRFzPDeqNG4M/g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iw5rsaM6+68h2KOCGQ0BBchDIHvJ7dX5MA6rgNgj5TEmor4mwDH1cHAY2J1MHsYTT0BcV8aW6QllfPWdqcPHYnjcv5jNEdLqoNyMJ+G0BcbV8aRGslwBb2N9hPIJnJssvOAHyMOQVvV/41YJVKB7QK9UD+EF7lT/uRVYCusA6Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=V4u3+2af; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so85726765e9.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767191741; x=1767796541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zJt+Vk5CZtSda+Qv6TxKnOwmdavVEtubrUrFCi+hJhQ=;
        b=V4u3+2af6X/1nRiVIEId6GMTTjDLPf9tthl+IdfsuuDMJNBRKFoVwne7yLRf2x9/n5
         EOriUGXADj/AObdPJNybqK1XtXiH/CvwDix92EKWuop77pWTb1CufReE2KPcl7fCPQvY
         7XpMlGdv4rn1qMuaxPxxJYhWKC2ubJcMZLXnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767191741; x=1767796541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zJt+Vk5CZtSda+Qv6TxKnOwmdavVEtubrUrFCi+hJhQ=;
        b=Bf8NkThyZf5jWYBwzns4QnAIqq+EQnWWMEswwrjp57G9TwcHdgkC4i0csMOoGZr3EQ
         ytPCQglRYgOitpjZxl6RhadFNQaKjpcgQhLak1x6gS/wnbQ58RJqef861bVT7c+PyaKh
         o+Xelwd++et4JiRFZTN4SWqjiIZXLnJ5MVxg9798M8pPqF2IiYsGdyQDG7lGhdlLWU1y
         tGv+pcqjpbf1Znl69JunUMg8Sh2oJohsZrz4GDXHCMlR0movhcmNAxhCJeq2AsBgctYQ
         wvZrSAS6tMXgnVf8QMNlinKpsT+ltJzszoaVKmgM+hGCkjSxnrexDCY6H1GKjsyOA0Jd
         goew==
X-Forwarded-Encrypted: i=1; AJvYcCVghK5pBSXMNlquJUPfk4WA6lkpUl9Xxq0/mG1xcoSpVJFQ3iJQy3dBTO81XRwgTFkFtGsR2FgRnry/@vger.kernel.org
X-Gm-Message-State: AOJu0YxwJ4bGCtxPZF7Vbbp/BrCNDfvyNjTw8UIlL+dasuVM2+HxtQ8G
	BySVN426njjBf7kz+cSVAXY8/PBBlA64v3Jb38ljqyAr1eOpJy2se17gt/YeXvt1pQ==
X-Gm-Gg: AY/fxX4YS+yc+3CxiD+GG5I6CoQBhr3IddHpn0Lv0Do61oRuoEz8XcQ3AIsvfSH3Ikl
	c/1I/XI3DH3mpiEv7pINWWo5/odfSEj8eFQ6FFRW2zG8GGH8f2dTtfL8HrPfqvZRXRs5Qp741Kt
	V/6pHAvK0khsksSBVhb4vhNuqO7UxFBCYgQfhKjz65I65SvGITb6LAy3EqSfTD7UUiahhuVrcEq
	vDw7ztZ5/UxpxwE+DJ19vE0bLG0+RPbIFOJCwG+6ASU04wKmcRSh+WE5WgSVGdvUqcA69YcoHz9
	3LwcIcO5WyVBsbY88Sb5TvitpZDhz9boYtWyTUMElXO4K2swLGoTK0Is8qRQN2RNx0MopEcwFFT
	Q2yxvSN4u8peWo1G7upAcAyQE/mY5zEH6tUgt1lvw4Yh9penISHhYPRryBpzr39RVv4HkcygwnA
	NRA0PpU685VrOrQlpteGDLtw1F5A==
X-Google-Smtp-Source: AGHT+IEAuByjLQ/pUsJ9uqNDD9bJhs+aoCV8W8RpPLTDvlnGTrKTtFFsW+clPesgyA5XNjr0o/YF6A==
X-Received: by 2002:a05:600c:444b:b0:477:561f:6fc8 with SMTP id 5b1f17b1804b1-47d19549625mr389224705e9.5.1767191741123;
        Wed, 31 Dec 2025 06:35:41 -0800 (PST)
Received: from balto-ws ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4e91sm630300935e9.13.2025.12.31.06.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 06:35:40 -0800 (PST)
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>
Cc: Fabio Baltieri <fabiobaltieri@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Input: cros_ec_keyb: add function key support
Date: Wed, 31 Dec 2025 14:35:36 +0000
Message-ID: <20251231143538.37483-1-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi, v3 of the cros-ec-keyb fn key support, just few tweaks from the
reviews.

Changes from v2:
  - renamed the dt property to use-fn-map, dropped the example
  - added few function comments
  - added a helper for obtaining the fn code
  - reordered, dt patch first

Changes from v1:
  - change struct to short types
  - refactored the fn key handling in its own function
  - changed props to use the google, prefix
  - reworked the properties to use an overlay map rather than a
    dedicated one

Fabio Baltieri (2):
  dt-bindings: google,cros-ec-keyb: add has-fn-map prop
  Input: cros_ec_keyb - add function key support

 .../bindings/input/google,cros-ec-keyb.yaml   |   8 ++
 drivers/input/keyboard/cros_ec_keyb.c         | 136 +++++++++++++++---
 2 files changed, 128 insertions(+), 16 deletions(-)

-- 
2.52.0.351.gbe84eed79e-goog


