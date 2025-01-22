Return-Path: <devicetree+bounces-140225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8928AA18EDF
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E6E83A34E8
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E52210190;
	Wed, 22 Jan 2025 09:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dG7MD39L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11291F76B5
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 09:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539725; cv=none; b=I3u3tGtEO98xpPjoK/8bkmXu5F0s95POZi9b6uhc34vxsIdUxxiKfQuUF+woTJpenBapXumDxCDbXiIhHwkPC2cgdQPnMsDacNTpooH+onLlhbN7/2umUVNA8ljXOo7VwvMZVNanoDoEYnDO0wJ/FcjzhOhxR4umJfh2PAibyFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539725; c=relaxed/simple;
	bh=1p9LijuNlSQPGzFnzCwA50BP+pPK9y9ZrlhOfPbGu/o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AaM+J/CdmjRpdT+FmR8xE8FJRlL+0+VBJAxGefaGjLHzgfBme5AIsMMYudztrDnbEkZpSsbuxBqRkBfx6neck8F3aHmXPb4PjhUI5nLFpVMYxsOdHr+/YcNlJjxja+EbapDwd/u6yymSZPn/fDbI17mWSjBJkUfulLvt09w6+Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dG7MD39L; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-436a03197b2so46398425e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 01:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737539721; x=1738144521; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/V8YVhR3tM4id7z6YANMS0pFBWW27MU74/CKtczxu7I=;
        b=dG7MD39LHgPzXV4RUWIcKFJckgMd/YHWnu15UC5BVhDADhsMs0OLCzve9swx1ekjSE
         M0aGmR32AZGKt+rTKLWat7L05ubdsffBJh3Iy9dH7c/fQ0UqWbtuo2z4eewRJaeX5I0r
         007NEAAdrqcLG5ZOdA+RGBAJexFg/IjbLQ9kND5WKYeRy9ZQNfcvu1Awy2qVla8Od1dE
         ozs4CNt9M3GljXEaaJel3sJcOWlZazpzo+xzhgLtzCnK4Y8z8rWw3u+O1b19sNmTRj8P
         wP0wsLK/HqlEBys8mmVvp/nIbb3DmDSSddJOBSQmTHT8VU1Rq6s9lm/3L6tlKAl17WB0
         4xQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737539721; x=1738144521;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/V8YVhR3tM4id7z6YANMS0pFBWW27MU74/CKtczxu7I=;
        b=D3CSnUmriN8KW5oDeu3kUK2P65TNAWneTJdu0vXNO/hGH5byYgYAB+Vye9nQccw1+1
         9TgblPhf7IcKS+aDul+PeybJN7DahEnpo/tP40ZINOJxmBvp1nVQNsqBIbT2hvcvWUmr
         VT+7hfNE8glpqp6bW4FsfEIOcu871iBY/EFiN74ZvlqVnVgNYtrhCcjx60xkK8+rxdBJ
         2O0h4c1Pv6nKRIvL30DQ7J4MZ929XaMsAyCpQmZpxfcy87Hbvbv6hiq51I+sCZPs5Z5p
         KBg5jZHAwzHX6tsmwH6iCRmLhr5Qd6q4dQZ+7UnxZ17BgAV7JOcuWHoi0ki7vsu8KUvk
         4suQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzpwqT3yS815+0EbTgN1rmMg8tfhv5KfPZ+ZIfjBcwkC1dBirQdo2b5h+vO9O6NYC7XMa5znMPvFRu@vger.kernel.org
X-Gm-Message-State: AOJu0YypbVH0Y46+l2lpvCmbSAz5qxgXDpTgy5lxHxyR9Was6ab2mv+h
	iqeu3GDdFNHToLuuVz7Df3VEhJlBFzASL18q4jOKA0J0mKTt93XPqvs7Vpaw07o=
X-Gm-Gg: ASbGncsBJCoxQcP9aOO9aEkzA87tJuLsmdc8vrNwqFlbIbIoV/brWmop0Q6oaLSw+zH
	rEJDnEfSOUqv7ddrQmujCZArYGiNnJH+mxCrn/8FyW6YuZINvOGpQdpajNkwbfLN6yiABHs7jqF
	DoP7C6bENy8Xmegwgcjaz7QiUvfdAICvk1vpsm/IqdCQJ5wJr0isFaO1kDH0XVZWGmoAoJHrcZf
	+qyE/mRMQ+mzCTXHqcL6XViPOadRgj4RiDdHMSKHieK2FBizuARU9kJb7SHFI7JdIA=
X-Google-Smtp-Source: AGHT+IGTGVFAeu8DoS3c875eDiHS/m+NSDnxiyIxp+DbfiMd4780zIOfrrcuio5d52xUVNwS6P6HVQ==
X-Received: by 2002:a05:600c:1f10:b0:434:ff9d:a370 with SMTP id 5b1f17b1804b1-438912d1d49mr210346205e9.0.1737539721241;
        Wed, 22 Jan 2025 01:55:21 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31a324asm17834485e9.14.2025.01.22.01.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 01:55:20 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 0/3] arm64: dts: ti: k3-am62a/p: Add r5fss nodes
Date: Wed, 22 Jan 2025 10:54:48 +0100
Message-Id: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGnAkGcC/x3NQQqDMBBG4avIrPuDk2ogvUrpIjVjO5RqSKIWx
 Ls3uPw27+2UJalkujU7JVk16zxV8KWh4e2nl0BDNZnW9C0bRpmjDggFSwy+SIb/WoPts0SsFnx
 FF7h/duLEOUs1E5OM+jsX98dx/AGatNcHcgAAAA==
X-Change-ID: 20250121-topic-dt-updates-am62-wkup-v6-13-4d15b4e9e996
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1014; i=msp@baylibre.com;
 h=from:subject:message-id; bh=1p9LijuNlSQPGzFnzCwA50BP+pPK9y9ZrlhOfPbGu/o=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHCitX91nsyjw1QIeC9Hp0itPC+6z31doZVJb/S5Dd
 YfObvvtHaUsDGIcDLJiiix3Pyx8Vyd3fUHEukeOMHNYmUCGMHBxCsBEUhMY/qna7I1srnpR92VG
 2cPnUZJK/DPZv5RcYi3vaC5xXcSVKc7I8NkwqeuZ3vwfb5e+Ldr96Iscw7kb51IkNaN/Hl+882n
 lERYA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Hi,

am62p-wakeup already has the r5fss node defined, but it is currently
missing from the am62a-wakeup domain in the devicetree. This is added as
part of the series.

For am62a and am62p starter kit boards the r5fss memory region is added
and referenced for the r5fss core 0 node.

Best
Markus

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
Markus Schneider-Pargmann (3):
      arm64: dts: ti: k3-am62a-wakeup: Add r5fss
      arm64: dts: ti: k3-am62a7-sk: Add r5fss memory region
      arm64: dts: ti: k3-am62p5-sk: Add r5fss memory region

 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 25 +++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts     | 11 +++++++++++
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts     | 11 +++++++++++
 3 files changed, 47 insertions(+)
---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20250121-topic-dt-updates-am62-wkup-v6-13-4d15b4e9e996

Best regards,
-- 
Markus Schneider-Pargmann <msp@baylibre.com>


