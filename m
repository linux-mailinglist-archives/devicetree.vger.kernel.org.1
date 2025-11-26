Return-Path: <devicetree+bounces-242199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EF36DC87E99
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 04:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 84A5F353FD7
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 03:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3902D30C622;
	Wed, 26 Nov 2025 03:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GmUNB7jf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8E7309EE4
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764126898; cv=none; b=FeG4zIPVi0uHmZDFYYgAOftcXW7WrpZg3doGxY1PXaYCaX/koamLfisjb534PGwitqUUmnJJjRxHhRdwCDxq6Xx8PkTSVIt7ZX0OtE8wHOAMKMKNKHthlJB2SwMwVopcbuJ0wTUORUUIjq/CxtSHIsNjEc0vvYPwMTTjH4VjQew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764126898; c=relaxed/simple;
	bh=nFnsQY4oJTdm/LIKJ6pX4OGfndKb+lBEu1FbJxow3QU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Nfwzb4zDFJdxDrZXiiF4V0+VlNBNhnGBNuEPYqU8QZiRvc/XQrYnT+FdVISLSvqcrKwioKmu/EUuNbzzoSbkGiRKxfYbAxNKKc2LADPjrlkhU9GyOK+UQddKac3lLNMPoJf6W5kfDp4u7NoTyN8871B5Y/pYmvqEsz9MqQfVRLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GmUNB7jf; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-298144fb9bcso68925185ad.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 19:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764126896; x=1764731696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YsF2vXY+Klwy65O0EIOP+EhiNUNtQTtwaMk3rE4EePs=;
        b=GmUNB7jf9IcAh+Pb5g4QV7rBsQux04TvYYp5aFYN64plaoLgIT7cQXRONQGC1OCVUM
         ab42tk2H6jyu0nFaSm6dXdxoN6OME+AV9J7WlG/zwFoERCfl7rPqgIVwv+fjqY98iTeV
         8FblKsX6ovrviT/EWHZNe18kaOilNq1CqSZQT5sI9xwBzJwlOZFhzHHlpc4dXEczVxq5
         XbCHjBQkv12ZZ+g9v+sqLviBAwfVzr9xNW7Wavzmnb01S9KdllqZD66AkLsYUrAvdTWF
         /BEE3BpJlqnA2RmOgHxteQmGpSffES1Xuv/eqG8oUQeVutJqtPdLzsFlc+yidYK+YKtJ
         hZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764126896; x=1764731696;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YsF2vXY+Klwy65O0EIOP+EhiNUNtQTtwaMk3rE4EePs=;
        b=aZQ4EqB1C/HoGOsKocET0vaD5VQPV41BBQcd9+7S8acYeNO110YqaBHNn7dJ1ue3uE
         fjB8mlKSqguw67Z1VUHAcWL9jsR6y6ClUvP4f57lC48rt5dg0CA8D8ddBTaKR5FuZUoz
         fPV/e1IZOL6rSvgGdkFB1cYRk54YOWy+sAbHz1RSM7Z7IdOOtkT1BBJ3/gJjt7WiKekK
         n4WInqjbss6PFe5AeIzJTWLQqRyg28wDr21vxmHBMcooAnxB7wfYCiMKI4/yakklQ1ZN
         Qv032HoGH36QfUjtNNw8QSZi7sitRqw5m9mwFfUpAGNf5qxztbdC+Q6jylvzv5tPjHjg
         taOw==
X-Forwarded-Encrypted: i=1; AJvYcCV0+wJTKyUWddQKRGMi0KImHjXpspCjTCISDhcifb8MQ7qFdY5mJyMpnItO0yN2aHnvubYPwGEchXdF@vger.kernel.org
X-Gm-Message-State: AOJu0YzM1PfzbkPY/PeIamhXzNV7V6V2Trw+8YX0KIRF1y2t1LPhaEF7
	HxJWaWshxKHkjNYHVNyySJs2OuBni4LIh8k3e1WV7V3fU4Ievk0Tw4jq
X-Gm-Gg: ASbGnctj+ZqHEIQg7JPpfEaf0pnyi1UPWS+NQNYsyYvOpdV1hnH7xLAX4NRJvwceWoj
	Ya6pLk85n91dsZgliBrgEWSszw79V4JzEaUpwtsANkQQMZSWTRPVEywz/DO29wuPBgYPRT/zojz
	hhiUxMItn1ZvB/3ypdHf9jIQQTYXSzAfw7kpNwlQDt85bKIz/w/K2ajrCeVAhkA7rcD9Ii9ZaSK
	hcjG+K1MolhM+zhcg2yte2zidHAzkTx8N/zY9OUBLEPglhb1A3Y5jua/lt0W9hGM15nIN3+sNTU
	D3BQgxSo5DNW+puKuGFNVuPuaWVGPK79QRzUyaK02sygPAZHXrY3eRAKHamuaEGXL4WDrG9OCnx
	JPm9q0/I9G8GJTwBkrPP1awEP884uTZ/ZIbbs9jBVO/BZgwSwgjRm/8fqv0Tb0YmFbCqPuiV9ZM
	Vc1G4dfR6ChmQC6g==
X-Google-Smtp-Source: AGHT+IF3xZUV4fsW48z+Gn4ApB/08WmG2J9vbYXEbvQ68riEYO2xTIOuy/T/mjhjd646cUi6B+XNMA==
X-Received: by 2002:a17:903:3b87:b0:278:704:d6d0 with SMTP id d9443c01a7336-29baaf75e76mr50882165ad.19.1764126895717;
        Tue, 25 Nov 2025 19:14:55 -0800 (PST)
Received: from Ubuntu24.. ([103.187.64.30])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd760ac62ecsm17935713a12.26.2025.11.25.19.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 19:14:55 -0800 (PST)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH 0/3] iio: proximity: Add DT and interrupt support for RFD77402
Date: Wed, 26 Nov 2025 08:44:37 +0530
Message-ID: <20251126031440.30065-1-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds:
 - Add RF Digital vendor prefix
 - YAML binding for RFD77402
 - Device Tree support in the driver
 - Interrupt handling support
 
These changes enable DT-based configuration and event-driven
operation for the RFD77402 Time-of-Flight sensor.

These changes are tested on RPi 3B.
1. Interrupt Mode logs:
pi@raspberrypi:~$ dmesg | grep rfd
[   26.907482] rfd77402 1-004c: Using interrupt mode 
pi@raspberrypi:~$ cat /sys/bus/iio/devices/iio:device0/in_distance_raw
51
1. Polling Mode logs:
pi@raspberrypi:~$ dmesg | grep rfd
[   26.760403] rfd77402 1-004c: No interrupt specified, using polling mode
pi@raspberrypi:~$ cat /sys/bus/iio/devices/iio:device0/in_distance_raw
1990

Shrikant Raskar (3):
  dt-bindings: iio: proximity: Add YAML binding for RFD77402 ToF sensor
  iio: proximity: rfd77402: Add Device Tree support
  iio: proximity: rfd77402: Add interrupt handling support

 .../iio/proximity/rfdigital,rfd77402.yaml     |  55 +++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/iio/proximity/rfd77402.c              | 134 +++++++++++++++---
 3 files changed, 171 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/rfdigital,rfd77402.yaml

-- 
2.43.0


