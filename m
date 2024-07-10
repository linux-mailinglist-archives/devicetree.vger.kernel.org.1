Return-Path: <devicetree+bounces-84686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 911E592D2AD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:24:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F03AB1F22DE6
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 13:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83BCF192B6B;
	Wed, 10 Jul 2024 13:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="l2NFXUf7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D113B19004F
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 13:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720617850; cv=none; b=HRlRcNIq9XhQM1RXdwZSzG1UJT0RsETOe01Nh7bi8OoHTZ70c/QmwNS9H2a5TcOWDq5e5tX8U13oZVgP0t7OXT0OqdGoOiIdcL0Uh4kRw+qZaVLSKtZitLCuPee1gR2fOHy2zrOGWLQP11U1X5F+Du4Z2tu9B2LMUEmih4ILME0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720617850; c=relaxed/simple;
	bh=XEswd7G3NMioyfs4GwFmiPiHGWFlBhQ8U8B5l/NmoeU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hjO8JJdapqCaAhoBIuBDEV9p9gljwg/cciryh54LqU3yZcLL4h4htO+hGSljdX/3t+g7C2m4/T4hDvce3Z8mBzQzxDkevJe5WX5tFm8of0kziiG41RO3UI3kKmmoRIFG9o14r8Nkob7Bsv29LbmiN2XEAqHdnsEYuiWbPgYVAlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=l2NFXUf7; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-367963ea053so5181376f8f.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 06:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1720617847; x=1721222647; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9ivCGozbpK+ETB64ZM9eDQNZHQrEIzP30tKXkrTTX5s=;
        b=l2NFXUf7XH/vnYXwDtCsPCccLufKgSxsAvy3NVUhFbmqA/kgv54/zi6sYzZ4m3ETIM
         GSrtLNaqH5LQ+IoMCQ1Q6XnxM2qwxTP3ApgNZitDSHckClAi0gzs7TPbzCA0VyKr0EMB
         lrhqZ/rTxeeJiuYxXv/s+csX0BNOoj4Rutc80l9zAODtJPkutMXMx6j0pZlRhRPhiFR4
         Qk67PiOpyBUFo4d8f/ZdwVkUxLOoKxvVl9vOhNCCuNAWE+ByWFd0Vlnfgvp80NDezjaT
         ogZC2v6SGwvue+ZJNIEt61bFi5vvAWyMcVcLm7utF43KP8I3khOf3dKpdjDY3wULk0Cl
         M34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720617847; x=1721222647;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ivCGozbpK+ETB64ZM9eDQNZHQrEIzP30tKXkrTTX5s=;
        b=D5LhB+sfXNKRL1/yi3zuvC+7ZN3ajs3bu6CSpYE3sunoYB9dtr9gD3ngoWxZYSqrK7
         nTa+YgKDcj9hHBA9V2vSiDK1ghVo2Ktpte1830vsh1TmBiF1soRwfbqk4whsGoIZAYf3
         rpcJCtosep4BFj+JdMIGk6nzwjNKbg4l+gCLaKaPKB7uWPUCV+Yh5Gc/34YIZHy25Dco
         WquP9q2jD7phTwWgoF2ykPb7k7vFJyhZLzDbBw05jm9ot1uHv3Q+dhPMKr7l3DpUJ3CC
         PZdFjG6mEsL3gquWkHDrSuGoosIWVZhyIs/1wpjVhrcVN1KZUVRqyVCcsL8ecFEArduq
         DV1A==
X-Forwarded-Encrypted: i=1; AJvYcCVsJzSJlU7wywu4PB35k3Wl9Z0P8/FY7Rl57GA7F9aRVuWNvfalOZ4MfuIIt3ZFmUdTlk/03KDcqdeM8jBwMO9or4AlMEnkkKx9nQ==
X-Gm-Message-State: AOJu0Yx4TWocE7/v7Tq7nb5SgBOdY6MZoGGWUpgI8LmcDibCDiBQkphL
	peLJD3mTNM47oa8KTwdAg7BDsJr1PbNAygwrRdPiQh6yO89ZSjo6zi/TfcCzsac=
X-Google-Smtp-Source: AGHT+IEmhRrwKCYh1YmiWvZ5eWN/nNChU0nF5E/gTBTmD1mh4AFNNFtH3MF11iYc1sXwYKKEwv9TaQ==
X-Received: by 2002:a05:6000:1864:b0:367:9cd5:c608 with SMTP id ffacd0b85a97d-367cea962b4mr5497949f8f.36.1720617847311;
        Wed, 10 Jul 2024 06:24:07 -0700 (PDT)
Received: from carbon.local (aztw-29-b2-v4wan-166913-cust1764.vm26.cable.virginm.net. [82.37.38.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266d0185d9sm106441025e9.3.2024.07.10.06.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 06:24:06 -0700 (PDT)
From: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Subject: [PATCH v3 0/2] iio: humidity: Add support for en21x sensor family
Date: Wed, 10 Jul 2024 14:24:03 +0100
Message-Id: <20240710-ens21x-v3-0-4e3fbcf2a7fb@thegoodpenguin.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHOLjmYC/zWOSw6DMAxEr4K8bpAx/cGq96hYQDAhqkhoEhAV4
 u5NQV1Zb/Q04xU8O80eymQFx7P22poI+SkB2ddGsdBtZCCkM96wEGw8ZYu4d3TJsbjGyxDl0XG
 nl73oWR3s+D3FvnCE0NSehbTDoEOZBKscK/iZvfbBus/+wUy7eoxl+B+bSaCo85skwuzeoHyEn
 pW17chGTdqk0qbTC6pt275TlkTk0QAAAA==
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720617846; l=1529;
 i=jfelmeden@thegoodpenguin.co.uk; s=20240709; h=from:subject:message-id;
 bh=XEswd7G3NMioyfs4GwFmiPiHGWFlBhQ8U8B5l/NmoeU=;
 b=H6X1pWFXTqbE2qx9tCG4ALFpsffXpMDl9no1+47kxo6MdM1C0oKEyEUgzwZa5WSgdCHwdCu4C
 POoVAHgOyKdCnf0Kk27r4FJxI0zkHU76JgmwXWTjW8DviK+0GVaPGbC
X-Developer-Key: i=jfelmeden@thegoodpenguin.co.uk; a=ed25519;
 pk=tePkZ5iJ3ejQ2O3vjhsj7GrLYcyJN1o1sMT3IEXvKo0=

This patch series adds support for the
ENS210/ENS210A/ENS211/ENS212/ENS213A/ENS215 temperature and humidity
sensors.

Patch 1 adds the required device tree bindings.

Patch 2 adds the driver, providing the probe and read functions.

Signed-off-by: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>

changelog v1 -> v2:
sciosense,ens21x.yaml: Add supply to documentation
sciosense,ens21x.yaml: Add fallback to compatible strings
ens21x.c: Move i2c_device_id next to of_device_id
ens21x.c: Use i2c_of_match_device() instead of of_match_device()

Many thanks for taking the time to review my patch.

Thanks,
Josh

---
changelog v2 -> v3:
sciosense,ens21x.yaml: Update yaml to match dt_binding_check

- Link to V1: https://lore.kernel.org/all/20240709-ens21x-v1-2-678521433cdd@thegoodpenguin.co.uk/
- Link to v2: https://lore.kernel.org/r/20240710-ens21x-v2-0-a37c22018b0c@thegoodpenguin.co.uk

---
Joshua Felmeden (2):
      dt-bindings: iio: humidity: add ENS21x sensor family
      iio: humidity: Add support for ENS21x

 .../bindings/iio/humidity/sciosense,ens21x.yaml    |  55 ++++
 drivers/iio/humidity/Kconfig                       |  11 +
 drivers/iio/humidity/Makefile                      |   1 +
 drivers/iio/humidity/ens21x.c                      | 346 +++++++++++++++++++++
 4 files changed, 413 insertions(+)
---
base-commit: 1ebab783647a9e3bf357002d5c4ff060c8474a0a
change-id: 20240709-ens21x-8f2530968f2e

Best regards,
-- 
Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>


