Return-Path: <devicetree+bounces-111851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 614399A0258
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:22:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19C7E283360
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35AA11B3F3D;
	Wed, 16 Oct 2024 07:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z79Dbv4o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1BE18BB9A
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 07:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729063318; cv=none; b=SG/z1NZMT6/8M4AE8LM8VUJusyO63C6RzBBE8f0ahQ+KHovust2dPj1nomXuk5pidv/onEOiiiDsIBHB19Dt6Fu+h+DBSdGBCH9XN6AiygjntcJS4PYDcjgkOwtHY49lMQyahCR5h6ClBh996SsGJh5M6iI6lhITUPjILgy4GAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729063318; c=relaxed/simple;
	bh=0QIlAzwJglmPm1PKLPu3ElTtcL1IXbK1SGt4tNlRCtg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t6DMnC0AOvrq98HvfnWB2Qr3KdreOTH0vDemoLf6tndRsa9z+qqc9yMCD049XjJPV2heDUqBKepRjtC36+b+yI886cDjmW1L0E97Q+BSlG7NPfduM6aVGLG26PQhxe+4peQ2U5NaPK5n1g2o6ouIwUK+pqksu7DGZA0Ovkxan0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z79Dbv4o; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb3debdc09so31907841fa.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 00:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729063313; x=1729668113; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u4WJ1/1ULwGjheFhcmjGC8lbqYgfBgCZ5+4creTm0rU=;
        b=z79Dbv4oGUaJAteopqGjtI1saZs3jaYX9+uzsMxcdVcVnabJV2lzTfuuvx4b1tPF/B
         kig/rZogYmPMxEiTUSQ+ucatmt52qE9Wl8EUjNoNejLZWY4R/7wfjTUqiHYohs8vkF8n
         uyAK5q+5LH/baBvmRLqCHZm6uavqJu6Yokw4MJHavhtrOFmoSewNvU8g1asR1BBgViDq
         whTCRPgi36WobHB6ixm7E5NzTkCrKoNAur7Y+YK0Pn1N6HpIFDD5mKuYzG1DESIRoqMy
         PJ96auzA0uky6XP2wYi7APz80qgjEhbQbX3h3M8is8YZEfAwk4IG1GKs36M5bVfXxIFy
         X2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729063313; x=1729668113;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u4WJ1/1ULwGjheFhcmjGC8lbqYgfBgCZ5+4creTm0rU=;
        b=HZHJ6zRaGltWPMBAcPmRy7Z94K/F7l0oA7qw/3hlIVxUsA9r4/mMZ7EEbcJkl6C7Gs
         C/98BRnrm8i/Y5i6+BY3EwAx3PkTr9i+LGVkR1ahdphBvGp1zvYU0BXPxcclRz+JJkx0
         6DhXPdn21szU0gxngDLU9uafZU/GK/ft/1GpXowcOzJZeM4S1z/9qNrIr/mC264qpfqG
         b1XJs+X5wjXs2/CBpbB8VAcggy8S9KdmLSbfJwlZke9nG10yO7Nq0h8TDBrZ1OkMVOhd
         czapU2htMYHAqiJOjSbgfhnawbrVy3UgZzt/0UwHl/yYcSTd17yTn5l7cLAFT7vosNX4
         t56A==
X-Forwarded-Encrypted: i=1; AJvYcCVCvmz6oudv2tk56+qYONvNX6eOp6/T0VVIiGVlAea5BlC6sHXKOvR+SahxaNCg6DkwoWxlFDR+V5LV@vger.kernel.org
X-Gm-Message-State: AOJu0YwCEU+QJcuaOcw1AbEtsbJwSg2VpWrd3KQZ52J0Cd6KK7U4vqDJ
	OTUPSs2z2h/jWGUIfwmXhgo8iKO1ZpdiCRu+MjOdNltWoej6qoLwgXUVG1U3MV8=
X-Google-Smtp-Source: AGHT+IGGU+rpKfJzRyfRUFOBh0sRwXf3yysyyClh6KcxYyiBPmLS6UCJ7zvN79Kbu9pK9dYmaN2/lA==
X-Received: by 2002:a05:651c:512:b0:2fb:2e27:5334 with SMTP id 38308e7fff4ca-2fb3271573bmr91471661fa.15.1729063313303;
        Wed, 16 Oct 2024 00:21:53 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb642a8fdesm1289761fa.5.2024.10.16.00.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 00:21:53 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] gpio: mmio: Support ngpios property
Date: Wed, 16 Oct 2024 09:21:51 +0200
Message-Id: <20241016-gpio-ngpios-v1-0-f16cf154f715@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI9pD2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0Mz3fSCzHzdPBBZrGuQnJhiap5mkGhuaq4E1FFQlJqWWQE2LTq2thY
 AP6dqz10AAAA=
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

I thought this generic property was already supported by the
generic MMIO bindings and code, but no.

It's a pretty obvious usecase to just use some from 0..n
of a MMIO GPIO bank, so add support for this.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      dt-bindings: gpio-mmio: Add ngpios property
      gpio: mmio: Parse ngpios property

 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 13 ++++++++++++-
 drivers/gpio/gpio-mmio.c                              |  4 ++++
 2 files changed, 16 insertions(+), 1 deletion(-)
---
base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
change-id: 20241016-gpio-ngpios-0cad57f0a757

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


