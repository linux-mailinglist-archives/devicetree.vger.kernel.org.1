Return-Path: <devicetree+bounces-247264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC60CC66F3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE14F30057C4
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC1C336EEC;
	Wed, 17 Dec 2025 07:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vxAVFgQM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAC42E9749
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765957818; cv=none; b=nmzOSYA1RVg9a7lYoRfzkHxntBi7C3ZZbzMKctgCF4fS7gGaM0dIMpi14BvLuTzvremQOln2a7EvQeKs7Q9H4DkPvVIwg6HOtRG+uZXn89gMjkGfxDwgp5PdKgKcadLCXvMY+Ayksz2xcri5PHlifuXr2tnOYpmUfXPSrs5MFgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765957818; c=relaxed/simple;
	bh=PUnnLOIItZtBkY06/aK3pdb7UGncSaLJK2ok4t8hj30=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E7fWVQNMWb0kUPsgNWcdNvJy8CO3HT5Ii6okcneY52H3UQSAwDO6QVIWKL2pJoWEEj45UVKAnIIHGuk9z9yZCwvB1wVULYHHzpvzictuYmfcod99USAtVsu+IQsc28kpfHrnXqB82hHSFgzvCBFNz4Y068JCKo4F8mYrQAtGK7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vxAVFgQM; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so57472485e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 23:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765957815; x=1766562615; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5+O9e6W3Bxj05hKh2u9o2UOrQ5o4C+FvFWwacOPc+l0=;
        b=vxAVFgQM/GPBsijcA9RKtMYI7pBSD9D8RXWMAXFFwpN2D7e7uHXmU0DZ7/2axdjY4t
         EGmhik3+u6Ol9oybjoe8ABMSVR6i+y/lH3VNrjP+1qSZZgoAOlbaqe8zhgA6AWukG6ov
         bn8mWYgqPf+p77jQjqG8DIfnBE6Hi7CKwNfmjcAO6f1fLIkpLrNRZ4luX3EnOCv/+P8w
         YH81zNity/mcH2Y4fz8IwpBg4GA+7+/lzg1pFaHhEhTIeabb3dojt1sxsfmw/acbu3ba
         qTMyjoyoI617wGmBXg722aTtbSdJzmoYrJA1suISWeUkY/Ah8+7lI3ETSzKMHXBM7bZC
         RBdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765957815; x=1766562615;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5+O9e6W3Bxj05hKh2u9o2UOrQ5o4C+FvFWwacOPc+l0=;
        b=NBw3Ou9P/Acz2SQ9nzE1PPg9tK+A6GWWCMbAmxb292kFpBBhSrEtfxHvP0Vh1r1AuM
         c3KIf6oVrpn5Ndsx9ZQvVwP80IK1WN2UaRCFx6lbZ08MIeXUrHzCd2OZwTkgfKoYc/Ap
         ntzk92+0itoDkuijLT+c0BMBx4FDEQOnhZtXhikfcDS6fkw/ZaxI8bCli2xjkU3FxYqP
         BoWYoTZn4ZinDO8F/fFV58dv0C0K4crGEPxKQ0rk2xGOnqxg5IOvEhZzV/NwVDFQvOVL
         NBzDF/ZpQlhW6Au6Iy9xCOkhofzyi5vTn41q6I6lr1IVpLUXFYUGgUcGO/21lWR+WW3y
         xlGw==
X-Forwarded-Encrypted: i=1; AJvYcCUpB8RKzbkCqwWwv4yYV5467IJquvI2QjfNTp4LXR+YVvxNVzQMxezH7SbQVDCfj+XvMrtXRS+f1Woc@vger.kernel.org
X-Gm-Message-State: AOJu0YySAllUgXjZp60QFKUIy/5EvcRZvN1LZCFP5Z072AbOv2awCEAf
	53kmFM1tXg6x+C/IHbjV0EcMxTbJ+fsIc9WdF1wHiYhGNaQ4z6gFUe0N3zvF3M5j2KM=
X-Gm-Gg: AY/fxX4N1wHJvsn01uFhx4Gjp1rTRLWlwIkMrEDxV1iDGMTQ25pl2/Qj/rGta2zbHS0
	ZuRw64fLDIwjsIP4MTE0JEcOuCXQY4U0g8mot4PP/ZlGfERUtef7zpBo7Svz+HbBUH6ELPZEYoZ
	Pz1PjZ0QhrC93B10xv4Ig4K+goD/GxC0c/h37WWBtym3Qg1n3PifFngBjCSthpDReAeAz1nz1fd
	5w12+ioZu56jDITDMVJG92ccCI8gH6t8N6ynJ3xYN1prLZw3gBV95VPexWi7h6t72Ix/FKWTsFp
	VKmTbWmYTQ+wxIOIOBvgIHroe9G8HFgH1W8e/1Iji374LmnQtcS+320bDaJ/ET7RCkHhsAfwh0b
	zDkd8A8LPhxcJom09ipPR5r8sWV2m8N08NovYugJSmA8eaMstgvKTORZjG3Epptp0Wm23V6beeM
	BmtjU6y/fJNewbjsB2wDPEXTIs7fysZpE=
X-Google-Smtp-Source: AGHT+IGRqDAO52fk8qcGmvcKhV3t5iObtMWHgo4/Y2HmbK1D8Q3NfF3+JenD756iAy8zS3sn7M9bFw==
X-Received: by 2002:a05:600c:8b16:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-47a8f90e81fmr180826235e9.29.1765957814792;
        Tue, 16 Dec 2025 23:50:14 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc1edff5sm26094315e9.14.2025.12.16.23.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 23:50:14 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 0/3] Add the System Timer Module counter
Date: Wed, 17 Dec 2025 08:49:54 +0100
Message-ID: <20251217075000.2592966-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32 family provides a System Timer Module (STM), a 32-bit
free-running counter clocked from a peripheral clock. The STM includes
a prescaler and one or more compare channels generating optional
interrupts. When used as a generic hardware counter, only the main
free-running counter is required, while the compare channels are
typically unused.

On S32G2 devices, the STM is exposed as a simple counter block that
can operate continuously and be shared across subsystems such as the
Linux kernel, firmware components running on Cortex-M7 cores, or other
co-processors. The counter can be read atomically and provides a
stable timestamp source to correlate events occurring in different
execution contexts.

The Linux kernel controls the STM through a memory-mapped interface,
configuring the prescaler, enabling or disabling the counter, and
accounting for wrap-arounds. Other subsystems access the counter in
read-only mode, making it a shared timestamp reference across the
platform.

This driver adds support for the STM when used as a counter on S32G2
platforms. The device is described in the device tree using the
following compatible:

compatible = "nxp,s32g2-stm-cnt";

The driver exposes basic counter functionality: start, stop, reset,
prescaler configuration, and overflow handling.

Changelog:
	* v3
	  - Fixed compatible typo "nxp,s32g2-stm" to "nxp,s32g2-stm-cnt"

	* v2
	  - Added Rob's tag
	  ** kbuild
	  - Reordered alphabetically the headers
	  - Added bitfield.h header
	  - Use DEFINE_SIMPLE_DEV_PM_OPS() and pm_sleep_ptr()

Daniel Lezcano (3):
  counters: Reorder the Makefile
  dt-bindings: counter: Add NXP System Timer Module Counter
  counter: Add STM based counter

 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   |  64 +++
 drivers/counter/Kconfig                       |  10 +
 drivers/counter/Makefile                      |  21 +-
 drivers/counter/nxp-stm-cnt.c                 | 386 ++++++++++++++++++
 4 files changed, 472 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
 create mode 100644 drivers/counter/nxp-stm-cnt.c

-- 
2.43.0


