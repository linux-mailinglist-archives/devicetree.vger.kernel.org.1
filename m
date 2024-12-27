Return-Path: <devicetree+bounces-134452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9CA9FD7D5
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 22:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DE067A05A9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 21:25:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C56B14AD38;
	Fri, 27 Dec 2024 21:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="VZZMBCbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8139314F121;
	Fri, 27 Dec 2024 21:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735334741; cv=none; b=AOJWtJAmw24NmPdv39m/7l6IsNWoCH0cSVUeYyD8gIvP+MLB3lHcVUzXnuqHBrHwAgWlpwQGzNBkuwx8ZGlUE1tNvPLD1vbAibAz3/wa7/bOO0M68gBlRKgZ+zXNH9KwPMwB2cW3DWhodfLd6lVf6Fd0LzOUcp0ShE0KGy7zNEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735334741; c=relaxed/simple;
	bh=iEd839gbIfh38hGk05YAEk4m7o6JxMGBYopDjFqL0VQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ScnWODnLm3RmbLI04csr3uNq6wJ+ObymYuGKjnkLHuyTEDzd1RK+gxK2ynRKzIR1zdFemdBuP+sj39BNRrP6MRCtSt8h2grrVtw/irsPwwr7VuYuRyba6EbrwVwKwqr5FOl3i6CMWSon9vmLtlcYdC56N+92gT19VcMTIaJh99g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=VZZMBCbr; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d3f28a4fccso11369170a12.2;
        Fri, 27 Dec 2024 13:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735334738; x=1735939538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1+nHUcJaaX6M73EGiytD1ePmgcQwk8+iLSU7mDpJs1M=;
        b=VZZMBCbr22tj44Wb0va2AIBavYRi8gWPpoOR5ebaH37uU+/B1IMguemOJ+1E2tMdUe
         tKghLuThuHJXp5eGNeWFrtL85C6XawXbVyntRfZZJmjZF1K/cER4cWaOaQu6b7BiwJD/
         9hAQMOcnrqeYxz5Hz1WQLJzdXdLe27FMj3fF1/WsNRHHlKAK5jHf7VCNrDTO+KUSAyle
         y/4ULlpZR5YzP2aXaeTyy4hbPrQvog9cKV/+fxrGBK9HlkhaSIqEnqp62lrLX4jCQSB7
         OQ0bUAbASu8XbTWN8Z+lVXhiV4gafS+r/pQd0dMVjoLU2Lr8R18G6BA8xHGbBEGUigiu
         DoIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735334738; x=1735939538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+nHUcJaaX6M73EGiytD1ePmgcQwk8+iLSU7mDpJs1M=;
        b=Zp202W/3Y0ag2LxYHra5ijLKFr2UXDeZsfScapQ5MhY8oVH+GFFlHOT4TVwOmNm1T+
         k6RtQJp25jNzrIwZaVpEp2BBLdGeiTV2Q+JtWuTyfkU6CzaKqbOJSxMi1ungJtDh1GoS
         q+h9lEQ+y3hmMXnTNknz35z+kJ1DFtzAVarnSJbCdoftQqUlwsp5Y3l6vojk6ZOqhdwL
         8IQSgS+0qEiFAq/5ukMvufMgaYEKQ3j3f/aIEUfD0t0Bihq8a+knnZKfMCpubUNILvkI
         v6sl2q+NTTnynuOSXbnJDjFLWd1N3ivxxrkM09A1fh6ZnXxkO8TLaJ+PXpK5kdzTcWCR
         Axzg==
X-Forwarded-Encrypted: i=1; AJvYcCU9nM4PyiuZ9M263XiPjAMzZoCoFSNtGmHtBubR8nXmQS3HWY41Ep4Cif6IEh+KCMHTUUrnVsckC70csZm7@vger.kernel.org, AJvYcCVJEKgHjy9aNZ3dW3Bj+/6G2f7y/eK8eMAWK12mQF2BxmemSfMQ+KspFJUxM8wToFSvQG6ndxyYy9KH@vger.kernel.org
X-Gm-Message-State: AOJu0YyvhMlgvUmUWzWkK2W5LH8yFQPLGxo5rR1zRLqbp8AuMdKubK4N
	c+p/LX/4OpLEj6H+IBpcGI8o9u4AHnMx37kkt+S0w3pE5RBe7jas
X-Gm-Gg: ASbGncsVpTPk4NJYCDZQyWlnQbbW2X7Phloz2jXGAE1qbYCY5ewJh6M+sHreszXwZjY
	UiB8d/EUDJ4QtekwaxDue6NOXtLcF8Oc13tBNczDbr/toibBqD+Pe+BXERGSmiMt3gNUmRsLQw6
	nNJOf1xRXDvFUqcaOoe5bKE7J8uXwe7Kderx+vrjPXIlcsZ+88Qk8RVTHXrII9duvCcsafspCfO
	YUtEhCcmw+V4xT4hHXUa7/lblrpt69dlUjBmPnDhssV2e6+eqAyrXa3OG189K2+JwfSDdSTQofv
	9t7WqKGnLZgYO+CaLTQn6QxyT0xTBSDXgKNM8eOg/TmLGynGpX3fT1BtMzXSyHW5Z3IoS+4k2Zm
	XOd7VqaLd3H6rFfKlOS+lY5SNnA==
X-Google-Smtp-Source: AGHT+IHnBN3F2L0kezSr3mHmow56nVHGn9/SFKxqsMbsLj1fbSuW+qlfmL5RgbD0R3tdmsF1U83hrw==
X-Received: by 2002:a05:6402:254f:b0:5cf:e71c:ff97 with SMTP id 4fb4d7f45d1cf-5d81ddfbe45mr19864210a12.24.1735334737456;
        Fri, 27 Dec 2024 13:25:37 -0800 (PST)
Received: from localhost.localdomain (dynamic-2a02-3100-b2be-ba00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:b2be:ba00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedbc5sm11627950a12.60.2024.12.27.13.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 13:25:35 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	jbrunet@baylibre.com,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 0/5] dts: amlogic: switch to the new PWM controller binding
Date: Fri, 27 Dec 2024 22:25:09 +0100
Message-ID: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series switches all Amlogic SoCs to use the new PWM controller
binding. The main benefits of the new binding are:
- the pwm controller driver now picks the best possible clock to
  achieve the most accurate pwm output
- board.dts don't have to know about the pwm clock inputs anymore (as
  the driver picks the best one automatically)
- new SoCs only need a new compatible string but no pwm-meson driver
  changes, assuming only the clock inputs differ from older IP
  revisions

This silences the following warning(s) at boot (for each pwm
controller instance):
  using obsolete compatible, please consider updating dt

I have tested this on two devices:
- meson8b: odroidc1 (boots fine and cycling through all CPU
  frequencies and thus voltages works fine)
- meson-sm1: x96-air-gbit (boots and the rtw8822cs SDIO card is
  detected, so the 32kHz clock for the SDIO card works)

Since I cannot test all devices I'm asking for this series to be
applied so the Kernel CI board farm can help verify it works on all
boards available there.


Martin Blumenstingl (5):
  ARM: dts: amlogic: meson8: switch to the new PWM controller binding
  ARM: dts: amlogic: meson8b: switch to the new PWM controller binding
  arm64: dts: amlogic: gx: switch to the new PWM controller binding
  arm64: dts: amlogic: axg: switch to the new PWM controller binding
  arm64: dts: amlogic: g12: switch to the new PWM controller binding

 arch/arm/boot/dts/amlogic/meson8.dtsi         | 18 ++++++++--
 arch/arm/boot/dts/amlogic/meson8b-ec100.dts   |  2 --
 arch/arm/boot/dts/amlogic/meson8b-mxq.dts     |  2 --
 .../arm/boot/dts/amlogic/meson8b-odroidc1.dts |  2 --
 arch/arm/boot/dts/amlogic/meson8b.dtsi        | 18 ++++++++--
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    | 24 +++++++++++---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 33 ++++++++++++++++---
 .../boot/dts/amlogic/meson-g12a-fbx8am.dts    |  4 ---
 .../dts/amlogic/meson-g12a-radxa-zero.dts     |  4 ---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  4 ---
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  2 --
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  4 ---
 .../amlogic/meson-g12b-a311d-libretech-cc.dts |  2 --
 .../dts/amlogic/meson-g12b-bananapi-cm4.dtsi  |  4 ---
 .../boot/dts/amlogic/meson-g12b-bananapi.dtsi |  4 ---
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   |  4 ---
 .../boot/dts/amlogic/meson-g12b-odroid.dtsi   |  4 ---
 .../dts/amlogic/meson-g12b-radxa-zero2.dts    |  8 -----
 .../boot/dts/amlogic/meson-g12b-w400.dtsi     |  6 ----
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    |  6 ----
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |  2 --
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |  8 ++---
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  2 --
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  2 --
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  2 --
 .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi |  2 --
 .../boot/dts/amlogic/meson-gxbb-wetek.dtsi    |  2 --
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 25 ++++++++++++++
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |  2 --
 .../meson-gxl-s905w-jethome-jethub-j80.dts    |  2 --
 .../meson-gxl-s905x-hwacom-amazetv.dts        |  2 --
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |  2 --
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  2 --
 .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |  2 --
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    | 25 ++++++++++++++
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |  4 ---
 .../boot/dts/amlogic/meson-gxm-rbox-pro.dts   |  2 --
 .../amlogic/meson-libretech-cottonwood.dtsi   |  6 ----
 .../boot/dts/amlogic/meson-sm1-ac2xx.dtsi     |  6 ----
 .../boot/dts/amlogic/meson-sm1-bananapi.dtsi  |  2 --
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  2 --
 .../boot/dts/amlogic/meson-sm1-odroid.dtsi    |  2 --
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  6 ----
 43 files changed, 132 insertions(+), 135 deletions(-)

-- 
2.47.1


