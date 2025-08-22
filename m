Return-Path: <devicetree+bounces-208300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63404B31FC5
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B8B81C820CC
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B8F251793;
	Fri, 22 Aug 2025 15:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jAqiwaKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC4254AE7
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755877602; cv=none; b=Tb3qjHbCYIU2IVn6bT9TOe8jx6SGiNwVqFxTGijtTmODGuyO5UeP3mAQjK0+ny94Th4YR1NyXegdg9oYqo5+VGw2GpaLTBye598iIqxsCiLIoPCvGSwC2gAjDKxp46Ln/HZteFhBhWcIRYbASv3Rh/a07yhlEY2T+WBVyX8rpts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755877602; c=relaxed/simple;
	bh=b9+nY0hCJ58Vi4rp0ic+HGnFWZ5w0z8S08lgMLJAn5A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QgjiOV2y9pGPza9Nzp9nJ2owLQw3dWahMTMLx7XB4mYWxkX+7DFk/SHpm7klvhpqGnngztwtFO7987+9sjLU3Z2aA0uU4YhGq9bdqx3+uF1UhTn3xc7fsQOGOpDM7kezQOK1bhUgq8n5M8QfGgl6/wstVxD0iIgSLWAHVy3m3SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jAqiwaKn; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-333f917a67aso19280791fa.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755877595; x=1756482395; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LMODva4Wx+u5k/n8I9hDvFpyxaAAOgTPse/Q7Fgk72Q=;
        b=jAqiwaKnMoqMGesUXRNHQmuc/R62xotdlacos/XWw3bGmnB/TnWjOZSRDyO2Wr46gw
         AcOpce3GTt1tUtD/2MGg9KqQoeB91Wi5XfkzS8YNEXT5QYNjGenuENwrlFQOZbdJCiC9
         J7bYmLWaVaF+mTgsqBVMvoitz1UHeBfGhfwDgV7kCpCTDA1YL/mBISACM/AyWKfpEREk
         QllzR5IQnwSbxMiFOqJbS6m4Tuj17clgE7EjWjcoWccyXhYkUJa5gLEklDNORw53RpKR
         TYw/pH28RMHqAKmrBn8HEIPYbmtiK3vrsG53k91SOT49MdmsvcYMHjJRv/wnYm7bZSdn
         otXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755877595; x=1756482395;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LMODva4Wx+u5k/n8I9hDvFpyxaAAOgTPse/Q7Fgk72Q=;
        b=JyB7UNgft3vSBOqrf2H/3RimmTHnrdAWhu2NtaudvY1iX7HHOmuImEjTQ5ukiHptRL
         O2rYHivCACmPJoFcndJ5t2T0iNYMIXldRp6PTAxzYq0a95PFG8iW1K+u+6zHWRfbrCn/
         QPF5nN1qeRJCOpB6BX541YtsXIA5V6z+ftL2wRvCuG8pcwB1WUJ5lferxpA8qXXZ8bbT
         BjBl5ZziLR4HtEQwlMKlIterZgykslblM23KN6AkOvoBGcwQdkh8Hms26Bha54FBCup+
         bIpenL/4Rm/NKBrPR6hMjnh91+dkig0MS+7QyG8KVxAsdVbAbcspwongTZv2rj/kqtTT
         D98A==
X-Forwarded-Encrypted: i=1; AJvYcCXBbjH/3FhxjP7f/taPVhkdK9qMAbwQ4jXTugVbZM2JCcOJh/oJlYVXqG6s02vmdisThGY/7v8qSnd9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx984ADungZDcEau0U0ChLhL0Txuv3tV32qlab1MZLKOsSjDXhK
	IAm7EL0DASBmz8psQrz+jq3rq5Afuw+D/7amh3KkKcXeEguBRy51uwIx9a4o8431cs7ndCfxCoP
	h3XMQHms=
X-Gm-Gg: ASbGncssGSw56LcMFSpv0xrWp9th4o6iML1SBCqvUa65Lb1IcPcFh+E4b4z3jI6MEHC
	WZcv1oeBikAZ4ttdJcHLxZaw9xE9DneyenAej2GDNvZpkDYbQ8ONjNrgi2UE+uV2RvwoZLoqP0k
	CJmTzZQpy1ltx+B/VzZvNF7lwdBojDfpcbhukyzVZpvEjjYr/ZEULelyqfgtHFdMUnTWDMFQ+4o
	VAAEX8q0ssgU1Q2c5b1VbNS+WSIgyazHHH0kCbQOcddp/pUFUlzq7SfSNKQWEws08ffwHjEmmce
	pk/ZEOCH7BVcf7GthSwD5DTf0U/lieJSQSTZ49/26Zs8p0GgRRokkVO9cK5GvzaVjpRfFhxRBm4
	H/UiqEm9sD9YAk1im2cUDNMSmfbHs4F6t
X-Google-Smtp-Source: AGHT+IFAupKvz9O/wuCtnXnXxMRJHbKl812eWEqI8f0zVIY0iSlRar4cC703T0t3jY9HyrPP2Y3ZzA==
X-Received: by 2002:a05:651c:2352:20b0:332:74a1:2a29 with SMTP id 38308e7fff4ca-33650deeb79mr5680611fa.15.1755877594226;
        Fri, 22 Aug 2025 08:46:34 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5d1a6fsm56541fa.49.2025.08.22.08.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 08:46:33 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/3] gpio: mmio: Support IXP4xx expansion bus MMIO GPIO
Date: Fri, 22 Aug 2025 17:46:25 +0200
Message-Id: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANGQqGgC/32NQQrCMBBFr1Jm7UgSaxtdeQ/pIsZpO2CTkEiJl
 Nzd2AO4+fA+/Pc3SBSZElybDSKtnNi7CurQgJ2Nmwj5WRmUUGehlUDOoc0Z6YHLwh6nUEMLrdu
 x643peqjLEGnkvFvvQ+WZ09vHz36yyl/737dKFChIdv3poq029vZiZ6I/+jjBUEr5AhOkclK3A
 AAA
X-Change-ID: 20250820-ixp4xx-eb-mmio-gpio-80884f67aa67
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

After Florian reminded me to do things properly, here are
fixups and additions to the MMIO GPIO bindings and a
tie-in to the IXP4xx expansion bus memory controller.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Drop the bank-width binding, this was based on a misunderstanding.
- Drop the bank-width from the example as well.
- Collect ACKs.
- Link to v1: https://lore.kernel.org/r/20250820-ixp4xx-eb-mmio-gpio-v1-0-0e167398c8ac@linaro.org

---
Linus Walleij (3):
      dt-bindings: gpio-mmio: Support hogs
      dt-bindings: gpio-mmio: Add MMIO for IXP4xx expansion bus
      gpio: mmio: Add compatible for the ixp4xx eb MMIO

 .../devicetree/bindings/gpio/gpio-mmio.yaml        | 36 +++++++++++++++++++++-
 drivers/gpio/gpio-mmio.c                           |  1 +
 2 files changed, 36 insertions(+), 1 deletion(-)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250820-ixp4xx-eb-mmio-gpio-80884f67aa67

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


