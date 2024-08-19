Return-Path: <devicetree+bounces-94679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F11509563DB
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 08:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FE28280FF3
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 06:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CBB715697A;
	Mon, 19 Aug 2024 06:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="h1KwfOqn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4651C145A11
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 06:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724050056; cv=none; b=MBsom9ml7P3XCq6qABVHrUi5Tvghc7ibY/6DKk8uKSffpvLuMp1TaSbKZ6KQx7TxoSw38aYYBNQ8icNcHYJewDeyX6OXFFmmTmKi6L7decvjdRZDxnR+2Dbus6Ycut7N3hK50TGF3qWN0LFBQFH/Xqxa9vYXrxcb5NmdQ8qB1NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724050056; c=relaxed/simple;
	bh=FK9C2SwYYoLRyyVgmTGgECPpqGJjqxx6fX72EFVx5Lw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=RvQxAesB/aPInl+VnMjT04UbaEOsCLWq9q2D+xOZqvLamg9Ovtmh51gZJGko27hqc46XpCzgmk7vu4q36Xaez4dTLniSmo7XACQlZKS1juN+6CrjwIh5zfMggv1UBuI7L0sEHBbtTJ3D1z2bNspLZ0eXU4qRs+STXLWQ9XpmsEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=h1KwfOqn; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5bebc865578so621725a12.0
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 23:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724050050; x=1724654850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c8FmEIsMfqMJUg94aWlpTcn8bhIcC8AFEXu79oL5sBU=;
        b=h1KwfOqnH0nfboXBifj1vhwEPUFwGYeTr1y+iDsGXeIhnDzLGKk7iXe55CtKyQEpad
         SIAokwwzH22gxBVxwWk9r9RtA20iIWz0KyfgbyzvFzriI+kv8dsAa8hAzxAa4616V6ck
         b+E2CcM0cF9OZ+14Gjgtzp4kGIs4GiXJnmelWseo3XmDLc6OsTFn3aeViEs38bd9iCQg
         NhwsIgtO/coZheLhv3iNgcAIpAjye7gnho9M1lKvZbZepaUd3Z8GvEBrZinnlr+iFMuy
         b3F5bHZqWX9CqGCqU3VKiqrmyheNlM2IhwKIxebajem6XHUyxmAJgNxmMhkEXjLzJ7z+
         fb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724050050; x=1724654850;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c8FmEIsMfqMJUg94aWlpTcn8bhIcC8AFEXu79oL5sBU=;
        b=c1DBVF4Cex7wJaR9J8u/AXHxilr2nnlygQOYDSQVy7+uj3f2nEqAqjmcxZJ7za6opt
         7StEmS/se5Vg//0VFFn/Gvl2swUhAvGFDNk67PmVDlBYI1JpG0LQDXyirO5Bj0zsZw07
         mjDrR7ZBupZ4z7ugYwF8c7xDVczJReFrdV2zFAqBkOjdKUNq/H736DmvT3nCMpnA7UkG
         sjDO3WM5gponDYwxeNdPURupBTeGkTXVTSBFTZbFu/SOPEpXY6M4ueB2huppyN4rK2gW
         ZAk5QYsdZUaYimNcJIODz93hMStxo0p+vxN0vDhMyNdtXC5CPyMUeekkNx5Q2hPixt6t
         0uQg==
X-Forwarded-Encrypted: i=1; AJvYcCXLjcXh4VW5QDLBxmF4nxT4dQwZ7zqr8W33AbTP71sc7vXCVB0igxqXmOWswASlaPBQQ06YzVKK50oVsaGFxKbgwdQq02KFU7dXHw==
X-Gm-Message-State: AOJu0YyYVr4AtcIxthtIKeLBJBJdIBJeMHtXNwGh15KBYAfo5XYRRQhG
	wKZutXUJ8uHsU7uQJz6z7PjribWC/n2nehGMyDmlmAgl9lNsM33dAV+DpH0PhPI=
X-Google-Smtp-Source: AGHT+IEPDEmnPnJf9kgpqg7qPkqbuRkJKq3KI4BsD74mbjFK/aSmNPDp1I1EZP5QBq0cNUFC0jmwVw==
X-Received: by 2002:a17:907:3f09:b0:a7a:ab8a:38b with SMTP id a640c23a62f3a-a8392f128d1mr426527266b.7.1724050050036;
        Sun, 18 Aug 2024 23:47:30 -0700 (PDT)
Received: from neptune.lan ([188.27.128.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838c6bfcsm599069966b.28.2024.08.18.23.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 23:47:29 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH 0/7] iio: adc: ad7606: add support for AD7606C-{16,18} parts
Date: Mon, 19 Aug 2024 09:47:10 +0300
Message-ID: <20240819064721.91494-1-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The AD7606C-16 and AD7606C-18 are pretty similar with the AD7606B.
The main difference between AD7606C-16 & AD7606C-18 is the precision in
bits (16 vs 18).
Because of that, some scales need to be defined for the 18-bit variants, as
they need to be computed against 2**18 (vs 2**16 for the 16 bit-variants).

Because the AD7606C-16,18 also supports bipolar & differential channels,
for SW-mode, the default range of 10 V or ±10V should be set at probe.
On reset, the default range (in the registers) is set to value 0x3 which
corresponds to '±10 V single-ended range', regardless of bipolar or
differential configuration.

Aside from the scale/ranges, the AD7606C-16 is similar to the AD7606B.

This changeset, does a bit of rework to the existing ad7606 driver and then
adds support for the AD7606C-16 & AD7606C-18 parts.

Datasheet links:
  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-16.pdf
  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-18.pdf


Alexandru Ardelean (7):
  iio: adc: ad7606: add 'bits' parameter to channels macros
  iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
  iio: adc: ad7606: split a 'ad7606_sw_mode_setup()' from probe
  iio: adc: ad7606: wrap channel ranges & scales into struct
  iio: adc: ad7606: rework available attributes for SW channels
  dt-bindings: iio: adc: add adi,ad7606c-{16,18} compatible strings
  iio: adc: ad7606: add support for AD7606C-{16,18} parts

 .../bindings/iio/adc/adi,ad7606.yaml          |  83 ++++
 drivers/iio/adc/ad7606.c                      | 445 +++++++++++++++---
 drivers/iio/adc/ad7606.h                      |  77 ++-
 drivers/iio/adc/ad7606_spi.c                  | 110 ++++-
 4 files changed, 624 insertions(+), 91 deletions(-)

-- 
2.46.0


