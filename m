Return-Path: <devicetree+bounces-142446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D33D5A255F4
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 10:35:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 803593A5CC3
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685641FF605;
	Mon,  3 Feb 2025 09:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PLHJ9DLF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD04E1FF1DA
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 09:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738575300; cv=none; b=LkUAC2+mhr7vuBhNrSaEWAnvksxriohhbw2dPKdbFinw4jWqc0n2RHXTJQPn1K3W02ImhkQ0xDGqFt0E6KofI3DmyPPiXt3m7UXoKoF5VW+x2VGNhEk4jTjsiENEnSzP7BafDQO3B7pwIVGWT/nJ1f3Z0DOw9JOZYwnM8aEy19o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738575300; c=relaxed/simple;
	bh=4iSXCSQD+iqnPgY9Sq7mg/18cYhXxnnkILGNsHGeDb0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QYOqHxDqqtnYcUv2u+8WVwGElMexpdsyFHbDWXXY39vJ13SGmx9RGsxxfgu7CknPsbMlA505xRU+dqlty3cTPlDCnQ4uM/Kf3CumFemb1+bvh4VrIuZ86vnJTLhSNmyFK7I4heEmgsU1spawW/71KvMWcJSW8SQrHOaBzjqsC5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PLHJ9DLF; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361dc6322fso27837565e9.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 01:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738575296; x=1739180096; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XQniEnlPqREiFOfpNWpo606nSBL+SggHNXBd+i0UwbA=;
        b=PLHJ9DLFqptZXbuWoPwutv9pSn1ahfiY5+ucrsoybD7ly2AW+YmZ3Gmx6R2TdMEE1o
         btC8ecK8mD8kRL+iB3v/0++FTS0QNL9W/bL0+IB3OgJD5iNUm4TLKZc4nmBU3oIh+B5B
         UApebPEIp/I00bbQUJsF+gNtUThrvIA11a58/gLU8AhRTYkUgL0HWyF4T0xx267b/J2Z
         Ct5qKPRWEhpwp8wGG8QFuoklcDGzkgAI3QCX+nBtqf5kKrYgdMN6JaxC6qcVZfqdfBQE
         wrlcVwgCn5KeWn3MjYOL2epoLgvGmPggRXuFdo3PwCngsqVKzSJDGw7qhq72VO1MaSo4
         aWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738575296; x=1739180096;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XQniEnlPqREiFOfpNWpo606nSBL+SggHNXBd+i0UwbA=;
        b=I4X5YfXHO1f6kcdOxRoh2zqAhZ1msIodI93i4BACfeSwtE9cYdm7QBHgEDJbCtPMzb
         hWYvUVuM0G0hNitt75ZAWShxGbEFy5s55KElpwn0VTx4a3zI6FnFZOCBARcLcXMUto84
         78Y+SFzAo6ilTBgYFnkAqYz+S+CfGxNVo4+D/ij+NjPRpG892vs1jMbjfU1Y8J0yoGDc
         7rMfHMTg1sqeS5pZ86PZSDR9cZbmso9gS9XSjZzvdXVa5o9wc2JA4xzk244lLy6av89x
         BCYNvk88uS57us26dNEhewZcmwbH/wJLpI+ILOtaf9qjfOdbH7vgZzwJxwta/dVSXl4O
         ce7g==
X-Forwarded-Encrypted: i=1; AJvYcCXrZPEG9GRgw5dxbV8BHFsZSZfRVX3Jy8GWzg72Bopu3BbbJ9+XudcZZDSliJ3CY3NOeWEBMqhsrVVY@vger.kernel.org
X-Gm-Message-State: AOJu0YyAnZ04DBRAnlbFG4ggDJvnNqvi5gL4f9H25owXEI2ceWZHc+1F
	lnO/nslAngK8ubDhToiv+68RUhbQx3O7LTZWDOlkkiwvgAdWuRZkmBaqXeOnoTU=
X-Gm-Gg: ASbGncuHIAIQUVtP4izS+ZPXGU2pE7rtdlaEie1jyL7Nj1nibShxl5/WWkn5Pol8zVj
	01PXsV7UFFVlgSE4CuX0FfVyfO9imaJNdPNkxezrB7FIRPQhqeNeGbDy6miWtNLmad0nrkpVhpV
	638s0KC8zBPZRyPTgfhBTwZ8uHSm/YoIEfhXbvxkh68QTdztISMYgSO4yik2sZOR9EY8uD3uuwj
	zNnnVLCljcia2tXIEUf37P+95X99weeKUak8X2kD4Aax46AUbgBKxvT7ZtRnpGyLQNWVcU8qrri
	mi9vfri6VO1A
X-Google-Smtp-Source: AGHT+IGAS4aZe1uEvA/6IkSMVPyhPq7FXIW82d+vI0jBSD7HAnozIOs8zd6eghdccvxRb8J90wOJQQ==
X-Received: by 2002:a05:6000:4011:b0:386:3328:6106 with SMTP id ffacd0b85a97d-38c520a35dcmr20209543f8f.35.1738575295835;
        Mon, 03 Feb 2025 01:34:55 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-38c5c0ec7aasm12136166f8f.5.2025.02.03.01.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 01:34:55 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 0/3] arm64: dts: ti: k3-am62*-sk: Add wkup/mcu_uart0
 aliases
Date: Mon, 03 Feb 2025 10:34:09 +0100
Message-Id: <20250203-topic-am62-serial-aliases-v6-14-v1-0-f26d4124a9f1@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJGNoGcC/x2NSQqEQAwAvyI5G2jjBvOVwUO00xpwoyMiiH+fH
 o91qKobTKKKwSe7IcqpptuaoMgzGCZeR0H1iYEc1Y5cice264C8NIR/lWfkWdnE8GywqLCtyNd
 lCL53LaTKHiXo9R6+3fP8AJM+k2txAAAA
X-Change-ID: 20250203-topic-am62-serial-aliases-v6-14-742d53ffdb07
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=816; i=msp@baylibre.com;
 h=from:subject:message-id; bh=4iSXCSQD+iqnPgY9Sq7mg/18cYhXxnnkILGNsHGeDb0=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNIX9M7e8vPOM4FNq18/+x1yXmo6w/K/WnxyykWT3ls06
 zE+a1vp31HKwiDGwSArpshy98PCd3Vy1xdErHvkCDOHlQlkCAMXpwBMJGM9I8OiGdnTonxCHZbx
 V3bZfbkaXHmFq/XyO/sTXTW392zmX/OG4Q/HpAm6x0y9nxt1M4j+Mfgcq8Wi4i9TXyJv8lA6aOG
 PPFYA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Hi,

add serial aliases for wkup and mcu uart0. Add them to have the same
order on all boards as well.

Best
Markus

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>

---
Markus Schneider-Pargmann (2):
      arm64: dts: ti: k3-am62x-sk-common: Add serial aliases
      arm64: dts: ti: k3-am62a7-sk: Add serial alias

Vibhore Vardhan (1):
      arm64: dts: ti: k3-am62p5-sk: Add serial alias

 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts        | 1 +
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts        | 1 +
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 2 ++
 3 files changed, 4 insertions(+)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250203-topic-am62-serial-aliases-v6-14-742d53ffdb07

Best regards,
-- 
Markus Schneider-Pargmann <msp@baylibre.com>


