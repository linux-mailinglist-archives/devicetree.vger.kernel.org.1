Return-Path: <devicetree+bounces-84419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 035E792C1AD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 19:06:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 358DB1C23159
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EABF1B6A47;
	Tue,  9 Jul 2024 16:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="lvzWx5O0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A15E1A00FE
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 16:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720542979; cv=none; b=Gc+WI0utI+DkiCRFTfH4/6i6u+HBGQjd/niBZlhPGk7zS3Z6JZJ3O7Wt6AODUyfysCXzT2qKOxDzYHbg6tQY4Z8Qdan1fHFkBc8S4KlZQh73UiZcvPRcIEbDuSwY3dtpDInndeRC30i3VISyG9QKCDRkAmEklwQLUg+ZeUNMD+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720542979; c=relaxed/simple;
	bh=gfuBjzaQL9gTYODlRQx6yFrgftBRvfPKkRJDUxKB4SU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dz6j536ESNYMn26759y9vevbKaqMIcuAZ+V2L9s2c5VvQ066/MzKGP+QtZKuP523lkQ2f4R9cW0V7svotK3aEns8+l99Vot+At/7Qkp0tFKUF8J07fNx1LfPeW1XxRZ4Y+r5qY867Krft5i6y4QDClsb1bcCScv7uHOq2XOkIQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=lvzWx5O0; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52caebc6137so3894238e87.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 09:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1720542976; x=1721147776; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X9MYJUKCZJqpXesGhM7neSV7GESDWq919aeqPs6MM58=;
        b=lvzWx5O0H3ZdXvs5RUmt5flpOHMNF5YFAICSl0boQ+tPi9XaI4r/lswnBgGFVd8eWF
         3y9KfZaAc8gcePsZG/FuSa7S3XwNBjL0Q0LetHa/ILU6p45DpTZt3/+UJw6qE4m0t0nF
         94rqgSaQHG9S1GSBo6a1c0iuVtOeoCe+fhVmpcoVXVXEV9bP19pWukFB3XXXINwEvjln
         fEKYPANnKmd+skfQ0QmlpA+zhecAyX2OIn1KO4wxkbQuQSVp6ZwD71TPTX4vGXhRlU1s
         gqclynI/digOtRb5cDeoS+MCf71KdgLdfxF4UOWPsBwrhDa2YZ6gQgdz2gwEJJwOLS7a
         Q8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720542976; x=1721147776;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X9MYJUKCZJqpXesGhM7neSV7GESDWq919aeqPs6MM58=;
        b=Wdf/ePtGOo9Zg3JZehoUXZI3nP1emDhwTbMkdnC6RSLNa4T1CgQf16fE2I7eaBYL/F
         tMCk4NbYc0/GtSd+SQo+6r90SPzmPO4dqecKmN7q+sQwCSB4C9ckGOIheCKs0uhgpRfr
         guaZMDDsRYlgpf011zXhnMPPhMYLxnzqe9kbopjnJOCAMQeQ7d1+/yGWtSwGyFthfYuS
         43UziLlEQwxX52I5qZGbdlF7D1TracDGwktzqsWsRh0oew4fg4mGlAnu/JXqjE+5Y+lf
         yYwQTBKYZDyh7YObAoORh2fZQ5dGT03WLXne677P0Q73moTKq6vFa/k/qAicdsa9bM8H
         zmNw==
X-Forwarded-Encrypted: i=1; AJvYcCXCIcouBJVVMtqRmxLrQjbEFbhbAf3SbcYB40dwcQARGUu+xXkIvVf/1EsKlWZ4MzTfDmuU42U1wCL+R1G/b+LP105xg15Kcbd5ng==
X-Gm-Message-State: AOJu0YwXfF1fg1zSCMqSyJasXR+Gv5eVc0Kt3IAaXjvdQET4lI8+hRPD
	9HvBgVu3Ajs0/aNyszglTcNjF1oqx31AZfNQn2tJ80BrhrEeOSJNBDG45TXnJNE=
X-Google-Smtp-Source: AGHT+IF2kTry7mVZy8wNL9+hXKmtByo6R5klQmpio5TGpcq8XeZkhMImhKEomb+u/Obf3niL5ZY8pQ==
X-Received: by 2002:a05:6512:10ca:b0:52c:de47:b317 with SMTP id 2adb3069b0e04-52eb99a0805mr1684871e87.39.1720542975452;
        Tue, 09 Jul 2024 09:36:15 -0700 (PDT)
Received: from carbon.local (aztw-29-b2-v4wan-166913-cust1764.vm26.cable.virginm.net. [82.37.38.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6f5f25sm48897745e9.26.2024.07.09.09.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 09:36:15 -0700 (PDT)
From: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Subject: [PATCH 0/2] iio: humidity: Add support for en21x sensor family
Date: Tue, 09 Jul 2024 17:36:09 +0100
Message-Id: <20240709-ens21x-v1-0-678521433cdd@thegoodpenguin.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPlmjWYC/yWMywqDMBBFfyXMuoGYPvVXxIXVazoLk3YmLYL47
 w26upzL4aykEIZSY1YS/Fg5xQLVydDw6mOA5bEweecv7u5qi6i+Wuxj8tezq29lQUV+CyZe9lD
 bHSz4fEsvHyc9e4Ud0jxzbkxOQRCo27Y/cLtgKYIAAAA=
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720542974; l=916;
 i=jfelmeden@thegoodpenguin.co.uk; s=20240709; h=from:subject:message-id;
 bh=gfuBjzaQL9gTYODlRQx6yFrgftBRvfPKkRJDUxKB4SU=;
 b=UPDKdoiVHDUupCbcU10xRQso7vvKmh3tWU1eFOts+m/t6rLYecJWfFxLao1pg3dq9psg11s6D
 JfPM4It7kCmC43aB39RZ07HHPgVnbpjXTgB29APGt5tCRgBVW6vHGer
X-Developer-Key: i=jfelmeden@thegoodpenguin.co.uk; a=ed25519;
 pk=tePkZ5iJ3ejQ2O3vjhsj7GrLYcyJN1o1sMT3IEXvKo0=

This patch series adds support for the
ENS210/ENS210A/ENS211/ENS212/ENS213A/ENS215 temperature and humidity
sensors.

Patch 1 adds the required device tree bindings.

Patch 2 adds the driver, providing the probe and read functions.

Signed-off-by: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
---
Joshua Felmeden (2):
      dt-bindings: iio: humidity: add ENS21x sensor family
      iio: humidity: Add support for ENS21x

 .../bindings/iio/humidity/sciosense,ens21x.yaml    |  50 +++
 drivers/iio/humidity/Kconfig                       |  11 +
 drivers/iio/humidity/Makefile                      |   1 +
 drivers/iio/humidity/ens21x.c                      | 348 +++++++++++++++++++++
 4 files changed, 410 insertions(+)
---
base-commit: 1ebab783647a9e3bf357002d5c4ff060c8474a0a
change-id: 20240709-ens21x-8f2530968f2e

Best regards,
-- 
Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>


