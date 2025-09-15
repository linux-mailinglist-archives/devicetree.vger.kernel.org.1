Return-Path: <devicetree+bounces-217195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D26B56FFB
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:02:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79F667A8135
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 06:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CDFB27510E;
	Mon, 15 Sep 2025 06:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IGPA1C5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956191F418F
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757916123; cv=none; b=L3IiEnym/4e1CoDaUhaeaeU+irqdKdjjPvzgI7y5jerhCfio9a1iAiZSuaTZcWgClmXk6Tr+ZADiXVDqUXGTdOLu/Y0ln0q8TXAf3dgcMwNGqHbWCMAuvrYG1NkPjDia5ZegNdZ37EsbvfTg+q9ezlIxp1LCidUKFcDq2GgYPX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757916123; c=relaxed/simple;
	bh=0i8+DknoxQAjvpBVwLLCnjqj1KkrlAyOUec1giywe+c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=j5StRslUFUL+DFcShVXSEdu6gDIumVFkocuKxfJS0fkcBou8ZVFZ9OTyt4+MGMhrMAftMMjqrdHgeb87MD9kFdCryP7p4Htweai3RhH38NS4bvtOiKkbw782k77Z+7LEbweLV9yEcmh9RPtAvB/raFgR13AI5G9ht5Dt/E2+vPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IGPA1C5N; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5725e554ec1so962937e87.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 23:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757916120; x=1758520920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uZUcnCRcwQHZ20XjWalfDU23D3XdkLxWMGXACq1syco=;
        b=IGPA1C5NBFhAp4EUg3Zdc/FUc8obGmBmha5eAy2nVDlxnr7TrYrwCMe/8e4TZAfBMD
         rsn48LoK9Ve0VfLjiOa/ZRjiJWnH9Vg1wvvwQP9upkcta35OuT+OmAPcJd0DTU82sW0I
         SEvzdheR7kyHy5hRJObVhzlUxunOMRwbhLc0shjLUEK6PONdRFUXfhBiZb4qIHMlR9hJ
         /Grpa2ipd4Tn8XtdPjNRHEi4ChQ6GX/XZtTgm53zjBUPcEdjehz3JUvwEO5kYHVCdCXE
         CU476MxnlbYei3Itg2EuLoUCeGG3nx+X+jA6wmSclGKKYpNtpayPgJFwZifuV/bWvbYH
         f/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757916120; x=1758520920;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uZUcnCRcwQHZ20XjWalfDU23D3XdkLxWMGXACq1syco=;
        b=c7MehbH4EA52jUa559ZBSiHfrCx9seAi/pPD6rmfihWmdOgyXhUpAXRUzeiXZKnffM
         DUxmWDIEAdbVeP/xHoOzLSO6DUIHmpS9m0aOEsZrwvqf7fiQ7VqXGySeWDteFCBtV+n3
         Tpn04xAxsOjk9TQf9h2YpZU2lLdP2tdRVLaJ+eCStyQlfPqSsfBngh1ORjVNvGo/oXYO
         7VFHO3lHbH7az5pNOciiABRsIrU7X+Lzv8ZQK8EykWEj7dwmCUN+3ZFcZ4EY3ySFjowm
         gq5o1/P4fU4BqpCLZjX3/ThEyGEwu+riHr9lI/DrWJUitA64mnKerKP4GxQx5Zt0wSMH
         gyKw==
X-Forwarded-Encrypted: i=1; AJvYcCWlceeOv2cmCvgWIDGrSGENq7O2SQbRHwCKZCTaHE0gTIdA0NkGVtcQZTOULH1MTlRveGdGiUHTRudy@vger.kernel.org
X-Gm-Message-State: AOJu0YzpiyR5OdS+H0UNrY/Wh8QO6hlmVLJAzirAQuWLaRuqT6IokeEH
	kLOA5I1V75vS7WJsbi66vQOoAeI79EkMsDrmN3pX4qCF8rpmXAsH2e7I
X-Gm-Gg: ASbGncvo5bprzf724lDT+G1aOVpUACX6+RuKltfezkytSsVwHJ1zNhSiq9eeTe2gEMc
	07Cbh2Azalh+7+0btJzsTM8pMyRssOuoB2NG+p+ItGz4ugyvNeLE72M9O+GDp1UJyMraQVo9uGI
	hPQcC+5bG7IYT/G+wMlveVQfZ0UwgAQUY/BQETseMOo7JOJ+njFnYOp5VchbA4286MszjJNgoPw
	luEvRh3b2kkPiC3MbNwLzej5g+PcsxLpK4HtFL7SqDX6sKfSKERbecIeOOj8Yzmt4DuObor1kt8
	0q9kNbD2hSX7h8Cn5RChauqqQGO/KEY+YvKDvIMIJFEbs7Jmk7oFStCsZoGfkvDjuwfygl8cVFz
	JOOKd/RBrMUvxfQ==
X-Google-Smtp-Source: AGHT+IHDjCsT9FHnjoOO4pQ1o6E03HlGS5iXY22PkYNYih/D6j5nfiMo/CGz7SI8qhM2srkPhzPUKw==
X-Received: by 2002:a05:6512:361a:b0:560:95c0:a523 with SMTP id 2adb3069b0e04-5704fb86b89mr3166947e87.35.1757916119435;
        Sun, 14 Sep 2025 23:01:59 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571d16e79d0sm2062214e87.86.2025.09.14.23.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 23:01:59 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	=?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] i2c: muxes: Add GPIO-detected hotplug I2C
Date: Mon, 15 Sep 2025 09:01:36 +0300
Message-ID: <20250915060141.12540-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Implement driver for hot-plugged I2C busses, where some devices on
a bus are hot-pluggable and their presence is indicated by GPIO line.
This feature is used by the ASUS Transformers family, by the  Microsoft
Surface RT/2 and maybe more.

ASUS Transformers expose i2c line via proprietary 40 pin plug and wire
that line through optional dock accessory. Devices in the dock are
connected to this i2c line and docks presence is detected by a dedicted
GPIO.

Michał Mirosław (1):
  i2c: muxes: Add GPIO-detected hotplug I2C

Svyatoslav Ryhel (1):
  dt-bindings: i2c: Document GPIO detected hot-plugged I2C bus

 .../bindings/i2c/i2c-hotplug-gpio.yaml        |  65 +++++
 drivers/i2c/muxes/Kconfig                     |  11 +
 drivers/i2c/muxes/Makefile                    |   1 +
 drivers/i2c/muxes/i2c-hotplug-gpio.c          | 263 ++++++++++++++++++
 4 files changed, 340 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
 create mode 100644 drivers/i2c/muxes/i2c-hotplug-gpio.c

-- 
2.48.1


