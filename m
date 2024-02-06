Return-Path: <devicetree+bounces-38973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5165C84B053
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:52:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDB3F28910A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11BFB12BF29;
	Tue,  6 Feb 2024 08:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vbo+rsO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A08112BF3B
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 08:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707209568; cv=none; b=SoxZZXpWrcOd+JG3jLpLFpHyyThGpLmwy/QzW1nNcklreH3o15MPIVT/logUUfGtF8Ab8foXC9zZL/da7bKdsTGB3rDVTldw8QZteKJhANrpoYTxYV4JOFksA3crRjrk1E3pcCMngFBjGdVxJrGFmslADGsAYFrt2LfJUOA0vOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707209568; c=relaxed/simple;
	bh=LnHiaiXDsTPC0I2W2x6+cuL9/0lDilQPIcB8iaehja4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gvjv7dDDUcxaChWBi4u2knmu0egSG6vniX7hjJtIi3CUoSw3X4upYbtRb6iPYEVPsCLx9ecawUR5GU9PT2JemY75CeYqSz/mD5E7DeSNz7xA7E9WG+j5SBodZGcupT3if0ZaO1YXs8FfzY3a1zmk69ry0BydTqQhGJUakKt4OjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vbo+rsO2; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-51142b5b76dso4324469e87.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 00:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707209564; x=1707814364; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LJK6CZxnAz6zjTFwq1il9bOgJsLfr46kOuud4kAwmaI=;
        b=vbo+rsO2RM3pUbuZGNmFTW7DfqwjDw7BkAviujdsjypxlCTuIViZ7aYWWOkBFR1z1Z
         +Ab4yHIKyhmgFnVFuYuYQRIhiOHHoxXjN/tTHjjbKfuqV9MUtt5ucTduM+jDdLB0e5FO
         fhMu7yl2dOijtlLHX4Wj56Zy4gZOo5sAhADiOsIRySb2PBWXN6zExTb7QeEorQEM4EWf
         VNcdVeXF/boRSbgRZstbu6syqNXjm5lRQOdqsKosRxY6dxMO+47JFt1ADbjkdhtduZ0w
         tr9H5ORunfN7X4gmO39PmRI31Gdt871XV9ybVex8gJm4PUyjcROK7zgcl8Mb1/u6Zjdx
         vcGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707209564; x=1707814364;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJK6CZxnAz6zjTFwq1il9bOgJsLfr46kOuud4kAwmaI=;
        b=N0OrujTCMN9+hjBxAUdnLEeJoitoXVeEtltzB+M7/4KkoyNirWucbIt4CrCecZZEIv
         4MTYlIw0pNvYoTtKrNsSUpgrWkZhT86Q7ju0a5NvxLzpdzhM5usgrMJdWxvYiVpm4r/2
         Krk+3Xi6v+3yWcG3N1+jKJLOozoiaecVqnarZxWF3K1IMy8jyYJsd7hM2eghs3WvQU1h
         RaIvizVLM3yJ4LKg8mS02j2TLr9P3BBlHOnrjgWeO+l9KLiAKtGVpWKdduIknSdSJDno
         bcLRpyP27sv+DEYh007judgokKNKS8izpRTrDEV+kil01vpGTzWAPwny/XRZEHeYJQls
         Gn5w==
X-Gm-Message-State: AOJu0YyJghvOEnBWgXkwZ0Rx9pKG7Zq4prOnIkd9uBwANShIIdPVTfBT
	n7nHlkucAXdBN9PZRRKWFY7UDu8M5MOenyLTccpinpviROtn3X1RzJIvqIkfF70=
X-Google-Smtp-Source: AGHT+IFzvLdy+GVMsQ33QALJtUY2t2CT1Jq4vJ8znFrLBR8iIaNi3QxDBwfCxHaoQ+y0WZnjCooW/Q==
X-Received: by 2002:ac2:5df6:0:b0:511:3cfd:fdaa with SMTP id z22-20020ac25df6000000b005113cfdfdaamr1193666lfq.68.1707209564147;
        Tue, 06 Feb 2024 00:52:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXnzPrhBSb9rRG9Fd2Jm7vfrx5wXPw0I7lcr2kqk2RU3SZH4CPD/VEeZ0zg1PivqX2r3DTIfRbU6LXzMn26OCM0RTySWBMnA37t3Q1TXrQYead+rvgRZhaotBF9g/144zMcox4Ntz+sMfPWt4nfn58K81+B2GldhHhDxzHp5MxBwFERUYH0daiziAEScD9J0ITXDFo1NaKgSzE0j8mhAOQuVRtNUhObY95RUCpYMJ2VA1q8TX5fBhvXg3uW1xtBml7fqF2aK1/+5+SW/FOg8aZSeEruI33+lcXc81v597Xi3QKOfq8oVAMSsxbXy50B5Hf0cb0Cfm3Ct7IqsC7Brjn3Vv1UFidEDxvHTTjis5nGMryGXbigr1ikz1ZRHseEFypUhM9vIqWD7vICO8MPM5+YSeZtVlkozEN7DjbbcLzzIwmgfk09SNZl7LWLrsBaS8Zah9cvgzJkjvZfelJC3a+2cvszJZCc/kXea+eNgnrtcADHr5Xea5TRP/+fttYAQsN5JFeaKtD+b4qASS5+x2SJnbeinYcE3tog6QeZMJgTWN1TQMwFRULTPxw0XnLqZrLtvks4xHL0TQrzTJ/lb/lZ+g==
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id z10-20020a05600c078a00b0040fe078fb03sm1221591wmo.32.2024.02.06.00.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 00:52:43 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org
Cc: krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 0/4] spi: s3c64xx: add support for google,gs101-spi
Date: Tue,  6 Feb 2024 08:52:34 +0000
Message-ID: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Depends on the simple cleanup patches from:
https://lore.kernel.org/linux-spi/20240205124513.447875-1-tudor.ambarus@linaro.org/

A slightly different version of the google,gs101-spi support was sent at:
https://lore.kernel.org/linux-spi/20240125145007.748295-1-tudor.ambarus@linaro.org/

Let's add support for gs101-spi so that I have a testing base for the
driver rework patches that will follow.

Tudor Ambarus (4):
  spi: s3c64xx: explicitly include <linux/types.h>
  spi: dt-bindings: samsung: add google,gs101-spi compatible
  spi: s3c64xx: add s3c64xx_iowrite{8,16}_32_rep accessors
  spi: s3c64xx: add support for google,gs101-spi

 .../devicetree/bindings/spi/samsung,spi.yaml  |  1 +
 drivers/spi/spi-s3c64xx.c                     | 89 +++++++++++++++----
 2 files changed, 75 insertions(+), 15 deletions(-)

-- 
2.43.0.594.gd9cf4e227d-goog


